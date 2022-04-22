_G.ScriptHubEnabled = true

function Load(URL)
  loadstring(game:HttpGet(URL))()
end

function Notify(Title, Message, Duration)
  local CoreGui = game:GetService("StarterGui")

  CoreGui:SetCore("SendNotification", {
    Title = Title;
    Text = Message;
    Duration = Duration;
  })
end

Notify("Loading", "Script Hub Loading Trying To Connect To Server.", 10)

if game.PlaceId == 142823291 then
  if _G.ScriptHubEnabled == true then
    Load("https://raw.githubusercontent.com/SkyLi000/Scripts4Chloe/main/Murder%20Mystery%202")
    Notify("Loaded Successfully ✅", "Murder Mystery Script Loaded Successfully!", 10)
  end
elseif game.PlaceId == 3956818381 then
  if _G.ScriptHubEnabled == true then
    Load("https://raw.githubusercontent.com/SkyLi000/Scripts4Chloe/main/Ninja%20Legends")
    Notify("Loaded Successfully ✅", "Ninja Legends Script Loaded Successfully!", 10)
  end
elseif game.PlaceId == 6284583030 then
  if _G.ScriptHubEnabled == true then
    Load("https://raw.githubusercontent.com/SkyLi000/Scripts4Chloe/main/Pet%20Simulator%20X.lua")
    Notify("Loaded Successfully ✅", "Pet Simulator X Script Loaded Successfully!", 10)
  end
elseif game.PlaceId == 185655149 then
  if _G.ScriptHubEnabled == true then
    Load("https://raw.githubusercontent.com/SkyLi000/KoalaHub/main/Bloxburg.lua")
    Notify("Loaded Successfully ✅", "Welcome To Bloxburg Script Loaded Successfully!", 10)
  end
else
  Notify("No Script Found ❌", "Sorry No Script Found For This Game.")
end
