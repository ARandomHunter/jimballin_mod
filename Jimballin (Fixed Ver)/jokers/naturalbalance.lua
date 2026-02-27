
SMODS.Joker{ --Natural Balance
    key = "naturalbalance",
    config = {
        extra = {
            repetitions0 = 1
        }
    },
    loc_txt = {
        ['name'] = 'Natural Balance',
        ['text'] = {
            [1] = 'Retrigger all cards once if scoring hand contains both a {C:heart}red{} {C:diamonds}suit{} and a {C:spade}black{} {C:clubs}suit{}.',
            [2] = '{C:inactive}(Idea by: DiggityDavid620){}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 1,
        y = 2
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 8,
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["jimballin_jimballin_jokers"] = true },
    soul_pos = {
        x = 2,
        y = 2
    },
    
    calculate = function(self, card, context)
        if context.repetition and context.cardarea == G.play  then
            if ((function()
                local count = 0
                for _, playing_card in pairs(context.scoring_hand or {}) do
                    if playing_card:is_suit("Spades") or playing_card:is_suit("Clubs") then
                        count = count + 1
                    end
                end
                return count >= 1
            end)() and (function()
                local count = 0
                for _, playing_card in pairs(context.scoring_hand or {}) do
                    if playing_card:is_suit("Hearts") or playing_card:is_suit("Diamonds") then
                        count = count + 1
                    end
                end
                return count >= 1
            end)()) then
                return {
                    repetitions = 1,
                    message = "Balanced!"
                }
            end
        end
    end
}