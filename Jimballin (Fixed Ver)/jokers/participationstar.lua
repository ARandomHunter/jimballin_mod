
SMODS.Joker{ --participation star
    key = "participationstar",
    config = {
        extra = {
            dollars0 = 20
        }
    },
    loc_txt = {
        ['name'] = 'participation star',
        ['text'] = {
            [1] = 'Prevents death and gives {C:money}+$20{} if you lose before beating Ante 8. Then dies. Violently.'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 6,
        y = 1
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 6,
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["jimballin_jimballin_jokers"] = true },
    
    calculate = function(self, card, context)
        if context.end_of_round and context.game_over and context.main_eval  then
            if to_big(G.GAME.round_resets.ante) <= to_big(8) then
                return {
                    saved = true,
                    message = "you tried!",
                    extra = {
                        
                        func = function()
                            
                            local current_dollars = G.GAME.dollars
                            local target_dollars = G.GAME.dollars + 20
                            local dollar_value = target_dollars - current_dollars
                            ease_dollars(dollar_value)
                            card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "you did your best", colour = G.C.MONEY})
                            return true
                        end,
                        colour = G.C.MONEY,
                        extra = {
                            func = function()
                                local target_joker = card
                                
                                if target_joker then
                                    if target_joker.ability.eternal then
                                        target_joker.ability.eternal = nil
                                    end
                                    target_joker.getting_sliced = true
                                    G.E_MANAGER:add_event(Event({
                                        func = function()
                                            target_joker:shatter({G.C.RED}, nil, 1.6)
                                            return true
                                        end
                                    }))
                                    card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA", colour = G.C.RED})
                                end
                                return true
                            end,
                            colour = G.C.RED
                        }
                    }
                }
            end
        end
    end
}