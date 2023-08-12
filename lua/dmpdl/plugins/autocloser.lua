local setup, closer = pcall(require, "autoclose")
if not setup then
	return
end

closer.setup()
