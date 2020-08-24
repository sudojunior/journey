module Jekyll
  class OverviewGenerator < Generator
    safe = false

    def generate(site)
      filtered_pages = site.pages.filter { |page| page.url }

      for page in site.pages do
        split_url = page.url.split "/"
        _, year, category, *args = split_url

        template = "default"

        title = "#{category.capitalize} of #{year}"
        
        site.pages << CategoryPage.new(site, site.source, File.join(dir, split_url[1]), template, title) # year
        site.pages << CategoryPage.new(site, site.source, File.join(dir, split_url[1], split_url[2]), template, title) # category
      end
    end
  end

  class OverviewPage < Page
    def initialize(site, base, dir, template, title)
      @site = site
      @base = base
      @dir = dir

      self.process(@name)
      self.data['title'] = title
    end
  end
end