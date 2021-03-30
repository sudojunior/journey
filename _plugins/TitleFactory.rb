require 'json'

module Jekyll
	# class TitleGenerator < Generator
	# 	def generate(site)
	# 		site.pages.each do |page|
	# 			if page["title"] != "" or !page["title"]
	# 				page["computed_title"] = compute_title(page)
	# 			end
	# 		end
	# 	end

	# 	def compute_title(page)
	# 		case page["layout"]
	# 		when "overview/author"
	# 			"#{page["name"]} (#{page["year"]})"
	# 		when "overview/category"
	# 			page["category"]
	# 		when "overview/year"
	# 			"#{page["category"]} of #{page["year"]}"
	# 		when "music-record"
	# 			"#{page["name"] or page["title"]} by #{if page["artists"] then compile_authors(page) else page["artist"] end}"
	# 		when "default", "overview/locale"
	# 			page["title"]
	# 		end
	# 	end

	# 	def compile_authors(page)
	# 		result = ""

	# 		if page["artists"].first["target"]
	# 			for node in page["artists"] do
	# 				if node["target"].first then
	# 					result += node["target"].each { |str, index|
	# 						slot = ""
	# 						if node["target"].size - 1 == index then
	# 							slot = node["last"] or " and "
	# 						elsif node["target"].size - 1 > index then
	# 							slot = node["char"] or ", "
	# 						end
	# 						str + slot
	# 					}
	# 				else
	# 					result += node["target"]
	# 				end
	# 				result += node["connector"] or "; "
	# 			end
	# 		end

	# 		result
	# 	end
	# end
end