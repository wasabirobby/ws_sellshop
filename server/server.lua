-----------------For support, scripts, and more----------------
----------------- https://discord.gg/XJFNyMy3Bv ---------------
---------------------------------------------------------------
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

lib.callback.register('ws_sellshop:sellItem', function(source, data)
    local xPlayer = ESX.GetPlayerFromId(source)
    local xItem = xPlayer.getInventoryItem(data.item)
    if xItem.count < data.quantity then
        return false
    else
        local profit = math.floor(data.price * data.quantity)
        xPlayer.removeInventoryItem(data.item, data.quantity)
        xPlayer.addAccountMoney(data.currency, profit)
        return profit
    end
end)