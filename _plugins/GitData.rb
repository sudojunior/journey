require "net/http"
require "json"

module Jekyll
  # class GitBlameGenerator < Generator
    
  #   # Blame output model
  #   # - sha    = the specific commit sha that the line was last updated [as str with len 8]
  #   # - author = the author of that commit                              [as str, client side author]
  #   # - date   = the date of that commit                                [as str of date, in raw format]
  #   # - line   = the line of code                                       [as int, +1 on forloop.index]
  #   # - code   = the code effected by that commit                       [as str]

  #   def generate(site)
  #     site.config["gitblame"] = {}
  #     for page in site.pages do
  #       result = []
  #       blame = %x("git blame ../#{page.path}")
  #       for line in blame.split "\n" do
  #         sha, author, date, line_no, code = line.match(/(.{8}) \((\w+) (\d{4}(?:-\d\d){2} (?:\d\d:?) \+\d{4}) +(\d+)\) ([^\n]*)/)
  #         output = { 
  #           :sha => sha,
  #           :author => author,
  #           :date => date,
  #           :line => line_no.to_i,
  #           :code => code
  #         }
  #         result << output
  #       end
  #       site.config["gitblame"][page.path] = result
  #     end
  #   end
  # end

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