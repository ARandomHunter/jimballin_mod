
SMODS.Voucher {
    key = 'twitch_prime',
    pos = { x = 1, y = 0 },
    config = { 
        extra = {
            item_rate0 = 2
        } 
    },
    loc_txt = {
        name = 'Twitch Prime',
        text = {
            [1] = '{C:dark_edition}Streamer{} cards are now {C:red}double{}',
            [2] = 'as likely to appear in the shop.'
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
    requires = {'v_twitch'},
    atlas = 'CustomVouchers',
    redeem = function(self, card)
        return {
            
            G.E_MANAGER:add_event(Event({
                func = function()
                    G.GAME.streamer_mod = G.GAME.streamer_mod * 2               
                    return true
                end
            }))
        }
    end
}