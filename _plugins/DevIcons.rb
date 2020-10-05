require "net/http"

module Jekyll
  class DevIconTag < Liquid::Tag

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
      "<span class='devicon devicon-size-#{@size || 64}'>#{@@icons[@path]}</span>"
    end
  end
end

Liquid::Template.register_tag("devicon", Jekyll::DevIconTag)
