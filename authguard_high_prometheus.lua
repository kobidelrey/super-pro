local lua_print = print;
local lua_error = error;
local lua_setmetatable = setmetatable;
local lua_rawset = rawset;
local lua_rawget = rawget;
local lua_pairs = pairs;
local lua_newproxy = newproxy;
local lua_getmetatable = getmetatable;
local lua_typeof = typeof;
local lua_assert = assert;
local lua_tostring = tostring;
local bit32_lib = bit32;
local bit_bxor = bit32_lib.bxor;
local bit_rrotate = bit32_lib.rrotate;
local bit_band = bit32_lib.band;
local bit_bor = bit32_lib.bor;
local bit_bxor_2 = bit32_lib.bxor;
local bit_lshift = bit32_lib.lshift;
local bit_rshift = bit32_lib.rshift;
local bit_lrotate = bit32_lib.lrotate;
local bit_rrotate_2 = bit32_lib.rrotate;
local bit_bxor_3 = bit_bxor_2;
local os_clock = os.clock;
local os_time = os.time;
local str_format = string.format;
local str_sub = string.sub;
local str_pack = string.pack;
local buffer_copy = buffer.copy;
local buffer_fill = buffer.fill;
local buffer_create = buffer.create;
local buffer_fromstring = buffer.fromstring;
local buffer_len = buffer.len;
local buffer_readu8 = buffer.readu8;
local buffer_readu16 = buffer.readu16;
local buffer_readu32 = buffer.readu32;
local buffer_tostring = buffer.tostring;
local buffer_writestring = buffer.writestring;
local buffer_writeu8 = buffer.writeu8;
local buffer_writeu16 = buffer.writeu16;
local buffer_writeu32 = buffer.writeu32;
local math_floor = math.floor;
local math_random = math.random;
local global_environment = getfenv();
local runtime_identifier = _VERSION:find(("Lune\000"):gsub("\000", "")) and "\000Lune" or "Luau";
local http_request = request;
local get_hardware_id = runtime_identifier == "\000Lune" and function()
    return "spxnso";
end or gethwid or function()
    return string.gsub(game:GetService("RbxAnalyticsService"):GetClientId(), "-", "");
end;
local start_time_clock = os_clock();
local infinite_loop = function()
    while true do
    end;
end;
local handle_crash_error = function(error_code)
    lua_print("[" .. (error_code .. "]: Crashed"));
    writefile("crash.log", "[" .. (error_code .. "]: Crashed"));
    return ;
end;
local magic_number_50 = 0;
local crash_code_0 = function()
    handle_crash_error(0);
    while true do
    end;
end;
local crash_code_16 = function()
    handle_crash_error(16);
    while true do
    end;
end;
local conditional_print = function(...)
    if not crash_code_16 then
        lua_print(...);
    end;
    return ;
end;
local magic_number_54 = magic_number_50 + 4.5;
local generate_junk_data = function(input_type_check)
    if input_type_check == "table" then
        local junk_table = {};
        local random_count = math_random(2, 10);
        if random_count < 2 and 10 < random_count then
            handle_crash_error(1);
            while true do
            end;
        end;
        local start_index = 1;
        local random_func = math_random;
        for loop_counter_junk = start_index, random_func(2, 10), 1 do
            junk_table[tostring({}) .. math_random(1000000, 2000000)] = tostring({}) .. math_random(1000000, 2000000);
        end;
        return junk_table;
    end;
    local hardcoded_type = "table";
    return __JUNK_CODE__("table", __JUNK_CODE__("table"));
end;
local check_setfenv_fail = function(func_to_check)
    return not pcall(function()
        setfenv(func_to_check, getfenv(func_to_check));
        return ;
    end);
end;
local check_stack_overflow = function(func_for_stack_overflow)
    for i_wrap_count = 1, 198, 1 do
        func_for_stack_overflow = coroutine.wrap(func_for_stack_overflow);
    end;
    local pcall_success, pcall_result = pcall(func_for_stack_overflow);
    if not pcall_success and string.find(pcall_result, "C stack overflow") then
        return true;
    end;
    return false;
end;
local obfuscated_rotation_func = function(input_value_70)
    local rotation_counter_77 = 0;
    local identity_wrapper_func = function(input_func_72)
        return function(value_identity)
            return value_identity;
        end;
    end;
    return (function(value_to_process)
        rotation_counter_77 = rotation_counter_77 + 1;
        if rotation_counter_77 == 82 then
            rotation_counter_77 = 0;
            return value_to_process;
        end;
        return identity_wrapper_func(function(value_identity_2)
            return value_identity_2;
        end)(value_to_process);
    end)(input_value_70);
end;
local obfuscated_value_wrapper = function(input_value_83)
    local rotation_counter_83 = 0;
    local metatable_wrapper = function(wrapped_value)
        return {
            __index = function()
                return wrapped_value;
            end
        };
    end;
    return (function(value_to_wrap)
        rotation_counter_83 = rotation_counter_83 + 1;
        if rotation_counter_83 == 82 then
            rotation_counter_83 = 0;
            return value_to_wrap;
        end;
        return metatable_wrapper({
            __index = function()
                return value_to_wrap;
            end
        }).__index();
    end)(input_value_83);
end;
local xpcall_fail_count = 0;
xpcall(tostring, function()
    xpcall_fail_count = xpcall_fail_count + 1;
    return ;
end);
xpcall(lua_setmetatable, function()
    xpcall_fail_count = xpcall_fail_count + 1;
    return ;
end);
xpcall(setfenv, function()
    xpcall_fail_count = xpcall_fail_count + 1;
    return ;
end);
xpcall(buffer.tostring, function()
    xpcall_fail_count = xpcall_fail_count + 1;
    return ;
end);
if xpcall_fail_count ~= 4 then
    handle_crash_error(2);
    while true do
    end;
