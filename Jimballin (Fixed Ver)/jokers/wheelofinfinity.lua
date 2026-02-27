
SMODS.Joker{ --Wheel of Infinity
    key = "wheelofinfinity",
    config = {
        extra = {
            ante_value0 = 1,
            odds = 30,
            odds2 = 75,
            odds3 = 70,
            odds4 = 4,
            chips0_min = NaN,
            chips0_max = 200,
            xchips0_min = NaN,
            xchips0_max = 5,
            echips0 = 2,
            mult0_min = NaN,
            mult0_max = 21,
            xmult0_min = NaN,
            xmult0_max = 5,
            emult0_min = NaN,
            emult0_max = 3,
            dollars0_min = NaN,
            dollars0_max = 50,
            dollars_min = NaN,
            dollars_max = 5,
            blind_size0_min = NaN,
            blind_size0_max = 5,
            levels0_min = NaN,
            levels0_max = 5,
            hands0 = 1,
            discards0 = 1,
            hand_size0 = 1,
            booster_packs_edit0 = 1
        }
    },
    loc_txt = {
        ['name'] = 'Wheel of Infinity',
        ['text'] = {
            [1] = 'Legitimately anything any joker can do has a {C:green}1 in 30{} chance of triggering.'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 8,
        y = 2
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 20,
    rarity = 4,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["jimballin_jimballin_jokers"] = true },
    soul_pos = {
        x = 9,
        y = 2
    },
    in_pool = function(self, args)
        return (
            not args 
            or args.source ~= 'sho' 
            or args.source == 'buf' or args.source == 'jud' or args.source == 'rif' or args.source == 'rta' or args.source == 'sou' or args.source == 'uta' or args.source == 'wra'
        )
        and true
    end,
    
    loc_vars = function(self, info_queue, card)
        
        local new_numerator, new_denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'j_jimballin_wheelofinfinity')
        local new_numerator2, new_denominator2 = SMODS.get_probability_vars(card, 1, card.ability.extra.odds2, 'j_jimballin_wheelofinfinity')
        local new_numerator3, new_denominator3 = SMODS.get_probability_vars(card, 1, card.ability.extra.odds3, 'j_jimballin_wheelofinfinity')
        local new_numerator4, new_denominator4 = SMODS.get_probability_vars(card, 1, card.ability.extra.odds4, 'j_jimballin_wheelofinfinity')
        local new_numerator5, new_denominator5 = SMODS.get_probability_vars(card, 1, card.ability.extra.odds5, 'j_jimballin_wheelofinfinity')
        local new_numerator6, new_denominator6 = SMODS.get_probability_vars(card, 1, card.ability.extra.odds6, 'j_jimballin_wheelofinfinity')
        local new_numerator7, new_denominator7 = SMODS.get_probability_vars(card, 1, card.ability.extra.odds7, 'j_jimballin_wheelofinfinity')
        local new_numerator8, new_denominator8 = SMODS.get_probability_vars(card, 1, card.ability.extra.odds8, 'j_jimballin_wheelofinfinity')
        local new_numerator9, new_denominator9 = SMODS.get_probability_vars(card, 1, card.ability.extra.odds9, 'j_jimballin_wheelofinfinity')
        local new_numerator10, new_denominator10 = SMODS.get_probability_vars(card, 1, card.ability.extra.odds10, 'j_jimballin_wheelofinfinity')
        local new_numerator11, new_denominator11 = SMODS.get_probability_vars(card, 1, card.ability.extra.odds11, 'j_jimballin_wheelofinfinity')
        local new_numerator12, new_denominator12 = SMODS.get_probability_vars(card, 1, card.ability.extra.odds12, 'j_jimballin_wheelofinfinity')
        local new_numerator13, new_denominator13 = SMODS.get_probability_vars(card, 1, card.ability.extra.odds13, 'j_jimballin_wheelofinfinity')
        local new_numerator14, new_denominator14 = SMODS.get_probability_vars(card, 1, card.ability.extra.odds14, 'j_jimballin_wheelofinfinity')
        local new_numerator15, new_denominator15 = SMODS.get_probability_vars(card, 1, card.ability.extra.odds15, 'j_jimballin_wheelofinfinity')
        local new_numerator16, new_denominator16 = SMODS.get_probability_vars(card, 1, card.ability.extra.odds16, 'j_jimballin_wheelofinfinity')
        local new_numerator17, new_denominator17 = SMODS.get_probability_vars(card, 1, card.ability.extra.odds17, 'j_jimballin_wheelofinfinity')
        local new_numerator18, new_denominator18 = SMODS.get_probability_vars(card, 1, card.ability.extra.odds18, 'j_jimballin_wheelofinfinity')
        local new_numerator19, new_denominator19 = SMODS.get_probability_vars(card, 1, card.ability.extra.odds19, 'j_jimballin_wheelofinfinity')
        local new_numerator20, new_denominator20 = SMODS.get_probability_vars(card, 1, card.ability.extra.odds20, 'j_jimballin_wheelofinfinity')
        local new_numerator21, new_denominator21 = SMODS.get_probability_vars(card, 1, card.ability.extra.odds21, 'j_jimballin_wheelofinfinity')
        local new_numerator22, new_denominator22 = SMODS.get_probability_vars(card, 1, card.ability.extra.odds22, 'j_jimballin_wheelofinfinity')
        local new_numerator23, new_denominator23 = SMODS.get_probability_vars(card, 1, card.ability.extra.odds23, 'j_jimballin_wheelofinfinity')
        local new_numerator24, new_denominator24 = SMODS.get_probability_vars(card, 1, card.ability.extra.odds24, 'j_jimballin_wheelofinfinity')
        local new_numerator25, new_denominator25 = SMODS.get_probability_vars(card, 1, card.ability.extra.odds25, 'j_jimballin_wheelofinfinity')
        local new_numerator26, new_denominator26 = SMODS.get_probability_vars(card, 1, card.ability.extra.odds26, 'j_jimballin_wheelofinfinity')
        local new_numerator27, new_denominator27 = SMODS.get_probability_vars(card, 1, card.ability.extra.odds27, 'j_jimballin_wheelofinfinity')
        return {vars = {new_numerator, new_denominator, new_numerator2, new_denominator2, new_numerator3, new_denominator3, new_numerator4, new_denominator4, new_numerator5, new_denominator5, new_numerator6, new_denominator6, new_numerator7, new_denominator7, new_numerator8, new_denominator8, new_numerator9, new_denominator9, new_numerator10, new_denominator10, new_numerator11, new_denominator11, new_numerator12, new_denominator12, new_numerator13, new_denominator13, new_numerator14, new_denominator14, new_numerator15, new_denominator15, new_numerator16, new_denominator16, new_numerator17, new_denominator17, new_numerator18, new_denominator18, new_numerator19, new_denominator19, new_numerator20, new_denominator20, new_numerator21, new_denominator21, new_numerator22, new_denominator22, new_numerator23, new_denominator23, new_numerator24, new_denominator24, new_numerator25, new_denominator25, new_numerator26, new_denominator26, new_numerator27, new_denominator27}}
    end,
    
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            if true then
                local mod = 1 - G.GAME.round_resets.ante
                ease_ante(mod)
                G.E_MANAGER:add_event(Event({
                    func = function()
                        G.GAME.round_resets.blind_ante = 1
                        return true
                    end,
                }))
                return {
                    message = "Ante set to " .. 1 .. "!"
                    ,
                    func = function()
                        if SMODS.pseudorandom_probability(card, 'group_0_701d8620', 1, card.ability.extra.odds, 'j_jimballin_wheelofinfinity', false) then
                            SMODS.calculate_effect({chips = pseudorandom('RANGE:50|200', 50, 200)}, card)
                        end
                        if SMODS.pseudorandom_probability(card, 'group_1_a693ea6e', 1, card.ability.extra.odds, 'j_jimballin_wheelofinfinity', false) then
                            SMODS.calculate_effect({x_chips = pseudorandom('RANGE:2|5', 2, 5)}, card)
                        end
                        if SMODS.pseudorandom_probability(card, 'group_2_bdc9b66b', 1, card.ability.extra.odds, 'j_jimballin_wheelofinfinity', false) then
                            SMODS.calculate_effect({e_chips = 2}, card)
                        end
                        if SMODS.pseudorandom_probability(card, 'group_3_3e67a65a', 1, card.ability.extra.odds, 'j_jimballin_wheelofinfinity', false) then
                            SMODS.calculate_effect({mult = pseudorandom('RANGE:5|21', 5, 21)}, card)
                        end
                        if SMODS.pseudorandom_probability(card, 'group_4_df72c008', 1, card.ability.extra.odds, 'j_jimballin_wheelofinfinity', false) then
                            SMODS.calculate_effect({Xmult = pseudorandom('RANGE:3|5', 3, 5)}, card)
                        end
                        if SMODS.pseudorandom_probability(card, 'group_5_c04c6840', 1, card.ability.extra.odds, 'j_jimballin_wheelofinfinity', false) then
                            SMODS.calculate_effect({e_mult = pseudorandom('RANGE:2|3', 2, 3)}, card)
                        end
                        if SMODS.pseudorandom_probability(card, 'group_6_ad257e15', 1, card.ability.extra.odds, 'j_jimballin_wheelofinfinity', false) then
                            SMODS.calculate_effect({balance = true}, card)
                        end
                        if SMODS.pseudorandom_probability(card, 'group_7_f76e2ac1', 1, card.ability.extra.odds, 'j_jimballin_wheelofinfinity', false) then
                            SMODS.calculate_effect({
                                func = function()
                                    
                                    local current_dollars = G.GAME.dollars
                                    local target_dollars = G.GAME.dollars + pseudorandom('RANGE:10|50', 10, 50)
                                    local dollar_value = target_dollars - current_dollars
                                    ease_dollars(dollar_value)
                                    card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "+"..tostring(pseudorandom('RANGE:10|50', 10, 50)), colour = G.C.MONEY})
                                    return true
                                end}, card)
                            end
                            if SMODS.pseudorandom_probability(card, 'group_8_bc6389cd', 1, card.ability.extra.odds, 'j_jimballin_wheelofinfinity', false) then
                                SMODS.calculate_effect({
                                    func = function()
                                        
                                        local current_dollars = G.GAME.dollars
                                        local target_dollars = G.GAME.dollars * pseudorandom('RANGE:2|5', 2, 5)
                                        local dollar_value = target_dollars - current_dollars
                                        ease_dollars(dollar_value)
                                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "X"..tostring(pseudorandom('RANGE:2|5', 2, 5)), colour = G.C.MONEY})
                                        return true
                                    end}, card)
                                end
                                if SMODS.pseudorandom_probability(card, 'group_9_91ed55cd', 1, card.ability.extra.odds, 'j_jimballin_wheelofinfinity', false) then
                                    if G.GAME.blind and G.GAME.blind.boss and not G.GAME.blind.disabled then
                                        G.E_MANAGER:add_event(Event({
                                            func = function()
                                                G.GAME.blind:disable()
                                                play_sound('timpani')
                                                return true
                                            end
                                        }))
                                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('ph_boss_disabled'), colour = G.C.GREEN})
                                    end
                                    
                                end
                                if SMODS.pseudorandom_probability(card, 'group_10_62395ce0', 1, card.ability.extra.odds, 'j_jimballin_wheelofinfinity', false) then
                                    local card_front = pseudorandom_element(G.P_CARDS, pseudoseed('add_card_hand'))
                                    local base_card = create_playing_card({
                                        front = card_front,
                                        center = pseudorandom_element({G.P_CENTERS.m_gold, G.P_CENTERS.m_steel, G.P_CENTERS.m_glass, G.P_CENTERS.m_wild, G.P_CENTERS.m_mult, G.P_CENTERS.m_lucky, G.P_CENTERS.m_stone}, pseudoseed('add_card_hand_enhancement'))
                                    }, G.discard, true, false, nil, true)
                                    
                                    base_card:set_seal(pseudorandom_element({'Gold','Red','Blue','Purple'}, pseudoseed('add_card_hand_seal')), true)
                                    
                                    base_card:set_edition(pseudorandom_element({'e_foil','e_holo','e_polychrome','e_negative'}, pseudoseed('add_card_hand_edition')), true)
                                    
                                    G.playing_card = (G.playing_card and G.playing_card + 1) or 1
                                    local new_card = copy_card(base_card, nil, nil, G.playing_card)
                                    
                                    new_card:add_to_deck()
                                    
                                    G.deck.config.card_limit = G.deck.config.card_limit + 1
                                    G.deck:emplace(new_card)
                                    table.insert(G.playing_cards, new_card)
                                    
                                    base_card:remove()
                                    
                                    G.E_MANAGER:add_event(Event({
                                        func = function() 
                                            new_card:start_materialize()
                                            return true
                                        end
                                    }))
                                    card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Added Card!", colour = G.C.GREEN})
                                end
                                if SMODS.pseudorandom_probability(card, 'group_11_c695fa6a', 1, card.ability.extra.odds, 'j_jimballin_wheelofinfinity', false) then
                                    SMODS.calculate_effect({
                                        func = function()
                                            if G.GAME.blind.in_blind then
                                                
                                                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "/"..tostring(pseudorandom('RANGE:1|5', 1, 5)).." Blind Size", colour = G.C.GREEN})
                                                G.GAME.blind.chips = G.GAME.blind.chips / pseudorandom('RANGE:1|5', 1, 5)
                                                G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
                                                G.HUD_blind:recalculate()
                                                return true
                                            end
                                        end}, card)
                                    end
                                    if SMODS.pseudorandom_probability(card, 'group_12_ef92aa91', 1, card.ability.extra.odds, 'j_jimballin_wheelofinfinity', false) then
                                        local created_joker = false
                                        if #G.jokers.cards + G.GAME.joker_buffer < G.jokers.config.card_limit then
                                            created_joker = true
                                            G.GAME.joker_buffer = G.GAME.joker_buffer + 1
                                            G.E_MANAGER:add_event(Event({
                                                func = function()
                                                    local joker_card = SMODS.add_card({ set = 'Joker' })
                                                    if joker_card then
                                                        
                                                        
                                                    end
                                                    G.GAME.joker_buffer = 0
                                                    return true
                                                end
                                            }))
                                        end
                                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = created_joker and localize('k_plus_joker') or nil, colour = G.C.BLUE})
                                    end
                                    if SMODS.pseudorandom_probability(card, 'group_13_cb1493ad', 1, card.ability.extra.odds, 'j_jimballin_wheelofinfinity', false) then
                                        local available_jokers = {}
                                        for i, joker in ipairs(G.jokers.cards) do
                                            table.insert(available_jokers, joker)
                                        end
                                        local target_joker = #available_jokers > 0 and pseudorandom_element(available_jokers, pseudoseed('copy_joker')) or nil
                                        
                                        if target_joker and #G.jokers.cards + G.GAME.joker_buffer < G.jokers.config.card_limit then
                                            G.GAME.joker_buffer = G.GAME.joker_buffer + 1
                                            G.E_MANAGER:add_event(Event({
                                                func = function()
                                                    local copied_joker = copy_card(target_joker, nil, nil, nil, target_joker.edition and target_joker.edition.negative)
                                                    
                                                    copied_joker:add_to_deck()
                                                    G.jokers:emplace(copied_joker)
                                                    G.GAME.joker_buffer = 0
                                                    return true
                                                end
                                            }))
                                            card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_duplicated_ex'), colour = G.C.GREEN})
                                        end
                                        
                                    end
                                    if SMODS.pseudorandom_probability(card, 'group_14_2206d2dd', 1, card.ability.extra.odds2, 'j_jimballin_wheelofinfinity', false) then
                                        local target_joker = card
                                        
                                        if target_joker then
                                            target_joker.getting_sliced = true
                                            G.E_MANAGER:add_event(Event({
                                                func = function()
                                                    target_joker:start_dissolve({G.C.RED}, nil, 1.6)
                                                    return true
                                                end
                                            }))
                                            card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Destroyed!", colour = G.C.RED})
                                        end
                                        
                                    end
                                    if SMODS.pseudorandom_probability(card, 'group_15_07faa777', 1, card.ability.extra.odds, 'j_jimballin_wheelofinfinity', false) then
                                        for i = 1, math.min(pseudorandom('RANGE:1|3', 1, 3), G.consumeables.config.card_limit - #G.consumeables.cards) do
                                            G.E_MANAGER:add_event(Event({
                                                trigger = 'after',
                                                delay = 0.4,
                                                func = function()
                                                    play_sound('timpani')
                                                    local sets = {'Tarot', 'Planet', 'Spectral'}
                                                    local random_set = pseudorandom_element(sets, 'random_consumable_set')
                                                    SMODS.add_card({ set = random_set, soulable = true, })                            
                                                    card:juice_up(0.3, 0.5)
                                                    return true
                                                end
                                            }))
                                        end
                                        delay(0.6)
                                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = created_consumable and localize('k_plus_consumable') or nil, colour = G.C.PURPLE})
                                    end
                                    if SMODS.pseudorandom_probability(card, 'group_16_b217e4cd', 1, card.ability.extra.odds, 'j_jimballin_wheelofinfinity', false) then
                                        G.E_MANAGER:add_event(Event({
                                            func = function()
                                                local selected_tag = pseudorandom_element(G.P_TAGS, pseudoseed("create_tag")).key
                                                local tag = Tag(selected_tag)
                                                if tag.name == "Orbital Tag" then
                                                    local _poker_hands = {}
                                                    for k, v in pairs(G.GAME.hands) do
                                                        if v.visible then
                                                            _poker_hands[#_poker_hands + 1] = k
                                                        end
                                                    end
                                                    tag.ability.orbital_hand = pseudorandom_element(_poker_hands, "jokerforge_orbital")
                                                end
                                                tag:set_ability()
                                                add_tag(tag)
                                                play_sound('holo1', 1.2 + math.random() * 0.1, 0.4)
                                                return true
                                            end
                                        }))
                                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Created Tag!", colour = G.C.GREEN})
                                    end
                                    if SMODS.pseudorandom_probability(card, 'group_17_bcfb2516', 1, card.ability.extra.odds, 'j_jimballin_wheelofinfinity', false) then
                                        local available_hands = {}
                                        for hand, value in pairs(G.GAME.hands) do
                                            if value.visible and value.level >= to_big(1) then
                                                table.insert(available_hands, hand)
                                            end
                                        end
                                        local target_hand = #available_hands > 0 and pseudorandom_element(available_hands, pseudoseed('level_up_hand')) or "High Card"
                                        level_up_hand(card, target_hand, true, pseudorandom('RANGE:1|5', 1, 5))
                                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_level_up_ex'), colour = G.C.RED})
                                    end
                                    if SMODS.pseudorandom_probability(card, 'group_18_0535c930', 1, card.ability.extra.odds, 'j_jimballin_wheelofinfinity', false) then
                                        SMODS.calculate_effect({
                                            func = function()
                                                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "+"..tostring(1).." Hands", colour = G.C.GREEN})
                                                
                                                G.GAME.round_resets.hands = G.GAME.round_resets.hands + 1
                                                ease_hands_played(1)
                                                
                                                return true
                                            end}, card)
                                        end
                                        if SMODS.pseudorandom_probability(card, 'group_19_acd6fe5a', 1, card.ability.extra.odds, 'j_jimballin_wheelofinfinity', false) then
                                            SMODS.calculate_effect({
                                                func = function()
                                                    card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "+"..tostring(1).." Discards", colour = G.C.GREEN})
                                                    
                                                    G.GAME.round_resets.discards = G.GAME.round_resets.discards + 1
                                                    ease_discard(1)
                                                    
                                                    return true
                                                end}, card)
                                            end
                                            if SMODS.pseudorandom_probability(card, 'group_20_5fd42864', 1, card.ability.extra.odds, 'j_jimballin_wheelofinfinity', false) then
                                                SMODS.calculate_effect({
                                                    func = function()
                                                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "+"..tostring(1).." Hand Limit", colour = G.C.BLUE})
                                                        
                                                        G.hand:change_size(1)
                                                        return true
                                                    end}, card)
                                                end
                                                if SMODS.pseudorandom_probability(card, 'group_21_2deecf21', 1, card.ability.extra.odds, 'j_jimballin_wheelofinfinity', false) then
                                                    SMODS.calculate_effect({
                                                        func = function()
                                                            card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "+"..tostring(1).." Booster Size", colour = G.C.DARK_EDITION})
                                                            G.GAME.modifiers.booster_size_mod = (G.GAME.modifiers.booster_size_mod or 0) +1
                                                            return true
                                                        end}, card)
                                                    end
                                                    if SMODS.pseudorandom_probability(card, 'group_22_7e30547c', 1, card.ability.extra.odds3, 'j_jimballin_wheelofinfinity', false) then
                                                        for i = 1, 1 do
                                                            G.E_MANAGER:add_event(Event({
                                                                trigger = 'after',
                                                                delay = 0.4,
                                                                func = function()
                                                                    play_sound('timpani')
                                                                    SMODS.add_card({ set = 'Spectral', key = 'c_soul'})                            
                                                                    card:juice_up(0.3, 0.5)
                                                                    return true
                                                                end
                                                            }))
                                                        end
                                                        delay(0.6)
                                                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = created_consumable and localize('k_plus_spectral') or nil, colour = G.C.SECONDARY_SET.Spectral})
                                                    end
                                                    return true
                                                end
                                            }
                                        end
                                    end
                                end
                            }