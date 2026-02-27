
SMODS.Joker{ --Holy Bat Of The Purifier
    key = "holybatofthepurifier",
    config = {
        extra = {
            purified = 1,
            repetitions = 100
        }
    },
    loc_txt = {
        ['name'] = 'Holy Bat Of The Purifier',
        ['text'] = {
            [1] = '\"Metalic Purifier\'s Object\"',
            [2] = 'Weapon-Class Item',
            [3] = 'ATK: {X:red,C:white}X#1#{}',
            [4] = '',
            [5] = 'Special Item Effect: Purify the first discarded card',
            [6] = 'if it is alone and grow stronger. {C:dark_edition}Bonus{} damage to spectres.'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 8,
        y = 1
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
        x = 9,
        y = 1
    },
    
    loc_vars = function(self, info_queue, card)
        
        return {vars = {card.ability.extra.purified}}
    end,
    
    calculate = function(self, card, context)
        if context.discard  then
            if (to_big(#context.full_hand) == to_big(1) and G.GAME.current_round.discards_used <= 0) then
                return {
                    remove = true,
                    message = "Purified"
                }
            end
        end
        if context.buying_card and context.card.config.center.key == self.key and context.cardarea == G.jokers  then
            if true then
                for i = 1, 100 do
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            play_sound(" music_avatarbeat")
                            
                            return true
                        end,
                    }))
                    
                end
            end
        end
    end
}