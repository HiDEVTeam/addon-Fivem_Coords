RegisterCommand("GetPlayersCoords", function(source, args, rawCommand)

  local playerList = {}
for i = 0, GetNumPlayerIndices()-1, 1 do
  local player = GetPlayerFromIndex(i)
  local playerPed = GetPlayerPed(player)
  local playerCoords = GetEntityCoords(playerPed)
  local playerName = GetPlayerName(player)
      table.insert(playerList, playerName .. " " .. player .. " " ..  playerCoords)
end
print(table.unpack(playerList))

end, true)