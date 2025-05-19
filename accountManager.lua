-- Manages the Accounts from accounts.json File
-- Format = {Accounts : {"IGN" : [accountNumber, pin, balance]}}

local json = require("lib/json")
local io = require("io")

local accounts = {}

--opens the json file and formats it to a lua table (thanks rxi), then places it into jsonStorage
jsonStorage = io.open("accounts.json", "r")
accounts = json.decode(jsonStorage:read("*all"))
jsonStorage:close()

print(accounts)