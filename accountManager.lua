-- Manages the Accounts from accounts.json File
-- Format = {Accounts : {"IGN" : [accountNumber, pin, balance]}}

local json = require("lib/json")

local accounts = {}

--opens the json file and formats it to a lua table (thanks rxi), then places it into jsonStorage
local jsonStorage = io.open("./accounts.json", "r")
if not jsonStorage then
	error("Error: Unable to open accounts.json. Please ensure the file exists and is accessible.")
end
local accounts = json.decode(jsonStorage:read("*all"))
jsonStorage:close()

print(accounts)