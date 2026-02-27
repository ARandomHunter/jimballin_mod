
SMODS.Enhancement {
    key = 'spectre',
    pos = { x = 1, y = 0 },
    loc_txt = {
        name = 'Spectre',
        text = {
            [1] = 'Creates a {C:spectral}spectral{} card when scored with exactly 0 discards on the last remaining hand.'
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
        if context.main_scoring and context.cardarea == G.play and (to_big(G.GAME.current_round.hands_left) == to_big(0) and to_big(G.GAME.current_round.discards_left) == to_big(0)) then
        end
    end
}