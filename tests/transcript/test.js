const fs = require('fs/promises');

(async () => {
	const lines = (await fs.readFile('./index.md')).toString().split('\n');

	/^- \{((?:\d+:)?\d+:\d+|\$)-((?:\d+){2,3})\} (\w|~): (.*)$/
})()