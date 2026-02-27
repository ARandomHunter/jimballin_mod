
SMODS.Joker{ --Black Spray Paint
    key = "blackspraypaint",
    config = {
        extra = {
        }
    },
    loc_txt = {
        ['name'] = 'Black Spray Paint',
        ['text'] = {
            [1] = 'At the end of the round, if the rightmost Joker is {C:dark_edition}Negative{}, destroy it and create a {C:dark_edition}Negative{} Stencil Joker.',
            [2] = '{C:inactive}(Will not trigger if the rightmost card is Joker Stencil or itself){}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 5,
        y = 2
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 13,
    rarity = 3,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["jimballin_jimballin_jokers"] = true },
    
    calculate = function(self, card, context)
        if context.other_joker  then
            if ((function()
                return context.other_joker.ability.negative
            end)() and not (context.other_joker.config.center.key == "j_jokerstencil") and (function()
                return G.jokers.cards[#G.jokers.cards] == context.other_joker
            end)() and not ((function()
                return G.jokers.cards[#G.jokers.cards] == card
            end)())) then
                return {
                    func = function()
                        local target_joker = nil
                        for i = #G.jokers.cards, 1, -1 do
                            local joker = G.jokers.cards[i]
                            if joker ~= card and not SMODS.is_eternal(joker) and not joker.getting_sliced then
                                target_joker = joker
                                break
                            end
                        end
                        
                        if target_joker then
                            target_joker.getting_sliced = true
                            G.E_MANAGER:add_event(Event({
                                func = function()
                                    target_joker:explode({G.C.RED}, nil, 1.6)
                                    return true
                                end
                            }))
                            card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Destroyed!", colour = G.C.RED})
                        end
                        return true
                    end,
                    extra = {
                        func = function()
                            
                            local created_joker = false
                            if #G.jokers.cards + G.GAME.joker_buffer < G.jokers.config.card_limit then
                                created_joker = true
                                G.GAME.joker_buffer = G.GAME.joker_buffer + 1
                                G.E_MANAGER:add_event(Event({
                                    func = function()
                                        local joker_card = SMODS.add_card({ set = 'Joker', key = 'j_jokerstencil' })
                                        if joker_card then
                                            joker_card:set_edition("e_negative", true)
                                            
                                        end
                                        G.GAME.joker_buffer = 0
                                        return true
                                    end
                                }))
                            end
                            if created_joker then
                                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Graffiti!", colour = G.C.BLUE})
                            end
                            return true
                        end,
                        colour = G.C.BLUE
                    }
                }
            end
        end
    end
}