module fpu8(
  input wire [2:0] op,
  input wire [7:0] a,
  input wire [7:0] b,
  output wire [7:0] out
);
  // lint_off MULTIPLY
  function automatic [7:0] umul8b_4b_x_4b (input reg [3:0] lhs, input reg [3:0] rhs);
    begin
      umul8b_4b_x_4b = lhs * rhs;
    end
  endfunction
  // lint_on MULTIPLY
  wire [2:0] a_fraction__11;
  wire [3:0] a_bexp__11;
  wire [2:0] b_fraction__10;
  wire [3:0] b_bexp__9;
  wire ne_2957;
  wire ugt_2960;
  wire ne_2963;
  wire [7:0] wide_x;
  wire [3:0] greater_exp_bexp;
  wire [7:0] wide_y;
  wire [7:0] wide_x__1;
  wire [3:0] sub_2974;
  wire [7:0] wide_y__1;
  wire [3:0] sub_2976;
  wire [7:0] dropped_x;
  wire [7:0] dropped_y;
  wire [3:0] shift_x;
  wire sticky_x;
  wire [3:0] shift_y;
  wire sticky_y;
  wire b_sign__5;
  wire a_sign__3;
  wire [7:0] shifted_x;
  wire [7:0] shifted_y;
  wire b__1_sign__1;
  wire greater_exp_sign;
  wire [7:0] addend_x__4;
  wire [7:0] addend_y__4;
  wire greater_exp_sign__1;
  wire [7:0] addend_x__5;
  wire [7:0] addend_y__5;
  wire [7:0] addend_x__7;
  wire [7:0] addend_y__7;
  wire [8:0] fraction;
  wire [8:0] fraction__1;
  wire [7:0] abs_fraction__2;
  wire [7:0] abs_fraction__3;
  wire [7:0] reverse_3024;
  wire [7:0] reverse_3025;
  wire [8:0] one_hot_3026;
  wire [8:0] one_hot_3027;
  wire [3:0] encode_3028;
  wire [3:0] encode_3029;
  wire carry_bit;
  wire cancel__2;
  wire carry_bit__1;
  wire cancel__1;
  wire [2:0] concat_3046;
  wire [7:0] leading_zeroes;
  wire [2:0] concat_3051;
  wire [7:0] leading_zeroes__1;
  wire [3:0] a_fraction__18;
  wire [3:0] b_fraction__15;
  wire [3:0] one_hot_3062;
  wire [6:0] carry_fraction;
  wire [7:0] add_3066;
  wire [3:0] one_hot_3067;
  wire [6:0] carry_fraction__2;
  wire [7:0] add_3071;
  wire [3:0] a_fraction__19;
  wire [3:0] b_fraction__16;
  wire [2:0] bit_slice_3078;
  wire [6:0] carry_fraction__1;
  wire [6:0] cancel_fraction;
  wire [2:0] bit_slice_3081;
  wire [6:0] carry_fraction__3;
  wire [6:0] cancel_fraction__1;
  wire [4:0] add_3085;
  wire eq_3086;
  wire eq_3087;
  wire [7:0] fraction__2;
  wire [6:0] shifted_fraction;
  wire [6:0] shifted_fraction__1;
  wire [5:0] exp;
  wire [7:0] fraction__3;
  wire [7:0] sticky;
  wire [2:0] normal_chunk;
  wire [2:0] fraction_high_bit;
  wire [1:0] half_way_chunk;
  wire [2:0] normal_chunk__1;
  wire [2:0] fraction_high_bit__2;
  wire [1:0] half_way_chunk__1;
  wire [5:0] exp__1;
  wire [7:0] fraction__4;
  wire [4:0] add_3124;
  wire [4:0] add_3128;
  wire [5:0] exp__2;
  wire do_round_up;
  wire do_round_up__1;
  wire [7:0] rounded_fraction;
  wire [7:0] rounded_fraction__1;
  wire [7:0] fraction__5;
  wire [7:0] sticky__1;
  wire rounding_carry;
  wire rounding_carry__1;
  wire [7:0] fraction__6;
  wire [4:0] concat_3153;
  wire [4:0] add_3161;
  wire [4:0] add_3163;
  wire [2:0] fraction__7;
  wire greater_than_half_way;
  wire [3:0] fraction__8;
  wire [5:0] add_3182;
  wire [5:0] add_3185;
  wire do_round_up__2;
  wire [3:0] add_3189;
  wire [5:0] wide_exponent;
  wire [5:0] wide_exponent__3;
  wire [3:0] fraction__9;
  wire [5:0] wide_exponent__1;
  wire [5:0] wide_exponent__4;
  wire [5:0] add_3199;
  wire [5:0] exp__3;
  wire sgt_3206;
  wire [3:0] max_exp__7;
  wire [3:0] max_exp__8;
  wire [3:0] max_exp__1;
  wire [3:0] max_exp__2;
  wire [4:0] result_exp;
  wire ne_3222;
  wire ne_3224;
  wire eq_3225;
  wire eq_3226;
  wire eq_3227;
  wire eq_3228;
  wire [4:0] wide_exponent__2;
  wire [4:0] wide_exponent__5;
  wire [4:0] result_exp__1;
  wire nor_3234;
  wire nor_3235;
  wire and_3236;
  wire and_3237;
  wire and_3240;
  wire and_3241;
  wire has_pos_inf;
  wire has_neg_inf;
  wire fraction_is_zero;
  wire has_pos_inf__1;
  wire has_neg_inf__1;
  wire fraction_is_zero__1;
  wire has_0_arg;
  wire has_inf_arg;
  wire [2:0] add_3263;
  wire and_reduce_3267;
  wire [2:0] add_3268;
  wire and_reduce_3272;
  wire and_reduce_3274;
  wire and_3275;
  wire and_3276;
  wire [2:0] fraction_high_bit__5;
  wire [7:0] shrl_3287;
  wire [7:0] shrl_3291;
  wire is_result_nan;
  wire result_sign;
  wire is_result_nan__1;
  wire result_sign__3;
  wire is_result_nan__2;
  wire eq_3302;
  wire eq_3303;
  wire eq_3304;
  wire [2:0] result_fraction;
  wire [2:0] sign_ext_3308;
  wire [2:0] result_fraction__1;
  wire [2:0] result_fraction__6;
  wire result_sign__1;
  wire result_sign__4;
  wire result_sign__6;
  wire [3:0] max_exp__3;
  wire [3:0] max_exp__4;
  wire [3:0] max_exp__5;
  wire [2:0] result_fraction__3;
  wire [2:0] fraction_high_bit__3;
  wire [2:0] result_fraction__2;
  wire [2:0] fraction_high_bit__4;
  wire [2:0] result_fraction__7;
  wire [2:0] fraction_high_bit__6;
  wire [2:0] concat_3334;
  wire result_sign__2;
  wire result_sign__5;
  wire result_sign__7;
  wire [3:0] concat_3338;
  wire [3:0] result_exponent__2;
  wire [3:0] result_exponent__1;
  wire [3:0] result_exp__4;
  wire [3:0] max_exp__6;
  wire [2:0] result_fraction__4;
  wire [2:0] result_fraction__5;
  wire [2:0] result_fraction__8;
  wire [2:0] fraction_high_bit__7;
  assign a_fraction__11 = a[2:0];
  assign a_bexp__11 = a[6:3];
  assign b_fraction__10 = b[2:0];
  assign b_bexp__9 = b[6:3];
  assign ne_2957 = a_bexp__11 != 4'h0;
  assign ugt_2960 = a_bexp__11 > b_bexp__9;
  assign ne_2963 = b_bexp__9 != 4'h0;
  assign wide_x = {{2'h0, a_fraction__11} | 5'h08, 3'h0};
  assign greater_exp_bexp = ugt_2960 ? a_bexp__11 : b_bexp__9;
  assign wide_y = {{2'h0, b_fraction__10} | 5'h08, 3'h0};
  assign wide_x__1 = wide_x & {8{ne_2957}};
  assign sub_2974 = {~a_bexp__11[3], a_bexp__11[2:0]} - greater_exp_bexp;
  assign wide_y__1 = wide_y & {8{ne_2963}};
  assign sub_2976 = {~b_bexp__9[3], b_bexp__9[2:0]} - greater_exp_bexp;
  assign dropped_x = sub_2974 >= 4'h8 ? 8'h00 : wide_x__1 << sub_2974;
  assign dropped_y = sub_2976 >= 4'h8 ? 8'h00 : wide_y__1 << sub_2976;
  assign shift_x = greater_exp_bexp - a_bexp__11;
  assign sticky_x = dropped_x[7:3] != 5'h00;
  assign shift_y = greater_exp_bexp - b_bexp__9;
  assign sticky_y = dropped_y[7:3] != 5'h00;
  assign b_sign__5 = b[7:7];
  assign a_sign__3 = a[7:7];
  assign shifted_x = shift_x >= 4'h8 ? 8'h00 : wide_x__1 >> shift_x;
  assign shifted_y = shift_y >= 4'h8 ? 8'h00 : wide_y__1 >> shift_y;
  assign b__1_sign__1 = ~b_sign__5;
  assign greater_exp_sign = ugt_2960 ? a_sign__3 : b_sign__5;
  assign addend_x__4 = shifted_x | {7'h00, sticky_x};
  assign addend_y__4 = shifted_y | {7'h00, sticky_y};
  assign greater_exp_sign__1 = ugt_2960 ? a_sign__3 : b__1_sign__1;
  assign addend_x__5 = a_sign__3 ^ greater_exp_sign ? -addend_x__4 : addend_x__4;
  assign addend_y__5 = b_sign__5 ^ greater_exp_sign ? -addend_y__4 : addend_y__4;
  assign addend_x__7 = a_sign__3 ^ greater_exp_sign__1 ? -addend_x__4 : addend_x__4;
  assign addend_y__7 = b__1_sign__1 ^ greater_exp_sign__1 ? -addend_y__4 : addend_y__4;
  assign fraction = {{1{addend_x__5[7]}}, addend_x__5} + {{1{addend_y__5[7]}}, addend_y__5};
  assign fraction__1 = {{1{addend_x__7[7]}}, addend_x__7} + {{1{addend_y__7[7]}}, addend_y__7};
  assign abs_fraction__2 = fraction[8] ? -fraction[7:0] : fraction[7:0];
  assign abs_fraction__3 = fraction__1[8] ? -fraction__1[7:0] : fraction__1[7:0];
  assign reverse_3024 = {abs_fraction__2[0], abs_fraction__2[1], abs_fraction__2[2], abs_fraction__2[3], abs_fraction__2[4], abs_fraction__2[5], abs_fraction__2[6], abs_fraction__2[7]};
  assign reverse_3025 = {abs_fraction__3[0], abs_fraction__3[1], abs_fraction__3[2], abs_fraction__3[3], abs_fraction__3[4], abs_fraction__3[5], abs_fraction__3[6], abs_fraction__3[7]};
  assign one_hot_3026 = {reverse_3024[7:0] == 8'h00, reverse_3024[7] && reverse_3024[6:0] == 7'h00, reverse_3024[6] && reverse_3024[5:0] == 6'h00, reverse_3024[5] && reverse_3024[4:0] == 5'h00, reverse_3024[4] && reverse_3024[3:0] == 4'h0, reverse_3024[3] && reverse_3024[2:0] == 3'h0, reverse_3024[2] && reverse_3024[1:0] == 2'h0, reverse_3024[1] && !reverse_3024[0], reverse_3024[0]};
  assign one_hot_3027 = {reverse_3025[7:0] == 8'h00, reverse_3025[7] && reverse_3025[6:0] == 7'h00, reverse_3025[6] && reverse_3025[5:0] == 6'h00, reverse_3025[5] && reverse_3025[4:0] == 5'h00, reverse_3025[4] && reverse_3025[3:0] == 4'h0, reverse_3025[3] && reverse_3025[2:0] == 3'h0, reverse_3025[2] && reverse_3025[1:0] == 2'h0, reverse_3025[1] && !reverse_3025[0], reverse_3025[0]};
  assign encode_3028 = {one_hot_3026[8], one_hot_3026[4] | one_hot_3026[5] | one_hot_3026[6] | one_hot_3026[7], one_hot_3026[2] | one_hot_3026[3] | one_hot_3026[6] | one_hot_3026[7], one_hot_3026[1] | one_hot_3026[3] | one_hot_3026[5] | one_hot_3026[7]};
  assign encode_3029 = {one_hot_3027[8], one_hot_3027[4] | one_hot_3027[5] | one_hot_3027[6] | one_hot_3027[7], one_hot_3027[2] | one_hot_3027[3] | one_hot_3027[6] | one_hot_3027[7], one_hot_3027[1] | one_hot_3027[3] | one_hot_3027[5] | one_hot_3027[7]};
  assign carry_bit = abs_fraction__2[7];
  assign cancel__2 = |encode_3028[3:1];
  assign carry_bit__1 = abs_fraction__3[7];
  assign cancel__1 = |encode_3029[3:1];
  assign concat_3046 = {~(carry_bit | cancel__2), cancel__2, carry_bit};
  assign leading_zeroes = {4'h0, encode_3028};
  assign concat_3051 = {~(carry_bit__1 | cancel__1), cancel__1, carry_bit__1};
  assign leading_zeroes__1 = {4'h0, encode_3029};
  assign a_fraction__18 = {1'h0, a_fraction__11} | 4'h8;
  assign b_fraction__15 = {1'h0, b_fraction__10} | 4'h8;
  assign one_hot_3062 = {concat_3046[2:0] == 3'h0, concat_3046[2] && concat_3046[1:0] == 2'h0, concat_3046[1] && !concat_3046[0], concat_3046[0]};
  assign carry_fraction = abs_fraction__2[7:1];
  assign add_3066 = leading_zeroes + 8'hff;
  assign one_hot_3067 = {concat_3051[2:0] == 3'h0, concat_3051[2] && concat_3051[1:0] == 2'h0, concat_3051[1] && !concat_3051[0], concat_3051[0]};
  assign carry_fraction__2 = abs_fraction__3[7:1];
  assign add_3071 = leading_zeroes__1 + 8'hff;
  assign a_fraction__19 = a_fraction__18 & {4{ne_2957}};
  assign b_fraction__16 = b_fraction__15 & {4{ne_2963}};
  assign bit_slice_3078 = one_hot_3062[2:0];
  assign carry_fraction__1 = carry_fraction | {6'h00, abs_fraction__2[0]};
  assign cancel_fraction = add_3066 >= 8'h07 ? 7'h00 : abs_fraction__2[6:0] << add_3066;
  assign bit_slice_3081 = one_hot_3067[2:0];
  assign carry_fraction__3 = carry_fraction__2 | {6'h00, abs_fraction__3[0]};
  assign cancel_fraction__1 = add_3071 >= 8'h07 ? 7'h00 : abs_fraction__3[6:0] << add_3071;
  assign add_3085 = {1'h0, a_bexp__11} + {1'h0, b_bexp__9};
  assign eq_3086 = a_bexp__11 == 4'h0;
  assign eq_3087 = b_bexp__9 == 4'h0;
  assign fraction__2 = umul8b_4b_x_4b(a_fraction__19, b_fraction__16);
  assign shifted_fraction = carry_fraction__1 & {7{bit_slice_3078[0]}} | cancel_fraction & {7{bit_slice_3078[1]}} | abs_fraction__2[6:0] & {7{bit_slice_3078[2]}};
  assign shifted_fraction__1 = carry_fraction__3 & {7{bit_slice_3081[0]}} | cancel_fraction__1 & {7{bit_slice_3081[1]}} | abs_fraction__3[6:0] & {7{bit_slice_3081[2]}};
  assign exp = {1'h0, add_3085} + 6'h39;
  assign fraction__3 = fraction__2 >> fraction__2[7];
  assign sticky = {7'h00, fraction__2[0]};
  assign normal_chunk = shifted_fraction[2:0];
  assign fraction_high_bit = 3'h4;
  assign half_way_chunk = shifted_fraction[3:2];
  assign normal_chunk__1 = shifted_fraction__1[2:0];
  assign fraction_high_bit__2 = 3'h4;
  assign half_way_chunk__1 = shifted_fraction__1[3:2];
  assign exp__1 = exp & {6{~(eq_3086 | eq_3087)}};
  assign fraction__4 = fraction__3 | sticky;
  assign add_3124 = {1'h0, shifted_fraction[6:3]} + 5'h01;
  assign add_3128 = {1'h0, shifted_fraction__1[6:3]} + 5'h01;
  assign exp__2 = exp__1 + {5'h00, fraction__2[7]};
  assign do_round_up = normal_chunk > fraction_high_bit | half_way_chunk == 2'h3;
  assign do_round_up__1 = normal_chunk__1 > fraction_high_bit__2 | half_way_chunk__1 == 2'h3;
  assign rounded_fraction = do_round_up ? {add_3124, normal_chunk} : {1'h0, shifted_fraction};
  assign rounded_fraction__1 = do_round_up__1 ? {add_3128, normal_chunk__1} : {1'h0, shifted_fraction__1};
  assign fraction__5 = $signed(exp__2) <= $signed(6'h00) ? {1'h0, fraction__4[7:1]} : fraction__4;
  assign sticky__1 = {7'h00, fraction__4[0]};
  assign rounding_carry = rounded_fraction[7];
  assign rounding_carry__1 = rounded_fraction__1[7];
  assign fraction__6 = fraction__5 | sticky__1;
  assign concat_3153 = {1'h0, greater_exp_bexp};
  assign add_3161 = concat_3153 + {4'h0, rounding_carry};
  assign add_3163 = concat_3153 + {4'h0, rounding_carry__1};
  assign fraction__7 = fraction__6[5:3];
  assign greater_than_half_way = fraction__6[2] & fraction__6[1:0] != 2'h0;
  assign fraction__8 = {1'h0, fraction__7};
  assign add_3182 = {1'h0, add_3161} + 6'h01;
  assign add_3185 = {1'h0, add_3163} + 6'h01;
  assign do_round_up__2 = greater_than_half_way | fraction__6[2] & ~(fraction__6[0] | fraction__6[1]) & fraction__6[3];
  assign add_3189 = fraction__8 + 4'h1;
  assign wide_exponent = add_3182 - {2'h0, encode_3028};
  assign wide_exponent__3 = add_3185 - {2'h0, encode_3029};
  assign fraction__9 = do_round_up__2 ? add_3189 : fraction__8;
  assign wide_exponent__1 = wide_exponent & {6{fraction != 9'h000}};
  assign wide_exponent__4 = wide_exponent__3 & {6{fraction__1 != 9'h000}};
  assign add_3199 = exp__2 + 6'h01;
  assign exp__3 = fraction__9[3] ? add_3199 : exp__2;
  assign sgt_3206 = $signed(exp__3) > $signed(6'h00);
  assign max_exp__7 = 4'hf;
  assign max_exp__8 = 4'hf;
  assign max_exp__1 = 4'hf;
  assign max_exp__2 = 4'hf;
  assign result_exp = exp__3[4:0];
  assign ne_3222 = a_fraction__11 != 3'h0;
  assign ne_3224 = b_fraction__10 != 3'h0;
  assign eq_3225 = a_bexp__11 == max_exp__1;
  assign eq_3226 = a_fraction__11 == 3'h0;
  assign eq_3227 = b_bexp__9 == max_exp__2;
  assign eq_3228 = b_fraction__10 == 3'h0;
  assign wide_exponent__2 = wide_exponent__1[4:0] & {5{~wide_exponent__1[5]}};
  assign wide_exponent__5 = wide_exponent__4[4:0] & {5{~wide_exponent__4[5]}};
  assign result_exp__1 = result_exp & {5{sgt_3206}};
  assign nor_3234 = ~(a_bexp__11 != max_exp__7 | ne_3222 | a_sign__3);
  assign nor_3235 = ~(b_bexp__9 != max_exp__8 | ne_3224 | b_sign__5);
  assign and_3236 = eq_3225 & eq_3226 & a_sign__3;
  assign and_3237 = eq_3227 & eq_3228 & b_sign__5;
  assign and_3240 = eq_3225 & eq_3226;
  assign and_3241 = eq_3227 & eq_3228;
  assign has_pos_inf = nor_3234 | nor_3235;
  assign has_neg_inf = and_3236 | and_3237;
  assign fraction_is_zero = fraction == 9'h000;
  assign has_pos_inf__1 = nor_3234 | and_3237;
  assign has_neg_inf__1 = and_3236 | nor_3235;
  assign fraction_is_zero__1 = fraction__1 == 9'h000;
  assign has_0_arg = eq_3086 | eq_3087;
  assign has_inf_arg = and_3240 | and_3241;
  assign add_3263 = {2'h0, rounding_carry} + 3'h3;
  assign and_reduce_3267 = &wide_exponent__2[3:0];
  assign add_3268 = {2'h0, rounding_carry__1} + 3'h3;
  assign and_reduce_3272 = &wide_exponent__5[3:0];
  assign and_reduce_3274 = &result_exp__1[3:0];
  assign and_3275 = eq_3225 & ne_3222;
  assign and_3276 = eq_3227 & ne_3224;
  assign fraction_high_bit__5 = 3'h4;
  assign shrl_3287 = rounded_fraction >> add_3263;
  assign shrl_3291 = rounded_fraction__1 >> add_3268;
  assign is_result_nan = and_3275 | and_3276 | has_pos_inf & has_neg_inf;
  assign result_sign = ~(~fraction[8] | greater_exp_sign) | ~(fraction[8] | fraction_is_zero | ~greater_exp_sign);
  assign is_result_nan__1 = and_3275 | and_3276 | has_pos_inf__1 & has_neg_inf__1;
  assign result_sign__3 = ~(~fraction__1[8] | greater_exp_sign__1) | ~(fraction__1[8] | fraction_is_zero__1 | ~greater_exp_sign__1);
  assign is_result_nan__2 = and_3275 | and_3276 | has_0_arg & has_inf_arg;
  assign eq_3302 = op == 3'h1;
  assign eq_3303 = op == 3'h2;
  assign eq_3304 = op == fraction_high_bit__5;
  assign result_fraction = shrl_3287[2:0];
  assign sign_ext_3308 = {3{~(and_3240 | and_3241)}};
  assign result_fraction__1 = shrl_3291[2:0];
  assign result_fraction__6 = fraction__9[2:0];
  assign result_sign__1 = has_inf_arg ? ~has_pos_inf : result_sign;
  assign result_sign__4 = has_inf_arg ? ~has_pos_inf__1 : result_sign__3;
  assign result_sign__6 = a_sign__3 ^ b_sign__5;
  assign max_exp__3 = 4'hf;
  assign max_exp__4 = 4'hf;
  assign max_exp__5 = 4'hf;
  assign result_fraction__3 = result_fraction & {3{(|wide_exponent__2[4:1]) | wide_exponent__2[0]}} & {3{~(wide_exponent__2[4] | and_reduce_3267)}} & sign_ext_3308;
  assign fraction_high_bit__3 = 3'h4;
  assign result_fraction__2 = result_fraction__1 & {3{(|wide_exponent__5[4:1]) | wide_exponent__5[0]}} & {3{~(wide_exponent__5[4] | and_reduce_3272)}} & sign_ext_3308;
  assign fraction_high_bit__4 = 3'h4;
  assign result_fraction__7 = result_fraction__6 & {3{sgt_3206}} & {3{~(result_exp__1[4] | and_reduce_3274)}} & sign_ext_3308;
  assign fraction_high_bit__6 = 3'h4;
  assign concat_3334 = {eq_3304, eq_3303, eq_3302};
  assign result_sign__2 = ~is_result_nan & result_sign__1;
  assign result_sign__5 = ~is_result_nan__1 & result_sign__4;
  assign result_sign__7 = ~is_result_nan__2 & result_sign__6;
  assign concat_3338 = {~(eq_3302 | eq_3303 | eq_3304), eq_3304, eq_3303, eq_3302};
  assign result_exponent__2 = is_result_nan | has_inf_arg | wide_exponent__2[4] | and_reduce_3267 ? max_exp__3 : wide_exponent__2[3:0];
  assign result_exponent__1 = is_result_nan__1 | has_inf_arg | wide_exponent__5[4] | and_reduce_3272 ? max_exp__4 : wide_exponent__5[3:0];
  assign result_exp__4 = is_result_nan__2 | has_inf_arg | result_exp__1[4] | and_reduce_3274 ? max_exp__5 : result_exp__1[3:0];
  assign max_exp__6 = 4'hf;
  assign result_fraction__4 = is_result_nan ? fraction_high_bit__3 : result_fraction__3;
  assign result_fraction__5 = is_result_nan__1 ? fraction_high_bit__4 : result_fraction__2;
  assign result_fraction__8 = is_result_nan__2 ? fraction_high_bit__6 : result_fraction__7;
  assign fraction_high_bit__7 = 3'h4;
  assign out = {result_sign__2 & concat_3334[0] | result_sign__5 & concat_3334[1] | result_sign__7 & concat_3334[2], result_exponent__2 & {4{concat_3338[0]}} | result_exponent__1 & {4{concat_3338[1]}} | result_exp__4 & {4{concat_3338[2]}} | max_exp__6 & {4{concat_3338[3]}}, result_fraction__4 & {3{concat_3338[0]}} | result_fraction__5 & {3{concat_3338[1]}} | result_fraction__8 & {3{concat_3338[2]}} | fraction_high_bit__7 & {3{concat_3338[3]}}};
endmodule
