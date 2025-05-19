-- Manages the Accounts from accounts.json File
-- Format = {Accounts : {"IGN" : [accountNumber, pin, balance]}}

local json = require("lib/json")

-- opens the json file and formats it to a lua table (thanks rxi), then places it into jsonStorage
local jsonStorage = fs.open("./TheBankOfTwilight/accounts.json", "r")
local accounts = json.decode(jsonStorage.readAll())
jsonStorage.close()

for k, v in pairs(accounts.Accounts) do
    print(k, v)
end
