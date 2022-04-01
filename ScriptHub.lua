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

if game.PlaceId == 142823291 then
  if _G.ScriptHubEnabled == true then
    if _G.MurderMystery2Loaded == nil then
      _G.MurderMystery2Loaded = true
      Load("https://raw.githubusercontent.com/SkyLi000/Scripts4Chloe/main/Murder%20Mystery%202")
      Notify("Loaded Successfully ✅", "Murder Mystery Script Loaded Successfully!", 10)
    else
      Notify("Error", "Murder Mystery 2 Script Has Already Been Loaded!", 10)
     end
   end
elseif game.PlaceId == 3956818381 then
  if _G.ScriptHubEnabled == true then
    if _G.NinjaLegendsLoaded == nil then
      _G.NinjaLegendsLoaded = true
      Load("https://raw.githubusercontent.com/SkyLi000/Scripts4Chloe/main/Ninja%20Legends")
      Notify("Loaded Successfully ✅", "Ninja Legends Script Loaded Successfully!", 10)
    else
      Notify("Error", "Ninja Legends Script Has Already Been Loaded!", 10)
    end
  end
elseif game.PlaceId == 6284583030 then
  if _G.ScriptHubEnabled == true then
    if _G.PetSimXLoaded == nil then
      _G.PetSimXLoaded = true
      Load("https://raw.githubusercontent.com/SkyLi000/Scripts4Chloe/main/Pet%20Simulator%20X.lua")
      Notify("Loaded Successfully ✅", "Pet Simulator X Script Loaded Successfully!", 10)
    else
      Notify("Error", "Pet Simulator X Script Has Already Been Loaded!", 10)
    end
  end
else
  Notify("No Script Found ❌", "Sorry No Script Found For This Game.")
end
