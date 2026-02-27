
SMODS.Joker{ --IM NOT USING LINUX. STOP ASKING ME.
    key = "imnotusinglinuxstopaskingme",
    config = {
        extra = {
            xmult0 = 3
        }
    },
    loc_txt = {
        ['name'] = 'IM NOT USING LINUX. STOP ASKING ME.',
        ['text'] = {
            [1] = 'I\'M NOT USING LINUX JAKE!! STOP TRYING TO GET ME TO DOWNLOAD!!',
            [2] = 'YOU KNOW WHAT?! {X:red,C:white}X3{} MULT IF YOU HAVE ANYTHING BUT LINUX!!!! IT\'S BEEN 2 YEARS, SCREW YOU!!!!!',
        [3] = 'still love you tho :)'
    },
    ['unlock'] = {
        [1] = 'Unlocked by default.'
    }
},
pos = {
    x = 0,
    y = 2
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

calculate = function(self, card, context)
    if context.cardarea == G.jokers and context.joker_main  then
        if (love.system.getOS() == "OS X" or love.system.getOS() == "Windows" and love.system.getOS() == "Android" and love.system.getOS() == "iOS") then
            return {
                Xmult = 3
            }
        end
    end
end
}