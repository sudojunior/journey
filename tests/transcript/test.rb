re = /^- \{((?:\d+:?)+|\$)-((?:\d+:?)+)\} (.*|~): (.*)/
content = File.read('./tests/transcript/index.md')
puts content

lastSpeaker = nil
lastTimestamp = nil

# Print the match result
content.scan(re) do |match|
	start = match[0]
	_end = match[1]
	speaker = match[2]
	line = match[3]

	if start == '$' then
		start = lastTimestamp
	end
	if speaker == '~' then
		speaker = lastSpeaker
	end

	puts "Between #{start} and #{_end}, #{speaker} says \"#{line}\""

	lastSpeaker = speaker
	lastTimestamp = _end
end