end;
local magic_number_85 = magic_number_54 + 5.5 + 123;
local module_loader = nil;
module_loader = {
    cache = {},
    load = function(module_name)
        if not module_loader.cache[module_name] then
            module_loader.cache[module_name] = { c = module_loader[module_name]() };
        end;
        return module_loader.cache[module_name].c;
    end,
    a = function()
        return {
            ["\000generateSeed"] = function()
                local current_time = os.time();
                local current_clock = os.clock();
                local random_floor = math.floor(math.random() * 1000000);
                return (current_time * 1664525 + current_clock + random_floor) % 4294967296;
            end,
            ["\000lcg"] = function(seed_input, iteration_count, min_value, max_value)
                local result_table = {};
                local current_seed = seed_input;
                for i_iteration = 1, iteration_count, 1 do
                    current_seed = (1664525 * current_seed + 1013904223) % 4294967296;
                    result_table[i_iteration] = min_value + current_seed % (max_value - min_value + 1);
                end;
                return result_table;
            end,
            ["\000sign"] = function(signature_base, data_to_sign)
                return signature_base + (#data_to_sign % 1000) ^ 2;
            end
        };
    end,
    b = function()
        return {
            ["\000AES"] = function(input_key_aes)
                local sbox_buffer_large = buffer_create(131072);
                local mix_columns_1 = buffer_create(65536);
                local mix_columns_2 = buffer_create(65536);
                local inv_mix_columns_1 = buffer_create(65536);
                local inv_mix_columns_2 = buffer_create(65536);
                local inv_mix_columns_3 = buffer_create(65536);
                local cipher_modes = {
                    FwdMode = function(encrypt_block_func, unused_key_length, input_buffer, output_buffer, unused_cipher_modes, initialization_vector)
                        local data_length_minus_16 = buffer_len(input_buffer) - 16;
                        lua_assert(data_length_minus_16 % 16 == 0, "Input length must be a multiple of 16 bytes");
                        local iv_buffer = initialization_vector or buffer_create(16);
                        lua_assert(buffer_len(iv_buffer) == 16, "Initialization vector must be 16 bytes long");
                        buffer_writeu32(output_buffer, 0, bit_bxor(buffer_readu32(input_buffer, 0), buffer_readu32(iv_buffer, 0)));
                        buffer_writeu32(output_buffer, 4, bit_bxor(buffer_readu32(input_buffer, 4), buffer_readu32(iv_buffer, 4)));
                        buffer_writeu32(output_buffer, 8, bit_bxor(buffer_readu32(input_buffer, 8), buffer_readu32(iv_buffer, 8)));
                        buffer_writeu32(output_buffer, 12, bit_bxor(buffer_readu32(input_buffer, 12), buffer_readu32(iv_buffer, 12)));
                        encrypt_block_func(output_buffer, 0, output_buffer, 0);
                        for i_block_offset = 16, data_length_minus_16, 16 do
                            buffer_writeu32(output_buffer, i_block_offset, bit_bxor(buffer_readu32(input_buffer, i_block_offset), buffer_readu32(output_buffer, i_block_offset - 16)));
                            buffer_writeu32(output_buffer, i_block_offset + 4, bit_bxor(buffer_readu32(input_buffer, i_block_offset + 4), buffer_readu32(output_buffer, i_block_offset - 12)));
                            buffer_writeu32(output_buffer, i_block_offset + 8, bit_bxor(buffer_readu32(input_buffer, i_block_offset + 8), buffer_readu32(output_buffer, i_block_offset - 8)));
                            buffer_writeu32(output_buffer, i_block_offset + 12, bit_bxor(buffer_readu32(input_buffer, i_block_offset + 12), buffer_readu32(output_buffer, i_block_offset - 4)));
                            encrypt_block_func(output_buffer, i_block_offset, output_buffer, i_block_offset);
                        end;
                        return ;
                    end,
                    InvMode = function(unused_decrypt_block_func, block_decrypt_func, input_ciphertext_buffer, output_plaintext_buffer, unused_cipher_modes_inv, initialization_vector_inv)
                        local data_length_minus_16_inv = buffer_len(input_ciphertext_buffer) - 16;
                        lua_assert(data_length_minus_16_inv % 16 == 0, "Input length must be a multiple of 16 bytes");
                        local iv_buffer_inv = initialization_vector_inv or buffer_create(16);
                        lua_assert(buffer_len(iv_buffer_inv) == 16, "Initialization vector must be 16 bytes long");
                        local prev_block_word1 = buffer_readu32(input_ciphertext_buffer, 0);
                        local prev_block_word2 = buffer_readu32(input_ciphertext_buffer, 4);
                        local prev_block_word3 = buffer_readu32(input_ciphertext_buffer, 8);
                        local prev_block_word4 = buffer_readu32(input_ciphertext_buffer, 12);
                        local unused_word_placeholder_1 = nil;
                        local unused_word_placeholder_2 = nil;
                        local unused_word_placeholder_3 = nil;
                        local unused_word_placeholder_4 = nil;
                        block_decrypt_func(input_ciphertext_buffer, 0, output_plaintext_buffer, 0);
                        buffer_writeu32(output_plaintext_buffer, 0, bit_bxor(buffer_readu32(output_plaintext_buffer, 0), buffer_readu32(iv_buffer_inv, 0)));
                        buffer_writeu32(output_plaintext_buffer, 4, bit_bxor(buffer_readu32(output_plaintext_buffer, 4), buffer_readu32(iv_buffer_inv, 4)));
                        buffer_writeu32(output_plaintext_buffer, 8, bit_bxor(buffer_readu32(output_plaintext_buffer, 8), buffer_readu32(iv_buffer_inv, 8)));
                        buffer_writeu32(output_plaintext_buffer, 12, bit_bxor(buffer_readu32(output_plaintext_buffer, 12), buffer_readu32(iv_buffer_inv, 12)));
                        for i_block_offset_inv = 16, data_length_minus_16_inv, 16 do
                            local current_block_word1 = buffer_readu32(input_ciphertext_buffer, i_block_offset_inv);
                            local current_block_word2 = buffer_readu32(input_ciphertext_buffer, i_block_offset_inv + 4);
                            local current_block_word3 = buffer_readu32(input_ciphertext_buffer, i_block_offset_inv + 8);
                            local current_block_word4 = buffer_readu32(input_ciphertext_buffer, i_block_offset_inv + 12);
                            block_decrypt_func(input_ciphertext_buffer, i_block_offset_inv, output_plaintext_buffer, i_block_offset_inv);
                            buffer_writeu32(output_plaintext_buffer, i_block_offset_inv, bit_bxor(buffer_readu32(output_plaintext_buffer, i_block_offset_inv), prev_block_word1));
                            buffer_writeu32(output_plaintext_buffer, i_block_offset_inv + 4, bit_bxor(buffer_readu32(output_plaintext_buffer, i_block_offset_inv + 4), prev_block_word2));
                            buffer_writeu32(output_plaintext_buffer, i_block_offset_inv + 8, bit_bxor(buffer_readu32(output_plaintext_buffer, i_block_offset_inv + 8), prev_block_word3));
                            buffer_writeu32(output_plaintext_buffer, i_block_offset_inv + 12, bit_bxor(buffer_readu32(output_plaintext_buffer, i_block_offset_inv + 12), prev_block_word4));
                            prev_block_word1 = current_block_word1;
                            prev_block_word2 = current_block_word2;
                            prev_block_word3 = current_block_word3;
                            prev_block_word4 = current_block_word4;
                        end;
                        return ;
                    end
                };
                local padding_utilities = {
                    Pad = function(input_data, output_buffer_optional, block_size)
                        local current_data_length = buffer_len(input_data);
                        local aligned_length = current_data_length - current_data_length % block_size;
                        if output_buffer_optional then
                            lua_assert(buffer_len(output_buffer_optional) >= current_data_length + block_size, "Output buffer out of bounds");
                        else
                            output_buffer_optional = buffer_create(aligned_length + block_size);
                        end;
                        local padding_amount = block_size - current_data_length % block_size;
                        buffer_copy(output_buffer_optional, 0, input_data, 0, current_data_length);
                        buffer_fill(output_buffer_optional, current_data_length, padding_amount, padding_amount);
                        return output_buffer_optional;
                    end,
                    Unpad = function(input_padded_data, output_buffer_optional_unpad, block_size_unpad)
                        local padded_length = buffer_len(input_padded_data);
                        local padding_value = buffer_readu8(input_padded_data, padded_length - 1);
                        local data_length_unpadded = padded_length - padding_value;
                        lua_assert(0 < padding_value and padding_value <= block_size_unpad, "Got unexpected padding");
                        for i_padding_check = data_length_unpadded, padded_length - 2, 1 do
                            if buffer_readu8(input_padded_data, i_padding_check) ~= padding_value then
                                lua_error("Got unexpected padding");
                            end;
                        end;
                        if output_buffer_optional_unpad then
                            lua_assert(buffer_len(output_buffer_optional_unpad) >= data_length_unpadded, "Output buffer out of bounds");
                        else
                            output_buffer_optional_unpad = buffer_create(data_length_unpadded);
                        end;
                        buffer_copy(output_buffer_optional_unpad, 0, input_padded_data, 0, data_length_unpadded);
                        return output_buffer_optional_unpad;
                    end,
                    Overwrite = nil
                };
                local key_expansion = function(key_source, key_length_bytes, round_keys_buffer, is_buffer_source)
                    if is_buffer_source then
                        buffer_copy(round_keys_buffer, 0, key_source, 0, key_length_bytes);
                    else
                        buffer_writestring(round_keys_buffer, 0, key_source, key_length_bytes);
                    end;
                    local rcon_input_word = bit_rrotate(buffer_readu32(round_keys_buffer, key_length_bytes - 4), 8);
                    local rcon_value = 0.5;
                    if key_length_bytes == 32 then
                        for i_round_offset_32 = 32, 192, 32 do
                            rcon_value = rcon_value * 2 % 229;
                            local temp_word_1_32 = bit_bxor(buffer_readu32(round_keys_buffer, i_round_offset_32 - 32), buffer_readu16(sbox_buffer_large, math_floor(rcon_input_word / 65536) * 2) * 65536 + buffer_readu16(sbox_buffer_large, rcon_input_word % 65536 * 2), rcon_value);
                            buffer_writeu32(round_keys_buffer, i_round_offset_32, temp_word_1_32);
                            local temp_word_2_32 = bit_bxor(buffer_readu32(round_keys_buffer, i_round_offset_32 - 28), temp_word_1_32);
                            buffer_writeu32(round_keys_buffer, i_round_offset_32 + 4, temp_word_2_32);
                            local temp_word_3_32 = bit_bxor(buffer_readu32(round_keys_buffer, i_round_offset_32 - 24), temp_word_2_32);
                            buffer_writeu32(round_keys_buffer, i_round_offset_32 + 8, temp_word_3_32);
                            local temp_word_4_32 = bit_bxor(buffer_readu32(round_keys_buffer, i_round_offset_32 - 20), temp_word_3_32);
                            buffer_writeu32(round_keys_buffer, i_round_offset_32 + 12, temp_word_4_32);
                            local temp_word_5_32 = bit_bxor(buffer_readu32(round_keys_buffer, i_round_offset_32 - 16), buffer_readu16(sbox_buffer_large, math_floor(temp_word_4_32 / 65536) * 2) * 65536 + buffer_readu16(sbox_buffer_large, temp_word_4_32 % 65536 * 2));
                            buffer_writeu32(round_keys_buffer, i_round_offset_32 + 16, temp_word_5_32);
                            local temp_word_6_32 = bit_bxor(buffer_readu32(round_keys_buffer, i_round_offset_32 - 12), temp_word_5_32);
                            buffer_writeu32(round_keys_buffer, i_round_offset_32 + 20, temp_word_6_32);
                            local temp_word_7_32 = bit_bxor(buffer_readu32(round_keys_buffer, i_round_offset_32 - 8), temp_word_6_32);
                            buffer_writeu32(round_keys_buffer, i_round_offset_32 + 24, temp_word_7_32);
                            local temp_word_8_32 = bit_bxor(buffer_readu32(round_keys_buffer, i_round_offset_32 - 4), temp_word_7_32);
                            buffer_writeu32(round_keys_buffer, i_round_offset_32 + 28, temp_word_8_32);
                            rcon_input_word = bit_rrotate(temp_word_8_32, 8);
                        end;
                        local final_word_1_32 = bit_bxor(buffer_readu32(round_keys_buffer, 192), buffer_readu16(sbox_buffer_large, math_floor(rcon_input_word / 65536) * 2) * 65536 + buffer_readu16(sbox_buffer_large, rcon_input_word % 65536 * 2), 64);
                        buffer_writeu32(round_keys_buffer, 224, final_word_1_32);
                        local final_word_2_32 = bit_bxor(buffer_readu32(round_keys_buffer, 196), final_word_1_32);
                        buffer_writeu32(round_keys_buffer, 228, final_word_2_32);
                        local final_word_3_32 = bit_bxor(buffer_readu32(round_keys_buffer, 200), final_word_2_32);
                        buffer_writeu32(round_keys_buffer, 232, final_word_3_32);
                        buffer_writeu32(round_keys_buffer, 236, bit_bxor(buffer_readu32(round_keys_buffer, 204), final_word_3_32));
                    elseif key_length_bytes == 24 then
                        for i_round_offset_24 = 24, 168, 24 do
                            rcon_value = rcon_value * 2 % 229;
                            local temp_word_1_24 = bit_bxor(buffer_readu32(round_keys_buffer, i_round_offset_24 - 24), buffer_readu16(sbox_buffer_large, math_floor(rcon_input_word / 65536) * 2) * 65536 + buffer_readu16(sbox_buffer_large, rcon_input_word % 65536 * 2), rcon_value);
                            buffer_writeu32(round_keys_buffer, i_round_offset_24, temp_word_1_24);
                            local temp_word_2_24 = bit_bxor(buffer_readu32(round_keys_buffer, i_round_offset_24 - 20), temp_word_1_24);
                            buffer_writeu32(round_keys_buffer, i_round_offset_24 + 4, temp_word_2_24);
                            local temp_word_3_24 = bit_bxor(buffer_readu32(round_keys_buffer, i_round_offset_24 - 16), temp_word_2_24);
                            buffer_writeu32(round_keys_buffer, i_round_offset_24 + 8, temp_word_3_24);
                            local temp_word_4_24 = bit_bxor(buffer_readu32(round_keys_buffer, i_round_offset_24 - 12), temp_word_3_24);
                            buffer_writeu32(round_keys_buffer, i_round_offset_24 + 12, temp_word_4_24);
                            local temp_word_5_24 = bit_bxor(buffer_readu32(round_keys_buffer, i_round_offset_24 - 8), temp_word_4_24);
                            buffer_writeu32(round_keys_buffer, i_round_offset_24 + 16, temp_word_5_24);
                            local temp_word_6_24 = bit_bxor(buffer_readu32(round_keys_buffer, i_round_offset_24 - 4), temp_word_5_24);
                            buffer_writeu32(round_keys_buffer, i_round_offset_24 + 20, temp_word_6_24);
                            rcon_input_word = bit_rrotate(temp_word_6_24, 8);
                        end;
                        local final_word_1_24 = bit_bxor(buffer_readu32(round_keys_buffer, 168), buffer_readu16(sbox_buffer_large, math_floor(rcon_input_word / 65536) * 2) * 65536 + buffer_readu16(sbox_buffer_large, rcon_input_word % 65536 * 2), 128);
                        buffer_writeu32(round_keys_buffer, 192, final_word_1_24);
                        local final_word_2_24 = bit_bxor(buffer_readu32(round_keys_buffer, 172), final_word_1_24);
                        buffer_writeu32(round_keys_buffer, 196, final_word_2_24);
                        local final_word_3_24 = bit_bxor(buffer_readu32(round_keys_buffer, 176), final_word_2_24);
                        buffer_writeu32(round_keys_buffer, 200, final_word_3_24);
                        buffer_writeu32(round_keys_buffer, 204, bit_bxor(buffer_readu32(round_keys_buffer, 180), final_word_3_24));
                    else
                        for i_round_offset_16 = 16, 144, 16 do
                            rcon_value = rcon_value * 2 % 229;
                            local temp_word_1_16 = bit_bxor(buffer_readu32(round_keys_buffer, i_round_offset_16 - 16), buffer_readu16(sbox_buffer_large, math_floor(rcon_input_word / 65536) * 2) * 65536 + buffer_readu16(sbox_buffer_large, rcon_input_word % 65536 * 2), rcon_value);
                            buffer_writeu32(round_keys_buffer, i_round_offset_16, temp_word_1_16);
                            local temp_word_2_16 = bit_bxor(buffer_readu32(round_keys_buffer, i_round_offset_16 - 12), temp_word_1_16);
                            buffer_writeu32(round_keys_buffer, i_round_offset_16 + 4, temp_word_2_16);
                            local temp_word_3_16 = bit_bxor(buffer_readu32(round_keys_buffer, i_round_offset_16 - 8), temp_word_2_16);
                            buffer_writeu32(round_keys_buffer, i_round_offset_16 + 8, temp_word_3_16);
                            local temp_word_4_16 = bit_bxor(buffer_readu32(round_keys_buffer, i_round_offset_16 - 4), temp_word_3_16);
                            buffer_writeu32(round_keys_buffer, i_round_offset_16 + 12, temp_word_4_16);
                            rcon_input_word = bit_rrotate(temp_word_4_16, 8);
                        end;
                        local final_word_1_16 = bit_bxor(buffer_readu32(round_keys_buffer, 144), buffer_readu16(sbox_buffer_large, math_floor(rcon_input_word / 65536) * 2) * 65536 + buffer_readu16(sbox_buffer_large, rcon_input_word % 65536 * 2), 54);
                        buffer_writeu32(round_keys_buffer, 160, final_word_1_16);
                        local final_word_2_16 = bit_bxor(buffer_readu32(round_keys_buffer, 148), final_word_1_16);
                        buffer_writeu32(round_keys_buffer, 164, final_word_2_16);
                        local final_word_3_16 = bit_bxor(buffer_readu32(round_keys_buffer, 152), final_word_2_16);
                        buffer_writeu32(round_keys_buffer, 168, final_word_3_16);
                        buffer_writeu32(round_keys_buffer, 172, bit_bxor(buffer_readu32(round_keys_buffer, 156), final_word_3_16));
                    end;
                    return round_keys_buffer;
                end;
                local encrypt_aes_block = function(round_keys_buffer_enc, max_round_key_offset, input_data_buffer, input_offset, output_data_buffer, output_offset)
                    local state_byte_0 = bit_bxor(buffer_readu8(input_data_buffer, input_offset), buffer_readu8(round_keys_buffer_enc, 0));
                    local state_byte_1 = bit_bxor(buffer_readu8(input_data_buffer, input_offset + 1), buffer_readu8(round_keys_buffer_enc, 1));
                    local state_byte_2 = bit_bxor(buffer_readu8(input_data_buffer, input_offset + 2), buffer_readu8(round_keys_buffer_enc, 2));
                    local state_byte_3 = bit_bxor(buffer_readu8(input_data_buffer, input_offset + 3), buffer_readu8(round_keys_buffer_enc, 3));
                    local state_byte_4 = bit_bxor(buffer_readu8(input_data_buffer, input_offset + 4), buffer_readu8(round_keys_buffer_enc, 4));
                    local state_byte_5 = bit_bxor(buffer_readu8(input_data_buffer, input_offset + 5), buffer_readu8(round_keys_buffer_enc, 5));
                    local state_byte_6 = bit_bxor(buffer_readu8(input_data_buffer, input_offset + 6), buffer_readu8(round_keys_buffer_enc, 6));
                    local state_byte_7 = bit_bxor(buffer_readu8(input_data_buffer, input_offset + 7), buffer_readu8(round_keys_buffer_enc, 7));
                    local state_byte_8 = bit_bxor(buffer_readu8(input_data_buffer, input_offset + 8), buffer_readu8(round_keys_buffer_enc, 8));
                    local state_byte_9 = bit_bxor(buffer_readu8(input_data_buffer, input_offset + 9), buffer_readu8(round_keys_buffer_enc, 9));
                    local state_byte_10 = bit_bxor(buffer_readu8(input_data_buffer, input_offset + 10), buffer_readu8(round_keys_buffer_enc, 10));
                    local state_byte_11 = bit_bxor(buffer_readu8(input_data_buffer, input_offset + 11), buffer_readu8(round_keys_buffer_enc, 11));
                    local state_byte_12 = bit_bxor(buffer_readu8(input_data_buffer, input_offset + 12), buffer_readu8(round_keys_buffer_enc, 12));
                    local state_byte_13 = bit_bxor(buffer_readu8(input_data_buffer, input_offset + 13), buffer_readu8(round_keys_buffer_enc, 13));
                    local state_byte_14 = bit_bxor(buffer_readu8(input_data_buffer, input_offset + 14), buffer_readu8(round_keys_buffer_enc, 14));
                    local state_byte_15 = bit_bxor(buffer_readu8(input_data_buffer, input_offset + 15), buffer_readu8(round_keys_buffer_enc, 15));
                    local word_state_0 = state_byte_0 * 256 + state_byte_5;
                    local word_state_1 = state_byte_5 * 256 + state_byte_10;
                    local word_state_2 = state_byte_10 * 256 + state_byte_15;
                    local word_state_3 = state_byte_15 * 256 + state_byte_0;
                    local word_state_4 = state_byte_4 * 256 + state_byte_9;
                    local word_state_5 = state_byte_9 * 256 + state_byte_14;
                    local word_state_6 = state_byte_14 * 256 + state_byte_3;
                    local word_state_7 = state_byte_3 * 256 + state_byte_4;
                    local word_state_8 = state_byte_8 * 256 + state_byte_13;
                    local word_state_9 = state_byte_13 * 256 + state_byte_2;
                    local word_state_10 = state_byte_2 * 256 + state_byte_7;
                    local word_state_11 = state_byte_7 * 256 + state_byte_8;
                    local word_state_12 = state_byte_12 * 256 + state_byte_1;
                    local word_state_13 = state_byte_1 * 256 + state_byte_6;
                    local word_state_14 = state_byte_6 * 256 + state_byte_11;
                    local word_state_15 = state_byte_11 * 256 + state_byte_12;
                    for i_round_index = 16, max_round_key_offset, 16 do
                        local mixed_state_byte_0 = bit_bxor(buffer_readu8(mix_columns_1, word_state_0), buffer_readu8(mix_columns_2, word_state_2), buffer_readu8(round_keys_buffer_enc, i_round_index));
                        local mixed_state_byte_1 = bit_bxor(buffer_readu8(mix_columns_1, word_state_1), buffer_readu8(mix_columns_2, word_state_3), buffer_readu8(round_keys_buffer_enc, i_round_index + 1));
                        local mixed_state_byte_2 = bit_bxor(buffer_readu8(mix_columns_1, word_state_2), buffer_readu8(mix_columns_2, word_state_0), buffer_readu8(round_keys_buffer_enc, i_round_index + 2));
                        local mixed_state_byte_3 = bit_bxor(buffer_readu8(mix_columns_1, word_state_3), buffer_readu8(mix_columns_2, word_state_1), buffer_readu8(round_keys_buffer_enc, i_round_index + 3));
                        local mixed_state_byte_4 = bit_bxor(buffer_readu8(mix_columns_1, word_state_4), buffer_readu8(mix_columns_2, word_state_6), buffer_readu8(round_keys_buffer_enc, i_round_index + 4));
                        local mixed_state_byte_5 = bit_bxor(buffer_readu8(mix_columns_1, word_state_5), buffer_readu8(mix_columns_2, word_state_7), buffer_readu8(round_keys_buffer_enc, i_round_index + 5));
                        local mixed_state_byte_6 = bit_bxor(buffer_readu8(mix_columns_1, word_state_6), buffer_readu8(mix_columns_2, word_state_4), buffer_readu8(round_keys_buffer_enc, i_round_index + 6));
                        local mixed_state_byte_7 = bit_bxor(buffer_readu8(mix_columns_1, word_state_7), buffer_readu8(mix_columns_2, word_state_5), buffer_readu8(round_keys_buffer_enc, i_round_index + 7));
                        local mixed_state_byte_8 = bit_bxor(buffer_readu8(mix_columns_1, word_state_8), buffer_readu8(mix_columns_2, word_state_10), buffer_readu8(round_keys_buffer_enc, i_round_index + 8));
                        local mixed_state_byte_9 = bit_bxor(buffer_readu8(mix_columns_1, word_state_9), buffer_readu8(mix_columns_2, word_state_11), buffer_readu8(round_keys_buffer_enc, i_round_index + 9));
                        local mixed_state_byte_10 = bit_bxor(buffer_readu8(mix_columns_1, word_state_10), buffer_readu8(mix_columns_2, word_state_8), buffer_readu8(round_keys_buffer_enc, i_round_index + 10));
                        local mixed_state_byte_11 = bit_bxor(buffer_readu8(mix_columns_1, word_state_11), buffer_readu8(mix_columns_2, word_state_9), buffer_readu8(round_keys_buffer_enc, i_round_index + 11));
                        local mixed_state_byte_12 = bit_bxor(buffer_readu8(mix_columns_1, word_state_12), buffer_readu8(mix_columns_2, word_state_14), buffer_readu8(round_keys_buffer_enc, i_round_index + 12));
                        local mixed_state_byte_13 = bit_bxor(buffer_readu8(mix_columns_1, word_state_13), buffer_readu8(mix_columns_2, word_state_15), buffer_readu8(round_keys_buffer_enc, i_round_index + 13));
                        local mixed_state_byte_14 = bit_bxor(buffer_readu8(mix_columns_1, word_state_14), buffer_readu8(mix_columns_2, word_state_12), buffer_readu8(round_keys_buffer_enc, i_round_index + 14));
                        local mixed_state_byte_15 = bit_bxor(buffer_readu8(mix_columns_1, word_state_15), buffer_readu8(mix_columns_2, word_state_13), buffer_readu8(round_keys_buffer_enc, i_round_index + 15));
                        word_state_0, word_state_1, word_state_2, word_state_3, word_state_4, word_state_5, word_state_6, word_state_7, word_state_8, word_state_9, word_state_10, word_state_11, word_state_12, word_state_13, word_state_14, word_state_15 = mixed_state_byte_0 * 256 + mixed_state_byte_5, mixed_state_byte_5 * 256 + mixed_state_byte_10, mixed_state_byte_10 * 256 + mixed_state_byte_15, mixed_state_byte_15 * 256 + mixed_state_byte_0, mixed_state_byte_4 * 256 + mixed_state_byte_9, mixed_state_byte_9 * 256 + mixed_state_byte_14, mixed_state_byte_14 * 256 + mixed_state_byte_3, mixed_state_byte_3 * 256 + mixed_state_byte_4, mixed_state_byte_8 * 256 + mixed_state_byte_13, mixed_state_byte_13 * 256 + mixed_state_byte_2, mixed_state_byte_2 * 256 + mixed_state_byte_7, mixed_state_byte_7 * 256 + mixed_state_byte_8, mixed_state_byte_12 * 256 + mixed_state_byte_1, mixed_state_byte_1 * 256 + mixed_state_byte_6, mixed_state_byte_6 * 256 + mixed_state_byte_11, mixed_state_byte_11 * 256 + mixed_state_byte_12;
                    end;
                    buffer_writeu32(output_data_buffer, output_offset, bit_bxor(buffer_readu16(sbox_buffer_large, bit_bxor(buffer_readu8(mix_columns_1, word_state_15), buffer_readu8(mix_columns_2, word_state_13), buffer_readu8(round_keys_buffer_enc, max_round_key_offset + 31)) * 512 + bit_bxor(buffer_readu8(mix_columns_1, word_state_10), buffer_readu8(mix_columns_2, word_state_8), buffer_readu8(round_keys_buffer_enc, max_round_key_offset + 26)) * 2) * 65536 + buffer_readu16(sbox_buffer_large, bit_bxor(buffer_readu8(mix_columns_1, word_state_5), buffer_readu8(mix_columns_2, word_state_7), buffer_readu8(round_keys_buffer_enc, max_round_key_offset + 21)) * 512 + bit_bxor(buffer_readu8(mix_columns_1, word_state_0), buffer_readu8(mix_columns_2, word_state_2), buffer_readu8(round_keys_buffer_enc, max_round_key_offset + 16)) * 2), buffer_readu32(round_keys_buffer_enc, max_round_key_offset + 32)));
                    buffer_writeu32(output_data_buffer, output_offset + 4, bit_bxor(buffer_readu16(sbox_buffer_large, bit_bxor(buffer_readu8(mix_columns_1, word_state_3), buffer_readu8(mix_columns_2, word_state_1), buffer_readu8(round_keys_buffer_enc, max_round_key_offset + 19)) * 512 + bit_bxor(buffer_readu8(mix_columns_1, word_state_14), buffer_readu8(mix_columns_2, word_state_12), buffer_readu8(round_keys_buffer_enc, max_round_key_offset + 30)) * 2) * 65536 + buffer_readu16(sbox_buffer_large, bit_bxor(buffer_readu8(mix_columns_1, word_state_9), buffer_readu8(mix_columns_2, word_state_11), buffer_readu8(round_keys_buffer_enc, max_round_key_offset + 25)) * 512 + bit_bxor(buffer_readu8(mix_columns_1, word_state_4), buffer_readu8(mix_columns_2, word_state_6), buffer_readu8(round_keys_buffer_enc, max_round_key_offset + 20)) * 2), buffer_readu32(round_keys_buffer_enc, max_round_key_offset + 36)));
                    buffer_writeu32(output_data_buffer, output_offset + 8, bit_bxor(buffer_readu16(sbox_buffer_large, bit_bxor(buffer_readu8(mix_columns_1, word_state_7), buffer_readu8(mix_columns_2, word_state_5), buffer_readu8(round_keys_buffer_enc, max_round_key_offset + 23)) * 512 + bit_bxor(buffer_readu8(mix_columns_1, word_state_2), buffer_readu8(mix_columns_2, word_state_0), buffer_readu8(round_keys_buffer_enc, max_round_key_offset + 18)) * 2) * 65536 + buffer_readu16(sbox_buffer_large, bit_bxor(buffer_readu8(mix_columns_1, word_state_13), buffer_readu8(mix_columns_2, word_state_15), buffer_readu8(round_keys_buffer_enc, max_round_key_offset + 29)) * 512 + bit_bxor(buffer_readu8(mix_columns_1, word_state_8), buffer_readu8(mix_columns_2, word_state_10), buffer_readu8(round_keys_buffer_enc, max_round_key_offset + 24)) * 2), buffer_readu32(round_keys_buffer_enc, max_round_key_offset + 40)));
                    buffer_writeu32(output_data_buffer, output_offset + 12, bit_bxor(buffer_readu16(sbox_buffer_large, bit_bxor(buffer_readu8(mix_columns_1, word_state_11), buffer_readu8(mix_columns_2, word_state_9), buffer_readu8(round_keys_buffer_enc, max_round_key_offset + 27)) * 512 + bit_bxor(buffer_readu8(mix_columns_1, word_state_6), buffer_readu8(mix_columns_2, word_state_4), buffer_readu8(round_keys_buffer_enc, max_round_key_offset + 22)) * 2) * 65536 + buffer_readu16(sbox_buffer_large, bit_bxor(buffer_readu8(mix_columns_1, word_state_1), buffer_readu8(mix_columns_2, word_state_3), buffer_readu8(round_keys_buffer_enc, max_round_key_offset + 17)) * 512 + bit_bxor(buffer_readu8(mix_columns_1, word_state_12), buffer_readu8(mix_columns_2, word_state_14), buffer_readu8(round_keys_buffer_enc, max_round_key_offset + 28)) * 2), buffer_readu32(round_keys_buffer_enc, max_round_key_offset + 44)));
                    return ;
                end;
                local decrypt_aes_block = function(round_keys_buffer_dec, max_round_key_offset_dec, input_data_buffer_dec, input_offset_dec, output_data_buffer_dec, output_offset_dec)
                    local final_round_state_byte_0 = bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(input_data_buffer_dec, input_offset_dec) * 256 + buffer_readu8(round_keys_buffer_dec, max_round_key_offset_dec + 32)), buffer_readu8(round_keys_buffer_dec, max_round_key_offset_dec + 16));
                    local final_round_state_byte_1 = bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(input_data_buffer_dec, input_offset_dec + 13) * 256 + buffer_readu8(round_keys_buffer_dec, max_round_key_offset_dec + 45)), buffer_readu8(round_keys_buffer_dec, max_round_key_offset_dec + 17));
                    local final_round_state_byte_2 = bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(input_data_buffer_dec, input_offset_dec + 10) * 256 + buffer_readu8(round_keys_buffer_dec, max_round_key_offset_dec + 42)), buffer_readu8(round_keys_buffer_dec, max_round_key_offset_dec + 18));
                    local final_round_state_byte_3 = bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(input_data_buffer_dec, input_offset_dec + 7) * 256 + buffer_readu8(round_keys_buffer_dec, max_round_key_offset_dec + 39)), buffer_readu8(round_keys_buffer_dec, max_round_key_offset_dec + 19));
                    local final_round_state_byte_4 = bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(input_data_buffer_dec, input_offset_dec + 4) * 256 + buffer_readu8(round_keys_buffer_dec, max_round_key_offset_dec + 36)), buffer_readu8(round_keys_buffer_dec, max_round_key_offset_dec + 20));
                    local final_round_state_byte_5 = bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(input_data_buffer_dec, input_offset_dec + 1) * 256 + buffer_readu8(round_keys_buffer_dec, max_round_key_offset_dec + 33)), buffer_readu8(round_keys_buffer_dec, max_round_key_offset_dec + 21));
                    local final_round_state_byte_6 = bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(input_data_buffer_dec, input_offset_dec + 14) * 256 + buffer_readu8(round_keys_buffer_dec, max_round_key_offset_dec + 46)), buffer_readu8(round_keys_buffer_dec, max_round_key_offset_dec + 22));
                    local final_round_state_byte_7 = bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(input_data_buffer_dec, input_offset_dec + 11) * 256 + buffer_readu8(round_keys_buffer_dec, max_round_key_offset_dec + 43)), buffer_readu8(round_keys_buffer_dec, max_round_key_offset_dec + 23));
                    local final_round_state_byte_8 = bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(input_data_buffer_dec, input_offset_dec + 8) * 256 + buffer_readu8(round_keys_buffer_dec, max_round_key_offset_dec + 40)), buffer_readu8(round_keys_buffer_dec, max_round_key_offset_dec + 24));
                    local final_round_state_byte_9 = bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(input_data_buffer_dec, input_offset_dec + 5) * 256 + buffer_readu8(round_keys_buffer_dec, max_round_key_offset_dec + 37)), buffer_readu8(round_keys_buffer_dec, max_round_key_offset_dec + 25));
                    local final_round_state_byte_10 = bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(input_data_buffer_dec, input_offset_dec + 2) * 256 + buffer_readu8(round_keys_buffer_dec, max_round_key_offset_dec + 34)), buffer_readu8(round_keys_buffer_dec, max_round_key_offset_dec + 26));
                    local final_round_state_byte_11 = bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(input_data_buffer_dec, input_offset_dec + 15) * 256 + buffer_readu8(round_keys_buffer_dec, max_round_key_offset_dec + 47)), buffer_readu8(round_keys_buffer_dec, max_round_key_offset_dec + 27));
                    local final_round_state_byte_12 = bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(input_data_buffer_dec, input_offset_dec + 12) * 256 + buffer_readu8(round_keys_buffer_dec, max_round_key_offset_dec + 44)), buffer_readu8(round_keys_buffer_dec, max_round_key_offset_dec + 28));
                    local final_round_state_byte_13 = bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(input_data_buffer_dec, input_offset_dec + 9) * 256 + buffer_readu8(round_keys_buffer_dec, max_round_key_offset_dec + 41)), buffer_readu8(round_keys_buffer_dec, max_round_key_offset_dec + 29));
                    local final_round_state_byte_14 = bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(input_data_buffer_dec, input_offset_dec + 6) * 256 + buffer_readu8(round_keys_buffer_dec, max_round_key_offset_dec + 38)), buffer_readu8(round_keys_buffer_dec, max_round_key_offset_dec + 30));
                    local final_round_state_byte_15 = bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(input_data_buffer_dec, input_offset_dec + 3) * 256 + buffer_readu8(round_keys_buffer_dec, max_round_key_offset_dec + 35)), buffer_readu8(round_keys_buffer_dec, max_round_key_offset_dec + 31));
                    local current_state_reg_0 = final_round_state_byte_0 * 256 + final_round_state_byte_1;
                    local current_state_reg_1 = final_round_state_byte_1 * 256 + final_round_state_byte_2;
                    local current_state_reg_2 = final_round_state_byte_2 * 256 + final_round_state_byte_3;
                    local current_state_reg_3 = final_round_state_byte_3 * 256 + final_round_state_byte_0;
                    local current_state_reg_4 = final_round_state_byte_4 * 256 + final_round_state_byte_5;
                    local current_state_reg_5 = final_round_state_byte_5 * 256 + final_round_state_byte_6;
                    local current_state_reg_6 = final_round_state_byte_6 * 256 + final_round_state_byte_7;
                    local current_state_reg_7 = final_round_state_byte_7 * 256 + final_round_state_byte_4;
                    local current_state_reg_8 = final_round_state_byte_8 * 256 + final_round_state_byte_9;
                    local current_state_reg_9 = final_round_state_byte_9 * 256 + final_round_state_byte_10;
                    local current_state_reg_10 = final_round_state_byte_10 * 256 + final_round_state_byte_11;
                    local current_state_reg_11 = final_round_state_byte_11 * 256 + final_round_state_byte_8;
                    local current_state_reg_12 = final_round_state_byte_12 * 256 + final_round_state_byte_13;
                    local current_state_reg_13 = final_round_state_byte_13 * 256 + final_round_state_byte_14;
                    local current_state_reg_14 = final_round_state_byte_14 * 256 + final_round_state_byte_15;
                    local current_state_reg_15 = final_round_state_byte_15 * 256 + final_round_state_byte_12;
                    for i_decrypt_round_offset = max_round_key_offset_dec, 16, -16 do
                        local next_state_byte_0 = bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(inv_mix_columns_2, current_state_reg_0) * 256 + buffer_readu8(inv_mix_columns_3, current_state_reg_2)), buffer_readu8(round_keys_buffer_dec, i_decrypt_round_offset));
                        local next_state_byte_1 = bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(inv_mix_columns_2, current_state_reg_13) * 256 + buffer_readu8(inv_mix_columns_3, current_state_reg_15)), buffer_readu8(round_keys_buffer_dec, i_decrypt_round_offset + 1));
                        local next_state_byte_2 = bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(inv_mix_columns_2, current_state_reg_10) * 256 + buffer_readu8(inv_mix_columns_3, current_state_reg_8)), buffer_readu8(round_keys_buffer_dec, i_decrypt_round_offset + 2));
                        local next_state_byte_3 = bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(inv_mix_columns_2, current_state_reg_7) * 256 + buffer_readu8(inv_mix_columns_3, current_state_reg_5)), buffer_readu8(round_keys_buffer_dec, i_decrypt_round_offset + 3));
                        local next_state_byte_4 = bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(inv_mix_columns_2, current_state_reg_4) * 256 + buffer_readu8(inv_mix_columns_3, current_state_reg_6)), buffer_readu8(round_keys_buffer_dec, i_decrypt_round_offset + 4));
                        local next_state_byte_5 = bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(inv_mix_columns_2, current_state_reg_1) * 256 + buffer_readu8(inv_mix_columns_3, current_state_reg_3)), buffer_readu8(round_keys_buffer_dec, i_decrypt_round_offset + 5));
                        local next_state_byte_6 = bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(inv_mix_columns_2, current_state_reg_14) * 256 + buffer_readu8(inv_mix_columns_3, current_state_reg_12)), buffer_readu8(round_keys_buffer_dec, i_decrypt_round_offset + 6));
                        local next_state_byte_7 = bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(inv_mix_columns_2, current_state_reg_11) * 256 + buffer_readu8(inv_mix_columns_3, current_state_reg_9)), buffer_readu8(round_keys_buffer_dec, i_decrypt_round_offset + 7));
                        local next_state_byte_8 = bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(inv_mix_columns_2, current_state_reg_8) * 256 + buffer_readu8(inv_mix_columns_3, current_state_reg_10)), buffer_readu8(round_keys_buffer_dec, i_decrypt_round_offset + 8));
                        local next_state_byte_9 = bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(inv_mix_columns_2, current_state_reg_5) * 256 + buffer_readu8(inv_mix_columns_3, current_state_reg_7)), buffer_readu8(round_keys_buffer_dec, i_decrypt_round_offset + 9));
                        local next_state_byte_10 = bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(inv_mix_columns_2, current_state_reg_2) * 256 + buffer_readu8(inv_mix_columns_3, current_state_reg_0)), buffer_readu8(round_keys_buffer_dec, i_decrypt_round_offset + 10));
                        local next_state_byte_11 = bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(inv_mix_columns_2, current_state_reg_15) * 256 + buffer_readu8(inv_mix_columns_3, current_state_reg_13)), buffer_readu8(round_keys_buffer_dec, i_decrypt_round_offset + 11));
                        local next_state_byte_12 = bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(inv_mix_columns_2, current_state_reg_12) * 256 + buffer_readu8(inv_mix_columns_3, current_state_reg_14)), buffer_readu8(round_keys_buffer_dec, i_decrypt_round_offset + 12));
                        local next_state_byte_13 = bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(inv_mix_columns_2, current_state_reg_9) * 256 + buffer_readu8(inv_mix_columns_3, current_state_reg_11)), buffer_readu8(round_keys_buffer_dec, i_decrypt_round_offset + 13));
                        local next_state_byte_14 = bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(inv_mix_columns_2, current_state_reg_6) * 256 + buffer_readu8(inv_mix_columns_3, current_state_reg_4)), buffer_readu8(round_keys_buffer_dec, i_decrypt_round_offset + 14));
                        local next_state_byte_15 = bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(inv_mix_columns_2, current_state_reg_3) * 256 + buffer_readu8(inv_mix_columns_3, current_state_reg_1)), buffer_readu8(round_keys_buffer_dec, i_decrypt_round_offset + 15));
                        current_state_reg_0, current_state_reg_1, current_state_reg_2, current_state_reg_3, current_state_reg_4, current_state_reg_5, current_state_reg_6, current_state_reg_7, current_state_reg_8, current_state_reg_9, current_state_reg_10, current_state_reg_11, current_state_reg_12, current_state_reg_13, current_state_reg_14, current_state_reg_15 = next_state_byte_0 * 256 + next_state_byte_1, next_state_byte_1 * 256 + next_state_byte_2, next_state_byte_2 * 256 + next_state_byte_3, next_state_byte_3 * 256 + next_state_byte_0, next_state_byte_4 * 256 + next_state_byte_5, next_state_byte_5 * 256 + next_state_byte_6, next_state_byte_6 * 256 + next_state_byte_7, next_state_byte_7 * 256 + next_state_byte_4, next_state_byte_8 * 256 + next_state_byte_9, next_state_byte_9 * 256 + next_state_byte_10, next_state_byte_10 * 256 + next_state_byte_11, next_state_byte_11 * 256 + next_state_byte_8, next_state_byte_12 * 256 + next_state_byte_13, next_state_byte_13 * 256 + next_state_byte_14, next_state_byte_14 * 256 + next_state_byte_15, next_state_byte_15 * 256 + next_state_byte_12;
                    end;
                    buffer_writeu32(output_data_buffer_dec, output_offset_dec, bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(inv_mix_columns_2, current_state_reg_7) * 256 + buffer_readu8(inv_mix_columns_3, current_state_reg_5)), buffer_readu8(round_keys_buffer_dec, 3)) * 16777216 + bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(inv_mix_columns_2, current_state_reg_10) * 256 + buffer_readu8(inv_mix_columns_3, current_state_reg_8)), buffer_readu8(round_keys_buffer_dec, 2)) * 65536 + bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(inv_mix_columns_2, current_state_reg_13) * 256 + buffer_readu8(inv_mix_columns_3, current_state_reg_15)), buffer_readu8(round_keys_buffer_dec, 1)) * 256 + bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(inv_mix_columns_2, current_state_reg_0) * 256 + buffer_readu8(inv_mix_columns_3, current_state_reg_2)), buffer_readu8(round_keys_buffer_dec, 0)));
                    buffer_writeu32(output_data_buffer_dec, output_offset_dec + 4, bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(inv_mix_columns_2, current_state_reg_11) * 256 + buffer_readu8(inv_mix_columns_3, current_state_reg_9)), buffer_readu8(round_keys_buffer_dec, 7)) * 16777216 + bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(inv_mix_columns_2, current_state_reg_14) * 256 + buffer_readu8(inv_mix_columns_3, current_state_reg_12)), buffer_readu8(round_keys_buffer_dec, 6)) * 65536 + bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(inv_mix_columns_2, current_state_reg_1) * 256 + buffer_readu8(inv_mix_columns_3, current_state_reg_3)), buffer_readu8(round_keys_buffer_dec, 5)) * 256 + bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(inv_mix_columns_2, current_state_reg_4) * 256 + buffer_readu8(inv_mix_columns_3, current_state_reg_6)), buffer_readu8(round_keys_buffer_dec, 4)));
                    buffer_writeu32(output_data_buffer_dec, output_offset_dec + 8, bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(inv_mix_columns_2, current_state_reg_15) * 256 + buffer_readu8(inv_mix_columns_3, current_state_reg_13)), buffer_readu8(round_keys_buffer_dec, 11)) * 16777216 + bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(inv_mix_columns_2, current_state_reg_2) * 256 + buffer_readu8(inv_mix_columns_3, current_state_reg_0)), buffer_readu8(round_keys_buffer_dec, 10)) * 65536 + bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(inv_mix_columns_2, current_state_reg_5) * 256 + buffer_readu8(inv_mix_columns_3, current_state_reg_7)), buffer_readu8(round_keys_buffer_dec, 9)) * 256 + bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(inv_mix_columns_2, current_state_reg_8) * 256 + buffer_readu8(inv_mix_columns_3, current_state_reg_10)), buffer_readu8(round_keys_buffer_dec, 8)));
                    buffer_writeu32(output_data_buffer_dec, output_offset_dec + 12, bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(inv_mix_columns_2, current_state_reg_3) * 256 + buffer_readu8(inv_mix_columns_3, current_state_reg_1)), buffer_readu8(round_keys_buffer_dec, 15)) * 16777216 + bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(inv_mix_columns_2, current_state_reg_6) * 256 + buffer_readu8(inv_mix_columns_3, current_state_reg_4)), buffer_readu8(round_keys_buffer_dec, 14)) * 65536 + bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(inv_mix_columns_2, current_state_reg_9) * 256 + buffer_readu8(inv_mix_columns_3, current_state_reg_11)), buffer_readu8(round_keys_buffer_dec, 13)) * 256 + bit_bxor(buffer_readu8(inv_mix_columns_1, buffer_readu8(inv_mix_columns_2, current_state_reg_12) * 256 + buffer_readu8(inv_mix_columns_3, current_state_reg_14)), buffer_readu8(round_keys_buffer_dec, 12)));
                    return ;
                end;
                local sbox_fwd_buffer = buffer_create(256);
                local sbox_inv_buffer = buffer_create(256);
                local gf_mult_3_buffer = buffer_create(256);
                local gf_mult_9_buffer = buffer_create(256);
                local gf_mult_11_buffer = buffer_create(256);
                local gf_power_alpha = 1;
                local gf_inverse_input = 1;
                local unused_temp_nil_1 = nil;
                local galois_field_multiply = function(mult_factor, input_value_gf)
                    local gf_result_accumulator = 0;
                    for i_bit_counter = 0, 7, 1 do
                        if input_value_gf % 2 == 1 then
                            gf_result_accumulator = bit_bxor(gf_result_accumulator, mult_factor);
                        end;
                        mult_factor = if not (128 <= mult_factor) then mult_factor * 2 % 256 else bit_bxor(mult_factor * 2 % 256, 27);
                        input_value_gf = math_floor(input_value_gf / 2);
                    end;
                    return gf_result_accumulator;
                end;
                buffer_writeu8(sbox_fwd_buffer, 0, 99);
                for i_sbox_init = 1, 255, 1 do
                    gf_power_alpha = bit_bxor(gf_power_alpha, gf_power_alpha * 2, gf_power_alpha < 128 and 0 or 27) % 256;
                    local temp_affine_step_1 = bit_bxor(gf_inverse_input, gf_inverse_input * 2);
                    local temp_affine_step_2 = bit_bxor(temp_affine_step_1, temp_affine_step_1 * 4);
                    gf_inverse_input = bit_bxor(temp_affine_step_2, temp_affine_step_2 * 16) % 256;
                    if 128 <= gf_inverse_input then
                        gf_inverse_input = bit_bxor(gf_inverse_input, 9);
                    end;
                    local sbox_byte_value = bit_bxor(gf_inverse_input, gf_inverse_input % 128 * 2 + gf_inverse_input / 128, gf_inverse_input % 64 * 4 + gf_inverse_input / 64, gf_inverse_input % 32 * 8 + gf_inverse_input / 32, gf_inverse_input % 16 * 16 + gf_inverse_input / 16, 99);
                    buffer_writeu8(sbox_fwd_buffer, gf_power_alpha, sbox_byte_value);
                    buffer_writeu8(sbox_inv_buffer, sbox_byte_value, gf_power_alpha);
                    buffer_writeu8(gf_mult_3_buffer, gf_power_alpha, galois_field_multiply(3, gf_power_alpha));
                    buffer_writeu8(gf_mult_9_buffer, gf_power_alpha, galois_field_multiply(9, gf_power_alpha));
                    buffer_writeu8(gf_mult_11_buffer, gf_power_alpha, galois_field_multiply(11, gf_power_alpha));
                end;
                local unused_temp_nil_2 = nil;
                local unused_temp_nil_3 = nil;
                local unused_temp_nil_4 = nil;
                local unused_temp_nil_5 = nil;
                local lookup_table_index = 0;
                for i_outer_byte = 0, 255, 1 do
                    local sbox_fwd_value = buffer_readu8(sbox_fwd_buffer, i_outer_byte);
                    local sbox_fwd_value_shifted = sbox_fwd_value * 256;
                    local gf_mult_2_result, gf_mult_13_result, gf_mult_14_result = galois_field_multiply(2, sbox_fwd_value), galois_field_multiply(13, i_outer_byte), galois_field_multiply(14, i_outer_byte);
                    for i_inner_byte = 0, 255, 1 do
                        local sbox_fwd_value_inner = buffer_readu8(sbox_fwd_buffer, i_inner_byte);
                        buffer_writeu16(sbox_buffer_large, lookup_table_index * 2, sbox_fwd_value_shifted + sbox_fwd_value_inner);
                        buffer_writeu8(inv_mix_columns_1, lookup_table_index, buffer_readu8(sbox_inv_buffer, bit_bxor(i_outer_byte, i_inner_byte)));
                        buffer_writeu8(mix_columns_1, lookup_table_index, bit_bxor(gf_mult_2_result, buffer_readu8(gf_mult_3_buffer, sbox_fwd_value_inner)));
                        buffer_writeu8(mix_columns_2, lookup_table_index, bit_bxor(sbox_fwd_value, sbox_fwd_value_inner));
                        buffer_writeu8(inv_mix_columns_2, lookup_table_index, bit_bxor(gf_mult_14_result, buffer_readu8(gf_mult_11_buffer, i_inner_byte)));
                        buffer_writeu8(inv_mix_columns_3, lookup_table_index, bit_bxor(gf_mult_13_result, buffer_readu8(gf_mult_9_buffer, i_inner_byte)));
                        lookup_table_index = lookup_table_index + 1;
                    end;
                end;
                local aes_newindex_error = function(metatable_table, new_index_key)
                    return lua_error(string.format("%s cannot be assigned to", tostring(new_index_key)));
                end;
                local aes_tostring_func = function()
                    return "AesCipher";
                end;
                local create_round_keys = function(key_data, output_buffer_key_exp)
                    local is_key_buffer = lua_typeof(key_data) == "buffer";
                    local key_length = (is_key_buffer and { [1] = buffer_len(key_data) } or { [1] = #key_data })[1];
                    local round_keys_buffer_size = key_length == 32 and 240 or key_length == 16 and 176 or key_length == 24 and 208 or lua_error("Key must be either 16, 24 or 32 bytes long");
                    return key_expansion(key_data, key_length, output_buffer_key_exp or buffer_create(round_keys_buffer_size), is_key_buffer);
                end;
                return (function(round_keys_data, cipher_modes_config, padding_modes_config)
                    local round_keys_length = buffer_len(round_keys_data);
                    local max_block_offset = nil;
                    local original_key_string = nil;
                    local round_keys_string = buffer_tostring(round_keys_data);
                    if round_keys_length == 240 then
                        max_block_offset = 192;
                        original_key_string = str_sub(round_keys_string, 1, 32);
                    elseif round_keys_length == 208 then
                        max_block_offset = 160;
                        original_key_string = str_sub(round_keys_string, 1, 24);
                    elseif round_keys_length == 176 then
                        max_block_offset = 128;
                        original_key_string = str_sub(round_keys_string, 1, 16);
                    else
                        lua_error("Round keys must be either 240, 208 or 128 bytes long");
                    end;
                    local round_keys_buffer_instance = round_keys_data;
                    local cipher_modes_instance = cipher_modes_config or cipher_modes;
                    local fwd_mode_func = cipher_modes_instance.FwdMode;
                    local inv_mode_func = cipher_modes_instance.InvMode;
                    local segment_size = cipher_modes_instance.SegmentSize or 16;
                    local padding_modes_instance = padding_modes_config or padding_utilities;
                    local pad_func = padding_modes_instance.Pad;
                    local unpad_func = padding_modes_instance.Unpad;
                    local cipher_proxy = lua_newproxy(true);
                    local proxy_metatable = lua_getmetatable(cipher_proxy);
                    local encrypt_block_wrapper = function(input_buffer_ref, input_offset_ref, output_buffer_ref, output_offset_ref)
                        encrypt_aes_block(round_keys_buffer_instance, max_block_offset, input_buffer_ref, input_offset_ref, output_buffer_ref, output_offset_ref);
                        return ;
                    end;
                    local decrypt_block_wrapper = function(input_buffer_ref_dec, input_offset_ref_dec, output_buffer_ref_dec, output_offset_ref_dec)
                        decrypt_aes_block(round_keys_buffer_instance, max_block_offset, input_buffer_ref_dec, input_offset_ref_dec, output_buffer_ref_dec, output_offset_ref_dec);
                        return ;
                    end;
                    local encrypt_method = function(self_cipher_enc, input_data_enc, output_buffer_enc, ...)
                        local input_type_enc = lua_typeof(input_data_enc);
                        local input_buffer_instance_enc = (input_type_enc == "buffer" and { [1] = input_data_enc } or { [1] = (input_type_enc == "string" and { [1] = buffer_fromstring(input_data_enc) } or { [1] = lua_error(string.format("Unable to cast %s to buffer", tostring(input_type_enc))) })[1] })[1];
                        local output_buffer_instance_enc = lua_typeof(output_buffer_enc) == "buffer" and output_buffer_enc;
                        if self_cipher_enc ~= cipher_proxy then
                            return self_cipher_enc:Encrypt(input_buffer_instance_enc, output_buffer_instance_enc, ...);
                        end;
                        if max_block_offset then
                            local padded_input_buffer = pad_func(input_buffer_instance_enc, output_buffer_instance_enc, segment_size);
                            fwd_mode_func(encrypt_block_wrapper, decrypt_block_wrapper, (padding_modes_instance.Overwrite == false and { [1] = input_buffer_instance_enc } or { [1] = padded_input_buffer })[1], padded_input_buffer, cipher_modes_instance, ...);
                            return padded_input_buffer;
                        end;
                        lua_error("AesCipher object's already destroyed");
                        return buffer_create(0);
                    end;
                    local encrypt_block_method = function(self_cipher_enc_block, input_buffer_block, input_offset_block, output_buffer_block, output_offset_block)
                        if self_cipher_enc_block ~= cipher_proxy then
                            self_cipher_enc_block:EncryptBlock(input_buffer_block, input_offset_block, output_buffer_block, output_offset_block);
                        elseif max_block_offset then
                            encrypt_aes_block(round_keys_buffer_instance, max_block_offset, input_buffer_block, input_offset_block, output_buffer_block or input_buffer_block, output_offset_block or input_offset_block);
                        else
                            lua_error("AesCipher object's already destroyed");
                        end;
                        return ;
                    end;
                    local decrypt_method = function(self_cipher_dec, input_data_dec, output_buffer_dec, ...)
                        local input_type_dec = lua_typeof(input_data_dec);
                        local input_buffer_instance_dec = (input_type_dec == "buffer" and { [1] = input_data_dec } or { [1] = (input_type_dec == "string" and { [1] = buffer_fromstring(input_data_dec) } or { [1] = lua_error(string.format("Unable to cast %s to buffer", tostring(input_type_dec))) })[1] })[1];
                        local output_buffer_instance_dec = lua_typeof(output_buffer_dec) == "buffer" and output_buffer_dec;
                        if self_cipher_dec ~= cipher_proxy then
                            return self_cipher_dec:Decrypt(input_buffer_instance_dec, output_buffer_instance_dec, ...);
                        end;
                        if max_block_offset then
                            local overwrite_setting = padding_modes_instance.Overwrite;
                            local intermediate_decryption_buffer = (overwrite_setting == nil and { [1] = buffer_create(buffer_len(input_buffer_instance_dec)) } or { [1] = (overwrite_setting and { [1] = input_buffer_instance_dec } or { [1] = output_buffer_instance_dec or buffer_create(buffer_len(input_buffer_instance_dec)) })[1] })[1];
                            inv_mode_func(encrypt_block_wrapper, decrypt_block_wrapper, input_buffer_instance_dec, intermediate_decryption_buffer, cipher_modes_instance, ...);
                            return unpad_func(intermediate_decryption_buffer, output_buffer_instance_dec, segment_size);
                        end;
                        lua_error("AesCipher object's already destroyed");
                        return buffer_create(0);
                    end;
                    local decrypt_block_method = function(self_cipher_dec_block, input_buffer_block_dec, input_offset_block_dec, output_buffer_block_dec, output_offset_block_dec)
                        if self_cipher_dec_block ~= cipher_proxy then
                            self_cipher_dec_block:DecryptBlock(input_buffer_block_dec, input_offset_block_dec, output_buffer_block_dec, output_offset_block_dec);
                        elseif max_block_offset then
                            decrypt_aes_block(round_keys_buffer_instance, max_block_offset, input_buffer_block_dec, input_offset_block_dec, output_buffer_block_dec or input_buffer_block_dec, output_offset_block_dec or input_offset_block_dec);
                        else
                            lua_error("AesCipher object's already destroyed");
                        end;
                        return ;
                    end;
                    local destroy_method = function(self_cipher_destroy)
                        if self_cipher_destroy ~= cipher_proxy then
                            self_cipher_destroy:Destroy();
                        elseif max_block_offset then
                            round_keys_string, round_keys_buffer_instance, max_block_offset, fwd_mode_func, inv_mode_func, cipher_modes_instance, padding_modes_instance, original_key_string, round_keys_length = nil, nil, nil, nil, nil, nil, nil, nil, nil;
                        else
                            lua_error("AesCipher object's already destroyed");
                        end;
                        return ;
                    end;
                    local cipher_methods = { Encrypt = encrypt_method, Decrypt = decrypt_method, EncryptBlock = encrypt_block_method, DecryptBlock = decrypt_block_method, Destroy = destroy_method };
                    local cipher_properties = { Key = original_key_string, RoundKeys = round_keys_string, Mode = cipher_modes_instance, Padding = padding_modes_instance, Length = round_keys_length };
                    proxy_metatable.__index = function(self_metatable_index, key_metatable_index)
                        if cipher_methods[key_metatable_index] then
                            return cipher_methods[key_metatable_index];
                        end;
                        if max_block_offset and cipher_properties[key_metatable_index] then
                            return cipher_properties[key_metatable_index];
                        end;
                        if max_block_offset then
                            lua_error(("%s is not a valid member of AesCipher"):format(key_metatable_index));
                        else
                            lua_error("AesCipher object's already destroyed");
                        end;
                        return ;
                    end;
                    proxy_metatable.__newindex = aes_newindex_error;
                    proxy_metatable.__tostring = aes_tostring_func;
                    proxy_metatable.__len = function()
                        return round_keys_length or lua_error("AesCipher object's destroyed");
                    end;
                    proxy_metatable.__metatable = "AesCipher object: Metatable's locked";
                    return cipher_proxy;
                end)(create_round_keys(input_key_aes), cipher_modes, padding_utilities);
            end,
            ["\000ECC"] = function(ecc_input_context)
                local reduce_modulo_prime = function(word_array)
                    for i_word_index = 0, 15, 1 do
                        word_array[i_word_index] = word_array[i_word_index] + 65536;
                        local carry_value = word_array[i_word_index] / 65536 - word_array[i_word_index] / 65536 % 1;
                        if i_word_index < 15 then
                            word_array[i_word_index + 1] = word_array[i_word_index + 1] + carry_value - 1;
                        else
                            word_array[0] = word_array[0] + 38 * (carry_value - 1);
                        end;
                        word_array[i_word_index] = word_array[i_word_index] - carry_value * 65536;
                    end;
                    return ;
                end;
                local conditional_swap_add = function(array_a, array_b, condition)
                    for i_word_swap = 0, 15, 1 do
                        array_a[i_word_swap], array_b[i_word_swap] = array_a[i_word_swap] * ((condition - 1) % 2) + array_b[i_word_swap] * condition, array_b[i_word_swap] * ((condition - 1) % 2) + array_a[i_word_swap] * condition;
                    end;
                    return ;
                end;
                local bytes_to_words = function(output_word_array, input_byte_array)
                    for i_byte_to_word = 0, 15, 1 do
                        output_word_array[i_byte_to_word] = input_byte_array[2 * i_byte_to_word] + input_byte_array[2 * i_byte_to_word + 1] * 256;
                    end;
                    output_word_array[15] = output_word_array[15] % 32768;
                    return ;
                end;
                local words_to_bytes = function(output_byte_array, input_word_array)
                    local temp_word_array_1 = {};
                    local temp_word_array_2 = {};
                    for i_copy_word = 0, 15, 1 do
                        temp_word_array_1[i_copy_word] = input_word_array[i_copy_word];
                    end;
                    reduce_modulo_prime(temp_word_array_1);
                    reduce_modulo_prime(temp_word_array_1);
                    reduce_modulo_prime(temp_word_array_1);
                    local ecc_modulus_p_words = { [0] = 65517, [15] = 32767 };
                    for i_fill_modulus = 1, 14, 1 do
                        ecc_modulus_p_words[i_fill_modulus] = 65535;
                    end;
                    for i_reduction_check = 0, 1, 1 do
                        temp_word_array_2[0] = temp_word_array_1[0] - ecc_modulus_p_words[0];
                        for i_subtraction_propagate = 1, 15, 1 do
                            temp_word_array_2[i_subtraction_propagate] = temp_word_array_1[i_subtraction_propagate] - ecc_modulus_p_words[i_subtraction_propagate] - (temp_word_array_2[i_subtraction_propagate - 1] / 65536 - temp_word_array_2[i_subtraction_propagate - 1] / 65536 % 1) % 2;
                            temp_word_array_2[i_subtraction_propagate - 1] = (temp_word_array_2[i_subtraction_propagate - 1] + 65536) % 65536;
                        end;
                        local reduction_condition = (temp_word_array_2[15] / 65536 - temp_word_array_2[15] / 65536 % 1) % 2;
                        conditional_swap_add(temp_word_array_1, temp_word_array_2, 1 - reduction_condition);
                    end;
                    for i_word_to_byte = 0, 15, 1 do
                        output_byte_array[2 * i_word_to_byte] = temp_word_array_1[i_word_to_byte] % 256;
                        output_byte_array[2 * i_word_to_byte + 1] = temp_word_array_1[i_word_to_byte] / 256 - temp_word_array_1[i_word_to_byte] / 256 % 1;
                    end;
                    return ;
                end;
                local word_array_add = function(result_array_add, array_a_add, array_b_add)
                    for i_add_word = 0, 15, 1 do
                        result_array_add[i_add_word] = array_a_add[i_add_word] + array_b_add[i_add_word];
                    end;
                    return ;
                end;
                local word_array_subtract = function(result_array_sub, array_a_sub, array_b_sub)
                    for i_sub_word = 0, 15, 1 do
                        result_array_sub[i_sub_word] = array_a_sub[i_sub_word] - array_b_sub[i_sub_word];
                    end;
                    return ;
                end;
                local word_array_multiply = function(result_array_mult, array_a_mult, array_b_mult)
                    local mult_intermediate_result = {};
                    for i_zero_mult = 0, 31, 1 do
                        mult_intermediate_result[i_zero_mult] = 0;
                    end;
                    for i_mult_word_a = 0, 15, 1 do
                        for i_mult_word_b = 0, 15, 1 do
                            mult_intermediate_result[i_mult_word_a + i_mult_word_b] = mult_intermediate_result[i_mult_word_a + i_mult_word_b] + array_a_mult[i_mult_word_a] * array_b_mult[i_mult_word_b];
                        end;
                    end;
                    for i_reduce_pass_1 = 0, 14, 1 do
                        mult_intermediate_result[i_reduce_pass_1] = mult_intermediate_result[i_reduce_pass_1] + 38 * mult_intermediate_result[i_reduce_pass_1 + 16];
                    end;
                    for i_copy_final_mult = 0, 15, 1 do
                        result_array_mult[i_copy_final_mult] = mult_intermediate_result[i_copy_final_mult];
                    end;
                    reduce_modulo_prime(result_array_mult);
                    reduce_modulo_prime(result_array_mult);
                    return ;
                end;
                local modular_inverse = function(result_array_inv, input_array_inv)
                    local temp_input_copy = {};
                    for i_copy_input_inv = 0, 15, 1 do
                        temp_input_copy[i_copy_input_inv] = input_array_inv[i_copy_input_inv];
                    end;
                    for i_exponent_loop = 253, 0, -1 do
                        word_array_multiply(temp_input_copy, temp_input_copy, temp_input_copy);
                        if i_exponent_loop ~= 2 and i_exponent_loop ~= 4 then
                            word_array_multiply(temp_input_copy, temp_input_copy, input_array_inv);
                        end;
                    end;
                    for i_copy_final_inv = 0, 15, 1 do
                        result_array_inv[i_copy_final_inv] = temp_input_copy[i_copy_final_inv];
                    end;
                    return ;
                end;
                local scalar_multiplication = function(result_byte_array, scalar_byte_array, point_byte_array)
                    local r_x_word_array = {};
                    local r_z_word_array = {};
                    local q_x_word_array = {};
                    local q_z_word_array = {};
                    local temp_add_result = {};
                    local temp_mult_result = {};
                    local input_point_words = {};
                    local working_scalar_bytes = {};
                    bytes_to_words(input_point_words, point_byte_array);
                    for i_init_point_arrays = 0, 15, 1 do
                        local initial_point_word = input_point_words[i_init_point_arrays];
                        r_x_word_array[i_init_point_arrays] = 0;
                        r_z_word_array[i_init_point_arrays] = initial_point_word;
                        q_x_word_array[i_init_point_arrays] = 0;
                        q_z_word_array[i_init_point_arrays] = 0;
                    end;
                    r_x_word_array[0] = 1;
                    q_z_word_array[0] = 1;
                    for i_copy_scalar = 0, 30, 1 do
                        working_scalar_bytes[i_copy_scalar] = scalar_byte_array[i_copy_scalar];
                    end;
                    working_scalar_bytes[0] = working_scalar_bytes[0] - working_scalar_bytes[0] % 8;
                    working_scalar_bytes[31] = scalar_byte_array[31] % 64 + 64;
                    for i_montgomery_ladder = 254, 0, -1 do
                        local current_scalar_bit = (working_scalar_bytes[i_montgomery_ladder / 8 - i_montgomery_ladder / 8 % 1] / 2 ^ (i_montgomery_ladder % 8) - working_scalar_bytes[i_montgomery_ladder / 8 - i_montgomery_ladder / 8 % 1] / 2 ^ (i_montgomery_ladder % 8) % 1) % 2;
                        conditional_swap_add(r_x_word_array, r_z_word_array, current_scalar_bit);
                        conditional_swap_add(q_x_word_array, q_z_word_array, current_scalar_bit);
                        word_array_add(temp_add_result, r_x_word_array, q_x_word_array);
                        word_array_subtract(r_x_word_array, r_x_word_array, q_x_word_array);
                        word_array_add(q_x_word_array, r_z_word_array, q_z_word_array);
                        word_array_subtract(r_z_word_array, r_z_word_array, q_z_word_array);
                        word_array_multiply(q_z_word_array, temp_add_result, temp_add_result);
                        word_array_multiply(temp_mult_result, r_x_word_array, r_x_word_array);
                        word_array_multiply(r_x_word_array, q_x_word_array, r_x_word_array);
                        word_array_multiply(q_x_word_array, r_z_word_array, temp_add_result);
                        word_array_add(temp_add_result, r_x_word_array, q_x_word_array);
                        word_array_subtract(r_x_word_array, r_x_word_array, q_x_word_array);
                        word_array_multiply(r_z_word_array, r_x_word_array, r_x_word_array);
                        word_array_subtract(q_x_word_array, q_z_word_array, temp_mult_result);
                        word_array_multiply(r_x_word_array, q_x_word_array, { [0] = 56129, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 });
                        word_array_add(r_x_word_array, r_x_word_array, q_z_word_array);
                        word_array_multiply(q_x_word_array, q_x_word_array, r_x_word_array);
                        word_array_multiply(r_x_word_array, q_z_word_array, temp_mult_result);
                        word_array_multiply(q_z_word_array, r_z_word_array, input_point_words);
                        word_array_multiply(r_z_word_array, temp_add_result, temp_add_result);
                        conditional_swap_add(r_x_word_array, r_z_word_array, current_scalar_bit);
                        conditional_swap_add(q_x_word_array, q_z_word_array, current_scalar_bit);
                    end;
                    modular_inverse(q_x_word_array, q_x_word_array);
                    word_array_multiply(r_x_word_array, r_x_word_array, q_x_word_array);
                    words_to_bytes(result_byte_array, r_x_word_array);
                    return ;
                end;
                local generate_keypair = function(rng_source_func)
                    local rng_generator = rng_source_func or function()
                        return math.random(0, 255);
                    end;
                    local private_key_bytes = {};
                    local public_key_bytes = {};
                    for i_gen_byte = 0, 31, 1 do
                        private_key_bytes[i_gen_byte] = rng_generator();
                    end;
                    local base_point_coords = { [0] = 9 };
                    for i_fill_base_point = 1, 31, 1 do
                        base_point_coords[i_fill_base_point] = 0;
                    end;
                    scalar_multiplication(public_key_bytes, private_key_bytes, base_point_coords);
                    return private_key_bytes, public_key_bytes;
                end;
                local get_shared_secret = function(private_key_a, public_key_b)
                    local shared_secret_key = {};
                    scalar_multiplication(shared_secret_key, private_key_a, public_key_b);
                    return shared_secret_key;
                end;
                return { generate_keypair = generate_keypair, get_shared_key = get_shared_secret };
            end,
            ["\000HASH"] = function(hash_input_string)
                local memoized_table_factory = function(lookup_table_generator_func)
                    local cache_metatable = {};
                    local lookup_cache_proxy = lua_setmetatable({}, cache_metatable);
                    cache_metatable.__index = function(self_cache_index, key_cache_index)
                        local generated_value = lookup_table_generator_func(key_cache_index);
                        lookup_cache_proxy[key_cache_index] = generated_value;
                        return generated_value;
                    end;
                    return lookup_cache_proxy;
                end;
                local create_mixer_func = function(lookup_table, base_number)
                    return function(input_a_mixing, input_b_mixing)
                        local mixing_result = 0;
                        local power_multiplier = 1;
                        while input_a_mixing ~= 0 and input_b_mixing ~= 0 do
                            local input_a_mod = input_a_mixing % base_number;
                            local input_b_mod = input_b_mixing % base_number;
                            mixing_result = mixing_result + lookup_table[input_a_mod][input_b_mod] * power_multiplier;
                            input_a_mixing = (input_a_mixing - input_a_mod) / base_number;
                            input_b_mixing = (input_b_mixing - input_b_mod) / base_number;
                            power_multiplier = power_multiplier * base_number;
                        end;
                        return mixing_result + (input_a_mixing + input_b_mixing) * power_multiplier;
                    end;
                end;
                local xor_hash_mixer = (function(initial_xor_table)
                    local base_2_mixer = create_mixer_func(initial_xor_table, 2);
                    local memoized_mixer_layer_1 = memoized_table_factory(function(cache_key_a)
                        return memoized_table_factory(function(cache_key_b)
                            return base_2_mixer(cache_key_a, cache_key_b);
                        end);
                    end);
                    return create_mixer_func(memoized_mixer_layer_1, 2 ^ (initial_xor_table.n or 1));
                end)({ [0] = { [0] = 0, [1] = 1 }, { [0] = 1, [1] = 0 }, n = 4 });
                local bit_bxor_recursive;
                bit_bxor_recursive = function(val_a, val_b, val_c_or_rest, ...)
                    local unused_placeholder_512 = nil;
                    if val_b then
                        local val_a_mod_word = val_a % 4294967296;
                        local val_b_mod_word = val_b % 4294967296;
                        local intermediate_xor_result = xor_hash_mixer(val_a_mod_word, val_b_mod_word);
                        if val_c_or_rest then
                            intermediate_xor_result = bit_bxor_recursive(intermediate_xor_result, val_c_or_rest, ...);
                        end;
                        return intermediate_xor_result;
                    end;
                    if val_a then
                        return val_a % 4294967296;
                    end;
                    return 0;
                end;
                local bit_band_recursive = function(val_a_and, val_b_and, val_c_or_rest_and, ...)
                    local unused_placeholder_519 = nil;
                    if val_b_and then
                        local val_a_mod_word_and = val_a_and % 4294967296;
                        local val_b_mod_word_and = val_b_and % 4294967296;
                        local intermediate_and_result = (val_a_mod_word_and + val_b_mod_word_and - xor_hash_mixer(val_a_mod_word_and, val_b_mod_word_and)) / 2;
                        if val_c_or_rest_and then
                            intermediate_and_result = bit32_band(intermediate_and_result, val_c_or_rest_and, ...);
                        end;
                        return intermediate_and_result;
                    end;
                    if val_a_and then
                        return val_a_and % 4294967296;
                    end;
                    return 4294967295;
                end;
                local bit_bnot = function(input_value_bnot)
                    return (-1 - input_value_bnot) % 4294967296;
                end;
                local bit_arshift = function(input_value_shift, shift_amount)
                    if shift_amount < 0 then
                        return lshift(input_value_shift, -shift_amount);
                    end;
                    return math.floor(input_value_shift % 4294967296 / 2 ^ shift_amount);
                end;
                local bit_rshift_limited = function(input_value_rshift, shift_amount_rshift)
                    if 31 < shift_amount_rshift or shift_amount_rshift < -31 then
                        return 0;
                    end;
                    return bit_arshift(input_value_rshift % 4294967296, shift_amount_rshift);
                end;
                local bit_lshift_limited = function(input_value_lshift, shift_amount_lshift)
                    if shift_amount_lshift < 0 then
                        return bit_rshift_limited(input_value_lshift, -shift_amount_lshift);
                    end;
                    return input_value_lshift * 2 ^ shift_amount_lshift % 4294967296;
                end;
                local bit_rrotate_limited = function(input_value_rotate, rotate_amount)
                    local input_value_mod_word = input_value_rotate % 4294967296;
                    local rotate_amount_mod_32 = rotate_amount % 32;
                    local rotated_mask = bit_band_recursive(input_value_mod_word, 2 ^ rotate_amount_mod_32 - 1);
                    return bit_rshift_limited(input_value_mod_word, rotate_amount_mod_32) + bit_lshift_limited(rotated_mask, 32 - rotate_amount_mod_32);
                end;
                local sha256_k_constants = { 1116352408, 1899447441, 3049323471, 3921009573, 961987163, 1508970993, 2453635748, 2870763221, 3624381080, 310598401, 607225278, 1426881987, 1925078388, 2162078206, 2614888103, 3248222580, 3835390401, 4022224774, 264347078, 604807628, 770255983, 1249150122, 1555081692, 1996064986, 2554220882, 2821834349, 2952996808, 3210313671, 3336571891, 3584528711, 113926993, 338241895, 666307205, 773529912, 1294757372, 1396182291, 1695183700, 1986661051, 2177026350, 2456956037, 2730485921, 2820302411, 3259730800, 3345764771, 3516065817, 3600352804, 4094571909, 275423344, 430227734, 506948616, 659060556, 883997877, 958139571, 1322822218, 1537002063, 1747873779, 1955562222, 2024104815, 2227730452, 2361852424, 2428436474, 2756734187, 3204031479, 3329325298 };
                local binary_to_hex_string = function(input_binary_string)
                    return string.gsub(input_binary_string, ".", function(byte_char)
                        return string.format("%02x", string.byte(byte_char));
                    end);
                end;
                local number_to_binary_string = function(input_number_value, output_byte_length)
                    local binary_string_output = "";
                    for i_byte_index = 1, output_byte_length, 1 do
                        local current_byte_value = input_number_value % 256;
                        binary_string_output = string.char(current_byte_value) .. binary_string_output;
                        input_number_value = (input_number_value - current_byte_value) / 256;
                    end;
                    return binary_string_output;
                end;
                local read_be_word_32 = function(input_string_source, start_index_word)
                    local word_value_result = 0;
                    for i_byte_index_word = start_index_word, start_index_word + 3, 1 do
                        word_value_result = word_value_result * 256 + string.byte(input_string_source, i_byte_index_word);
                    end;
                    return word_value_result;
                end;
                local sha256_pad_message = function(message_input, message_length)
                    local padding_zero_count = 64 - (message_length + 9) % 64;
                    local length_bytes = number_to_binary_string(8 * message_length, 8);
                    local padded_message = message_input .. ("\128" .. (string.rep("\000", padding_zero_count) .. length_bytes));
                    lua_assert(#padded_message % 64 == 0);
                    return padded_message;
                end;
                local initialize_hash_state = function(hash_state_array)
                    hash_state_array[1] = 1779033703;
                    hash_state_array[2] = 3144134277;
                    hash_state_array[3] = 1013904242;
                    hash_state_array[4] = 2773480762;
                    hash_state_array[5] = 1359893119;
                    hash_state_array[6] = 2600822924;
                    hash_state_array[7] = 528734635;
                    hash_state_array[8] = 1541459225;
                    return hash_state_array;
                end;
                local sha256_compress_block = function(padded_message_source, block_start_index, current_hash_state)
                    local message_schedule_w = {};
                    for i_word_copy = 1, 16, 1 do
                        message_schedule_w[i_word_copy] = read_be_word_32(padded_message_source, block_start_index + (i_word_copy - 1) * 4);
                    end;
                    for i_word_expand = 17, 64, 1 do
                        local w_minus_15 = message_schedule_w[i_word_expand - 15];
                        local sigma0_result = bit_bxor_recursive(bit_rrotate_limited(w_minus_15, 7), bit_rrotate_limited(w_minus_15, 18), bit_rshift_limited(w_minus_15, 3));
                        local w_minus_2 = message_schedule_w[i_word_expand - 2];
                        message_schedule_w[i_word_expand] = message_schedule_w[i_word_expand - 16] + sigma0_result + message_schedule_w[i_word_expand - 7] + bit_bxor_recursive(bit_rrotate_limited(w_minus_2, 17), bit_rrotate_limited(w_minus_2, 19), bit_rshift_limited(w_minus_2, 10));
                    end;
                    local register_a = current_hash_state[1];
                    local register_b = current_hash_state[2];
                    local register_c = current_hash_state[3];
                    local register_d = current_hash_state[4];
                    local register_e = current_hash_state[5];
                    local register_f = current_hash_state[6];
                    local register_g = current_hash_state[7];
                    local register_h = current_hash_state[8];
                    for i_compression_round = 1, 64, 1 do
                        local temp1_component_1 = bit_bxor_recursive(bit_rrotate_limited(register_a, 2), bit_rrotate_limited(register_a, 13), bit_rrotate_limited(register_a, 22)) + bit_bxor_recursive(bit_band_recursive(register_a, register_b), bit_band_recursive(register_a, register_c), bit_band_recursive(register_b, register_c));
                        local temp2_component_1 = bit_bxor_recursive(bit_rrotate_limited(register_e, 6), bit_rrotate_limited(register_e, 11), bit_rrotate_limited(register_e, 25));
                        local temp2_component_2 = bit_bxor_recursive(bit_band_recursive(register_e, register_f), bit_band_recursive(bit_bnot(register_e), register_g));
                        local temp2_value = register_h + temp2_component_1 + temp2_component_2 + sha256_k_constants[i_compression_round] + message_schedule_w[i_compression_round];
                        local new_d_value = register_d + temp2_value;
                        local new_a_value = temp2_value + temp1_component_1;
                        register_h = register_g;
                        register_g = register_f;
                        register_f = register_e;
                        register_e = new_d_value;
                        register_d = register_c;
                        register_c = register_b;
                        register_b = register_a;
                        register_a = new_a_value;
                    end;
                    current_hash_state[1] = bit_band_recursive(current_hash_state[1] + register_a);
                    current_hash_state[2] = bit_band_recursive(current_hash_state[2] + register_b);
                    current_hash_state[3] = bit_band_recursive(current_hash_state[3] + register_c);
                    current_hash_state[4] = bit_band_recursive(current_hash_state[4] + register_d);
                    current_hash_state[5] = bit_band_recursive(current_hash_state[5] + register_e);
                    current_hash_state[6] = bit_band_recursive(current_hash_state[6] + register_f);
                    current_hash_state[7] = bit_band_recursive(current_hash_state[7] + register_g);
                    current_hash_state[8] = bit_band_recursive(current_hash_state[8] + register_h);
                    return ;
                end;
                return (function(input_message)
                    local padded_message_overall = sha256_pad_message(input_message, #input_message);
                    local hash_state_h = initialize_hash_state({});
                    for i_block_start = 1, #padded_message_overall, 64 do
                        sha256_compress_block(padded_message_overall, i_block_start, hash_state_h);
                    end;
                    return binary_to_hex_string(number_to_binary_string(hash_state_h[1], 4) .. (number_to_binary_string(hash_state_h[2], 4) .. (number_to_binary_string(hash_state_h[3], 4) .. (number_to_binary_string(hash_state_h[4], 4) .. (number_to_binary_string(hash_state_h[5], 4) .. (number_to_binary_string(hash_state_h[6], 4) .. (number_to_binary_string(hash_state_h[7], 4) .. number_to_binary_string(hash_state_h[8], 4))))))));
                end)(hash_input_string);
            end
        };
    end,
    c = function()
        return {
            ["\000padString"] = function(input_string)
                local trimmed_string = input_string:sub(1, math.floor(#input_string / 16) * 16);
                local padding_needed = 16 - #trimmed_string % 16;
                if padding_needed == 16 then
                    padding_needed = 0;
                end;
                return trimmed_string .. string.rep("0", padding_needed);
            end,
            ["\000strToHex"] = function(input_string_strtohex)
                return input_string_strtohex:gsub(".", function(char_to_convert)
                    return string.format("%02x", char_to_convert:byte());
                end);
            end,
            ["\000hexToBin"] = function(input_hex_string_hextobin)
                return input_hex_string_hextobin:gsub("..", function(hex_pair)
                    return string.char(tonumber(hex_pair, 16));
                end);
            end,
            ["\000bytesToHex"] = function(input_byte_array_bth)
                local hex_string_output_bth = "";
                for i_byte_index_bth = 0, #input_byte_array_bth, 1 do
                    if input_byte_array_bth[i_byte_index_bth] then
                        hex_string_output_bth = hex_string_output_bth .. string.format("%02x", input_byte_array_bth[i_byte_index_bth]);
                    end;
                end;
                return hex_string_output_bth;
            end,
            ["\000hexToBytes"] = function(input_hex_string_htb)
                local byte_array_output_htb = {};
                local array_index_htb = 0;
                for i_string_index_htb = 1, #input_hex_string_htb, 2 do
                    byte_array_output_htb[array_index_htb] = tonumber(input_hex_string_htb:sub(i_string_index_htb, i_string_index_htb + 1), 16);
                    array_index_htb = array_index_htb + 1;
                end;
                return byte_array_output_htb;
            end
        };
    end,
    d = function()
        return function()
            local json_lib_d = {};
            local determine_table_type = function(input_value_type_check)
                if type(input_value_type_check) ~= "table" then
                    return type(input_value_type_check);
                end;
                local sequential_index_check = 1;
                for key_table_iter, value_table_iter in lua_pairs(input_value_type_check) do
                    if input_value_type_check[sequential_index_check] == nil then
                        return "table";
                    end;
                    sequential_index_check = sequential_index_check + 1;
                end;
                if sequential_index_check == 1 then
                    return "table";
                end;
                return "array";
            end;
            local escape_string_json = function(input_string_to_escape)
                local unescaped_chars = { "\\", "\"", "/", "\b", "\f", "\n", "\r", "\t" };
                local escaped_codes = { "\\", "\"", "/", "b", "f", "n", "r", "t" };
                for i_char_index_escape, char_to_escape in ipairs(unescaped_chars) do
                    input_string_to_escape = input_string_to_escape:gsub(char_to_escape, "\\" .. escaped_codes[i_char_index_escape]);
                end;
                return input_string_to_escape;
            end;
            local consume_token = function(input_json_string, current_position, expected_char, require_match)
                local position_after_whitespace = current_position + #input_json_string:match("^%s*", current_position);
                if input_json_string:sub(position_after_whitespace, position_after_whitespace) ~= expected_char then
                    if require_match then
                        lua_error("Expected " .. (expected_char .. (" near position " .. position_after_whitespace)));
                    end;
                    return position_after_whitespace, false;
                end;
                return position_after_whitespace + 1, true;
            end;
            local parse_string;
            parse_string = function(input_json_string_str, start_position_str, current_result_str)
                local result_accumulator = current_result_str or "";
                if #input_json_string_str < start_position_str then
                    lua_error("End of input found while parsing string.");
                end;
                local current_char = input_json_string_str:sub(start_position_str, start_position_str);
                if current_char == "\"" then
                    return result_accumulator, start_position_str + 1;
                end;
                if current_char ~= "\\" then
                    return parse_string(input_json_string_str, start_position_str + 1, result_accumulator .. current_char);
                end;
                local escape_sequence_map = { b = "\b", f = "\f", n = "\n", r = "\r", t = "\t" };
                local escaped_char = input_json_string_str:sub(start_position_str + 1, start_position_str + 1);
                if not escaped_char then
                    lua_error("End of input found while parsing string.");
                end;
                return parse_string(input_json_string_str, start_position_str + 2, result_accumulator .. (escape_sequence_map[escaped_char] or escaped_char));
            end;
            local parse_number = function(input_json_string_num, start_position_num)
                local number_match_string = input_json_string_num:match("^-?%d+%.?%d*[eE]?[+-]?%d*", start_position_num);
                local number_value = tonumber(number_match_string);
                if not number_value then
                    lua_error("Error parsing number at position " .. (start_position_num .. "."));
                end;
                return number_value, start_position_num + #number_match_string;
            end;
            json_lib_d.stringify = function(value_to_stringify, is_key_context)
                local parts_accumulator = {};
                local value_type = determine_table_type(value_to_stringify);
                if value_type == "array" then
                    if is_key_context then
                        lua_error("Can't encode array as key.");
                    end;
                    table.insert(parts_accumulator, "[");
                    for i_array_index, array_item in ipairs(value_to_stringify) do
                        if 1 < i_array_index then
                            table.insert(parts_accumulator, ",");
                        end;
                        table.insert(parts_accumulator, json_lib_d.stringify(array_item));
                    end;
                    table.insert(parts_accumulator, "]");
                elseif value_type == "table" then
                    if is_key_context then
                        lua_error("Can't encode table as key.");
                    end;
                    table.insert(parts_accumulator, "{");
                    local is_first_entry = true;
                    for key_map_iter, value_map_iter in lua_pairs(value_to_stringify) do
                        if not is_first_entry then
                            table.insert(parts_accumulator, ",");
                        end;
                        is_first_entry = false;
                        table.insert(parts_accumulator, json_lib_d.stringify(key_map_iter, true));
                        table.insert(parts_accumulator, ":");
                        table.insert(parts_accumulator, json_lib_d.stringify(value_map_iter));
                    end;
                    table.insert(parts_accumulator, "}");
                else
                    if value_type == "string" then
                        return "\"" .. (escape_string_json(value_to_stringify) .. "\"");
                    end;
                    if value_type == "number" then
                        return is_key_context and "\"" .. (lua_tostring(value_to_stringify) .. "\"") or lua_tostring(value_to_stringify);
                    end;
                    if value_type == "boolean" then
                        return lua_tostring(value_to_stringify);
                    end;
                    if value_type == "nil" then
                        return "null";
                    end;
                    if value_type == "userdata" then
                        return "\"" .. (lua_tostring(value_to_stringify) .. "\"");
                    end;
                    lua_error("Unjsonifiable type: " .. value_type);
                end;
                return (function(input_parts_table, separator_string, start_index_concat, end_index_concat)
                    local actual_separator = separator_string or "";
                    local actual_start = start_index_concat or 1;
                    local actual_end = end_index_concat or #input_parts_table;
                    local concatenated_string = "";
                    for i_concat_index = actual_start, actual_end, 1 do
                        concatenated_string = concatenated_string .. tostring(input_parts_table[i_concat_index]);
                        if i_concat_index < actual_end then
                            concatenated_string = concatenated_string .. actual_separator;
                        end;
                    end;
                    return concatenated_string;
                end)(parts_accumulator);
            end;
            json_lib_d.null = {};
            json_lib_d.parse = function(input_json_string_parse, start_position_parse, termination_char)
                local actual_start_pos = start_position_parse or 1;
                if #input_json_string_parse < actual_start_pos then
                    lua_error("Reached unexpected end of input.");
                end;
                local current_char_parse = input_json_string_parse:sub(actual_start_pos, actual_start_pos);
                if current_char_parse == "{" then
                    local object_result = {};
                    local key_result = nil;
                    local expecting_comma = true;
                    local next_parse_position = actual_start_pos + 1;
                    local end_position_key_parse;
                    while true do
                        local key_parse_result_1, key_parse_result_2 = json_lib_d.parse(input_json_string_parse, next_parse_position, "}");
                        local parsed_key_value = key_parse_result_1;
                        end_position_key_parse = key_parse_result_2;
                        if parsed_key_value == nil then
                            break;
                        end;
                        if not expecting_comma then
                            lua_error("Comma missing between object items.");
                        end;
                        local colon_position = consume_token(input_json_string_parse, end_position_key_parse, ":", true);
                        local value_parse_result_1, value_parse_result_2 = json_lib_d.parse(input_json_string_parse, colon_position);
                        object_result[parsed_key_value] = value_parse_result_1;
                        local comma_check_pos, comma_found = consume_token(input_json_string_parse, value_parse_result_2, ",");
                        next_parse_position = comma_check_pos;
                        expecting_comma = comma_found;
                    end;
                    return object_result, end_position_key_parse;
                end;
                if current_char_parse == "[" then
                    local array_result = {};
                    local item_result = nil;
                    local expecting_comma_array = true;
                    local next_parse_position_array = actual_start_pos + 1;
                    local end_position_item_parse;
                    while true do
                        local item_parse_result_1, item_parse_result_2 = json_lib_d.parse(input_json_string_parse, next_parse_position_array, "]");
                        local parsed_item_value = item_parse_result_1;
                        end_position_item_parse = item_parse_result_2;
                        if parsed_item_value == nil then
                            break;
                        end;
                        if not expecting_comma_array then
                            lua_error("Comma missing between array items.");
                        end;
                        table.insert(array_result, parsed_item_value);
                        local comma_check_pos_array, comma_found_array = consume_token(input_json_string_parse, end_position_item_parse, ",");
                        next_parse_position_array = comma_check_pos_array;
                        expecting_comma_array = comma_found_array;
                    end;
                    return array_result, end_position_item_parse;
                end;
                if current_char_parse == "\"" then
                    return parse_string(input_json_string_parse, actual_start_pos + 1);
                end;
                if current_char_parse == "-" or current_char_parse:match("%d") then
                    return parse_number(input_json_string_parse, actual_start_pos);
                end;
                if current_char_parse == termination_char then
                    return nil, actual_start_pos + 1;
                end;
                for literal_string, literal_value in lua_pairs({ ["true"] = true, ["false"] = false, null = json_lib_d.null }) do
                    if input_json_string_parse:sub(actual_start_pos, actual_start_pos + #literal_string - 1) == literal_string then
                        return literal_value, actual_start_pos + #literal_string;
                    end;
                end;
                lua_error("Invalid json syntax at position " .. actual_start_pos);
                return ;
            end;
            return json_lib_d;
        end;
    end,
    e = function()
        local cache_metatable_e = { cache = {} };
        cache_metatable_e.__index = cache_metatable_e;
        cache_metatable_e.add = function(self_cache_add, key_cache_add, value_cache_add, expiry_duration)
            local expiration_timestamp = expiry_duration and os.time() + expiry_duration or nil;
            self_cache_add.cache[key_cache_add] = { value = value_cache_add, expiration = expiration_timestamp };
            return ;
        end;
        cache_metatable_e.get = function(self_cache_get, key_cache_get)
            local cached_entry = self_cache_get.cache[key_cache_get];
            if cached_entry then
                if cached_entry.expiration then
                    local current_time_check = os.time();
                    if cached_entry.expiration < current_time_check then
                        self_cache_get.cache[key_cache_get] = nil;
                        return nil;
                    end;
                end;
                return cached_entry.value;
            end;
            return nil;
        end;
        cache_metatable_e.remove = function(self_cache_remove, key_cache_remove)
            self_cache_remove.cache[key_cache_remove] = nil;
            return ;
        end;
        cache_metatable_e.clear = function(self_cache_clear)
            self_cache_clear.cache = {};
            return ;
        end;
        cache_metatable_e.new = function()
            local new_cache_instance = lua_setmetatable({}, cache_metatable_e);
            new_cache_instance.cache = {};
            return new_cache_instance;
        end;
        return cache_metatable_e;
    end,
    f = function()
        return {
            ["\000generateSeed"] = function()
                local current_time_f = os.time();
                local current_clock_f = os.clock();
                local random_floor_f = math.floor(math.random() * 1000000);
                return (current_time_f * 1664525 + current_clock_f + random_floor_f) % 4294967296;
            end,
            ["\000lcg"] = function(seed_input_f, iteration_count_f, min_value_f, max_value_f)
                local result_table_f = {};
                local current_seed_f = seed_input_f;
                for i_iteration_f = 1, iteration_count_f, 1 do
                    current_seed_f = (1664525 * current_seed_f + 1013904223) % 4294967296;
                    result_table_f[i_iteration_f] = min_value_f + current_seed_f % (max_value_f - min_value_f + 1);
                end;
                return result_table_f;
            end,
            ["\000sign"] = function(signature_base_f, data_to_sign_f)
                return signature_base_f + (#data_to_sign_f % 1000) ^ 2;
            end
        };
    end,
    g = function()
        return function()
            local json_lib_g = {};
            local determine_table_type_g = function(input_value_type_check_g)
                if type(input_value_type_check_g) ~= "table" then
                    return type(input_value_type_check_g);
                end;
                local sequential_index_check_g = 1;
                for key_table_iter_g, value_table_iter_g in lua_pairs(input_value_type_check_g) do
                    if input_value_type_check_g[sequential_index_check_g] == nil then
                        return "table";
                    end;
                    sequential_index_check_g = sequential_index_check_g + 1;
                end;
                if sequential_index_check_g == 1 then
                    return "table";
                end;
                return "array";
            end;
            local escape_string_json_g = function(input_string_to_escape_g)
                local unescaped_chars_g = { "\\", "\"", "/", "\b", "\f", "\n", "\r", "\t" };
                local escaped_codes_g = { "\\", "\"", "/", "b", "f", "n", "r", "t" };
                for i_char_index_escape_g, char_to_escape_g in ipairs(unescaped_chars_g) do
                    input_string_to_escape_g = input_string_to_escape_g:gsub(char_to_escape_g, "\\" .. escaped_codes_g[i_char_index_escape_g]);
                end;
                return input_string_to_escape_g;
            end;
            local consume_token_g = function(input_json_string_g, current_position_g, expected_char_g, require_match_g)
                local position_after_whitespace_g = current_position_g + #input_json_string_g:match("^%s*", current_position_g);
                if input_json_string_g:sub(position_after_whitespace_g, position_after_whitespace_g) ~= expected_char_g then
                    if require_match_g then
                        lua_error("Expected " .. (expected_char_g .. (" near position " .. position_after_whitespace_g)));
                    end;
                    return position_after_whitespace_g, false;
                end;
                return position_after_whitespace_g + 1, true;
            end;
            local parse_string_g;
            parse_string_g = function(input_json_string_str_g, start_position_str_g, current_result_str_g)
                local result_accumulator_g = current_result_str_g or "";
                if #input_json_string_str_g < start_position_str_g then
                    lua_error("End of input found while parsing string.");
                end;
                local current_char_g = input_json_string_str_g:sub(start_position_str_g, start_position_str_g);
                if current_char_g == "\"" then
                    return result_accumulator_g, start_position_str_g + 1;
                end;
                if current_char_g ~= "\\" then
                    return parse_string_g(input_json_string_str_g, start_position_str_g + 1, result_accumulator_g .. current_char_g);
                end;
                local escape_sequence_map_g = { b = "\b", f = "\f", n = "\n", r = "\r", t = "\t" };
                local escaped_char_g = input_json_string_str_g:sub(start_position_str_g + 1, start_position_str_g + 1);
                if not escaped_char_g then
                    lua_error("End of input found while parsing string.");
                end;
                return parse_string_g(input_json_string_str_g, start_position_str_g + 2, result_accumulator_g .. (escape_sequence_map_g[escaped_char_g] or escaped_char_g));
            end;
            local parse_number_g = function(input_json_string_num_g, start_position_num_g)
                local number_match_string_g = input_json_string_num_g:match("^-?%d+%.?%d*[eE]?[+-]?%d*", start_position_num_g);
                local number_value_g = tonumber(number_match_string_g);
                if not number_value_g then
                    lua_error("Error parsing number at position " .. (start_position_num_g .. "."));
                end;
                return number_value_g, start_position_num_g + #number_match_string_g;
            end;
            json_lib_g.stringify = function(value_to_stringify_g, is_key_context_g)
                local parts_accumulator_g = {};
                local value_type_g = determine_table_type_g(value_to_stringify_g);
                if value_type_g == "array" then
                    if is_key_context_g then
                        lua_error("Can't encode array as key.");
                    end;
                    table.insert(parts_accumulator_g, "[");
                    for i_array_index_g, array_item_g in ipairs(value_to_stringify_g) do
                        if 1 < i_array_index_g then
                            table.insert(parts_accumulator_g, ",");
                        end;
                        table.insert(parts_accumulator_g, json_lib_g.stringify(array_item_g));
                    end;
                    table.insert(parts_accumulator_g, "]");
                elseif value_type_g == "table" then
                    if is_key_context_g then
                        lua_error("Can't encode table as key.");
                    end;
                    table.insert(parts_accumulator_g, "{");
                    local is_first_entry_g = true;
                    for key_map_iter_g, value_map_iter_g in lua_pairs(value_to_stringify_g) do
                        if not is_first_entry_g then
                            table.insert(parts_accumulator_g, ",");
                        end;
                        is_first_entry_g = false;
                        table.insert(parts_accumulator_g, json_lib_g.stringify(key_map_iter_g, true));
                        table.insert(parts_accumulator_g, ":");
                        table.insert(parts_accumulator_g, json_lib_g.stringify(value_map_iter_g));
                    end;
                    table.insert(parts_accumulator_g, "}");
                else
                    if value_type_g == "string" then
                        return "\"" .. (escape_string_json_g(value_to_stringify_g) .. "\"");
                    end;
                    if value_type_g == "number" then
                        return is_key_context_g and "\"" .. (lua_tostring(value_to_stringify_g) .. "\"") or lua_tostring(value_to_stringify_g);
                    end;
                    if value_type_g == "boolean" then
                        return lua_tostring(value_to_stringify_g);
                    end;
                    if value_type_g == "nil" then
                        return "null";
                    end;
                    if value_type_g == "userdata" then
                        return "\"" .. (lua_tostring(value_to_stringify_g) .. "\"");
                    end;
                    lua_error("Unjsonifiable type: " .. value_type_g);
                end;
                return (function(input_parts_table_g, separator_string_g, start_index_concat_g, end_index_concat_g)
                    local actual_separator_g = separator_string_g or "";
                    local actual_start_g = start_index_concat_g or 1;
                    local actual_end_g = end_index_concat_g or #input_parts_table_g;
                    local concatenated_string_g = "";
                    for i_concat_index_g = actual_start_g, actual_end_g, 1 do
                        concatenated_string_g = concatenated_string_g .. tostring(input_parts_table_g[i_concat_index_g]);
                        if i_concat_index_g < actual_end_g then
                            concatenated_string_g = concatenated_string_g .. actual_separator_g;
                        end;
                    end;
                    return concatenated_string_g;
                end)(parts_accumulator_g);
            end;
            json_lib_g.null = {};
            json_lib_g.parse = function(input_json_string_parse_g, start_position_parse_g, termination_char_g)
                local actual_start_pos_g = start_position_parse_g or 1;
                if #input_json_string_parse_g < actual_start_pos_g then
                    lua_error("Reached unexpected end of input.");
                end;
                local current_char_parse_g = input_json_string_parse_g:sub(actual_start_pos_g, actual_start_pos_g);
                if current_char_parse_g == "{" then
                    local object_result_g = {};
                    local key_result_g = nil;
                    local expecting_comma_g = true;
                    local next_parse_position_g = actual_start_pos_g + 1;
                    local end_position_key_parse_g;
                    while true do
                        local key_parse_result_1_g, key_parse_result_2_g = json_lib_g.parse(input_json_string_parse_g, next_parse_position_g, "}");
                        local parsed_key_value_g = key_parse_result_1_g;
                        end_position_key_parse_g = key_parse_result_2_g;
                        if parsed_key_value_g == nil then
                            break;
                        end;
                        if not expecting_comma_g then
                            lua_error("Comma missing between object items.");
                        end;
                        local colon_position_g = consume_token_g(input_json_string_parse_g, end_position_key_parse_g, ":", true);
                        local value_parse_result_1_g, value_parse_result_2_g = json_lib_g.parse(input_json_string_parse_g, colon_position_g);
                        object_result_g[parsed_key_value_g] = value_parse_result_1_g;
                        local comma_check_pos_g, comma_found_g = consume_token_g(input_json_string_parse_g, value_parse_result_2_g, ",");
                        next_parse_position_g = comma_check_pos_g;
                        expecting_comma_g = comma_found_g;
                    end;
                    return object_result_g, end_position_key_parse_g;
                end;
                if current_char_parse_g == "[" then
                    local array_result_g = {};
                    local item_result_g = nil;
                    local expecting_comma_array_g = true;
                    local next_parse_position_array_g = actual_start_pos_g + 1;
                    local end_position_item_parse_g;
                    while true do
                        local item_parse_result_1_g, item_parse_result_2_g = json_lib_g.parse(input_json_string_parse_g, next_parse_position_array_g, "]");
                        local parsed_item_value_g = item_parse_result_1_g;
                        end_position_item_parse_g = item_parse_result_2_g;
                        if parsed_item_value_g == nil then
                            break;
                        end;
                        if not expecting_comma_array_g then
                            lua_error("Comma missing between array items.");
                        end;
                        table.insert(array_result_g, parsed_item_value_g);
                        local comma_check_pos_array_g, comma_found_array_g = consume_token_g(input_json_string_parse_g, end_position_item_parse_g, ",");
                        next_parse_position_array_g = comma_check_pos_array_g;
                        expecting_comma_array_g = comma_found_array_g;
                    end;
                    return array_result_g, end_position_item_parse_g;
                end;
                if current_char_parse_g == "\"" then
                    return parse_string_g(input_json_string_parse_g, actual_start_pos_g + 1);
                end;
                if current_char_parse_g == "-" or current_char_parse_g:match("%d") then
                    return parse_number_g(input_json_string_parse_g, actual_start_pos_g);
                end;
                if current_char_parse_g == termination_char_g then
                    return nil, actual_start_pos_g + 1;
                end;
                for literal_string_g, literal_value_g in lua_pairs({ ["true"] = true, ["false"] = false, null = json_lib_g.null }) do
                    if input_json_string_parse_g:sub(actual_start_pos_g, actual_start_pos_g + #literal_string_g - 1) == literal_string_g then
                        return literal_value_g, actual_start_pos_g + #literal_string_g;
                    end;
                end;
                lua_error("Invalid json syntax at position " .. actual_start_pos_g);
                return ;
            end;
            return json_lib_g;
        end;
    end,
    h = function()
        return {
            ["\000AES"] = function(input_key_aes_h)
                local sbox_buffer_large_h = buffer_create(131072);
                local mix_columns_1_h = buffer_create(65536);
                local mix_columns_2_h = buffer_create(65536);
                local inv_mix_columns_1_h = buffer_create(65536);
                local inv_mix_columns_2_h = buffer_create(65536);
                local inv_mix_columns_3_h = buffer_create(65536);
                local cipher_modes_h = {
                    FwdMode = function(encrypt_block_func_h, unused_key_length_h, input_buffer_h, output_buffer_h, unused_cipher_modes_h, initialization_vector_h)
                        local data_length_minus_16_h = buffer_len(input_buffer_h) - 16;
                        lua_assert(data_length_minus_16_h % 16 == 0, "Input length must be a multiple of 16 bytes");
                        local iv_buffer_h = initialization_vector_h or buffer_create(16);
                        lua_assert(buffer_len(iv_buffer_h) == 16, "Initialization vector must be 16 bytes long");
                        buffer_writeu32(output_buffer_h, 0, bit_bxor(buffer_readu32(input_buffer_h, 0), buffer_readu32(iv_buffer_h, 0)));
                        buffer_writeu32(output_buffer_h, 4, bit_bxor(buffer_readu32(input_buffer_h, 4), buffer_readu32(iv_buffer_h, 4)));
                        buffer_writeu32(output_buffer_h, 8, bit_bxor(buffer_readu32(input_buffer_h, 8), buffer_readu32(iv_buffer_h, 8)));
                        buffer_writeu32(output_buffer_h, 12, bit_bxor(buffer_readu32(input_buffer_h, 12), buffer_readu32(iv_buffer_h, 12)));
                        encrypt_block_func_h(output_buffer_h, 0, output_buffer_h, 0);
                        for i_block_offset_h = 16, data_length_minus_16_h, 16 do
                            buffer_writeu32(output_buffer_h, i_block_offset_h, bit_bxor(buffer_readu32(input_buffer_h, i_block_offset_h), buffer_readu32(output_buffer_h, i_block_offset_h - 16)));
                            buffer_writeu32(output_buffer_h, i_block_offset_h + 4, bit_bxor(buffer_readu32(input_buffer_h, i_block_offset_h + 4), buffer_readu32(output_buffer_h, i_block_offset_h - 12)));
                            buffer_writeu32(output_buffer_h, i_block_offset_h + 8, bit_bxor(buffer_readu32(input_buffer_h, i_block_offset_h + 8), buffer_readu32(output_buffer_h, i_block_offset_h - 8)));
                            buffer_writeu32(output_buffer_h, i_block_offset_h + 12, bit_bxor(buffer_readu32(input_buffer_h, i_block_offset_h + 12), buffer_readu32(output_buffer_h, i_block_offset_h - 4)));
                            encrypt_block_func_h(output_buffer_h, i_block_offset_h, output_buffer_h, i_block_offset_h);
                        end;
                        return ;
                    end,
                    InvMode = function(unused_decrypt_block_func_h, block_decrypt_func_h, input_ciphertext_buffer_h, output_plaintext_buffer_h, unused_cipher_modes_inv_h, initialization_vector_inv_h)
                        local data_length_minus_16_inv_h = buffer_len(input_ciphertext_buffer_h) - 16;
                        lua_assert(data_length_minus_16_inv_h % 16 == 0, "Input length must be a multiple of 16 bytes");
                        local iv_buffer_inv_h = initialization_vector_inv_h or buffer_create(16);
                        lua_assert(buffer_len(iv_buffer_inv_h) == 16, "Initialization vector must be 16 bytes long");
                        local prev_block_word1_h = buffer_readu32(input_ciphertext_buffer_h, 0);
                        local prev_block_word2_h = buffer_readu32(input_ciphertext_buffer_h, 4);
                        local prev_block_word3_h = buffer_readu32(input_ciphertext_buffer_h, 8);
                        local prev_block_word4_h = buffer_readu32(input_ciphertext_buffer_h, 12);
                        local unused_word_placeholder_1_h = nil;
                        local unused_word_placeholder_2_h = nil;
                        local unused_word_placeholder_3_h = nil;
                        local unused_word_placeholder_4_h = nil;
                        block_decrypt_func_h(input_ciphertext_buffer_h, 0, output_plaintext_buffer_h, 0);
                        buffer_writeu32(output_plaintext_buffer_h, 0, bit_bxor(buffer_readu32(output_plaintext_buffer_h, 0), buffer_readu32(iv_buffer_inv_h, 0)));
                        buffer_writeu32(output_plaintext_buffer_h, 4, bit_bxor(buffer_readu32(output_plaintext_buffer_h, 4), buffer_readu32(iv_buffer_inv_h, 4)));
                        buffer_writeu32(output_plaintext_buffer_h, 8, bit_bxor(buffer_readu32(output_plaintext_buffer_h, 8), buffer_readu32(iv_buffer_inv_h, 8)));
                        buffer_writeu32(output_plaintext_buffer_h, 12, bit_bxor(buffer_readu32(output_plaintext_buffer_h, 12), buffer_readu32(iv_buffer_inv_h, 12)));
                        for i_block_offset_inv_h = 16, data_length_minus_16_inv_h, 16 do
                            local current_block_word1_h = buffer_readu32(input_ciphertext_buffer_h, i_block_offset_inv_h);
                            local current_block_word2_h = buffer_readu32(input_ciphertext_buffer_h, i_block_offset_inv_h + 4);
                            local current_block_word3_h = buffer_readu32(input_ciphertext_buffer_h, i_block_offset_inv_h + 8);
                            local current_block_word4_h = buffer_readu32(input_ciphertext_buffer_h, i_block_offset_inv_h + 12);
                            block_decrypt_func_h(input_ciphertext_buffer_h, i_block_offset_inv_h, output_plaintext_buffer_h, i_block_offset_inv_h);
                            buffer_writeu32(output_plaintext_buffer_h, i_block_offset_inv_h, bit_bxor(buffer_readu32(output_plaintext_buffer_h, i_block_offset_inv_h), prev_block_word1_h));
                            buffer_writeu32(output_plaintext_buffer_h, i_block_offset_inv_h + 4, bit_bxor(buffer_readu32(output_plaintext_buffer_h, i_block_offset_inv_h + 4), prev_block_word2_h));
                            buffer_writeu32(output_plaintext_buffer_h, i_block_offset_inv_h + 8, bit_bxor(buffer_readu32(output_plaintext_buffer_h, i_block_offset_inv_h + 8), prev_block_word3_h));
                            buffer_writeu32(output_plaintext_buffer_h, i_block_offset_inv_h + 12, bit_bxor(buffer_readu32(output_plaintext_buffer_h, i_block_offset_inv_h + 12), prev_block_word4_h));
                            prev_block_word1_h = current_block_word1_h;
                            prev_block_word2_h = current_block_word2_h;
                            prev_block_word3_h = current_block_word3_h;
                            prev_block_word4_h = current_block_word4_h;
                        end;
                        return ;
                    end
                };
                local padding_utilities_h = {
                    Pad = function(input_data_h, output_buffer_optional_h, block_size_h)
                        local current_data_length_h = buffer_len(input_data_h);
                        local aligned_length_h = current_data_length_h - current_data_length_h % block_size_h;
                        if output_buffer_optional_h then
                            lua_assert(buffer_len(output_buffer_optional_h) >= current_data_length_h + block_size_h, "Output buffer out of bounds");
                        else
                            output_buffer_optional_h = buffer_create(aligned_length_h + block_size_h);
                        end;
                        local padding_amount_h = block_size_h - current_data_length_h % block_size_h;
                        buffer_copy(output_buffer_optional_h, 0, input_data_h, 0, current_data_length_h);
                        buffer_fill(output_buffer_optional_h, current_data_length_h, padding_amount_h, padding_amount_h);
                        return output_buffer_optional_h;
                    end,
                    Unpad = function(input_padded_data_h, output_buffer_optional_unpad_h, block_size_unpad_h)
                        local padded_length_h = buffer_len(input_padded_data_h);
                        local padding_value_h = buffer_readu8(input_padded_data_h, padded_length_h - 1);
                        local data_length_unpadded_h = padded_length_h - padding_value_h;
                        lua_assert(0 < padding_value_h and padding_value_h <= block_size_unpad_h, "Got unexpected padding");
                        for i_padding_check_h = data_length_unpadded_h, padded_length_h - 2, 1 do
                            if buffer_readu8(input_padded_data_h, i_padding_check_h) ~= padding_value_h then
                                lua_error("Got unexpected padding");
                            end;
                        end;
                        if output_buffer_optional_unpad_h then
                            lua_assert(buffer_len(output_buffer_optional_unpad_h) >= data_length_unpadded_h, "Output buffer out of bounds");
                        else
                            output_buffer_optional_unpad_h = buffer_create(data_length_unpadded_h);
                        end;
                        buffer_copy(output_buffer_optional_unpad_h, 0, input_padded_data_h, 0, data_length_unpadded_h);
                        return output_buffer_optional_unpad_h;
                    end,
                    Overwrite = nil
                };
                local key_expansion_h = function(key_source_h, key_length_bytes_h, round_keys_buffer_h, is_buffer_source_h)
                    if is_buffer_source_h then
                        buffer_copy(round_keys_buffer_h, 0, key_source_h, 0, key_length_bytes_h);
                    else
                        buffer_writestring(round_keys_buffer_h, 0, key_source_h, key_length_bytes_h);
                    end;
                    local rcon_input_word_h = bit_rrotate(buffer_readu32(round_keys_buffer_h, key_length_bytes_h - 4), 8);
                    local rcon_value_mult_h = 0.5;
                    if key_length_bytes_h == 32 then
                        for i_round_offset_32_h = 32, 192, 32 do
                            rcon_value_mult_h = rcon_value_mult_h * 2 % 229;
                            local temp_word_1_32_h = bit_bxor(buffer_readu32(round_keys_buffer_h, i_round_offset_32_h - 32), buffer_readu16(sbox_buffer_large_h, math_floor(rcon_input_word_h / 65536) * 2) * 65536 + buffer_readu16(sbox_buffer_large_h, rcon_input_word_h % 65536 * 2), rcon_value_mult_h);
                            buffer_writeu32(round_keys_buffer_h, i_round_offset_32_h, temp_word_1_32_h);
                            local temp_word_2_32_h = bit_bxor(buffer_readu32(round_keys_buffer_h, i_round_offset_32_h - 28), temp_word_1_32_h);
                            buffer_writeu32(round_keys_buffer_h, i_round_offset_32_h + 4, temp_word_2_32_h);
                            local temp_word_3_32_h = bit_bxor(buffer_readu32(round_keys_buffer_h, i_round_offset_32_h - 24), temp_word_2_32_h);
                            buffer_writeu32(round_keys_buffer_h, i_round_offset_32_h + 8, temp_word_3_32_h);
                            local temp_word_4_32_h = bit_bxor(buffer_readu32(round_keys_buffer_h, i_round_offset_32_h - 20), temp_word_3_32_h);
                            buffer_writeu32(round_keys_buffer_h, i_round_offset_32_h + 12, temp_word_4_32_h);
                            local temp_word_5_32_h = bit_bxor(buffer_readu32(round_keys_buffer_h, i_round_offset_32_h - 16), buffer_readu16(sbox_buffer_large_h, math_floor(temp_word_4_32_h / 65536) * 2) * 65536 + buffer_readu16(sbox_buffer_large_h, temp_word_4_32_h % 65536 * 2));
                            buffer_writeu32(round_keys_buffer_h, i_round_offset_32_h + 16, temp_word_5_32_h);
                            local temp_word_6_32_h = bit_bxor(buffer_readu32(round_keys_buffer_h, i_round_offset_32_h - 12), temp_word_5_32_h);
                            buffer_writeu32(round_keys_buffer_h, i_round_offset_32_h + 20, temp_word_6_32_h);
                            local temp_word_7_32_h = bit_bxor(buffer_readu32(round_keys_buffer_h, i_round_offset_32_h - 8), temp_word_6_32_h);
                            buffer_writeu32(round_keys_buffer_h, i_round_offset_32_h + 24, temp_word_7_32_h);
                            local temp_word_8_32_h = bit_bxor(buffer_readu32(round_keys_buffer_h, i_round_offset_32_h - 4), temp_word_7_32_h);
                            buffer_writeu32(round_keys_buffer_h, i_round_offset_32_h + 28, temp_word_8_32_h);
                            rcon_input_word_h = bit_rrotate(temp_word_8_32_h, 8);
                        end;
                        local final_word_1_32_h = bit_bxor(buffer_readu32(round_keys_buffer_h, 192), buffer_readu16(sbox_buffer_large_h, math_floor(rcon_input_word_h / 65536) * 2) * 65536 + buffer_readu16(sbox_buffer_large_h, rcon_input_word_h % 65536 * 2), 64);
                        buffer_writeu32(round_keys_buffer_h, 224, final_word_1_32_h);
                        local final_word_2_32_h = bit_bxor(buffer_readu32(round_keys_buffer_h, 196), final_word_1_32_h);
                        buffer_writeu32(round_keys_buffer_h, 228, final_word_2_32_h);
                        local final_word_3_32_h = bit_bxor(buffer_readu32(round_keys_buffer_h, 200), final_word_2_32_h);
                        buffer_writeu32(round_keys_buffer_h, 232, final_word_3_32_h);
                        buffer_writeu32(round_keys_buffer_h, 236, bit_bxor(buffer_readu32(round_keys_buffer_h, 204), final_word_3_32_h));
                    elseif key_length_bytes_h == 24 then
                        for i_round_offset_24_h = 24, 168, 24 do
                            rcon_value_mult_h = rcon_value_mult_h * 2 % 229;
                            local temp_word_1_24_h = bit_bxor(buffer_readu32(round_keys_buffer_h, i_round_offset_24_h - 24), buffer_readu16(sbox_buffer_large_h, math_floor(rcon_input_word_h / 65536) * 2) * 65536 + buffer_readu16(sbox_buffer_large_h, rcon_input_word_h % 65536 * 2), rcon_value_mult_h);
                            buffer_writeu32(round_keys_buffer_h, i_round_offset_24_h, temp_word_1_24_h);
                            local temp_word_2_24_h = bit_bxor(buffer_readu32(round_keys_buffer_h, i_round_offset_24_h - 20), temp_word_1_24_h);
                            buffer_writeu32(round_keys_buffer_h, i_round_offset_24_h + 4, temp_word_2_24_h);
                            local temp_word_3_24_h = bit_bxor(buffer_readu32(round_keys_buffer_h, i_round_offset_24_h - 16), temp_word_2_24_h);
                            buffer_writeu32(round_keys_buffer_h, i_round_offset_24_h + 8, temp_word_3_24_h);
                            local temp_word_4_24_h = bit_bxor(buffer_readu32(round_keys_buffer_h, i_round_offset_24_h - 12), temp_word_3_24_h);
                            buffer_writeu32(round_keys_buffer_h, i_round_offset_24_h + 12, temp_word_4_24_h);
                            local temp_word_5_24_h = bit_bxor(buffer_readu32(round_keys_buffer_h, i_round_offset_24_h - 8), temp_word_4_24_h);
                            buffer_writeu32(round_keys_buffer_h, i_round_offset_24_h + 16, temp_word_5_24_h);
                            local temp_word_6_24_h = bit_bxor(buffer_readu32(round_keys_buffer_h, i_round_offset_24_h - 4), temp_word_5_24_h);
                            buffer_writeu32(round_keys_buffer_h, i_round_offset_24_h + 20, temp_word_6_24_h);
                            rcon_input_word_h = bit_rrotate(temp_word_6_24_h, 8);
                        end;
                        local final_word_1_24_h = bit_bxor(buffer_readu32(round_keys_buffer_h, 168), buffer_readu16(sbox_buffer_large_h, math_floor(rcon_input_word_h / 65536) * 2) * 65536 + buffer_readu16(sbox_buffer_large_h, rcon_input_word_h % 65536 * 2), 128);
                        buffer_writeu32(round_keys_buffer_h, 192, final_word_1_24_h);
                        local final_word_2_24_h = bit_bxor(buffer_readu32(round_keys_buffer_h, 172), final_word_1_24_h);
                        buffer_writeu32(round_keys_buffer_h, 196, final_word_2_24_h);
                        local final_word_3_24_h = bit_bxor(buffer_readu32(round_keys_buffer_h, 176), final_word_2_24_h);
                        buffer_writeu32(round_keys_buffer_h, 200, final_word_3_24_h);
                        buffer_writeu32(round_keys_buffer_h, 204, bit_bxor(buffer_readu32(round_keys_buffer_h, 180), final_word_3_24_h));
                    else
                        for i_round_offset_16_h = 16, 144, 16 do
                            rcon_value_mult_h = rcon_value_mult_h * 2 % 229;
                            local temp_word_1_16_h = bit_bxor(buffer_readu32(round_keys_buffer_h, i_round_offset_16_h - 16), buffer_readu16(sbox_buffer_large_h, math_floor(rcon_input_word_h / 65536) * 2) * 65536 + buffer_readu16(sbox_buffer_large_h, rcon_input_word_h % 65536 * 2), rcon_value_mult_h);
                            buffer_writeu32(round_keys_buffer_h, i_round_offset_16_h, temp_word_1_16_h);
                            local temp_word_2_16_h = bit_bxor(buffer_readu32(round_keys_buffer_h, i_round_offset_16_h - 12), temp_word_1_16_h);
                            buffer_writeu32(round_keys_buffer_h, i_round_offset_16_h + 4, temp_word_2_16_h);
                            local temp_word_3_16_h = bit_bxor(buffer_readu32(round_keys_buffer_h, i_round_offset_16_h - 8), temp_word_2_16_h);
                            buffer_writeu32(round_keys_buffer_h, i_round_offset_16_h + 8, temp_word_3_16_h);
                            local temp_word_4_16_h = bit_bxor(buffer_readu32(round_keys_buffer_h, i_round_offset_16_h - 4), temp_word_3_16_h);
                            buffer_writeu32(round_keys_buffer_h, i_round_offset_16_h + 12, temp_word_4_16_h);
                            rcon_input_word_h = bit_rrotate(temp_word_4_16_h, 8);
                        end;
                        local final_word_1_16_h = bit_bxor(buffer_readu32(round_keys_buffer_h, 144), buffer_readu16(sbox_buffer_large_h, math_floor(rcon_input_word_h / 65536) * 2) * 65536 + buffer_readu16(sbox_buffer_large_h, rcon_input_word_h % 65536 * 2), 54);
                        buffer_writeu32(round_keys_buffer_h, 160, final_word_1_16_h);
                        local final_word_2_16_h = bit_bxor(buffer_readu32(round_keys_buffer_h, 148), final_word_1_16_h);
                        buffer_writeu32(round_keys_buffer_h, 164, final_word_2_16_h);
                        local final_word_3_16_h = bit_bxor(buffer_readu32(round_keys_buffer_h, 152), final_word_2_16_h);
                        buffer_writeu32(round_keys_buffer_h, 168, final_word_3_16_h);
                        buffer_writeu32(round_keys_buffer_h, 172, bit_bxor(buffer_readu32(round_keys_buffer_h, 156), final_word_3_16_h));
                    end;
                    return round_keys_buffer_h;
                end;
                local encrypt_aes_block_h = function(round_keys_buffer_enc_h, max_round_key_offset_h, input_data_buffer_h, input_offset_h, output_data_buffer_h, output_offset_h)
                    local state_byte_0_h = bit_bxor(buffer_readu8(input_data_buffer_h, input_offset_h), buffer_readu8(round_keys_buffer_enc_h, 0));
                    local state_byte_1_h = bit_bxor(buffer_readu8(input_data_buffer_h, input_offset_h + 1), buffer_readu8(round_keys_buffer_enc_h, 1));
                    local state_byte_2_h = bit_bxor(buffer_readu8(input_data_buffer_h, input_offset_h + 2), buffer_readu8(round_keys_buffer_enc_h, 2));
                    local state_byte_3_h = bit_bxor(buffer_readu8(input_data_buffer_h, input_offset_h + 3), buffer_readu8(round_keys_buffer_enc_h, 3));
                    local state_byte_4_h = bit_bxor(buffer_readu8(input_data_buffer_h, input_offset_h + 4), buffer_readu8(round_keys_buffer_enc_h, 4));
                    local state_byte_5_h = bit_bxor(buffer_readu8(input_data_buffer_h, input_offset_h + 5), buffer_readu8(round_keys_buffer_enc_h, 5));
                    local state_byte_6_h = bit_bxor(buffer_readu8(input_data_buffer_h, input_offset_h + 6), buffer_readu8(round_keys_buffer_enc_h, 6));
                    local state_byte_7_h = bit_bxor(buffer_readu8(input_data_buffer_h, input_offset_h + 7), buffer_readu8(round_keys_buffer_enc_h, 7));
                    local state_byte_8_h = bit_bxor(buffer_readu8(input_data_buffer_h, input_offset_h + 8), buffer_readu8(round_keys_buffer_enc_h, 8));
                    local state_byte_9_h = bit_bxor(buffer_readu8(input_data_buffer_h, input_offset_h + 9), buffer_readu8(round_keys_buffer_enc_h, 9));
                    local state_byte_10_h = bit_bxor(buffer_readu8(input_data_buffer_h, input_offset_h + 10), buffer_readu8(round_keys_buffer_enc_h, 10));
                    local state_byte_11_h = bit_bxor(buffer_readu8(input_data_buffer_h, input_offset_h + 11), buffer_readu8(round_keys_buffer_enc_h, 11));
                    local state_byte_12_h = bit_bxor(buffer_readu8(input_data_buffer_h, input_offset_h + 12), buffer_readu8(round_keys_buffer_enc_h, 12));
                    local state_byte_13_h = bit_bxor(buffer_readu8(input_data_buffer_h, input_offset_h + 13), buffer_readu8(round_keys_buffer_enc_h, 13));
                    local state_byte_14_h = bit_bxor(buffer_readu8(input_data_buffer_h, input_offset_h + 14), buffer_readu8(round_keys_buffer_enc_h, 14));
                    local state_byte_15_h = bit_bxor(buffer_readu8(input_data_buffer_h, input_offset_h + 15), buffer_readu8(round_keys_buffer_enc_h, 15));
                    local word_state_0_h = state_byte_0_h * 256 + state_byte_5_h;
                    local word_state_1_h = state_byte_5_h * 256 + state_byte_10_h;
                    local word_state_2_h = state_byte_10_h * 256 + state_byte_15_h;
                    local word_state_3_h = state_byte_15_h * 256 + state_byte_0_h;
                    local word_state_4_h = state_byte_4_h * 256 + state_byte_9_h;
                    local word_state_5_h = state_byte_9_h * 256 + state_byte_14_h;
                    local word_state_6_h = state_byte_14_h * 256 + state_byte_3_h;
                    local word_state_7_h = state_byte_3_h * 256 + state_byte_4_h;
                    local word_state_8_h = state_byte_8_h * 256 + state_byte_13_h;
                    local word_state_9_h = state_byte_13_h * 256 + state_byte_2_h;
                    local word_state_10_h = state_byte_2_h * 256 + state_byte_7_h;
                    local word_state_11_h = state_byte_7_h * 256 + state_byte_8_h;
                    local word_state_12_h = state_byte_12_h * 256 + state_byte_1_h;
                    local word_state_13_h = state_byte_1_h * 256 + state_byte_6_h;
                    local word_state_14_h = state_byte_6_h * 256 + state_byte_11_h;
                    local word_state_15_h = state_byte_11_h * 256 + state_byte_12_h;
                    for i_round_index_h = 16, max_round_key_offset_h, 16 do
                        local mixed_state_byte_0_h = bit_bxor(buffer_readu8(mix_columns_1_h, word_state_0_h), buffer_readu8(mix_columns_2_h, word_state_2_h), buffer_readu8(round_keys_buffer_enc_h, i_round_index_h));
                        local mixed_state_byte_1_h = bit_bxor(buffer_readu8(mix_columns_1_h, word_state_1_h), buffer_readu8(mix_columns_2_h, word_state_3_h), buffer_readu8(round_keys_buffer_enc_h, i_round_index_h + 1));
                        local mixed_state_byte_2_h = bit_bxor(buffer_readu8(mix_columns_1_h, word_state_2_h), buffer_readu8(mix_columns_2_h, word_state_0_h), buffer_readu8(round_keys_buffer_enc_h, i_round_index_h + 2));
                        local mixed_state_byte_3_h = bit_bxor(buffer_readu8(mix_columns_1_h, word_state_3_h), buffer_readu8(mix_columns_2_h, word_state_1_h), buffer_readu8(round_keys_buffer_enc_h, i_round_index_h + 3));
                        local mixed_state_byte_4_h = bit_bxor(buffer_readu8(mix_columns_1_h, word_state_4_h), buffer_readu8(mix_columns_2_h, word_state_6_h), buffer_readu8(round_keys_buffer_enc_h, i_round_index_h + 4));
                        local mixed_state_byte_5_h = bit_bxor(buffer_readu8(mix_columns_1_h, word_state_5_h), buffer_readu8(mix_columns_2_h, word_state_7_h), buffer_readu8(round_keys_buffer_enc_h, i_round_index_h + 5));
                        local mixed_state_byte_6_h = bit_bxor(buffer_readu8(mix_columns_1_h, word_state_6_h), buffer_readu8(mix_columns_2_h, word_state_4_h), buffer_readu8(round_keys_buffer_enc_h, i_round_index_h + 6));
                        local mixed_state_byte_7_h = bit_bxor(buffer_readu8(mix_columns_1_h, word_state_7_h), buffer_readu8(mix_columns_2_h, word_state_5_h), buffer_readu8(round_keys_buffer_enc_h, i_round_index_h + 7));
                        local mixed_state_byte_8_h = bit_bxor(buffer_readu8(mix_columns_1_h, word_state_8_h), buffer_readu8(mix_columns_2_h, word_state_10_h), buffer_readu8(round_keys_buffer_enc_h, i_round_index_h + 8));
                        local mixed_state_byte_9_h = bit_bxor(buffer_readu8(mix_columns_1_h, word_state_9_h), buffer_readu8(mix_columns_2_h, word_state_11_h), buffer_readu8(round_keys_buffer_enc_h, i_round_index_h + 9));
                        local mixed_state_byte_10_h = bit_bxor(buffer_readu8(mix_columns_1_h, word_state_10_h), buffer_readu8(mix_columns_2_h, word_state_8_h), buffer_readu8(round_keys_buffer_enc_h, i_round_index_h + 10));
                        local mixed_state_byte_11_h = bit_bxor(buffer_readu8(mix_columns_1_h, word_state_11_h), buffer_readu8(mix_columns_2_h, word_state_9_h), buffer_readu8(round_keys_buffer_enc_h, i_round_index_h + 11));
                        local mixed_state_byte_12_h = bit_bxor(buffer_readu8(mix_columns_1_h, word_state_12_h), buffer_readu8(mix_columns_2_h, word_state_14_h), buffer_readu8(round_keys_buffer_enc_h, i_round_index_h + 12));
                        local mixed_state_byte_13_h = bit_bxor(buffer_readu8(mix_columns_1_h, word_state_13_h), buffer_readu8(mix_columns_2_h, word_state_15_h), buffer_readu8(round_keys_buffer_enc_h, i_round_index_h + 13));
                        local mixed_state_byte_14_h = bit_bxor(buffer_readu8(mix_columns_1_h, word_state_14_h), buffer_readu8(mix_columns_2_h, word_state_12_h), buffer_readu8(round_keys_buffer_enc_h, i_round_index_h + 14));
                        local mixed_state_byte_15_h = bit_bxor(buffer_readu8(mix_columns_1_h, word_state_15_h), buffer_readu8(mix_columns_2_h, word_state_13_h), buffer_readu8(round_keys_buffer_enc_h, i_round_index_h + 15));
                        word_state_0_h, word_state_1_h, word_state_2_h, word_state_3_h, word_state_4_h, word_state_5_h, word_state_6_h, word_state_7_h, word_state_8_h, word_state_9_h, word_state_10_h, word_state_11_h, word_state_12_h, word_state_13_h, word_state_14_h, word_state_15_h = mixed_state_byte_0_h * 256 + mixed_state_byte_5_h, mixed_state_byte_5_h * 256 + mixed_state_byte_10_h, mixed_state_byte_10_h * 256 + mixed_state_byte_15_h, mixed_state_byte_15_h * 256 + mixed_state_byte_0_h, mixed_state_byte_4_h * 256 + mixed_state_byte_9_h, mixed_state_byte_9_h * 256 + mixed_state_byte_14_h, mixed_state_byte_14_h * 256 + mixed_state_byte_3_h, mixed_state_byte_3_h * 256 + mixed_state_byte_4_h, mixed_state_byte_8_h * 256 + mixed_state_byte_13_h, mixed_state_byte_13_h * 256 + mixed_state_byte_2_h, mixed_state_byte_2_h * 256 + mixed_state_byte_7_h, mixed_state_byte_7_h * 256 + mixed_state_byte_8_h, mixed_state_byte_12_h * 256 + mixed_state_byte_1_h, mixed_state_byte_1_h * 256 + mixed_state_byte_6_h, mixed_state_byte_6_h * 256 + mixed_state_byte_11_h, mixed_state_byte_11_h * 256 + mixed_state_byte_12_h;
                    end;
                    buffer_writeu32(output_data_buffer_h, output_offset_h, bit_bxor(buffer_readu16(sbox_buffer_large_h, bit_bxor(buffer_readu8(mix_columns_1_h, word_state_15_h), buffer_readu8(mix_columns_2_h, word_state_13_h), buffer_readu8(round_keys_buffer_enc_h, max_round_key_offset_h + 31)) * 512 + bit_bxor(buffer_readu8(mix_columns_1_h, word_state_10_h), buffer_readu8(mix_columns_2_h, word_state_8_h), buffer_readu8(round_keys_buffer_enc_h, max_round_key_offset_h + 26)) * 2) * 65536 + buffer_readu16(sbox_buffer_large_h, bit_bxor(buffer_readu8(mix_columns_1_h, word_state_5_h), buffer_readu8(mix_columns_2_h, word_state_7_h), buffer_readu8(round_keys_buffer_enc_h, max_round_key_offset_h + 21)) * 512 + bit_bxor(buffer_readu8(mix_columns_1_h, word_state_0_h), buffer_readu8(mix_columns_2_h, word_state_2_h), buffer_readu8(round_keys_buffer_enc_h, max_round_key_offset_h + 16)) * 2), buffer_readu32(round_keys_buffer_enc_h, max_round_key_offset_h + 32)));
                    buffer_writeu32(output_data_buffer_h, output_offset_h + 4, bit_bxor(buffer_readu16(sbox_buffer_large_h, bit_bxor(buffer_readu8(mix_columns_1_h, word_state_3_h), buffer_readu8(mix_columns_2_h, word_state_1_h), buffer_readu8(round_keys_buffer_enc_h, max_round_key_offset_h + 19)) * 512 + bit_bxor(buffer_readu8(mix_columns_1_h, word_state_14_h), buffer_readu8(mix_columns_2_h, word_state_12_h), buffer_readu8(round_keys_buffer_enc_h, max_round_key_offset_h + 30)) * 2) * 65536 + buffer_readu16(sbox_buffer_large_h, bit_bxor(buffer_readu8(mix_columns_1_h, word_state_9_h), buffer_readu8(mix_columns_2_h, word_state_11_h), buffer_readu8(round_keys_buffer_enc_h, max_round_key_offset_h + 25)) * 512 + bit_bxor(buffer_readu8(mix_columns_1_h, word_state_4_h), buffer_readu8(mix_columns_2_h, word_state_6_h), buffer_readu8(round_keys_buffer_enc_h, max_round_key_offset_h + 20)) * 2), buffer_readu32(round_keys_buffer_enc_h, max_round_key_offset_h + 36)));
                    buffer_writeu32(output_data_buffer_h, output_offset_h + 8, bit_bxor(buffer_readu16(sbox_buffer_large_h, bit_bxor(buffer_readu8(mix_columns_1_h, word_state_7_h), buffer_readu8(mix_columns_2_h, word_state_5_h), buffer_readu8(round_keys_buffer_enc_h, max_round_key_offset_h + 23)) * 512 + bit_bxor(buffer_readu8(mix_columns_1_h, word_state_2_h), buffer_readu8(mix_columns_2_h, word_state_0_h), buffer_readu8(round_keys_buffer_enc_h, max_round_key_offset_h + 18)) * 2) * 65536 + buffer_readu16(sbox_buffer_large_h, bit_bxor(buffer_readu8(mix_columns_1_h, word_state_13_h), buffer_readu8(mix_columns_2_h, word_state_15_h), buffer_readu8(round_keys_buffer_enc_h, max_round_key_offset_h + 29)) * 512 + bit_bxor(buffer_readu8(mix_columns_1_h, word_state_8_h), buffer_readu8(mix_columns_2_h, word_state_10_h), buffer_readu8(round_keys_buffer_enc_h, max_round_key_offset_h + 24)) * 2), buffer_readu32(round_keys_buffer_enc_h, max_round_key_offset_h + 40)));
                    buffer_writeu32(output_data_buffer_h, output_offset_h + 12, bit_bxor(buffer_readu16(sbox_buffer_large_h, bit_bxor(buffer_readu8(mix_columns_1_h, word_state_11_h), buffer_readu8(mix_columns_2_h, word_state_9_h), buffer_readu8(round_keys_buffer_enc_h, max_round_key_offset_h + 27)) * 512 + bit_bxor(buffer_readu8(mix_columns_1_h, word_state_6_h), buffer_readu8(mix_columns_2_h, word_state_4_h), buffer_readu8(round_keys_buffer_enc_h, max_round_key_offset_h + 22)) * 2) * 65536 + buffer_readu16(sbox_buffer_large_h, bit_bxor(buffer_readu8(mix_columns_1_h, word_state_1_h), buffer_readu8(mix_columns_2_h, word_state_3_h), buffer_readu8(round_keys_buffer_enc_h, max_round_key_offset_h + 17)) * 512 + bit_bxor(buffer_readu8(mix_columns_1_h, word_state_12_h), buffer_readu8(mix_columns_2_h, word_state_14_h), buffer_readu8(round_keys_buffer_enc_h, max_round_key_offset_h + 28)) * 2), buffer_readu32(round_keys_buffer_enc_h, max_round_key_offset_h + 44)));
                    return ;
                end;
                local decrypt_aes_block_h = function(round_keys_buffer_dec_h, max_round_key_offset_dec_h, input_data_buffer_dec_h, input_offset_dec_h, output_data_buffer_dec_h, output_offset_dec_h)
                    local final_round_state_byte_0_h = bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(input_data_buffer_dec_h, input_offset_dec_h) * 256 + buffer_readu8(round_keys_buffer_dec_h, max_round_key_offset_dec_h + 32)), buffer_readu8(round_keys_buffer_dec_h, max_round_key_offset_dec_h + 16));
                    local final_round_state_byte_1_h = bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(input_data_buffer_dec_h, input_offset_dec_h + 13) * 256 + buffer_readu8(round_keys_buffer_dec_h, max_round_key_offset_dec_h + 45)), buffer_readu8(round_keys_buffer_dec_h, max_round_key_offset_dec_h + 17));
                    local final_round_state_byte_2_h = bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(input_data_buffer_dec_h, input_offset_dec_h + 10) * 256 + buffer_readu8(round_keys_buffer_dec_h, max_round_key_offset_dec_h + 42)), buffer_readu8(round_keys_buffer_dec_h, max_round_key_offset_dec_h + 18));
                    local final_round_state_byte_3_h = bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(input_data_buffer_dec_h, input_offset_dec_h + 7) * 256 + buffer_readu8(round_keys_buffer_dec_h, max_round_key_offset_dec_h + 39)), buffer_readu8(round_keys_buffer_dec_h, max_round_key_offset_dec_h + 19));
                    local final_round_state_byte_4_h = bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(input_data_buffer_dec_h, input_offset_dec_h + 4) * 256 + buffer_readu8(round_keys_buffer_dec_h, max_round_key_offset_dec_h + 36)), buffer_readu8(round_keys_buffer_dec_h, max_round_key_offset_dec_h + 20));
                    local final_round_state_byte_5_h = bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(input_data_buffer_dec_h, input_offset_dec_h + 1) * 256 + buffer_readu8(round_keys_buffer_dec_h, max_round_key_offset_dec_h + 33)), buffer_readu8(round_keys_buffer_dec_h, max_round_key_offset_dec_h + 21));
                    local final_round_state_byte_6_h = bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(input_data_buffer_dec_h, input_offset_dec_h + 14) * 256 + buffer_readu8(round_keys_buffer_dec_h, max_round_key_offset_dec_h + 46)), buffer_readu8(round_keys_buffer_dec_h, max_round_key_offset_dec_h + 22));
                    local final_round_state_byte_7_h = bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(input_data_buffer_dec_h, input_offset_dec_h + 11) * 256 + buffer_readu8(round_keys_buffer_dec_h, max_round_key_offset_dec_h + 43)), buffer_readu8(round_keys_buffer_dec_h, max_round_key_offset_dec_h + 23));
                    local final_round_state_byte_8_h = bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(input_data_buffer_dec_h, input_offset_dec_h + 8) * 256 + buffer_readu8(round_keys_buffer_dec_h, max_round_key_offset_dec_h + 40)), buffer_readu8(round_keys_buffer_dec_h, max_round_key_offset_dec_h + 24));
                    local final_round_state_byte_9_h = bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(input_data_buffer_dec_h, input_offset_dec_h + 5) * 256 + buffer_readu8(round_keys_buffer_dec_h, max_round_key_offset_dec_h + 37)), buffer_readu8(round_keys_buffer_dec_h, max_round_key_offset_dec_h + 25));
                    local final_round_state_byte_10_h = bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(input_data_buffer_dec_h, input_offset_dec_h + 2) * 256 + buffer_readu8(round_keys_buffer_dec_h, max_round_key_offset_dec_h + 34)), buffer_readu8(round_keys_buffer_dec_h, max_round_key_offset_dec_h + 26));
                    local final_round_state_byte_11_h = bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(input_data_buffer_dec_h, input_offset_dec_h + 15) * 256 + buffer_readu8(round_keys_buffer_dec_h, max_round_key_offset_dec_h + 47)), buffer_readu8(round_keys_buffer_dec_h, max_round_key_offset_dec_h + 27));
                    local final_round_state_byte_12_h = bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(input_data_buffer_dec_h, input_offset_dec_h + 12) * 256 + buffer_readu8(round_keys_buffer_dec_h, max_round_key_offset_dec_h + 44)), buffer_readu8(round_keys_buffer_dec_h, max_round_key_offset_dec_h + 28));
                    local final_round_state_byte_13_h = bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(input_data_buffer_dec_h, input_offset_dec_h + 9) * 256 + buffer_readu8(round_keys_buffer_dec_h, max_round_key_offset_dec_h + 41)), buffer_readu8(round_keys_buffer_dec_h, max_round_key_offset_dec_h + 29));
                    local final_round_state_byte_14_h = bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(input_data_buffer_dec_h, input_offset_dec_h + 6) * 256 + buffer_readu8(round_keys_buffer_dec_h, max_round_key_offset_dec_h + 38)), buffer_readu8(round_keys_buffer_dec_h, max_round_key_offset_dec_h + 30));
                    local final_round_state_byte_15_h = bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(input_data_buffer_dec_h, input_offset_dec_h + 3) * 256 + buffer_readu8(round_keys_buffer_dec_h, max_round_key_offset_dec_h + 35)), buffer_readu8(round_keys_buffer_dec_h, max_round_key_offset_dec_h + 31));
                    local current_state_reg_0_h = final_round_state_byte_0_h * 256 + final_round_state_byte_1_h;
                    local current_state_reg_1_h = final_round_state_byte_1_h * 256 + final_round_state_byte_2_h;
                    local current_state_reg_2_h = final_round_state_byte_2_h * 256 + final_round_state_byte_3_h;
                    local current_state_reg_3_h = final_round_state_byte_3_h * 256 + final_round_state_byte_0_h;
                    local current_state_reg_4_h = final_round_state_byte_4_h * 256 + final_round_state_byte_5_h;
                    local current_state_reg_5_h = final_round_state_byte_5_h * 256 + final_round_state_byte_6_h;
                    local current_state_reg_6_h = final_round_state_byte_6_h * 256 + final_round_state_byte_7_h;
                    local current_state_reg_7_h = final_round_state_byte_7_h * 256 + final_round_state_byte_4_h;
                    local current_state_reg_8_h = final_round_state_byte_8_h * 256 + final_round_state_byte_9_h;
                    local current_state_reg_9_h = final_round_state_byte_9_h * 256 + final_round_state_byte_10_h;
                    local current_state_reg_10_h = final_round_state_byte_10_h * 256 + final_round_state_byte_11_h;
                    local current_state_reg_11_h = final_round_state_byte_11_h * 256 + final_round_state_byte_8_h;
                    local current_state_reg_12_h = final_round_state_byte_12_h * 256 + final_round_state_byte_13_h;
                    local current_state_reg_13_h = final_round_state_byte_13_h * 256 + final_round_state_byte_14_h;
                    local current_state_reg_14_h = final_round_state_byte_14_h * 256 + final_round_state_byte_15_h;
                    local current_state_reg_15_h = final_round_state_byte_15_h * 256 + final_round_state_byte_12_h;
                    for i_decrypt_round_offset_h = max_round_key_offset_dec_h, 16, -16 do
                        local next_state_byte_0_h = bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(inv_mix_columns_2_h, current_state_reg_0_h) * 256 + buffer_readu8(inv_mix_columns_3_h, current_state_reg_2_h)), buffer_readu8(round_keys_buffer_dec_h, i_decrypt_round_offset_h));
                        local next_state_byte_1_h = bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(inv_mix_columns_2_h, current_state_reg_13_h) * 256 + buffer_readu8(inv_mix_columns_3_h, current_state_reg_15_h)), buffer_readu8(round_keys_buffer_dec_h, i_decrypt_round_offset_h + 1));
                        local next_state_byte_2_h = bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(inv_mix_columns_2_h, current_state_reg_10_h) * 256 + buffer_readu8(inv_mix_columns_3_h, current_state_reg_8_h)), buffer_readu8(round_keys_buffer_dec_h, i_decrypt_round_offset_h + 2));
                        local next_state_byte_3_h = bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(inv_mix_columns_2_h, current_state_reg_7_h) * 256 + buffer_readu8(inv_mix_columns_3_h, current_state_reg_5_h)), buffer_readu8(round_keys_buffer_dec_h, i_decrypt_round_offset_h + 3));
                        local next_state_byte_4_h = bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(inv_mix_columns_2_h, current_state_reg_4_h) * 256 + buffer_readu8(inv_mix_columns_3_h, current_state_reg_6_h)), buffer_readu8(round_keys_buffer_dec_h, i_decrypt_round_offset_h + 4));
                        local next_state_byte_5_h = bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(inv_mix_columns_2_h, current_state_reg_1_h) * 256 + buffer_readu8(inv_mix_columns_3_h, current_state_reg_3_h)), buffer_readu8(round_keys_buffer_dec_h, i_decrypt_round_offset_h + 5));
                        local next_state_byte_6_h = bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(inv_mix_columns_2_h, current_state_reg_14_h) * 256 + buffer_readu8(inv_mix_columns_3_h, current_state_reg_12_h)), buffer_readu8(round_keys_buffer_dec_h, i_decrypt_round_offset_h + 6));
                        local next_state_byte_7_h = bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(inv_mix_columns_2_h, current_state_reg_11_h) * 256 + buffer_readu8(inv_mix_columns_3_h, current_state_reg_9_h)), buffer_readu8(round_keys_buffer_dec_h, i_decrypt_round_offset_h + 7));
                        local next_state_byte_8_h = bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(inv_mix_columns_2_h, current_state_reg_8_h) * 256 + buffer_readu8(inv_mix_columns_3_h, current_state_reg_10_h)), buffer_readu8(round_keys_buffer_dec_h, i_decrypt_round_offset_h + 8));
                        local next_state_byte_9_h = bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(inv_mix_columns_2_h, current_state_reg_5_h) * 256 + buffer_readu8(inv_mix_columns_3_h, current_state_reg_7_h)), buffer_readu8(round_keys_buffer_dec_h, i_decrypt_round_offset_h + 9));
                        local next_state_byte_10_h = bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(inv_mix_columns_2_h, current_state_reg_2_h) * 256 + buffer_readu8(inv_mix_columns_3_h, current_state_reg_0_h)), buffer_readu8(round_keys_buffer_dec_h, i_decrypt_round_offset_h + 10));
                        local next_state_byte_11_h = bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(inv_mix_columns_2_h, current_state_reg_15_h) * 256 + buffer_readu8(inv_mix_columns_3_h, current_state_reg_13_h)), buffer_readu8(round_keys_buffer_dec_h, i_decrypt_round_offset_h + 11));
                        local next_state_byte_12_h = bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(inv_mix_columns_2_h, current_state_reg_12_h) * 256 + buffer_readu8(inv_mix_columns_3_h, current_state_reg_14_h)), buffer_readu8(round_keys_buffer_dec_h, i_decrypt_round_offset_h + 12));
                        local next_state_byte_13_h = bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(inv_mix_columns_2_h, current_state_reg_9_h) * 256 + buffer_readu8(inv_mix_columns_3_h, current_state_reg_11_h)), buffer_readu8(round_keys_buffer_dec_h, i_decrypt_round_offset_h + 13));
                        local next_state_byte_14_h = bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(inv_mix_columns_2_h, current_state_reg_6_h) * 256 + buffer_readu8(inv_mix_columns_3_h, current_state_reg_4_h)), buffer_readu8(round_keys_buffer_dec_h, i_decrypt_round_offset_h + 14));
                        local next_state_byte_15_h = bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(inv_mix_columns_2_h, current_state_reg_3_h) * 256 + buffer_readu8(inv_mix_columns_3_h, current_state_reg_1_h)), buffer_readu8(round_keys_buffer_dec_h, i_decrypt_round_offset_h + 15));
                        current_state_reg_0_h, current_state_reg_1_h, current_state_reg_2_h, current_state_reg_3_h, current_state_reg_4_h, current_state_reg_5_h, current_state_reg_6_h, current_state_reg_7_h, current_state_reg_8_h, current_state_reg_9_h, current_state_reg_10_h, current_state_reg_11_h, current_state_reg_12_h, current_state_reg_13_h, current_state_reg_14_h, current_state_reg_15_h = next_state_byte_0_h * 256 + next_state_byte_1_h, next_state_byte_1_h * 256 + next_state_byte_2_h, next_state_byte_2_h * 256 + next_state_byte_3_h, next_state_byte_3_h * 256 + next_state_byte_0_h, next_state_byte_4_h * 256 + next_state_byte_5_h, next_state_byte_5_h * 256 + next_state_byte_6_h, next_state_byte_6_h * 256 + next_state_byte_7_h, next_state_byte_7_h * 256 + next_state_byte_4_h, next_state_byte_8_h * 256 + next_state_byte_9_h, next_state_byte_9_h * 256 + next_state_byte_10_h, next_state_byte_10_h * 256 + next_state_byte_11_h, next_state_byte_11_h * 256 + next_state_byte_8_h, next_state_byte_12_h * 256 + next_state_byte_13_h, next_state_byte_13_h * 256 + next_state_byte_14_h, next_state_byte_14_h * 256 + next_state_byte_15_h, next_state_byte_15_h * 256 + next_state_byte_12_h;
                    end;
                    buffer_writeu32(output_data_buffer_dec_h, output_offset_dec_h, bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(inv_mix_columns_2_h, current_state_reg_7_h) * 256 + buffer_readu8(inv_mix_columns_3_h, current_state_reg_5_h)), buffer_readu8(round_keys_buffer_dec_h, 3)) * 16777216 + bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(inv_mix_columns_2_h, current_state_reg_10_h) * 256 + buffer_readu8(inv_mix_columns_3_h, current_state_reg_8_h)), buffer_readu8(round_keys_buffer_dec_h, 2)) * 65536 + bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(inv_mix_columns_2_h, current_state_reg_13_h) * 256 + buffer_readu8(inv_mix_columns_3_h, current_state_reg_15_h)), buffer_readu8(round_keys_buffer_dec_h, 1)) * 256 + bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(inv_mix_columns_2_h, current_state_reg_0_h) * 256 + buffer_readu8(inv_mix_columns_3_h, current_state_reg_2_h)), buffer_readu8(round_keys_buffer_dec_h, 0)));
                    buffer_writeu32(output_data_buffer_dec_h, output_offset_dec_h + 4, bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(inv_mix_columns_2_h, current_state_reg_11_h) * 256 + buffer_readu8(inv_mix_columns_3_h, current_state_reg_9_h)), buffer_readu8(round_keys_buffer_dec_h, 7)) * 16777216 + bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(inv_mix_columns_2_h, current_state_reg_14_h) * 256 + buffer_readu8(inv_mix_columns_3_h, current_state_reg_12_h)), buffer_readu8(round_keys_buffer_dec_h, 6)) * 65536 + bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(inv_mix_columns_2_h, current_state_reg_1_h) * 256 + buffer_readu8(inv_mix_columns_3_h, current_state_reg_3_h)), buffer_readu8(round_keys_buffer_dec_h, 5)) * 256 + bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(inv_mix_columns_2_h, current_state_reg_4_h) * 256 + buffer_readu8(inv_mix_columns_3_h, current_state_reg_6_h)), buffer_readu8(round_keys_buffer_dec_h, 4)));
                    buffer_writeu32(output_data_buffer_dec_h, output_offset_dec_h + 8, bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(inv_mix_columns_2_h, current_state_reg_15_h) * 256 + buffer_readu8(inv_mix_columns_3_h, current_state_reg_13_h)), buffer_readu8(round_keys_buffer_dec_h, 11)) * 16777216 + bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(inv_mix_columns_2_h, current_state_reg_2_h) * 256 + buffer_readu8(inv_mix_columns_3_h, current_state_reg_0_h)), buffer_readu8(round_keys_buffer_dec_h, 10)) * 65536 + bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(inv_mix_columns_2_h, current_state_reg_5_h) * 256 + buffer_readu8(inv_mix_columns_3_h, current_state_reg_7_h)), buffer_readu8(round_keys_buffer_dec_h, 9)) * 256 + bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(inv_mix_columns_2_h, current_state_reg_8_h) * 256 + buffer_readu8(inv_mix_columns_3_h, current_state_reg_10_h)), buffer_readu8(round_keys_buffer_dec_h, 8)));
                    buffer_writeu32(output_data_buffer_dec_h, output_offset_dec_h + 12, bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(inv_mix_columns_2_h, current_state_reg_3_h) * 256 + buffer_readu8(inv_mix_columns_3_h, current_state_reg_1_h)), buffer_readu8(round_keys_buffer_dec_h, 15)) * 16777216 + bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(inv_mix_columns_2_h, current_state_reg_6_h) * 256 + buffer_readu8(inv_mix_columns_3_h, current_state_reg_4_h)), buffer_readu8(round_keys_buffer_dec_h, 14)) * 65536 + bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(inv_mix_columns_2_h, current_state_reg_9_h) * 256 + buffer_readu8(inv_mix_columns_3_h, current_state_reg_11_h)), buffer_readu8(round_keys_buffer_dec_h, 13)) * 256 + bit_bxor(buffer_readu8(inv_mix_columns_1_h, buffer_readu8(inv_mix_columns_2_h, current_state_reg_12_h) * 256 + buffer_readu8(inv_mix_columns_3_h, current_state_reg_14_h)), buffer_readu8(round_keys_buffer_dec_h, 12)));
                    return ;
                end;
                local sbox_fwd_buffer_h = buffer_create(256);
                local sbox_inv_buffer_h = buffer_create(256);
                local gf_mult_3_buffer_h = buffer_create(256);
                local gf_mult_9_buffer_h = buffer_create(256);
                local gf_mult_11_buffer_h = buffer_create(256);
                local gf_power_alpha_h = 1;
                local gf_inverse_input_h = 1;
                local unused_temp_nil_1_h = nil;
                local galois_field_multiply_h = function(mult_factor_h, input_value_gf_h)
                    local gf_result_accumulator_h = 0;
                    for i_bit_counter_h = 0, 7, 1 do
                        if input_value_gf_h % 2 == 1 then
                            gf_result_accumulator_h = bit_bxor(gf_result_accumulator_h, mult_factor_h);
                        end;
                        mult_factor_h = if not (128 <= mult_factor_h) then mult_factor_h * 2 % 256 else bit_bxor(mult_factor_h * 2 % 256, 27);
                        input_value_gf_h = math_floor(input_value_gf_h / 2);
                    end;
                    return gf_result_accumulator_h;
                end;
                buffer_writeu8(sbox_fwd_buffer_h, 0, 99);
                for i_sbox_init_h = 1, 255, 1 do
                    gf_power_alpha_h = bit_bxor(gf_power_alpha_h, gf_power_alpha_h * 2, gf_power_alpha_h < 128 and 0 or 27) % 256;
                    local temp_affine_step_1_h = bit_bxor(gf_inverse_input_h, gf_inverse_input_h * 2);
                    local temp_affine_step_2_h = bit_bxor(temp_affine_step_1_h, temp_affine_step_1_h * 4);
                    gf_inverse_input_h = bit_bxor(temp_affine_step_2_h, temp_affine_step_2_h * 16) % 256;
                    if 128 <= gf_inverse_input_h then
                        gf_inverse_input_h = bit_bxor(gf_inverse_input_h, 9);
                    end;
                    local sbox_byte_value_h = bit_bxor(gf_inverse_input_h, gf_inverse_input_h % 128 * 2 + gf_inverse_input_h / 128, gf_inverse_input_h % 64 * 4 + gf_inverse_input_h / 64, gf_inverse_input_h % 32 * 8 + gf_inverse_input_h / 32, gf_inverse_input_h % 16 * 16 + gf_inverse_input_h / 16, 99);
                    buffer_writeu8(sbox_fwd_buffer_h, gf_power_alpha_h, sbox_byte_value_h);
                    buffer_writeu8(sbox_inv_buffer_h, sbox_byte_value_h, gf_power_alpha_h);
                    buffer_writeu8(gf_mult_3_buffer_h, gf_power_alpha_h, galois_field_multiply_h(3, gf_power_alpha_h));
                    buffer_writeu8(gf_mult_9_buffer_h, gf_power_alpha_h, galois_field_multiply_h(9, gf_power_alpha_h));
                    buffer_writeu8(gf_mult_11_buffer_h, gf_power_alpha_h, galois_field_multiply_h(11, gf_power_alpha_h));
                end;
                local unused_temp_nil_2_h = nil;
                local unused_temp_nil_3_h = nil;
                local unused_temp_nil_4_h = nil;
                local unused_temp_nil_5_h = nil;
                local lookup_table_index_h = 0;
                for i_outer_byte_h = 0, 255, 1 do
                    local sbox_fwd_value_h = buffer_readu8(sbox_fwd_buffer_h, i_outer_byte_h);
                    local sbox_fwd_value_shifted_h = sbox_fwd_value_h * 256;
                    local gf_mult_2_result_h, gf_mult_13_result_h, gf_mult_14_result_h = galois_field_multiply_h(2, sbox_fwd_value_h), galois_field_multiply_h(13, i_outer_byte_h), galois_field_multiply_h(14, i_outer_byte_h);
                    for i_inner_byte_h = 0, 255, 1 do
                        local sbox_fwd_value_inner_h = buffer_readu8(sbox_fwd_buffer_h, i_inner_byte_h);
                        buffer_writeu16(sbox_buffer_large_h, lookup_table_index_h * 2, sbox_fwd_value_shifted_h + sbox_fwd_value_inner_h);
                        buffer_writeu8(inv_mix_columns_1_h, lookup_table_index_h, buffer_readu8(sbox_inv_buffer_h, bit_bxor(i_outer_byte_h, i_inner_byte_h)));
                        buffer_writeu8(mix_columns_1_h, lookup_table_index_h, bit_bxor(gf_mult_2_result_h, buffer_readu8(gf_mult_3_buffer_h, sbox_fwd_value_inner_h)));
                        buffer_writeu8(mix_columns_2_h, lookup_table_index_h, bit_bxor(sbox_fwd_value_h, sbox_fwd_value_inner_h));
                        buffer_writeu8(inv_mix_columns_2_h, lookup_table_index_h, bit_bxor(gf_mult_14_result_h, buffer_readu8(gf_mult_11_buffer_h, i_inner_byte_h)));
                        buffer_writeu8(inv_mix_columns_3_h, lookup_table_index_h, bit_bxor(gf_mult_13_result_h, buffer_readu8(gf_mult_9_buffer_h, i_inner_byte_h)));
                        lookup_table_index_h = lookup_table_index_h + 1;
                    end;
                end;
                local aes_newindex_error_h = function(metatable_table_h, new_index_key_h)
                    return lua_error(string.format("%s cannot be assigned to", tostring(new_index_key_h)));
                end;
                local aes_tostring_func_h = function()
                    return "AesCipher";
                end;
                local create_round_keys_h = function(key_data_h, output_buffer_key_exp_h)
                    local is_key_buffer_h = lua_typeof(key_data_h) == "buffer";
                    local key_length_h = (is_key_buffer_h and { [1] = buffer_len(key_data_h) } or { [1] = #key_data_h })[1];
                    local round_keys_buffer_size_h = key_length_h == 32 and 240 or key_length_h == 16 and 176 or key_length_h == 24 and 208 or lua_error("Key must be either 16, 24 or 32 bytes long");
                    return key_expansion_h(key_data_h, key_length_h, output_buffer_key_exp_h or buffer_create(round_keys_buffer_size_h), is_key_buffer_h);
                end;
                return (function(round_keys_data_instance, cipher_modes_config_h, padding_modes_config_h)
                    local round_keys_length_h = buffer_len(round_keys_data_instance);
                    local max_block_offset_h_2 = nil;
                    local original_key_string_h = nil;
                    local round_keys_string_h = buffer_tostring(round_keys_data_instance);
                    if round_keys_length_h == 240 then
                        max_block_offset_h_2 = 192;
                        original_key_string_h = str_sub(round_keys_string_h, 1, 32);
                    elseif round_keys_length_h == 208 then
                        max_block_offset_h_2 = 160;
                        original_key_string_h = str_sub(round_keys_string_h, 1, 24);
                    elseif round_keys_length_h == 176 then
                        max_block_offset_h_2 = 128;
                        original_key_string_h = str_sub(round_keys_string_h, 1, 16);
                    else
                        lua_error("Round keys must be either 240, 208 or 128 bytes long");
                    end;
                    local round_keys_buffer_instance_h = round_keys_data_instance;
                    local cipher_modes_instance_h = cipher_modes_config_h or cipher_modes_h;
                    local fwd_mode_func_h = cipher_modes_instance_h.FwdMode;
                    local inv_mode_func_h = cipher_modes_instance_h.InvMode;
                    local segment_size_h = cipher_modes_instance_h.SegmentSize or 16;
                    local padding_modes_instance_h = padding_modes_config_h or padding_utilities_h;
                    local pad_func_h = padding_modes_instance_h.Pad;
                    local unpad_func_h = padding_modes_instance_h.Unpad;
                    local cipher_proxy_h = lua_newproxy(true);
                    local proxy_metatable_h = lua_getmetatable(cipher_proxy_h);
                    local encrypt_block_wrapper_h = function(input_buffer_ref_h, input_offset_ref_h, output_buffer_ref_h, output_offset_ref_h)
                        encrypt_aes_block_h(round_keys_buffer_instance_h, max_block_offset_h_2, input_buffer_ref_h, input_offset_ref_h, output_buffer_ref_h, output_offset_ref_h);
                        return ;
                    end;
                    local decrypt_block_wrapper_h = function(input_buffer_ref_dec_h, input_offset_ref_dec_h, output_buffer_ref_dec_h, output_offset_ref_dec_h)
                        decrypt_aes_block_h(round_keys_buffer_instance_h, max_block_offset_h_2, input_buffer_ref_dec_h, input_offset_ref_dec_h, output_buffer_ref_dec_h, output_offset_ref_dec_h);
                        return ;
                    end;
                    local encrypt_method_h = function(self_cipher_enc_h, input_data_enc_h, output_buffer_enc_h, ...)
                        local input_type_enc_h = lua_typeof(input_data_enc_h);
                        local input_buffer_instance_enc_h = (input_type_enc_h == "buffer" and { [1] = input_data_enc_h } or { [1] = (input_type_enc_h == "string" and { [1] = buffer_fromstring(input_data_enc_h) } or { [1] = lua_error(string.format("Unable to cast %s to buffer", tostring(input_type_enc_h))) })[1] })[1];
                        local output_buffer_instance_enc_h = lua_typeof(output_buffer_enc_h) == "buffer" and output_buffer_enc_h;
                        if self_cipher_enc_h ~= cipher_proxy_h then
                            return self_cipher_enc_h:Encrypt(input_buffer_instance_enc_h, output_buffer_instance_enc_h, ...);
                        end;
                        if max_block_offset_h_2 then
                            local padded_input_buffer_h = pad_func_h(input_buffer_instance_enc_h, output_buffer_instance_enc_h, segment_size_h);
                            fwd_mode_func_h(encrypt_block_wrapper_h, decrypt_block_wrapper_h, (padding_modes_instance_h.Overwrite == false and { [1] = input_buffer_instance_enc_h } or { [1] = padded_input_buffer_h })[1], padded_input_buffer_h, cipher_modes_instance_h, ...);
                            return padded_input_buffer_h;
                        end;
                        lua_error("AesCipher object's already destroyed");
                        return buffer_create(0);
                    end;
                    local encrypt_block_method_h = function(self_cipher_enc_block_h, input_buffer_block_h, input_offset_block_h, output_buffer_block_h, output_offset_block_h)
                        if self_cipher_enc_block_h ~= cipher_proxy_h then
                            self_cipher_enc_block_h:EncryptBlock(input_buffer_block_h, input_offset_block_h, output_buffer_block_h, output_offset_block_h);
                        elseif max_block_offset_h_2 then
                            encrypt_aes_block_h(round_keys_buffer_instance_h, max_block_offset_h_2, input_buffer_block_h, input_offset_block_h, output_buffer_block_h or input_buffer_block_h, output_offset_block_h or input_offset_block_h);
                        else
                            lua_error("AesCipher object's already destroyed");
                        end;
                        return ;
                    end;
                    local decrypt_method_h = function(self_cipher_dec_h, input_data_dec_h, output_buffer_dec_h, ...)
                        local input_type_dec_h = lua_typeof(input_data_dec_h);
                        local input_buffer_instance_dec_h = (input_type_dec_h == "buffer" and { [1] = input_data_dec_h } or { [1] = (input_type_dec_h == "string" and { [1] = buffer_fromstring(input_data_dec_h) } or { [1] = lua_error(string.format("Unable to cast %s to buffer", tostring(input_type_dec_h))) })[1] })[1];
                        local output_buffer_instance_dec_h = lua_typeof(output_buffer_dec_h) == "buffer" and output_buffer_dec_h;
                        if self_cipher_dec_h ~= cipher_proxy_h then
                            return self_cipher_dec_h:Decrypt(input_buffer_instance_dec_h, output_buffer_instance_dec_h, ...);
                        end;
                        if max_block_offset_h_2 then
                            local overwrite_setting_h = padding_modes_instance_h.Overwrite;
                            local intermediate_decryption_buffer_h = (overwrite_setting_h == nil and { [1] = buffer_create(buffer_len(input_buffer_instance_dec_h)) } or { [1] = (overwrite_setting_h and { [1] = input_buffer_instance_dec_h } or { [1] = output_buffer_instance_dec_h or buffer_create(buffer_len(input_buffer_instance_dec_h)) })[1] })[1];
                            inv_mode_func_h(encrypt_block_wrapper_h, decrypt_block_wrapper_h, input_buffer_instance_dec_h, intermediate_decryption_buffer_h, cipher_modes_instance_h, ...);
                            return unpad_func_h(intermediate_decryption_buffer_h, output_buffer_instance_dec_h, segment_size_h);
                        end;
                        lua_error("AesCipher object's already destroyed");
                        return buffer_create(0);
                    end;
                    local decrypt_block_method_h = function(self_cipher_dec_block_h, input_buffer_block_dec_h, input_offset_block_dec_h, output_buffer_block_dec_h, output_offset_block_dec_h)
                        if self_cipher_dec_block_h ~= cipher_proxy_h then
                            self_cipher_dec_block_h:DecryptBlock(input_buffer_block_dec_h, input_offset_block_dec_h, output_buffer_block_dec_h, output_offset_block_dec_h);
                        elseif max_block_offset_h_2 then
                            decrypt_aes_block_h(round_keys_buffer_instance_h, max_block_offset_h_2, input_buffer_block_dec_h, input_offset_block_dec_h, output_buffer_block_dec_h or input_buffer_block_dec_h, output_offset_block_dec_h or input_offset_block_dec_h);
                        else
                            lua_error("AesCipher object's already destroyed");
                        end;
                        return ;
                    end;
                    local destroy_method_h = function(self_cipher_destroy_h)
                        if self_cipher_destroy_h ~= cipher_proxy_h then
                            self_cipher_destroy_h:Destroy();
                        elseif max_block_offset_h_2 then
                            round_keys_string_h, round_keys_buffer_instance_h, max_block_offset_h_2, fwd_mode_func_h, inv_mode_func_h, cipher_modes_instance_h, padding_modes_instance_h, original_key_string_h, round_keys_length_h = nil, nil, nil, nil, nil, nil, nil, nil, nil;
                        else
                            lua_error("AesCipher object's already destroyed");
                        end;
                        return ;
                    end;
                    local cipher_methods_h = { Encrypt = encrypt_method_h, Decrypt = decrypt_method_h, EncryptBlock = encrypt_block_method_h, DecryptBlock = decrypt_block_method_h, Destroy = destroy_method_h };
                    local cipher_properties_h = { Key = original_key_string_h, RoundKeys = round_keys_string_h, Mode = cipher_modes_instance_h, Padding = padding_modes_instance_h, Length = round_keys_length_h };
                    proxy_metatable_h.__index = function(self_metatable_index_h, key_metatable_index_h)
                        if cipher_methods_h[key_metatable_index_h] then
                            return cipher_methods_h[key_metatable_index_h];
                        end;
                        if max_block_offset_h_2 and cipher_properties_h[key_metatable_index_h] then
                            return cipher_properties_h[key_metatable_index_h];
                        end;
                        if max_block_offset_h_2 then
                            lua_error(("%s is not a valid member of AesCipher"):format(key_metatable_index_h));
                        else
                            lua_error("AesCipher object's already destroyed");
                        end;
                        return ;
                    end;
                    proxy_metatable_h.__newindex = aes_newindex_error_h;
                    proxy_metatable_h.__tostring = aes_tostring_func_h;
                    proxy_metatable_h.__len = function()
                        return round_keys_length_h or lua_error("AesCipher object's destroyed");
                    end;
                    proxy_metatable_h.__metatable = "AesCipher object: Metatable's locked";
                    return cipher_proxy_h;
                end)(create_round_keys_h(input_key_aes_h), cipher_modes_h, padding_utilities_h);
            end,
            ["\000ECC"] = function(ecc_input_context_h)
                local reduce_modulo_prime_h = function(word_array_h)
                    for i_word_index_h = 0, 15, 1 do
                        word_array_h[i_word_index_h] = word_array_h[i_word_index_h] + 65536;
                        local carry_value_h = word_array_h[i_word_index_h] / 65536 - word_array_h[i_word_index_h] / 65536 % 1;
                        if i_word_index_h < 15 then
                            word_array_h[i_word_index_h + 1] = word_array_h[i_word_index_h + 1] + carry_value_h - 1;
                        else
                            word_array_h[0] = word_array_h[0] + 38 * (carry_value_h - 1);
                        end;
                        word_array_h[i_word_index_h] = word_array_h[i_word_index_h] - carry_value_h * 65536;
                    end;
                    return ;
                end;
                local conditional_swap_add_h = function(array_a_h, array_b_h, condition_h)
                    for i_word_swap_h = 0, 15, 1 do
                        array_a_h[i_word_swap_h], array_b_h[i_word_swap_h] = array_a_h[i_word_swap_h] * ((condition_h - 1) % 2) + array_b_h[i_word_swap_h] * condition_h, array_b_h[i_word_swap_h] * ((condition_h - 1) % 2) + array_a_h[i_word_swap_h] * condition_h;
                    end;
                    return ;
                end;
                local bytes_to_words_h = function(output_word_array_h, input_byte_array_h)
                    for i_byte_to_word_h = 0, 15, 1 do
                        output_word_array_h[i_byte_to_word_h] = input_byte_array_h[2 * i_byte_to_word_h] + input_byte_array_h[2 * i_byte_to_word_h + 1] * 256;
                    end;
                    output_word_array_h[15] = output_word_array_h[15] % 32768;
                    return ;
                end;
                local words_to_bytes_h = function(output_byte_array_h, input_word_array_h)
                    local temp_word_array_1_h = {};
                    local temp_word_array_2_h = {};
                    for i_copy_word_h = 0, 15, 1 do
                        temp_word_array_1_h[i_copy_word_h] = input_word_array_h[i_copy_word_h];
                    end;
                    reduce_modulo_prime_h(temp_word_array_1_h);
                    reduce_modulo_prime_h(temp_word_array_1_h);
                    reduce_modulo_prime_h(temp_word_array_1_h);
                    local ecc_modulus_p_words_h = { [0] = 65517, [15] = 32767 };
                    for i_fill_modulus_h = 1, 14, 1 do
                        ecc_modulus_p_words_h[i_fill_modulus_h] = 65535;
                    end;
                    for i_reduction_check_h = 0, 1, 1 do
                        temp_word_array_2_h[0] = temp_word_array_1_h[0] - ecc_modulus_p_words_h[0];
                        for i_subtraction_propagate_h = 1, 15, 1 do
                            temp_word_array_2_h[i_subtraction_propagate_h] = temp_word_array_1_h[i_subtraction_propagate_h] - ecc_modulus_p_words_h[i_subtraction_propagate_h] - (temp_word_array_2_h[i_subtraction_propagate_h - 1] / 65536 - temp_word_array_2_h[i_subtraction_propagate_h - 1] / 65536 % 1) % 2;
                            temp_word_array_2_h[i_subtraction_propagate_h - 1] = (temp_word_array_2_h[i_subtraction_propagate_h - 1] + 65536) % 65536;
                        end;
                        local reduction_condition_h = (temp_word_array_2_h[15] / 65536 - temp_word_array_2_h[15] / 65536 % 1) % 2;
                        conditional_swap_add_h(temp_word_array_1_h, temp_word_array_2_h, 1 - reduction_condition_h);
                    end;
                    for i_word_to_byte_h = 0, 15, 1 do
                        output_byte_array_h[2 * i_word_to_byte_h] = temp_word_array_1_h[i_word_to_byte_h] % 256;
                        output_byte_array_h[2 * i_word_to_byte_h + 1] = temp_word_array_1_h[i_word_to_byte_h] / 256 - temp_word_array_1_h[i_word_to_byte_h] / 256 % 1;
                    end;
                    return ;
                end;
                local word_array_add_h = function(result_array_add_h, array_a_add_h, array_b_add_h)
                    for i_add_word_h = 0, 15, 1 do
                        result_array_add_h[i_add_word_h] = array_a_add_h[i_add_word_h] + array_b_add_h[i_add_word_h];
                    end;
                    return ;
                end;
                local word_array_subtract_h = function(result_array_sub_h, array_a_sub_h, array_b_sub_h)
                    for i_sub_word_h = 0, 15, 1 do
                        result_array_sub_h[i_sub_word_h] = array_a_sub_h[i_sub_word_h] - array_b_sub_h[i_sub_word_h];
                    end;
                    return ;
                end;
                local word_array_multiply_h = function(result_array_mult_h, array_a_mult_h, array_b_mult_h)
                    local mult_intermediate_result_h = {};
                    for i_zero_mult_h = 0, 31, 1 do
                        mult_intermediate_result_h[i_zero_mult_h] = 0;
                    end;
                    for i_mult_word_a_h = 0, 15, 1 do
                        for i_mult_word_b_h = 0, 15, 1 do
                            mult_intermediate_result_h[i_mult_word_a_h + i_mult_word_b_h] = mult_intermediate_result_h[i_mult_word_a_h + i_mult_word_b_h] + array_a_mult_h[i_mult_word_a_h] * array_b_mult_h[i_mult_word_b_h];
                        end;
                    end;
                    for i_reduce_pass_1_h = 0, 14, 1 do
                        mult_intermediate_result_h[i_reduce_pass_1_h] = mult_intermediate_result_h[i_reduce_pass_1_h] + 38 * mult_intermediate_result_h[i_reduce_pass_1_h + 16];
                    end;
                    for i_copy_final_mult_h = 0, 15, 1 do
                        result_array_mult_h[i_copy_final_mult_h] = mult_intermediate_result_h[i_copy_final_mult_h];
                    end;
                    reduce_modulo_prime_h(result_array_mult_h);
                    reduce_modulo_prime_h(result_array_mult_h);
                    return ;
                end;
                local modular_inverse_h = function(result_array_inv_h, input_array_inv_h)
                    local temp_input_copy_h = {};
                    for i_copy_input_inv_h = 0, 15, 1 do
                        temp_input_copy_h[i_copy_input_inv_h] = input_array_inv_h[i_copy_input_inv_h];
                    end;
                    for i_exponent_loop_h = 253, 0, -1 do
                        word_array_multiply_h(temp_input_copy_h, temp_input_copy_h, temp_input_copy_h);
                        if i_exponent_loop_h ~= 2 and i_exponent_loop_h ~= 4 then
                            word_array_multiply_h(temp_input_copy_h, temp_input_copy_h, input_array_inv_h);
                        end;
                    end;
                    for i_copy_final_inv_h = 0, 15, 1 do
                        result_array_inv_h[i_copy_final_inv_h] = temp_input_copy_h[i_copy_final_inv_h];
                    end;
                    return ;
                end;
                local scalar_multiplication_h = function(result_byte_array_h, scalar_byte_array_h, point_byte_array_h)
                    local r_x_word_array_h = {};
                    local r_z_word_array_h = {};
                    local q_x_word_array_h = {};
                    local q_z_word_array_h = {};
                    local temp_add_result_h = {};
                    local temp_mult_result_h = {};
                    local input_point_words_h = {};
                    local working_scalar_bytes_h = {};
                    bytes_to_words_h(input_point_words_h, point_byte_array_h);
                    for i_init_point_arrays_h = 0, 15, 1 do
                        local initial_point_word_h = input_point_words_h[i_init_point_arrays_h];
                        r_x_word_array_h[i_init_point_arrays_h] = 0;
                        r_z_word_array_h[i_init_point_arrays_h] = initial_point_word_h;
                        q_x_word_array_h[i_init_point_arrays_h] = 0;
                        q_z_word_array_h[i_init_point_arrays_h] = 0;
                    end;
                    r_x_word_array_h[0] = 1;
                    q_z_word_array_h[0] = 1;
                    for i_copy_scalar_h = 0, 30, 1 do
                        working_scalar_bytes_h[i_copy_scalar_h] = scalar_byte_array_h[i_copy_scalar_h];
                    end;
                    working_scalar_bytes_h[0] = working_scalar_bytes_h[0] - working_scalar_bytes_h[0] % 8;
                    working_scalar_bytes_h[31] = scalar_byte_array_h[31] % 64 + 64;
                    for i_montgomery_ladder_h = 254, 0, -1 do
                        local current_scalar_bit_h = (working_scalar_bytes_h[i_montgomery_ladder_h / 8 - i_montgomery_ladder_h / 8 % 1] / 2 ^ (i_montgomery_ladder_h % 8) - working_scalar_bytes_h[i_montgomery_ladder_h / 8 - i_montgomery_ladder_h / 8 % 1] / 2 ^ (i_montgomery_ladder_h % 8) % 1) % 2;
                        conditional_swap_add_h(r_x_word_array_h, r_z_word_array_h, current_scalar_bit_h);
                        conditional_swap_add_h(q_x_word_array_h, q_z_word_array_h, current_scalar_bit_h);
                        word_array_add_h(temp_add_result_h, r_x_word_array_h, q_x_word_array_h);
                        word_array_subtract_h(r_x_word_array_h, r_x_word_array_h, q_x_word_array_h);
                        word_array_add_h(q_x_word_array_h, r_z_word_array_h, q_z_word_array_h);
                        word_array_subtract_h(r_z_word_array_h, r_z_word_array_h, q_z_word_array_h);
                        word_array_multiply_h(q_z_word_array_h, temp_add_result_h, temp_add_result_h);
                        word_array_multiply_h(temp_mult_result_h, r_x_word_array_h, r_x_word_array_h);
                        word_array_multiply_h(r_x_word_array_h, q_x_word_array_h, r_x_word_array_h);
                        word_array_multiply_h(q_x_word_array_h, r_z_word_array_h, temp_add_result_h);
                        word_array_add_h(temp_add_result_h, r_x_word_array_h, q_x_word_array_h);
                        word_array_subtract_h(r_x_word_array_h, r_x_word_array_h, q_x_word_array_h);
                        word_array_multiply_h(r_z_word_array_h, r_x_word_array_h, r_x_word_array_h);
                        word_array_subtract_h(q_x_word_array_h, q_z_word_array_h, temp_mult_result_h);
                        word_array_multiply_h(r_x_word_array_h, q_x_word_array_h, { [0] = 56129, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 });
                        word_array_add_h(r_x_word_array_h, r_x_word_array_h, q_z_word_array_h);
                        word_array_multiply_h(q_x_word_array_h, q_x_word_array_h, r_x_word_array_h);
                        word_array_multiply_h(r_x_word_array_h, q_z_word_array_h, temp_mult_result_h);
                        word_array_multiply_h(q_z_word_array_h, r_z_word_array_h, input_point_words_h);
                        word_array_multiply_h(r_z_word_array_h, temp_add_result_h, temp_add_result_h);
                        conditional_swap_add_h(r_x_word_array_h, r_z_word_array_h, current_scalar_bit_h);
                        conditional_swap_add_h(q_x_word_array_h, q_z_word_array_h, current_scalar_bit_h);
                    end;
                    modular_inverse_h(q_x_word_array_h, q_x_word_array_h);
                    word_array_multiply_h(r_x_word_array_h, r_x_word_array_h, q_x_word_array_h);
                    words_to_bytes_h(result_byte_array_h, r_x_word_array_h);
                    return ;
                end;
                local generate_keypair_h = function(rng_source_func_h)
                    local rng_generator_h = rng_source_func_h or function()
                        return math.random(0, 255);
                    end;
                    local private_key_bytes_h = {};
                    local public_key_bytes_h = {};
                    for i_gen_byte_h = 0, 31, 1 do
                        private_key_bytes_h[i_gen_byte_h] = rng_generator_h();
                    end;
                    local base_point_coords_h = { [0] = 9 };
                    for i_fill_base_point_h = 1, 31, 1 do
                        base_point_coords_h[i_fill_base_point_h] = 0;
                    end;
                    scalar_multiplication_h(public_key_bytes_h, private_key_bytes_h, base_point_coords_h);
                    return private_key_bytes_h, public_key_bytes_h;
                end;
                local get_shared_secret_h = function(private_key_a_h, public_key_b_h)
                    local shared_secret_key_h = {};
                    scalar_multiplication_h(shared_secret_key_h, private_key_a_h, public_key_b_h);
                    return shared_secret_key_h;
                end;
                return { generate_keypair = generate_keypair_h, get_shared_key = get_shared_secret_h };
            end,
            ["\000HASH"] = function(hash_input_string_h)
                local memoized_table_factory_h = function(lookup_table_generator_func_h)
                    local cache_metatable_h = {};
                    local lookup_cache_proxy_h = lua_setmetatable({}, cache_metatable_h);
                    cache_metatable_h.__index = function(self_cache_index_h, key_cache_index_h)
                        local generated_value_h = lookup_table_generator_func_h(key_cache_index_h);
                        lookup_cache_proxy_h[key_cache_index_h] = generated_value_h;
                        return generated_value_h;
                    end;
                    return lookup_cache_proxy_h;
                end;
                local create_mixer_func_h = function(lookup_table_h, base_number_h)
                    return function(input_a_mixing_h, input_b_mixing_h)
                        local mixing_result_h = 0;
                        local power_multiplier_h = 1;
                        while input_a_mixing_h ~= 0 and input_b_mixing_h ~= 0 do
                            local input_a_mod_h = input_a_mixing_h % base_number_h;
                            local input_b_mod_h = input_b_mixing_h % base_number_h;
                            mixing_result_h = mixing_result_h + lookup_table_h[input_a_mod_h][input_b_mod_h] * power_multiplier_h;
                            input_a_mixing_h = (input_a_mixing_h - input_a_mod_h) / base_number_h;
                            input_b_mixing_h = (input_b_mixing_h - input_b_mod_h) / base_number_h;
                            power_multiplier_h = power_multiplier_h * base_number_h;
                        end;
                        return mixing_result_h + (input_a_mixing_h + input_b_mixing_h) * power_multiplier_h;
                    end;
                end;
                local xor_hash_mixer_h = (function(initial_xor_table_h)
                    local base_2_mixer_h = create_mixer_func_h(initial_xor_table_h, 2);
                    local memoized_mixer_layer_1_h = memoized_table_factory_h(function(cache_key_a_h)
                        return memoized_table_factory_h(function(cache_key_b_h)
                            return base_2_mixer_h(cache_key_a_h, cache_key_b_h);
                        end);
                    end);
                    return create_mixer_func_h(memoized_mixer_layer_1_h, 2 ^ (initial_xor_table_h.n or 1));
                end)({ [0] = { [0] = 0, [1] = 1 }, { [0] = 1, [1] = 0 }, n = 4 });
                local bit_bxor_recursive_h;
                bit_bxor_recursive_h = function(val_a_h, val_b_h, val_c_or_rest_h, ...)
                    local unused_placeholder_1203 = nil;
                    if val_b_h then
                        local val_a_mod_word_h = val_a_h % 4294967296;
                        local val_b_mod_word_h = val_b_h % 4294967296;
                        local intermediate_xor_result_h = xor_hash_mixer_h(val_a_mod_word_h, val_b_mod_word_h);
                        if val_c_or_rest_h then
                            intermediate_xor_result_h = bit_bxor_recursive_h(intermediate_xor_result_h, val_c_or_rest_h, ...);
                        end;
                        return intermediate_xor_result_h;
                    end;
                    if val_a_h then
                        return val_a_h % 4294967296;
                    end;
                    return 0;
                end;
                local bit_band_recursive_h = function(val_a_and_h, val_b_and_h, val_c_or_rest_and_h, ...)
                    local unused_placeholder_1210 = nil;
                    if val_b_and_h then
                        local val_a_mod_word_and_h = val_a_and_h % 4294967296;
                        local val_b_mod_word_and_h = val_b_and_h % 4294967296;
                        local intermediate_and_result_h = (val_a_mod_word_and_h + val_b_mod_word_and_h - xor_hash_mixer_h(val_a_mod_word_and_h, val_b_mod_word_and_h)) / 2;
                        if val_c_or_rest_and_h then
                            intermediate_and_result_h = bit32_band(intermediate_and_result_h, val_c_or_rest_and_h, ...);
                        end;
                        return intermediate_and_result_h;
                    end;
                    if val_a_and_h then
                        return val_a_and_h % 4294967296;
                    end;
                    return 4294967295;
                end;
                local bit_bnot_h = function(input_value_bnot_h)
                    return (-1 - input_value_bnot_h) % 4294967296;
                end;
                local bit_arshift_h = function(input_value_shift_h, shift_amount_h_2)
                    if shift_amount_h_2 < 0 then
                        return lshift(input_value_shift_h, -shift_amount_h_2);
                    end;
                    return math.floor(input_value_shift_h % 4294967296 / 2 ^ shift_amount_h_2);
                end;
                local bit_rshift_limited_h = function(input_value_rshift_h, shift_amount_rshift_h)
                    if 31 < shift_amount_rshift_h or shift_amount_rshift_h < -31 then
                        return 0;
                    end;
                    return bit_arshift_h(input_value_rshift_h % 4294967296, shift_amount_rshift_h);
                end;
                local bit_lshift_limited_h = function(input_value_lshift_h, shift_amount_lshift_h)
                    if shift_amount_lshift_h < 0 then
                        return bit_rshift_limited_h(input_value_lshift_h, -shift_amount_lshift_h);
                    end;
                    return input_value_lshift_h * 2 ^ shift_amount_lshift_h % 4294967296;
                end;
                local bit_rrotate_limited_h = function(input_value_rotate_h, rotate_amount_h)
                    local input_value_mod_word_h = input_value_rotate_h % 4294967296;
                    local rotate_amount_mod_32_h = rotate_amount_h % 32;
                    local rotated_mask_h = bit_band_recursive_h(input_value_mod_word_h, 2 ^ rotate_amount_mod_32_h - 1);
                    return bit_rshift_limited_h(input_value_mod_word_h, rotate_amount_mod_32_h) + bit_lshift_limited_h(rotated_mask_h, 32 - rotate_amount_mod_32_h);
                end;
                local sha256_k_constants_h = { 1116352408, 1899447441, 3049323471, 3921009573, 961987163, 1508970993, 2453635748, 2870763221, 3624381080, 310598401, 607225278, 1426881987, 1925078388, 2162078206, 2614888103, 3248222580, 3835390401, 4022224774, 264347078, 604807628, 770255983, 1249150122, 1555081692, 1996064986, 2554220882, 2821834349, 2952996808, 3210313671, 3336571891, 3584528711, 113926993, 338241895, 666307205, 773529912, 1294757372, 1396182291, 1695183700, 1986661051, 2177026350, 2456956037, 2730485921, 2820302411, 3259730800, 3345764771, 3516065817, 3600352804, 4094571909, 275423344, 430227734, 506948616, 659060556, 883997877, 958139571, 1322822218, 1537002063, 1747873779, 1955562222, 2024104815, 2227730452, 2361852424, 2428436474, 2756734187, 3204031479, 3329325298 };
                local binary_to_hex_string_h = function(input_binary_string_h)
                    return string.gsub(input_binary_string_h, ".", function(byte_char_h)
                        return string.format("%02x", string.byte(byte_char_h));
                    end);
                end;
                local number_to_binary_string_h = function(input_number_value_h, output_byte_length_h)
                    local binary_string_output_h = "";
                    for i_byte_index_h_2 = 1, output_byte_length_h, 1 do
                        local current_byte_value_h = input_number_value_h % 256;
                        binary_string_output_h = string.char(current_byte_value_h) .. binary_string_output_h;
                        input_number_value_h = (input_number_value_h - current_byte_value_h) / 256;
                    end;
                    return binary_string_output_h;
                end;
                local read_be_word_32_h = function(input_string_source_h, start_index_word_h)
                    local word_value_result_h = 0;
                    for i_byte_index_word_h = start_index_word_h, start_index_word_h + 3, 1 do
                        word_value_result_h = word_value_result_h * 256 + string.byte(input_string_source_h, i_byte_index_word_h);
                    end;
                    return word_value_result_h;
                end;
                local sha256_pad_message_h = function(message_input_h, message_length_h)
                    local padding_zero_count_h = 64 - (message_length_h + 9) % 64;
                    local length_bytes_h = number_to_binary_string_h(8 * message_length_h, 8);
                    local padded_message_h = message_input_h .. ("\128" .. (string.rep("\000", padding_zero_count_h) .. length_bytes_h));
                    lua_assert(#padded_message_h % 64 == 0);
                    return padded_message_h;
                end;
                local initialize_hash_state_h = function(hash_state_array_h)
                    hash_state_array_h[1] = 1779033703;
                    hash_state_array_h[2] = 3144134277;
                    hash_state_array_h[3] = 1013904242;
                    hash_state_array_h[4] = 2773480762;
                    hash_state_array_h[5] = 1359893119;
                    hash_state_array_h[6] = 2600822924;
                    hash_state_array_h[7] = 528734635;
                    hash_state_array_h[8] = 1541459225;
                    return hash_state_array_h;
                end;
                local sha256_compress_block_h = function(padded_message_source_h, block_start_index_h, current_hash_state_h)
                    local message_schedule_w_h = {};
                    for i_word_copy_h = 1, 16, 1 do
                        message_schedule_w_h[i_word_copy_h] = read_be_word_32_h(padded_message_source_h, block_start_index_h + (i_word_copy_h - 1) * 4);
                    end;
                    for i_word_expand_h = 17, 64, 1 do
                        local w_minus_15_h = message_schedule_w_h[i_word_expand_h - 15];
                        local sigma0_result_h = bit_bxor_recursive_h(bit_rrotate_limited_h(w_minus_15_h, 7), bit_rrotate_limited_h(w_minus_15_h, 18), bit_rshift_limited_h(w_minus_15_h, 3));
                        local w_minus_2_h = message_schedule_w_h[i_word_expand_h - 2];
                        message_schedule_w_h[i_word_expand_h] = message_schedule_w_h[i_word_expand_h - 16] + sigma0_result_h + message_schedule_w_h[i_word_expand_h - 7] + bit_bxor_recursive_h(bit_rrotate_limited_h(w_minus_2_h, 17), bit_rrotate_limited_h(w_minus_2_h, 19), bit_rshift_limited_h(w_minus_2_h, 10));
                    end;
                    local register_a_h = current_hash_state_h[1];
                    local register_b_h = current_hash_state_h[2];
                    local register_c_h = current_hash_state_h[3];
                    local register_d_h = current_hash_state_h[4];
                    local register_e_h = current_hash_state_h[5];
                    local register_f_h = current_hash_state_h[6];
                    local register_g_h = current_hash_state_h[7];
                    local register_h_h = current_hash_state_h[8];
                    for i_compression_round_h = 1, 64, 1 do
                        local temp1_component_1_h = bit_bxor_recursive_h(bit_rrotate_limited_h(register_a_h, 2), bit_rrotate_limited_h(register_a_h, 13), bit_rrotate_limited_h(register_a_h, 22)) + bit_bxor_recursive_h(bit_band_recursive_h(register_a_h, register_b_h), bit_band_recursive_h(register_a_h, register_c_h), bit_band_recursive_h(register_b_h, register_c_h));
                        local temp2_component_1_h = bit_bxor_recursive_h(bit_rrotate_limited_h(register_e_h, 6), bit_rrotate_limited_h(register_e_h, 11), bit_rrotate_limited_h(register_e_h, 25));
                        local temp2_component_2_h = bit_bxor_recursive_h(bit_band_recursive_h(register_e_h, register_f_h), bit_band_recursive_h(bit_bnot_h(register_e_h), register_g_h));
                        local temp2_value_h = register_h_h + temp2_component_1_h + temp2_component_2_h + sha256_k_constants_h[i_compression_round_h] + message_schedule_w_h[i_compression_round_h];
                        local new_d_value_h = register_d_h + temp2_value_h;
                        local new_a_value_h = temp2_value_h + temp1_component_1_h;
                        register_h_h = register_g_h;
                        register_g_h = register_f_h;
                        register_f_h = register_e_h;
                        register_e_h = new_d_value_h;
                        register_d_h = register_c_h;
                        register_c_h = register_b_h;
                        register_b_h = register_a_h;
                        register_a_h = new_a_value_h;
                    end;
                    current_hash_state_h[1] = bit_band_recursive_h(current_hash_state_h[1] + register_a_h);
                    current_hash_state_h[2] = bit_band_recursive_h(current_hash_state_h[2] + register_b_h);
                    current_hash_state_h[3] = bit_band_recursive_h(current_hash_state_h[3] + register_c_h);
                    current_hash_state_h[4] = bit_band_recursive_h(current_hash_state_h[4] + register_d_h);
                    current_hash_state_h[5] = bit_band_recursive_h(current_hash_state_h[5] + register_e_h);
                    current_hash_state_h[6] = bit_band_recursive_h(current_hash_state_h[6] + register_f_h);
                    current_hash_state_h[7] = bit_band_recursive_h(current_hash_state_h[7] + register_g_h);
                    current_hash_state_h[8] = bit_band_recursive_h(current_hash_state_h[8] + register_h_h);
                    return ;
                end;
                return (function(input_message_h)
                    local padded_message_overall_h = sha256_pad_message_h(input_message_h, #input_message_h);
                    local hash_state_h_final = initialize_hash_state_h({});
                    for i_block_start_h_2 = 1, #padded_message_overall_h, 64 do
                        sha256_compress_block_h(padded_message_overall_h, i_block_start_h_2, hash_state_h_final);
                    end;
                    return binary_to_hex_string_h(number_to_binary_string_h(hash_state_h_final[1], 4) .. (number_to_binary_string_h(hash_state_h_final[2], 4) .. (number_to_binary_string_h(hash_state_h_final[3], 4) .. (number_to_binary_string_h(hash_state_h_final[4], 4) .. (number_to_binary_string_h(hash_state_h_final[5], 4) .. (number_to_binary_string_h(hash_state_h_final[6], 4) .. (number_to_binary_string_h(hash_state_h_final[7], 4) .. number_to_binary_string_h(hash_state_h_final[8], 4))))))));
                end)(hash_input_string_h);
            end
        };
    end,
    i = function()
        return {
            ["\000padString"] = function(input_string_i)
                local trimmed_string_i = input_string_i:sub(1, math.floor(#input_string_i / 16) * 16);
                local padding_needed_i = 16 - #trimmed_string_i % 16;
                if padding_needed_i == 16 then
                    padding_needed_i = 0;
                end;
                return trimmed_string_i .. string.rep("0", padding_needed_i);
            end,
            ["\000strToHex"] = function(input_string_strtohex_i)
                return input_string_strtohex_i:gsub(".", function(char_to_convert_i)
                    return string.format("%02x", char_to_convert_i:byte());
                end);
            end,
            ["\000hexToBin"] = function(input_hex_string_hextobin_i)
                return input_hex_string_hextobin_i:gsub("..", function(hex_pair_i)
                    return string.char(tonumber(hex_pair_i, 16));
                end);
            end,
            ["\000bytesToHex"] = function(input_byte_array_bth_i)
                local hex_string_output_bth_i = "";
                for i_byte_index_bth_i = 0, #input_byte_array_bth_i, 1 do
                    if input_byte_array_bth_i[i_byte_index_bth_i] then
                        hex_string_output_bth_i = hex_string_output_bth_i .. string.format("%02x", input_byte_array_bth_i[i_byte_index_bth_i]);
                    end;
                end;
                return hex_string_output_bth_i;
            end,
            ["\000hexToBytes"] = function(input_hex_string_htb_i)
                local byte_array_output_htb_i = {};
                local array_index_htb_i = 0;
                for i_string_index_htb_i = 1, #input_hex_string_htb_i, 2 do
                    byte_array_output_htb_i[array_index_htb_i] = tonumber(input_hex_string_htb_i:sub(i_string_index_htb_i, i_string_index_htb_i + 1), 16);
                    array_index_htb_i = array_index_htb_i + 1;
                end;
                return byte_array_output_htb_i;
            end
        };
    end,
    j = function()
        return {
            ["\000generateNonce"] = function()
                local nonce_string = "";
                for i_char_index_nonce = 1, 16, 1 do
                    nonce_string = nonce_string .. string.char(math.random(97, 122));
                end;
                return nonce_string;
            end
        };
    end
};
module_loader.k = function()
    local lcg_sign_module = module_loader.load("a");
    local crypto_module = obfuscated_value_wrapper(module_loader.load("b"));
    local utils_module = obfuscated_value_wrapper(module_loader.load("c"));
    local json_module = module_loader.load("d");
    return function(webhook_url, webhook_payload)
        local current_env = getfenv(2);
        local key_info_placeholder = current_env["KEY_INFO\000"];
        local signature_rng_value = lcg_sign_module["\000sign"](lcg_sign_module["\000lcg"](lcg_sign_module["\000generateSeed"](), 1, 1000000, 9000000000)[1], webhook_url);
        local hash_key_1 = crypto_module.__index()["\000HASH"](16 .. signature_rng_value);
        local hash_key_2 = crypto_module.__index()["\000HASH"](16 .. signature_rng_value * 2.14);
        local combined_hash = crypto_module.__index()["\000HASH"](hash_key_1 .. hash_key_2);
        local encrypted_url_data = utils_module.__index()["\000strToHex"](buffer_tostring(crypto_module.__index()["\000AES"](utils_module.__index()["\000hexToBin"](combined_hash)):Encrypt(json_module().stringify({ webhookUrl = webhook_url, timestamp = os.time() }))));
        local encrypted_payload_data = utils_module.__index()["\000strToHex"](buffer_tostring(crypto_module.__index()["\000AES"](utils_module.__index()["\000hexToBin"](combined_hash)):Encrypt(json_module().stringify({ payload = webhook_payload, timestamp = os.time(), key = current_env["\000\001"], serviceId = current_env["\000\002"] }))));
        local http_request_data = { Url = ("https://api.authguard.org/wb/"):gsub("\000", "") .. encrypted_url_data, Method = "POST", Headers = { ["Content-Type"] = "application/json", X = tostring(signature_rng_value) }, Body = json_module().stringify({ payload = encrypted_payload_data, secret = hash_key_1 }) };
        local http_response = http_request(http_request_data);
        if http_response.StatusCode ~= 201 then
            return nil, "Failed to send webhook: " .. tostring(http_response.StatusCode);
        end;
        local response_json = json_module().parse(http_response.Body);
        return ;
    end;
end;
module_loader.l = function()
    wrap = function(input_value_wrap, wrap_type)
        return ("<SANITIZE:%s|%s>"):format(wrap_type, tostring(input_value_wrap));
    end;
    return wrap;
end;
local authguard_client = {};
authguard_client.__index = authguard_client;
authguard_client.GetKeyLink = function(config_get_key_link)
    ___SERVICE__ = config_get_key_link.Service or (function()
        handle_crash_error(6);
        while true do
        end;
    end)(___SERVICE__, generate_junk_data("table"));
    return "https://authguard.org/a/" .. ___SERVICE__;
end;
authguard_client.GetFlag = function(config_get_flag)
    ___SERVICE__ = config_get_flag.Service or (function()
        handle_crash_error(6);
        while true do
        end;
    end)(___SERVICE__, generate_junk_data("table"));
    __FLAG__ = config_get_flag.Flag or (function()
        handle_crash_error(15);
        while true do
        end;
    end)(__FLAG__, generate_junk_data("table"));
    local lcg_sign_module_2 = module_loader.load("a");
    local crypto_module_2 = obfuscated_value_wrapper(module_loader.load("b"));
    local utils_module_2 = obfuscated_value_wrapper(module_loader.load("c"));
    local json_module_2 = module_loader.load("d");
    local cache_module = module_loader.load("e");
    local cache_key_flag = "flag:" .. (___SERVICE__ .. (":" .. __FLAG__));
    local cached_flag_value = cache_module.get(cache_key_flag);
    if cached_flag_value then
        conditional_print("Using cached flag value!");
        return cached_flag_value;
    end;
    local current_timestamp_flag = os_time();
    local signature_rng_value_2 = lcg_sign_module_2["\000sign"](lcg_sign_module_2["\000lcg"](lcg_sign_module_2["\000generateSeed"](), 1, 1000000, 9000000000)[1], ___SERVICE__);
    local hash_key_1_2 = crypto_module_2.__index()["\000HASH"](16 .. signature_rng_value_2);
    local hash_key_2_2 = crypto_module_2.__index()["\000HASH"](16 .. signature_rng_value_2 * 2.14);
    local flag_request_payload = { serviceId = ___SERVICE__, flag = __FLAG__, timestamp = current_timestamp_flag };
    local combined_hash_2 = crypto_module_2.__index()["\000HASH"](hash_key_1_2 .. hash_key_2_2);
    local http_request_data_flag = { Method = "POST", Url = ("https://api.authguard.org/flags/payload\000"):gsub("\000", ""), Body = json_module_2().stringify({ payload = utils_module_2.__index()["\000strToHex"](buffer_tostring(crypto_module_2.__index()["\000AES"](utils_module_2.__index()["\000hexToBin"](combined_hash_2)):Encrypt(json_module_2().stringify(flag_request_payload)))), secret = hash_key_1_2 }), Headers = { ["content-type"] = "application/json", ["X-Signature"] = crypto_module_2.__index()["\000HASH"](os_time() .. hash_key_1_2), X = signature_rng_value_2 } };
    local http_response_flag = http_request(http_request_data_flag);
    local response_json_flag = json_module_2().parse(http_response_flag.Body);
    if not response_json_flag.success then
        conditional_print("Failed to retrieve flag!");
        return nil;
    end;
    if 60 < math.abs(os_time() - response_json_flag.exp) then
        conditional_print("Flag expired!");
        return nil;
    end;
    local decrypted_payload_buffer = crypto_module_2.__index()["\000AES"](utils_module_2.__index()["\000hexToBin"](crypto_module_2.__index()["\000HASH"](tostring(response_json_flag.exp * 3.14) .. (___SERVICE__ .. __FLAG__)))):Decrypt(utils_module_2.__index()["\000hexToBin"](response_json_flag.payload));
    local decrypted_payload_json = json_module_2().parse(buffer_tostring(decrypted_payload_buffer));
    if decrypted_payload_json.timestamp == response_json_flag.exp then
        conditional_print("Flag retrieved successfully!");
        if type(decrypted_payload_json.value) ~= decrypted_payload_json.type then
            conditional_print("Type mismatch in flag value!");
            return nil;
        end;
        cache_module.add(cache_key_flag, decrypted_payload_json.value, 60);
        return decrypted_payload_json.value;
    end;
    conditional_print("Invalid flag response!");
    return nil;
end;
authguard_client.ValidateKey = function(config_validate_key)
    local task_library = task;
    local junk_table_2 = generate_junk_data("table");
    local key_config_ref = config_validate_key;
    local security_level = key_config_ref.SecurityLevel or 1;
    key_config_ref.Callback = function()
        handle_crash_error(7);
        while true do
        end;
    end;
    local type_of_crash_func = type(crash_code_16);
    crash_code_0 = key_config_ref.Service or (function()
        handle_crash_error(9);
        while true do
        end;
    end)(crash_code_0, generate_junk_data("table"));
    crash_code_16 = true;
    __LICENSE_KEY__ = key_config_ref.Key or (function()
        handle_crash_error(11);
        while true do
        end;
    end)(__LICENSE_KEY__, generate_junk_data("table"));
    local environment_level_2 = getfenv(2);
    return lua_setmetatable({ Validated = generate_junk_data("table"), APIKey = math_random(1000000, 2000000) }, {
        __index = function(self_validation_check, key_validation_index)
            local junk_table_3 = generate_junk_data("table");
            handle_crash_error(12);
            while true do
            end;
        end,
        __newindex = function(self_validation_newindex, key_validation_newindex)
            local junk_table_4 = generate_junk_data("table");
            handle_crash_error(13);
            while true do
            end;
        end,
        __tostring = function(self_validation_tostring, unused_tostring_arg)
            handle_crash_error(14);
            while true do
            end;
        end,
        __call = obfuscated_rotation_func(function()
            local lcg_sign_module_3 = module_loader.load("f");
            local json_module_3 = module_loader.load("g");
            local crypto_module_3 = obfuscated_value_wrapper(module_loader.load("h"));
            local utils_module_3 = obfuscated_value_wrapper(module_loader.load("i"));
            local generate_nonce_func = obfuscated_value_wrapper(module_loader.load("j")).__index()["\000generateNonce"];
            return obfuscated_rotation_func(function()
                local signature_rng_value_3 = lcg_sign_module_3["\000sign"](lcg_sign_module_3["\000lcg"](lcg_sign_module_3["\000generateSeed"](), 1, 1000000, 9000000000)[1], crash_code_0);
                local rng_iv_table = { rng = signature_rng_value_3, iv = 16 };
                local hash_key_1_3 = crypto_module_3.__index()["\000HASH"](16 .. signature_rng_value_3);
                local hash_key_2_3 = crypto_module_3.__index()["\000HASH"](16 .. signature_rng_value_3 * 2.14);
                local request_nonce = generate_nonce_func();
                local validation_request_payload = { hwid = get_hardware_id(), key = __LICENSE_KEY__, timestamp = os_time(), serviceId = crash_code_0 };
                local combined_hash_3 = crypto_module_3.__index()["\000HASH"](hash_key_1_3 .. hash_key_2_3);
                local encrypted_payload_object = { payload = utils_module_3.__index()["\000strToHex"](buffer_tostring(crypto_module_3.__index()["\000AES"](utils_module_3.__index()["\000hexToBin"](combined_hash_3)):Encrypt(json_module_3().stringify(validation_request_payload)))), secret = hash_key_1_3 };
                local http_request_data_validation = { Url = ("https://api.authguard.org/validate/v2\000"):gsub("\000", ""), Method = "POST", Headers = { ["content-type"] = "application/json", ["X-Signature"] = signature, ["X-Nonce"] = request_nonce, ["X-Executor"] = identifyexecutor and identifyexecutor(), X = tostring(signature_rng_value_3) }, Body = json_module_3().stringify(encrypted_payload_object) };
                local http_response_body = http_request(http_request_data_validation).Body;
                local response_json_validation = json_module_3().parse(http_response_body);
                if not response_json_validation.success then
                    conditional_print("Incorrect key!");
                    if security_level == 1 then
                        return "invalid";
                    end;
                    if security_level == 2 then
                        game.Players.LocalPlayer:Kick("Incorrect key!");
                        return "invalid";
                    end;
                    if security_level == 3 then
                        game.Players.LocalPlayer:Kick("Incorrect key!");
                        while true do
                        end;
                    end;
                    return "invalid";
                end;
                if response_json_validation.secret ~= hash_key_2_3 then
                    handle_crash_error(16);
                    while true do
                    end;
                end;
                local decrypted_response_json = json_module_3().parse(buffer_tostring(crypto_module_3.__index()["\000AES"](utils_module_3.__index()["\000hexToBin"](combined_hash_3)):Decrypt(buffer_fromstring(utils_module_3.__index()["\000hexToBin"](response_json_validation.payload)))));
                if decrypted_response_json.status ~= "success" then
                    handle_crash_error(17);
                    while true do
                    end;
                end;
                environment_level_2.AG_ExpiredAt = decrypted_response_json.keyInfo.expiredAt;
                environment_level_2.AG_Hwid = decrypted_response_json.keyInfo.hwid;
                environment_level_2.AG_IsPremium = decrypted_response_json.keyInfo.isPremium;
                environment_level_2.AG_DiscordId = #decrypted_response_json.keyInfo.discordId > 0 and decrypted_response_json.keyInfo.discordId or nil;
                environment_level_2.AG_IsKeyless = decrypted_response_json.keyInfo.keyless;
                environment_level_2.AG_ExecutedCount = decrypted_response_json.keyInfo.executedCount;
                environment_level_2.AG_SecondsLeft = decrypted_response_json.keyInfo.expiredAt - os_time();
                environment_level_2.AG_UserNote = decrypted_response_json.keyInfo.note;
                environment_level_2.LRM_ScriptName = "None";
                environment_level_2.LRM_LinkedDiscordId = environment_level_2.AG_DiscordId;
                environment_level_2.LRM_TotalExecutions = environment_level_2.AG_ExecutedCount;
                environment_level_2.LRM_SecondsLeft = environment_level_2.AG_SecondsLeft;
                environment_level_2.LRM_UserNote = environment_level_2.AG_UserNote;
                environment_level_2.LRM_IsUserPremium = environment_level_2.AG_IsPremium;
                environment_level_2.LRM_ScriptVersion = "1.0.0";
                environment_level_2["\000\001"] = decrypted_response_json.keyInfo.key;
                environment_level_2["\000\002"] = decrypted_response_json.serviceId;
                local validation_end_clock = os_clock();
                conditional_print(str_format("[AuthGuard] Validated in %f seconds", validation_end_clock - start_time_clock));
                return "validated";
            end)();
        end)
    })();
end;
local send_webhook_func = module_loader.load("k");
local wrap_func = module_loader.load("l");
local send_webhook_ref = send_webhook_func;
local wrap_func_ref = wrap_func;

--[[

USER CODE HERE

]]


return ;