
SMODS.Joker{ --True Gloober
    key = "truegloober",
    config = {
        extra = {
            chips0 = 400,
            mult0 = 50,
            xmult0 = 3,
            blind_reward0 = 20
        }
    },
    loc_txt = {
        ['name'] = 'True Gloober',
        ['text'] = {
            [1] = '{C:blue}+400{} Chips, {C:red}+50{} Mult, {X:red,C:white}X3{} Mult, {C:gold}+$20{}, & turns all',
            [2] = 'unenhanced cards played into {C:green}Slimed{} Cards.',
            [3] = '{C:inactive}But, even godlike, they still love their parent back.{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 0,
        y = 3
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 20,
    rarity = 4,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["jimballin_jimballin_jokers"] = true },
    in_pool = function(self, args)
        return (
            not args 
            or args.source ~= 'sho' and args.source ~= 'buf' and args.source ~= 'jud' and args.source ~= 'sou' 
            or args.source == 'rif' or args.source == 'rta' or args.source == 'uta' or args.source == 'wra'
        )
        and true
    end, 
    
    calc_dollar_bonus = function(card)
        local blind_reward = 0
        blind_reward = blind_reward + math.max(20, 0)
        if blind_reward > 0 then
            return blind_reward
        end
    end,
    
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play  then
            if context.other_card.edition == nil then
                local scored_card = context.other_card
                G.E_MANAGER:add_event(Event({
                    func = function()
                        
                        scored_card:set_ability(G.P_CENTERS.m_jimballin_slimed)
                        card_eval_status_text(scored_card, 'extra', nil, nil, nil, {message = "Card Modified!", colour = G.C.ORANGE})
                        return true
                    end
                }))
            end
        end
        if context.cardarea == G.jokers and context.joker_main  then
            return {
                chips = 400,
                extra = {
                    mult = 50,
                    extra = {
                        Xmult = 3
                    }
                }
            }
        end
        if context.end_of_round and context.game_over == false and context.main_eval  then
        end
    end
}