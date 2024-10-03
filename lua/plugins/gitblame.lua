return {
	"f-person/git-blame.nvim",
	name = "GitBlame",
	event = "VeryLazy",
	opts = {
		enabled = true,
		date_format = "%r",
		message_template = "	<summary> • <date> • <author>",
	},
}
