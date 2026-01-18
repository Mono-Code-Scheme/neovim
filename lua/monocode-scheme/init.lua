require("monocode-scheme.lua.monocode-scheme.syntax")
require("monocode-scheme.lua.monocode-scheme.plugins")

local M = {}

local colors = {
	n0 = "#060606",
	n1 = "#111111",
	n2 = "#141414",
	n3 = "#1F1F1F",
	n4 = "#383838",
	t0 = "#F2F2F2",
	t1 = "#E5E5E5",
	t2 = "#C2C2C2",
	t3 = "#9F9F9F",
	red = "#FF7272",
	orange = "#FFAD72",
	yellow = "#FFDE72",
	green = "#A8FF72",
	neon_green = "#72FF7B",
	cyan = "#72E0FF",
	blue = "#72BBFF",
	purple = "#C272FF",
	pink = "#FF72F6",
}

-- local colors = {
-- 	n0 = "#FFFFFF",
-- 	n1 = "#F9F9F9",
-- 	n2 = "#F6F6F6",
-- 	n3 = "#EBEBEB",
-- 	n4 = "#D8D8D8",
-- 	t0 = "#000000",
-- 	t1 = "#1A1A1A",
-- 	t2 = "#484848",
-- 	t3 = "#606060",
-- 	red = "#9A0000",
-- 	orange = "#9A5200",
-- 	yellow = "#9A7100",
-- 	green = "#5F9A00",
-- 	neon_green = "#299A00",
-- 	cyan = "#008B9A",
-- 	blue = "#00679A",
-- 	purple = "#62009A",
-- 	pink = "#9A0074",
-- }

function SetForeground(category, color)
	vim.api.nvim_set_hl(0, category, { fg = color })
end

function SetBackground(category, color)
	vim.api.nvim_set_hl(0, category, { bg = color })
end

function M.setup()
	SetupSyntaxHighlighting(colors)
	SetupPlugins(colors)
end

return M
