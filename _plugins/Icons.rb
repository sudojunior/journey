require "net/http"

module Jekyll
  class DevIconsTag < Liquid::Tag

    @@icons = {}

    def initialize(tag_name, text, tokens)
      super
      brand, variant, @size = text.split " "
      
      # defaults
      # brand - required
      variant ||= "original"

      # process
      @path = "https://devicon.dev/devicon.git/icons/#{brand}/#{brand}-#{variant}.svg"
      if @@icons[@path] == nil
        puts "[plugin/tag::devicon] New request to devicons for #{brand}-#{variant}"
        # puts @path
        @@icons[@path] = Net::HTTP.get(URI(@path))
      end
    end

    def render(context)
      # context.registers[:site].data.devicons
      "<span class='devicon devicon-size-#{@size || 64}'>#{@@icons[@path]}</span>"
    end
  end

  class SimpleIconsTag < Liquid::Tag
    @@icons = {}
    # https://github.com/simple-icons/simple-icons/blob/develop/_data/simple-icons.json
    def initialize(tag_name, markup, tokens)
      super
      @markup = markup
    end

    def render(context)
      brand, size, *style = Liquid::Template.parse(@markup).render(context).split(" ")
      @path = "https://simpleicons.org/icons/#{brand}.svg"
      if @@icons[@path] == nil
        puts "[plugin/tag:simpleicon] New request to simpleicons for #{brand}"
        @@icons[@path] = Net::HTTP.get(URI(@path))
      end

      # context.registers[:site].data.simpleicons
      "<span class='icon icon-size-#{size || 32}' style='#{style.join " "}'>#{@@icons[@path]}</span>"
    end
  end
end

Liquid::Template.register_tag("devicon", Jekyll::DevIconsTag)
Liquid::Template.register_tag("simpleicon", Jekyll::SimpleIconsTag)