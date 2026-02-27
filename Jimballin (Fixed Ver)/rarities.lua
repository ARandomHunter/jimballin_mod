SMODS.Rarity {
    key = "streamer",
    pools = {
        ["Joker"] = true
    },
    default_weight = 0,
    badge_colour = HEX('6441a5'),
    loc_txt = {
        name = "Streamer"
    },
    get_weight = function(self, weight, object_type)
        return weight
    end,
}