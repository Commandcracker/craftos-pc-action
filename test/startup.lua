local GNOME = {
	["black"] = 0x171421,
	["blue"] = 0x2A7BDE,
	["brown"] = 0xA2734C,
	["cyan"] = 0x2AA1B3,
	["gray"] = 0x5E5C64,
	["green"] = 0x26A269,
	["lightBlue"] = 0x33C7DE,
	["lightGray"] = 0xD0CFCC,
	["lime"] = 0x33D17A,
	["magenta"] = 0xC061CB,
	["orange"] = 0xE9AD0C,
	["pink"] = 0xF66151,
	["purple"] = 0xA347BA,
	["red"] = 0xC01C28,
	["white"] = 0xFFFFFF,
	["yellow"] = 0xF3F03E,
}

print("Hello, world!")
print("GNOME Colors:")

for color, code in pairs(GNOME) do
	term.setPaletteColor(colors[color], code)
	term.setTextColor(colors[color])
	print(color, "0x" .. ("%x"):format(code):upper())
end

print("Host:", _HOST)
print("Type:", jit and "Lua jit " or "PUC Lua")
print("ComputerID:", os.getComputerID())
print("bye :)")

os.shutdown()
-- Using shutdown is preferred, because it will quit the program faster than shell.exit() and
-- It makes it possible to exit the program with any error code by using os.shutdown(error_code)
