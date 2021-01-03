module Jekyll
  module DataFilter

    def is_page(input)
      for page in @context.registers[:site].pages
        if input == page.url
          return true
        end
      end
      
      return false
    end

    def match_path(url, *args)
      match = true
      url_parts = url.split "/"
      url_parts.shift
      args.map { |el|
        index, part = el.split ":"
        index = index.to_i
        match = false if part != url_parts[index]
      }
      match
    end

    def random_sample(items, count = 1)
      items.sample(count)
    end
  end
end

Liquid::Template.register_filter(Jekyll::DataFilter)