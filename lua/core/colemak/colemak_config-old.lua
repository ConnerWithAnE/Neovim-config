local binds = io.open("colemak_binds.txt", "r")

local binds2 = {
["d"] = "g",
["e"] = "k",
["f"] = "e",
["g"] = "t",
["i"] = "l",
["j"] = "y",
["k"] = "n",
["l"] = "u",
["n"] = "j",
["o"] = "p",
["p"] = "r",
["r"] = "s",
["s"] = "d",
["t"] = "f",
["u"] = "i",
["y"] = "o",
["D"] = "G",
["E"] = "K",
["F"] = "E",
["G"] = "T",
["I"] = "L",
["J"] = "Y",
["K"] = "N",
["L"] = "U",
["N"] = "J",
["O"] = "P",
["P"] = "R",
["R"] = "S",
["S"] = "D",
["T"] = "F",
["U"] = "I",
["Y"] = "O"}

for bind in binds:lines() do
  kv = {}
  for i in bind:gmatch("%S+") do
    table.insert(kv, i)
  end
  vim.keymap.set({'n', 'v', 'o'}, kv[1], kv[2])
end


