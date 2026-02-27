
SMODS.Joker{ --Harold Patrick-Tyler Owings
    key = "unseen",
    config = {
        extra = {
            supernovaxmult = 1
        }
    },
    loc_txt = {
        ['name'] = 'Harold Patrick-Tyler Owings',
        ['text'] = {
            [1] = 'Hey everybody. Welcome to another modded Balatro card.',
            [2] = 'This time, we\'ll be featuring in the \"{X:planet,C:white}Jimballin\'{}\" mod.',
            [3] = 'In this new rarity of {C:legendary}Streamer{} joker, we\'ll be using an ability',
            [4] = 'that gains us {X:red,C:white}X2.7{} Mult at the start of a round, but',
            [5] = 'requiring and destroying a {C:dark_edition}Supernova{} Joker, as a',
            [6] = 'reference to both my favorite number & joker.',
            [7] = 'This really didn\'t seem too good at first, but it could get',
            [8] = 'absolutely insane later, due to a good synergy with other',
            [9] = '{C:rare}\"special\"{} secret jokers as easy {X:red,C:white}XMult{}. Thanks for reading!',
            [10] = 'Scale & Polychrome this card if you enjoy.',
            [11] = '{C:inactive}(twitch.tv/theunseenexplosion currently has {}{X:red,C:white}X#1#{} {C:inactive}gifted subs.){}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 3,
        y = 3
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 27,
    rarity = "jimballin_streamer",
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["jimballin_jimballin_jokers"] = true },
    soul_pos = {
        x = 4,
        y = 3
    },
    
    loc_vars = function(self, info_queue, card)
        
        return {vars = {card.ability.extra.supernovaxmult}}
    end,
    
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            return {
                Xmult = card.ability.extra.supernovaxmult
            }
        end
    end
}