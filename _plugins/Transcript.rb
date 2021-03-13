module Jekyll
	class TranscriptBlock < Liquid::Block
		@@headers = ["Start", "End", "Speaker", "Line"]
		@@regex = /^(?:- )\{((?:\d+:?)+|\$) ?- ?((?:\d+:?)+)\} (.*|~): (.*)/

		@last_speaker = nil
		@last_timestamp = nil

		def render(context)
			lines = super
			table = ""

			@@headers.each { |header|
				table << "| #{header}"
			}

			table << "|\n"

			lines.scan(@@regex) do |match|
				start, finish, speaker, line = match
				
				puts "[transcript:#{context['page']['url']}] Found #{
					speaker != '~' ? speaker : @last_speaker} saying '#{line}' starting at #{
						start != "$" ? start : @last_timestamp} and finishing at #{finish}"

				if start == '$' then
					start = @last_timestamp
				else
					@last_timestamp = finish
				end

				if speaker == '~' then
					speaker = "^" # @last_speaker
				else
					@last_speaker = speaker
				end

				table << "| `#{start}` | `#{finish}` | #{speaker} | #{line} |\n"
			end

			# table << "</tr></table>"

			return table
		end
	end
end

Liquid::Template.register_tag("transcript", Jekyll::TranscriptBlock)