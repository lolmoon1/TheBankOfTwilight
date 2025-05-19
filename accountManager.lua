-- Manages the Accounts from accounts.json File
-- Format = {Accounts : {"IGN" : [accountNumber, pin, balance]}}

local json = require("lib/json")

local accounts = {}

--opens the json file and formats it to a lua table (thanks rxi), then places it into jsonStorage
local jsonStorage = fs.open("accounts.json", "r")
accounts = json.decode(jsonStorage.readAll())

print(accounts)