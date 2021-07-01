local discordia = require('discordia')
local client = discordia.Client()

local commands = {"!ping","!cmd","!time"}

client:on("messageCreate", function (message)
    local content= message.content
    print(content)
    if content:lower() == "!ping" then
        local mention = message.mentionedUsers
        message:reply(mention.." pong")

        
        
    elseif content:lower() == "!cmd" then
        for index, command in ipairs(commands) do
            message:reply(index..": "..command)
        end
     end
end)

client:run("Bot "..io.open("./login.txt"):read())

print('on')