
SMODS.Joker{ --The Triangle of Sacrifice
    key = "thetriangleofsacrifice",
    config = {
        extra = {
            dollars0 = 5,
            dollars = 5,
            dollars2 = 5
        }
    },
    loc_txt = {
        ['name'] = 'The Triangle of Sacrifice',
        ['text'] = {
            [1] = '{C:gold}+$5{} when any card is destroyed or sold.'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 0,
        y = 1
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 4,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["jimballin_jimballin_jokers"] = true },
    soul_pos = {
        x = 1,
        y = 1
    },
    
    calculate = function(self, card, context)
        if context.remove_playing_cards  then
            return {
                
                func = function()
                    
                    local current_dollars = G.GAME.dollars
                    local target_dollars = G.GAME.dollars + 5
                    local dollar_value = target_dollars - current_dollars
                    ease_dollars(dollar_value)
                    card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Sacrificed!", colour = G.C.MONEY})
                    return true
                end
            }
        end
        if context.selling_card  then
            return {
                
                func = function()
                    
                    local current_dollars = G.GAME.dollars
                    local target_dollars = G.GAME.dollars + 5
                    local dollar_value = target_dollars - current_dollars
                    ease_dollars(dollar_value)
                    card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Sacrificed!", colour = G.C.MONEY})
                    return true
                end
            }
        end
        if context.selling_self  then
            return {
                
                func = function()
                    
                    local current_dollars = G.GAME.dollars
                    local target_dollars = G.GAME.dollars + 5
                    local dollar_value = target_dollars - current_dollars
                    ease_dollars(dollar_value)
                    card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Sacrificed!", colour = G.C.MONEY})
                    return true
                end
            }
        end
    end
}