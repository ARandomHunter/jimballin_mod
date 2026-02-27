
SMODS.Joker{ --Kleki
    key = "kleki",
    config = {
        extra = {
            klekijokers = 22
        }
    },
    loc_txt = {
        ['name'] = 'Kleki',
        ['text'] = {
            [1] = '\"No no, I\'m switching to Aseprite any time now, I just need to finish this project.\"',
            [2] = 'Gains {C:red}+1{} Mult for every Joker in Jimballin\' drawn with a mouse using Kleki.',
            [3] = '{C:inactive}(Currently{} {C:red}+#1#{} {C:inactive}Mult){}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 5,
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
        
        return {vars = {card.ability.extra.klekijokers}}
    end,
    
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            return {
                mult = card.ability.extra.klekijokers
            }
        end
    end
}