
SMODS.Booster {
    key = 'small_jimballin_pack',
    loc_txt = {
        name = "small jimballin pack",
        text = {
            [1] = 'Pick your choice...'
        },
        group_name = "jimballin_boosters"
    },
    config = { extra = 2, choose = 1 },
    atlas = "CustomBoosters",
    pos = { x = 0, y = 0 },
    group_key = "jimballin_boosters",
    discovered = true,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {
            vars = { cfg.choose, cfg.extra }
        }
    end,
    create_card = function(self, card, i)
        return {
            set = "Joker",
            area = G.pack_cards,
            skip_materialize = true,
            soulable = true,
            key_append = "jimballin_small_jimballin_pack"
        }
    end,
    ease_background_colour = function(self)
        ease_colour(G.C.DYN_UI.MAIN, HEX("f5a623"))
        ease_background_colour({ new_colour = HEX('f5a623'), special_colour = HEX("217b67"), contrast = 2 })
    end,
    particles = function(self)
        -- No particles for joker packs
        end,
    }
    
    
    SMODS.Booster {
        key = 'smokin_that_jimballer_pack',
        loc_txt = {
            name = "SMOKIN THAT JIMBALLER PACK",
            text = {
                [1] = 'Jarvis, joke it a little'
            },
            group_name = "jimballin_boosters"
        },
        config = { extra = 5, choose = 2 },
        cost = 10,
        atlas = "CustomBoosters",
        pos = { x = 1, y = 0 },
        group_key = "jimballin_boosters",
        discovered = true,
        loc_vars = function(self, info_queue, card)
            local cfg = (card and card.ability) or self.config
            return {
                vars = { cfg.choose, cfg.extra }
            }
        end,
        create_card = function(self, card, i)
            return {
                set = "Joker",
                area = G.pack_cards,
                skip_materialize = true,
                soulable = true
            }
        end,
        particles = function(self)
            -- No particles for joker packs
            end,
        }
        