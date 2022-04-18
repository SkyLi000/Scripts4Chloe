local function createPart()
   local p = Instance.new("Part",workspace)
   p.Anchored = false
end

while wait() do
  createPart()  
end
