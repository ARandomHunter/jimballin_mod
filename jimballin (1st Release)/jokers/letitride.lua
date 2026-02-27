
SMODS.Joker{ --Let It Ride
    key = "letitride",
    config = {
        extra = {
            dollars0 = 3,
            odds = 7,
            dollars = 0
        }
    },
    loc_txt = {
        ['name'] = 'Let It Ride',
        ['text'] = {
            [1] = '{C:inactive}\"All in on 17 Black!\"{}',
            [2] = '{X:money,C:white}X3${} at the end of the round.',
            [3] = 'Randomly loses it all.'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 6,
        y = 2
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 17,
    rarity = 3,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["jimballin_jimballin_jokers"] = true },
    
    loc_vars = function(self, info_queue, card)
        
        local new_numerator, new_denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'j_jimballin_letitride') 
        return {vars = {new_numerator, new_denominator}}
    end,
    
    calculate = function(self, card, context)
        if context.end_of_round and context.game_over == false and context.main_eval  then
            if true then
                return {
                    
                    func = function()
                        
                        local current_dollars = G.GAME.dollars
                        local target_dollars = G.GAME.dollars * 3
                        local dollar_value = target_dollars - current_dollars
                        ease_dollars(dollar_value)
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Let It Ride.", colour = G.C.MONEY})
                        return true
                    end
                    ,
                    func = function()
                        if SMODS.pseudorandom_probability(card, 'group_0_e754b07c', 1, card.ability.extra.odds, 'j_jimballin_letitride', false) then
                            SMODS.calculate_effect({
                                func = function()
                                    
                                    local current_dollars = G.GAME.dollars
                                    local target_dollars = 0
                                    local dollar_value = target_dollars - current_dollars
                                    ease_dollars(dollar_value)
                                    card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "FUCK VEGAS!", colour = G.C.MONEY})
                                    return true
                                end}, card)
                            end
                            return true
                        end
                    }
                end
            end
        end
    }