
SMODS.Joker{ --Locked Joker
    key = "lockedjoker",
    config = {
        extra = {
        }
    },
    loc_txt = {
        ['name'] = 'Locked Joker',
        ['text'] = {
            [1] = '{X:red,C:white}X3{} Mult if the mod isn\'t installed.',
            [2] = '{C:inactive}(Currently{} {X:red,C:white}X1{}{C:inactive} Mult.){}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 4,
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
    pools = { ["jimballin_jimballin_jokers"] = true }
}