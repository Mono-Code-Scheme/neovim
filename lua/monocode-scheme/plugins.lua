require("monocode-scheme.plugins.bufferline")
require("monocode-scheme.plugins.neotree")

function SetupPlugins(colors)
	SetupNeotreePlugin(colors)
	SetupBufferlinePlugin(colors)
end
