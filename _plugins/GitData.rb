require "net/http"
require "json"

module Jekyll
  Jekyll::Hooks.register :site, :after_init do |site|
    repo = site.config["repository"]

    uri = URI("https://api.github.com/repos/#{repo}")
    # site.config["github"] = JSON.parse(Net::HTTP.get(uri))
  end
end