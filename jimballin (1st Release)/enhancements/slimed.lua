
SMODS.Enhancement {
    key = 'slimed',
    pos = { x = 0, y = 0 },
    config = {
        extra = {
            xmult0 = 1.5,
            xmult = 1.5
        }
    },
    loc_txt = {
        name = 'Slimed',
        text = {
            [1] = 'When this card is active, gives {X:red,C:white}X1.5{} Mult if the',
            [2] = 'hand played contains your most played hand.'
        }
    },
    atlas = 'CustomEnhancements',
    any_suit = false,
    replace_base_card = false,
    no_rank = false,
    no_suit = false,
    always_scores = false,
    unlocked = true,
    discovered = true,
    no_collection = false,
    weight = 5,
    calculate = function(self, card, context)
        if context.main_scoring and context.cardarea == G.play then
            return {
                Xmult = 1.5
            }
        end
        if context.cardarea == G.hand and context.main_scoring then
            return {
                Xmult = 1.5
            }
        end
    end
}