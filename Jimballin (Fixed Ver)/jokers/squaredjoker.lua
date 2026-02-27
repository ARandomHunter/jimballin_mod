
SMODS.Joker{ --Squared Joker
    key = "squaredjoker",
    config = {
        extra = {
            emult0 = 2
        }
    },
    loc_txt = {
        ['name'] = 'Squared Joker',
        ['text'] = {
            [1] = '{X:mult,C:white}^2{} Mult, but completely ruin any fun you might have.',
            [2] = '{C:inactive}Actually it\'s still a rectangle{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 7,
        y = 2
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 69,
    rarity = 3,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["jimballin_jimballin_jokers"] = true },
    
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            return {
                e_mult = 2
            }
        end
    end
}