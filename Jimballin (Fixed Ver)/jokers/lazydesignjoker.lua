
SMODS.Joker{ --lazy design joker
    key = "lazydesignjoker",
    config = {
        extra = {
            basediscardsperround = 0,
            xmult0 = 2
        }
    },
    loc_txt = {
        ['name'] = 'lazy design joker',
        ['text'] = {
            [1] = 'does somethin if dont discard.',
            [2] = 'uhhhh',
            [3] = 'its prolly a benefit.',
            [4] = 'alr thats good enough, in the mod you go'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 2,
        y = 0
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
    
    loc_vars = function(self, info_queue, card)
        
        return {vars = {(G.GAME.round_resets.discards or 0)}}
    end,
    
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            if to_big(G.GAME.current_round.discards_left) == to_big(G.GAME.round_resets.discards) then
                return {
                    Xmult = 2
                }
            end
        end
    end
}