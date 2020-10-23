require "net/http"
require "json"

module Jekyll
  Jekyll::Hooks.register :site, :after_init do |site|
    repo = site.config["repository"]

    root_uri = URI("https://api.github.com/repos/#{repo}")
    site.config["github"] = JSON.parse(Net::HTTP.get(root_uri))

    for path in ["commits", "contributors"] do
      target_uri = URI("https://api.github.com/repos/#{repo}/#{path}")
      site.config["github"][path] = JSON.parse(Net::HTTP.get(target_uri))
      puts "[plugin:gitdata] Additional request to GitHub API for /repos/#{repo}/#{path}"
    end
  end
end