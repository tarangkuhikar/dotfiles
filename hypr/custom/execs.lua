hl.on("hyprland.start", function()
	hl.exec_cmd(terminal, { workspace = 1 })
	hl.exec_cmd("firefox", { workspace = "2 silent" })
end)
