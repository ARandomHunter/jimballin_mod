
SMODS.Voucher {
    key = 'twitch',
    pos = { x = 0, y = 0 },
    config = { 
        extra = {
            item_rate0 = 0.025
        } 
    },
    loc_txt = {
        name = 'Twitch',
        text = {
            [1] = '{C:dark_edition}Streamer{} jokers are now able',
            [2] = 'to appear in the shop.'
        },
        unlock = {
            [1] = 'Unlocked by default.'
        }
    },
    cost = 10,
    unlocked = true,
    discovered = true,
    no_collection = false,
    can_repeat_soul = false,
    atlas = 'CustomVouchers',
    redeem = function(self, card)
        return {
            
            G.E_MANAGER:add_event(Event({
                func = function()
                    G.GAME.streamer_mod = 0.025               
                    return true
                end
            }))
        }
    end
}