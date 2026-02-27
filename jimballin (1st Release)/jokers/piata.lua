
SMODS.Joker{ --Piñata
    key = "piata",
    config = {
        extra = {
            cardsdestroyed = 0,
            odds = 20
        }
    },
    loc_txt = {
        ['name'] = 'Piñata',
        ['text'] = {
            [1] = 'Destroying a playing card 3 times destroys this and joker creates a random {C:rare}Rare{} Joker.',
            [2] = '{C:green}1 in 10{} chance to create a random {C:legendary}Legendary{} or {C:dark_edition}higher{} Joker.',
            [3] = '{C:inactive}(Chances can not be modified){}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 5,
        y = 1
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 7,
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["jimballin_jimballin_jokers"] = true },
    
    loc_vars = function(self, info_queue, card)
        
        local new_numerator, new_denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'j_jimballin_piata')
        local new_numerator2, new_denominator2 = SMODS.get_probability_vars(card, 1, card.ability.extra.odds2, 'j_jimballin_piata')
        return {vars = {card.ability.extra.cardsdestroyed, new_numerator, new_denominator, new_numerator2, new_denominator2}}
    end,
    
    calculate = function(self, card, context)
        if context.remove_playing_cards  then
            if to_big((card.ability.extra.cardsdestroyed or 0)) >= to_big(3) then
                return {
                    func = function()
                        local target_joker = card
                        
                        if target_joker then
                            if target_joker.ability.eternal then
                                target_joker.ability.eternal = nil
                            end
                            target_joker.getting_sliced = true
                            G.E_MANAGER:add_event(Event({
                                func = function()
                                    target_joker:start_dissolve({G.C.RED}, nil, 1.6)
                                    return true
                                end
                            }))
                            card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "POP!", colour = G.C.RED})
                        end
                        return true
                    end,
                    extra = {
                        func = function()
                            
                            local created_joker = true
                            G.E_MANAGER:add_event(Event({
                                func = function()
                                    local joker_card = SMODS.add_card({ set = 'Joker', rarity = 'Rare' })
                                    if joker_card then
                                        
                                        
                                    end
                                    
                                    return true
                                end
                            }))
                            
                            if created_joker then
                                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_plus_joker'), colour = G.C.BLUE})
                            end
                            return true
                        end,
                        colour = G.C.BLUE
                    }
                    ,
                    func = function()
                        if SMODS.pseudorandom_probability(card, 'group_0_044b601a', 1, card.ability.extra.odds, 'j_jimballin_piata', false) then
                            SMODS.calculate_effect({func = function()
                                
                                local created_joker = true
                                G.E_MANAGER:add_event(Event({
                                    func = function()
                                        local joker_card = SMODS.add_card({ set = 'Joker', rarity = 'Legendary' })
                                        if joker_card then
                                            
                                            
                                        end
                                        
                                        return true
                                    end
                                }))
                                
                                if created_joker then
                                    card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_plus_joker'), colour = G.C.BLUE})
                                end
                                return true
                            end}, card)
                        end
                        if SMODS.pseudorandom_probability(card, 'group_1_d0b741e1', 1, card.ability.extra.odds, 'j_jimballin_piata', false) then
                            SMODS.calculate_effect({func = function()
                                
                                local created_joker = true
                                G.E_MANAGER:add_event(Event({
                                    func = function()
                                        local joker_card = SMODS.add_card({ set = 'Joker', rarity = 'jimballin_streamer' })
                                        if joker_card then
                                            
                                            
                                        end
                                        
                                        return true
                                    end
                                }))
                                
                                if created_joker then
                                    card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_plus_joker'), colour = G.C.BLUE})
                                end
                                return true
                            end}, card)
                        end
                        return true
                    end
                }
            else
                return {
                    func = function()
                        card.ability.extra.cardsdestroyed = (card.ability.extra.cardsdestroyed) + 1
                        return true
                    end,
                    message = "Hit!"
                }
            end
        end
    end
}