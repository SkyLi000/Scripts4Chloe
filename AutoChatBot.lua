print("--------------------------------------")
print("          Auto Chat Bot V2.2          ")
print("     Updated On 2/4/2022 10:37AM NZT  ")
print("               Enjoy                  ")
print("--------------------------------------")
------------------------------------------------
local PlayersName = game:GetService("Players")
local Player = {}

for i,v in pairs(PlayersName:GetChildren()) do
    table.insert(Player, v.Name)
end

if getgenv().AutoChat.PrivateChat == true then
    for i,v in pairs(Player) do
        if v ~= PlayersName.LocalPlayer.Name then
            if getgenv().AutoChat.Message ~= "" then
                local PrivateChatArgument = {
                    [1] = "/w "..v.." "..Message;
                    [2] = "All"
                }
                game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(PrivateChatArgument))
            else
                local PrivateChatNoText = {
                    [1] = "/w "..v.." Hello, This is a private message sent by a script, Executed by a exploit app";
                    [2] = "All"
                }
                 game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(PrivateChatNoText))
            end
        end
    end
else
    if getgenv().AutoChat.Message ~= "" then
        local GlobalChatArgument = {
                    [1] = Message;
                    [2] = "All"
                }
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(GlobalChatArgument))
    else
        local GlobalChatNoText = {
            [1] = "Hello this is a Global Chat sent by a script, Executed by an exploit app";
            [2] = "All"
        }
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(GlobalChatNoText))
    end
end
