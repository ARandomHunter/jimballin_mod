
SMODS.Back {
    key = 'distorted_deck',
    pos = { x = 0, y = 0 },
    config = {
        remove_faces = true,
        randomize_rank_suit = true,
    },
    loc_txt = {
        name = 'Distorted Deck',
        text = {
            [1] = 'Seremvo lal fo ruoy {C:red}sadcrisd{} adn esoncrtv hmet ot {C:blue}sdhna{}.',
            [2] = 'Arezsidmon yoru ckde, nad nsicoant no afec arcds.'
        },
    },
    unlocked = true,
    discovered = true,
    no_collection = false,
    atlas = 'CustomDecks',
    apply = function(self, back)
        G.GAME.starting_params.hands = 0
        G.GAME.starting_params.hands = G.GAME.starting_params.hands + 4
    end
}