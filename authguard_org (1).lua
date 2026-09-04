
local v1 = true
local u2 = string.gmatch
local u3 = function()
	error("Tamper Detected!")
end
if pcall(function()
end) then
end
local u4 = math.random
local _ = table.concat
local u6 = table and table.unpack or unpack
local v7 = 0
local v8 = 0
local u9 = u4(3, 65)
local v10 = ({pcall(function()
	return "dwsJwR" / (8059544 - "Ludfk8" ^ 3374485)
end)})[2]
local u11 = tonumber(u2(tostring(v10), ":(%d*):")())
local v12 = u9
local v13 = 0
local v14
while true do
	v14 = v1
	v13 = v13 + 1
	if not (v13 <= v12) then
		break
	end
	local u15 = v13
	local u16 = math.random(1, 100)
	local u17 = u4(0, 255)
	local u18 = u4(1, u16)
	local u19 = u4(1, 2) == 1
	local u20 = v10:gsub(":(%d*):", ":" .. tostring(u4(0, 10000)) .. ":")
	local v21 = {pcall(function()
		-- upvalues: u4 (ref), u15 (ref), u9 (ref), u2 (ref), v14 (copy), u11 (ref), u19 (ref), u20 (ref), u16 (ref), u18 (ref), u17 (ref), u6 (ref)
		if u4(1, 2) == 1 or u15 == u9 then
			local v36 = tonumber(u2(tostring(({pcall(function()
				return "40ffLzQ7Sbp4" / (10986260 - "fj4HuupNC" ^ 9986980)
			end)})[2]), ":(%d*):")())
			v14 = v14 and v36 == u11
		end
		if u19 then
			error(u20, 0)
		end
		local v37 = {}
		local v38 = u16
		local v39 = 0
		while true do
			v39 = v39 + 1
			if not (v39 <= v38) then
				break
			end
			v37[v39] = u4(0, 255)
		end
		v37[u18] = u17
		return u6(v37)
	end)}
	if u19 then
		v1 = v14
		if v14 then
			v1 = v21[1] == false and v21[2] == u20
		end
	else
		v1 = v14
		if v14 then
			v1 = v21[1]
		end
		v7 = (v7 + v21[u18 + 1]) % 256
		v8 = (v8 + u17) % 256
	end
end
local v22 = v14
if v14 then
	v22 = v7 == v8
end
if v22 then
	local u23 = math.floor
	local v24 = math.random
	local v25 = table.remove
	local v26 = string.char
	local u27 = 0
	local u28 = 2
	local v29 = {}
	local u30 = {}
	local v31 = 0
	while true do
		v31 = v31 + 1
		if not (v31 <= 256) then
			break
		end
		v29[v31] = v31
	end
	if #v29 == 0 then
	end
	repeat
		local v32 = v25(v29, (v24(1, #v29)))
		u30[v32] = v26(v32 - 1)
	until #v29 == 0
	local u33 = {}
	local _ = function()
		-- upvalues: u33 (ref), u27 (ref), u28 (ref), u23 (ref)
		if #u33 == 0 then
			u27 = (u27 * 65 + 31708886972843) % 35184372088832
			if u28 ~= 1 then
			end
			repeat
				u28 = u28 * 6 % 257
			until u28 ~= 1
			local v42 = u28 % 32
			local v43 = u23(u27 / 2 ^ (13 - (u28 - v42) / 32)) % 4294967296 / 2 ^ v42
			local v44 = u23(v43 % 1 * 4294967296) + u23(v43)
			local v45 = v44 % 65536
			local v46 = (v44 - v45) / 65536
			local v47 = v45 % 256
			local v48 = (v45 - v47) / 256
			local v49 = v46 % 256
			u33 = {v47, v48, v49, (v46 - v49) / 256}
		end
		return table.remove(u33)
	end
	local u35 = {}
	setmetatable({}, {__index = u35, __metatable = nil})
	return (function()
		game:IsLoaded()
		repeat
			task.wait(1)
		until game:IsLoaded()
		local u57 = {_version = "0.1.2"}
		local u58 = nil
		local u59 = {["\\"] = "\\", ["\""] = "\"", ["\b"] = "b", ["\f"] = "f", ["\n"] = "n", ["\r"] = "r", ["\t"] = "t"}
		local u60 = {["/"] = "/"}
		local v61 = {pairs(u59)}
		local v62 = v61[2]
		local v63 = v61[1]
		local v64 = v61[3]
		while true do
			local v65
			v64, v65 = v63(v62, v64)
			if not v64 then
				break
			end
			u60[v65] = v64
		end
		local u66 = function(v113)
			-- upvalues: u59 (ref)
			return "\\" .. (u59[v113] or string.format("u%04x", v113:byte()))
		end
		local v67 = tostring
		local u68 = {["nil"] = function()
			return "null"
		end, table = function(v114, v115)
			-- upvalues: u58 (ref)
			local v116 = {}
			if not v115 then
				v115 = {}
			end
			if v115[v114] then
				error("circular reference")
			end
			v115[v114] = true
			if rawget(v114, 1) ~= nil or next(v114) == nil then
				local v117 = 0
				local v118 = {pairs(v114)}
				local v119 = v118[2]
				local v120 = v118[1]
				local v121 = v118[3]
				while true do
					v121 = v120(v119, v121)
					if not v121 then
						break
					end
					if type(v121) ~= "number" then
						error("invalid table: mixed or invalid key types")
					end
					v117 = v117 + 1
				end
				if v117 ~= #v114 then
					error("invalid table: sparse array")
				end
				local v122 = {ipairs(v114)}
				local v123 = v122[1]
				local v124 = v122[3]
				local v125 = v122[2]
				while true do
					local v126
					v124, v126 = v123(v125, v124)
					if not v124 then
						break
					end
					table.insert(v116, u58(v126, v115))
				end
				v115[v114] = nil
				return "[" .. table.concat(v116, ",") .. "]"
			end
			local v127 = {pairs(v114)}
			local v128 = v127[2]
			local v129 = v127[3]
			local v130 = v127[1]
			while true do
				local v131
				v129, v131 = v130(v128, v129)
				if not v129 then
					break
				end
				if type(v129) ~= "string" then
					error("invalid table: mixed or invalid key types")
				end
				table.insert(v116, u58(v129, v115) .. ":" .. u58(v131, v115))
			end
			v115[v114] = nil
			return "{" .. table.concat(v116, ",") .. "}"
		end, string = function(v132)
			-- upvalues: u66 (ref)
			return "\"" .. v132:gsub("[%z\001-\031\\\"]", u66) .. "\""
		end, number = function(v133)
			if v133 ~= v133 or v133 <= -math.huge or v133 >= math.huge then
				error("unexpected number value '" .. tostring(v133) .. "'")
			end
			return string.format("%.14g", v133)
		end, boolean = v67}
		u58 = function(v134, v135)
			-- upvalues: u68 (ref)
			local v136 = type(v134)
			local v137 = u68[v136]
			if v137 then
				return v137(v134, v135)
			end
			error("unexpected type '" .. v136 .. "'")
		end
		u57.encode = function(v138)
			-- upvalues: u58 (ref)
			return u58(v138)
		end
		local u69 = nil
		local v70 = function(...)
			local v139 = {}
			local v140 = select("#", ...)
			local v141 = 0
			while true do
				v141 = v141 + 1
				if not (v141 <= v140) then
					break
				end
				v139[select(v141, ...)] = true
			end
			return v139
		end
		local u71 = v70(" ", "\t", "\r", "\n")
		local u72 = v70(" ", "\t", "\r", "\n", "]", "}", ",")
		local u73 = v70("\\", "/", "\"", "b", "f", "n", "r", "t", "u")
		local u74 = v70("true", "false", "null")
		local u75 = function(v142, v143, v144, v145)
			local v146 = #v142
			local v147 = v143 - 1
			repeat
				v147 = v147 + 1
				if not (v147 <= v146) then
					return #v142 + 1
				end
			until v145 ~= v144[v142:sub(v147, v147)]
			return v147
		end
		local u76 = {["true"] = true, ["false"] = false, null = nil}
		local u77 = u75
		local v78 = function(v148, v149)
			-- upvalues: u77 (ref), u72 (ref), u74 (ref), u75 (ref), u76 (ref)
			local v150 = u77(v148, v149, u72)
			local v151 = v148:sub(v149, v150 - 1)
			if not u74[v151] then
				u75(v148, v149, "invalid literal '" .. v151 .. "'")
			end
			return u76[v151], v150
		end
		u75 = function(v152, v153, v154)
			local v155 = 1
			local v156 = 1
			local v157 = v153 - 1
			local v158 = 0
			while true do
				v158 = v158 + 1
				if not (v158 <= v157) then
					break
				end
				v156 = v156 + 1
				if v152:sub(v158, v158) == "\n" then
					v155 = v155 + 1
					v156 = 1
				end
			end
			error(string.format("%s at line %d col %d", v154, v155, v156))
		end
		local u79 = function(v159)
			local v160 = math.floor
			if v159 <= 127 then
				return string.char(v159)
			end
			if v159 <= 2047 then
				return string.char(v160(v159 / 64) + 192, v159 % 64 + 128)
			end
			if v159 <= 65535 then
				return string.char(v160(v159 / 4096) + 224, v160(v159 % 4096 / 64) + 128, v159 % 64 + 128)
			end
			if v159 <= 1114111 then
				return string.char(v160(v159 / 262144) + 240, v160(v159 % 262144 / 4096) + 128, v160(v159 % 4096 / 64) + 128, v159 % 64 + 128)
			end
			error(string.format("invalid unicode codepoint '%x'", v159))
		end
		local v80 = function(v161, v162)
			-- upvalues: u77 (ref), u72 (ref), u75 (ref)
			local v163 = u77(v161, v162, u72)
			local v164 = v161:sub(v162, v163 - 1)
			local v165 = tonumber(v164)
			if not v165 then
				u75(v161, v162, "invalid number '" .. v164 .. "'")
			end
			return v165, v163
		end
		local u81 = function(v166)
			-- upvalues: u79 (ref)
			local v167 = tonumber(v166:sub(1, 4), 16)
			local v168 = tonumber(v166:sub(7, 10), 16)
			if v168 then
				return u79((v167 - 55296) * 1024 + (v168 - 56320) + 65536)
			end
			return u79(v167)
		end
		local u82 = {["\""] = function(v169, v170)
			-- upvalues: u73 (ref), u75 (ref), u60 (ref), u81 (ref)
			local v171 = ""
			local v172 = v170 + 1
			local v173 = v172
			local v174 = v173
			local v175 = v173
			v173 = v174
			v175 = v174
			while v174 <= #v169 do
				local v176 = v169:byte(v174)
				if v176 < 32 then
					u75(v169, v174, "control character in string")
				elseif v176 == 92 then
					local v177 = v171 .. v169:sub(v172, v174 - 1)
					v173 = v174 + 1
					local v178 = v169:sub(v173, v173)
					local v180
					if v178 == "u" then
						local v179 = v169:match("^[dD][89aAbB]%x%x\\u%x%x%x%x", v173 + 1) or (v169:match("^%x%x%x%x", v173 + 1) or u75(v169, v173 - 1, "invalid unicode escape in string"))
						v171 = v177 .. u81(v179)
						v173 = v173 + #v179
						v180 = v173
					else
						if not u73[v178] then
							u75(v169, v173 - 1, "invalid escape char '" .. v178 .. "' in string")
						end
						v171 = v177 .. u60[v178]
						v180 = v173
					end
					v172 = v180 + 1
				elseif v176 == 34 then
					return v171 .. v169:sub(v172, v174 - 1), v174 + 1
				end
				v174 = v173 + 1
				v173 = v174
			end
			u75(v169, v170, "expected closing quote for string")
		end, ["0"] = v80, ["1"] = v80, ["2"] = v80, ["3"] = v80, ["4"] = v80, ["5"] = v80, ["6"] = v80, ["7"] = v80, ["8"] = v80, ["9"] = v80, ["-"] = v80, t = v78, f = v78, n = v78, ["["] = function(v181, v182)
			-- upvalues: u77 (ref), u71 (ref), u69 (ref), u75 (ref)
			local v183 = {}
			local v184 = 1
			local v185 = v182 + 1
			local v186
			while true do
				v186 = u77(v181, v185, u71, true)
				if v181:sub(v186, v186) == "]" then
					break
				end
				local v187 = {u69(v181, v186)}
				local v188 = v187[1]
				local v189 = v187[2]
				v183[v184] = v188
				v184 = v184 + 1
				local v190 = u77(v181, v189, u71, true)
				local v191 = v181:sub(v190, v190)
				v185 = v190 + 1
				if v191 == "]" then
					return v183, v185
				end
				if v191 ~= "," then
					u75(v181, v185, "expected ']' or ','")
				end
			end
			return v183, v186 + 1
		end, ["{"] = function(v192, v193)
			-- upvalues: u77 (ref), u71 (ref), u75 (ref), u69 (ref)
			local v194 = {}
			local v195 = v193 + 1
			local v196
			while true do
				v196 = u77(v192, v195, u71, true)
				if v192:sub(v196, v196) == "}" then
					break
				end
				if v192:sub(v196, v196) ~= "\"" then
					u75(v192, v196, "expected string for key")
				end
				local v197 = {u69(v192, v196)}
				local v198 = u77
				local v199 = u71
				local v200 = v197[2]
				local v201 = v197[1]
				local v202 = v198(v192, v200, v199, true)
				if v192:sub(v202, v202) ~= ":" then
					u75(v192, v202, "expected ':' after key")
				end
				local v203 = u77(v192, v202 + 1, u71, true)
				local v204 = {u69(v192, v203)}
				local v205 = v204[2]
				v194[v201] = v204[1]
				local v206 = u77(v192, v205, u71, true)
				local v207 = v192:sub(v206, v206)
				v195 = v206 + 1
				if v207 == "}" then
					return v194, v195
				end
				if v207 ~= "," then
					u75(v192, v195, "expected '}' or ','")
				end
			end
			return v194, v196 + 1
		end}
		u69 = function(v208, v209)
			-- upvalues: u82 (ref), u75 (ref)
			local v210 = v208:sub(v209, v209)
			local v211 = u82[v210]
			if v211 then
				return v211(v208, v209)
			end
			u75(v208, v209, "unexpected character '" .. v210 .. "'")
		end
		u57.decode = function(v212)
			-- upvalues: u69 (ref), u77 (ref), u71 (ref), u75 (ref)
			if type(v212) ~= "string" then
				error("expected argument of type string, got " .. type(v212))
			end
			local v213 = {u69(v212, u77(v212, 1, u71, true))}
			local v214 = v213[1]
			local v215 = u77(v212, v213[2], u71, true)
			if v215 <= #v212 then
				u75(v212, v215, "trailing garbage")
			end
			return v214
		end
		local v83 = bit32
		local u84 = v83.band
		local _ = v83.bor
		local u86 = v83.bxor
		local _ = v83.lshift
		local u88 = v83.rshift
		local u89 = v83.lrotate
		local u90 = v83.rrotate
		local u91 = u86
		local u92 = function(v216)
			return string.gsub(v216, "%x%x", function(v323)
				return string.char(tonumber(v323, 16))
			end)
		end
		local u93 = function(v217, v218, u220)
			-- upvalues: u91 (ref)
			return string.gsub(v217, ".", function(v324)
				-- upvalues: u91 (ref), u220 (ref)
				return string.char(u91(string.byte(v324), u220))
			end) .. string.rep(string.char(u220), v218 - #v217)
		end
		local u94 = {1116352408, 1899447441, 3049323471, 3921009573, 961987163, 1508970993, 2453635748, 2870763221, 3624381080, 310598401, 607225278, 1426881987, 1925078388, 2162078206, 2614888103, 3248222580, 3835390401, 4022224774, 264347078, 604807628, 770255983, 1249150122, 1555081692, 1996064986, 2554220882, 2821834349, 2952996808, 3210313671, 3336571891, 3584528711, 113926993, 338241895, 666307205, 773529912, 1294757372, 1396182291, 1695183700, 1986661051, 2177026350, 2456956037, 2730485921, 2820302411, 3259730800, 3345764771, 3516065817, 3600352804, 4094571909, 275423344, 430227734, 506948616, 659060556, 883997877, 958139571, 1322822218, 1537002063, 1747873779, 1955562222, 2024104815, 2227730452, 2361852424, 2428436474, 2756734187, 3204031479, 3329325298}
		local u95 = {1779033703, 3144134277, 1013904242, 2773480762, 1359893119, 2600822924, 528734635, 1541459225}
		local u96 = {}
		local u97 = function(v221, v222, v223, v224)
			-- upvalues: u96 (ref), u94 (ref), u86 (ref), u90 (ref), u89 (ref), u88 (ref), u84 (ref)
			local v225 = u96
			local v226 = u94
			local v227 = v221[1]
			local v228 = v221[2]
			local v229 = v221[3]
			local v230 = v221[4]
			local v231 = v221[5]
			local v232 = v221[6]
			local v233 = v221[7]
			local v234 = v221[8]
			local v235 = v223 + v224 - 1
			local v236 = v223 - 64
			while true do
				v236 = v236 + 64
				if not (v236 <= v235) then
					break
				end
				local v237 = 0
				local v238 = v236
				while true do
					v237 = v237 + 1
					if not (v237 <= 16) then
						break
					end
					v238 = v238 + 4
					local v239 = {string.byte(v222, v238 - 3, v238)}
					local v240 = v239[3]
					local v241 = v239[2]
					local v242 = v239[4]
					v225[v237] = ((v239[1] * 256 + v241) * 256 + v240) * 256 + v242
				end
				local v243 = 16
				while true do
					v243 = v243 + 1
					if not (v243 <= 64) then
						break
					end
					local v244 = v225[v243 - 15]
					local v245 = v225[v243 - 2]
					v225[v243] = u86(u90(v244, 7), u89(v244, 14), u88(v244, 3)) + u86(u89(v245, 15), u89(v245, 13), u88(v245, 10)) + v225[v243 - 7] + v225[v243 - 16]
				end
				local v246 = 0
				local v247 = v234
				local v248 = v231
				local v249 = v227
				local v250 = v229
				local v251 = v233
				local v252 = v230
				local v253 = v232
				local v254 = v228
				while true do
					v246 = v246 + 1
					if not (v246 <= 64) then
						break
					end
					local v255 = u86(u90(v248, 6), u90(v248, 11), u89(v248, 7)) + u84(v248, v253) + u84(-1 - v248, v251) + v247 + v226[v246] + v225[v246]
					local v256 = v255 + v252
					local v257 = v255 + u84(v250, v254) + u84(v249, u86(v250, v254)) + u86(u90(v249, 2), u90(v249, 13), u89(v249, 10))
					v247 = v251
					v251 = v253
					v253 = v248
					v248 = v256
					v252 = v250
					v250 = v254
					v254 = v249
					v249 = v257
				end
				v227 = (v249 + v227) % 4294967296
				v228 = (v254 + v228) % 4294967296
				v229 = (v250 + v229) % 4294967296
				v230 = (v252 + v230) % 4294967296
				v231 = (v248 + v231) % 4294967296
				v232 = (v253 + v232) % 4294967296
				v233 = (v251 + v233) % 4294967296
				v234 = (v247 + v234) % 4294967296
			end
			v221[1] = v227
			v221[2] = v228
			v221[3] = v229
			v221[4] = v230
			v221[5] = v231
			v221[6] = v232
			v221[7] = v233
			v221[8] = v234
		end
		local u98 = {sha256 = function(v258)
			-- upvalues: u95 (ref), u97 (ref)
			local u260 = {table.unpack(u95)}
			local u261 = 0
			local u262 = ""
			local function u263(v325)
				-- upvalues: u262 (ref), u261 (ref), u97 (ref), u260 (ref), u263 (ref)
				if v325 then
					local v326 = #v325
					if u262 then
						local v327 = 0
						u261 = u261 + v326
						if u262 ~= "" and #u262 + v326 >= 64 then
							v327 = 64 - #u262
							u97(u260, u262 .. string.sub(v325, 1, v327), 0, 64)
							u262 = ""
						end
						local v328 = v326 - v327
						local v329 = v328 % 64
						u97(u260, v325, v327, v328 - v329)
						u262 = u262 .. string.sub(v325, v326 + 1 - v329)
						return u263
					end
					error("Adding more chunks is not allowed after receiving the result", 2)
					return
				end
				if u262 then
					local v330 = {u262, "\128", string.rep("\000", (-9 - u261) % 64 + 1)}
					u262 = nil
					u261 = u261 * 1.1102230246252E-16
					local v331 = 3
					while true do
						v331 = v331 + 1
						if not (v331 <= 10) then
							break
						end
						u261 = u261 % 1 * 256
						v330[v331] = string.char(u261 - u261 % 1)
					end
					local v332 = table.concat(v330)
					u97(u260, v332, 0, #v332)
					local v333 = 0
					while true do
						v333 = v333 + 1
						if not (v333 <= 8) then
							break
						end
						u260[v333] = string.format("%08x", u260[v333] % 4294967296)
					end
					u260 = table.concat(u260, "", 1, 8)
				end
				return u260
			end
			if v258 then
				return u263(v258)()
			end
			return u263
		end, hmac = function(u268, _, v266)
			-- upvalues: u92 (ref), u93 (ref)
			local u267 = nil
			if #u267 > 64 then
				u267 = u92(u268(u267))
			end
			local v269 = u268()
			local u271 = v269(u93(u267, 64, 54))
			local u272 = nil
			local function u273(v334)
				-- upvalues: u272 (ref), u271 (ref), u273 (ref), u268 (ref), u93 (ref), u267 (ref), u92 (ref)
				if not v334 then
					u272 = u272 or u268(u93(u267, 64, 92) .. u92(u271()))
					return u272
				end
				if u272 then
					error("Adding more chunks is not allowed after receiving the result", 2)
					return
				end
				u271(v334)
				return u273
			end
			if v266 then
				return u273(v266)()
			end
			return u273
		end}
		local u99 = http_request or (request or (syn and syn.request or (fluxus and fluxus.request or http and http.request)))
		local u100 = {}
		u100.__index = u100
		local u101 = LPH_ENCSTR or function(v274)
			return v274
		end
		u100.new = function(v275, v276)
			-- upvalues: u100 (ref), u101 (ref)
			local v277 = setmetatable({}, u100)
			v277.privateKey = v275
			v277.options = v276 or {}
			v277.options.apiUrl = v277.options.apiUrl or u101("https://api.authguard.org")
			v277.options.baseUrl = v277.options.baseUrl or u101("https://authguard.org")
			v277.options.timeout = v277.options.timeout or 10
			v277.options.maxRetries = v277.options.maxRetries or 3
			v277.options.retryDelay = v277.options.retryDelay or 1
			v277.options.maxResponseTime = v277.options.maxResponseTime or 300
			return v277
		end
		u100.createSignature = function(v278, v279)
			-- upvalues: u98 (ref)
			return u98.hmac(u98.sha256, v278.privateKey, v279)
		end
		u100.verifySignature = function(v280, v281, v282)
			return v282 == v280:createSignature(v281)
		end
		u100.getHwid = function(v283)
			-- upvalues: u98 (ref)
			local _ = v283.options
			return gethwid and gethwid() or u98.sha256(tostring(game.Players.LocalPlayer.UserId))
		end
		u100.getLink = function(v285)
			-- upvalues: u101 (ref)
			local v286 = v285.options
			return v285.options.baseUrl .. u101("/a/") .. v286.serviceId .. u101("?id=") .. v285:getHwid()
		end
		u100.generateNonce = function()
			-- upvalues: u101 (ref)
			local v287 = u101("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789")
			local v288 = tostring(os.time())
			local v289 = ""
			local v290 = 32 - #v288
			local v291 = 0
			while true do
				v291 = v291 + 1
				if not (v291 <= v290) then
					break
				end
				local v292 = math.random(1, #v287)
				v289 = v289 .. v287:sub(v292, v292)
			end
			local v293 = v288 .. v289
			if #v293 > 32 then
				v293 = v293:sub(1, 32)
			end
			return v293
		end
		u100.validateKey = function(v294, v295)
			-- upvalues: u57 (ref), u101 (ref), u99 (ref), u98 (ref)
			if not v295 or type(v295) ~= "string" or v295 == "" then
				warn(u101("AuthGuard: Invalid key for validation"))
				return false
			end
			local v296 = v294.options
			if not v296.serviceId then
				warn(u101("AuthGuard: serviceId is not set"))
				return false
			end
			local v297 = v296.maxRetries or 3
			local v298 = v296.retryDelay or 1
			local v299 = 0
			while true do
				v299 = v299 + 1
				if not (v299 <= v297) then
					break
				end
				local v300 = os.time()
				local v301 = v294:getHwid()
				local v302 = v296.serviceId
				local v303 = u57
				local v304 = {hwid = v301, serviceId = v302, key = v295, timestamp = v300}
				local v305 = v303.encode(v304)
				local v306 = v294:generateNonce()
				local v307 = v294:createSignature(v304.hwid .. ":" .. v304.key .. ":" .. v304.timestamp .. ":" .. v304.serviceId .. ":" .. v306)
				local v308 = v294.options.apiUrl .. "/validate"
				local v309 = u101("application/json")
				local v310 = identifyexecutor and identifyexecutor()
				local u311 = {Url = v308, Headers = {["content-type"] = v309, ["X-Signature"] = v307, ["X-Nonce"] = v306, ["X-Executor"] = v310}, Method = "POST", Body = v305}
				local v312 = {pcall(function()
					-- upvalues: u99 (ref), u311 (ref)
					return u99(u311)
				end)}
				local v313 = v312[2]
				if not v312[1] then
					warn(u101("AuthGuard: Network error on attempt ") .. v299 .. u101(": ") .. tostring(v313))
					if v299 < v297 then
						wait(v298 * v299)
					end
				elseif v313 then
					local v314 = {pcall(u57.decode, v313.Body)}
					local v315 = v314[2]
					if v314[1] and v315 then
						if not v315.success then
							warn(u101("AuthGuard: Server error: ") .. (data.message or u101("Unknown error")))
							return false
						end
						local v316 = v315.data.hash
						if v306 == v294:generateNonce() then
							warn(u101("AuthGuard: Nonce is not unique"))
							return false
						end
						local v317 = u98.hmac(u98.sha256, v306, v304.hwid .. ":" .. v304.key .. ":" .. v304.timestamp)
						if not v316 or v316 ~= v317 then
							warn(u101("AuthGuard: Invalid response signature"))
							return false
						end
						if os.time() - v304.timestamp <= (v296.maxResponseTime or 300) then
							return true
						end
						warn(u101("AuthGuard: Server response time exceeded"))
						return false
					end
					warn(u101("AuthGuard: Invalid server response format"))
					if v299 < v297 then
						wait(v298 * v299)
					end
				else
					local v318 = v313 and v313.status or "unknown"
					warn(u101("AuthGuard: HTTP error ") .. v318 .. u101(" on attempt ") .. v299)
					if v299 < v297 then
						wait(v298 * v299)
					end
				end
			end
			warn(u101("AuthGuard: All key validation attempts failed"))
			return false
		end
		local u102 = (function(v319, v320)
			-- upvalues: u100 (ref)
			local u321 = u100.new(v319, v320)
			task.spawn(function()
				-- upvalues: u321 (ref)
				local v335 = os.time()
				local v336 = 0
				local v337 = 0
				while true do
					v337 = v337 + 1
					if not (v337 <= 5) then
						break
					end
					local v338 = u321:generateNonce()
					local v339 = os.time()
					task.wait(2)
					if v338 == u321:generateNonce() then
						error("Nonce is not unique")
					end
					if v339 == os.time() then
						error("Time is not unique")
					end
					v336 = v336 + 1
				end
				if v336 ~= 5 or os.time() - v335 ~= 10 then
					error("Failed to generate unique nonce")
				end
			end)
			return u321
		end)("56ceffe479c845e99ae8c226100dd9d4", {serviceId = "117"})
		local u103 = ""
		if isfile and isfile("Vincent_Key.txt") then
			local v104 = readfile("Vincent_Key.txt")
			if typeof(v104) == "string" and u102:validateKey(v104) then
				loadstring(game:HttpGet("https://raw.githubusercontent.com/vincentzydaz/Vincent-hub/refs/heads/main/Bounce%20a%20brainroot.lua"))()
				return
			end
		end
		local u105 = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
		local v106 = u105
		local v107 = UDim2.fromOffset(580, 340)
		local v108 = Enum.KeyCode.RightShift
		local u109 = v106:CreateWindow({Title = "Vincent Hub", SubTitle = "Key System", TabWidth = 160, Size = v107, Acrylic = false, Theme = "Darker", MinimizeKey = v108})
		local v110 = u109:AddTab({Title = "Key System", Icon = "key"})
		local v111 = u109:AddTab({Title = "Discord", Icon = "globe"})
		local v112 = {KeySys = v110, Dc = v111}
		v112.KeySys:AddInput("Input", {Title = "Enter Key", Default = "", Placeholder = "Your key here\226\128\166", Numeric = false, Finished = false, Callback = function(v322)
			-- upvalues: u103 (ref)
			u103 = v322
		end})
		v112.KeySys:AddButton({Title = "Check Key", Description = "Check your key", Callback = function()
			-- upvalues: u102 (ref), u103 (ref), u105 (ref), u109 (ref)
			if u102:validateKey(u103) then
				if writefile then
					writefile("Vincent_Key.txt", u103)
				end
				u105:Notify({Title = "\226\156\133 Success", Content = "Key is valid. Loading script...", Duration = 4})
				task.wait(1.5)
				u109:Destroy()
				loadstring(game:HttpGet("https://raw.githubusercontent.com/vincentzydaz/Vincent-hub/refs/heads/main/Bounce%20a%20brainroot.lua"))()
			else
				u105:Notify({Title = "\226\157\140 Invalid Key", Content = "The key you entered is invalid.", Duration = 4})
			end
		end})
		v112.KeySys:AddButton({Title = "Get the Key", Description = "Click to copy key URL", Callback = function()
			-- upvalues: u102 (ref), u105 (ref)
			setclipboard(u102:getLink())
			u105:Notify({Title = "\240\159\147\139 Copied", Content = "Key link copied to clipboard!", Duration = 3})
		end})
		v112.Dc:AddButton({Title = "Copy Discord", Description = "Join our Discord server", Callback = function()
			-- upvalues: u105 (ref)
			setclipboard("https://discord.gg/x2zGmJBH")
			u105:Notify({Title = "\240\159\147\139 Discord Copied", Content = "Discord link copied to clipboard!", Duration = 3})
		end})
		u109:SelectTab(1)
	end)(...)
end
return (function()
	-- upvalues: u3 (ref)
	while true do
		local v40 = l2
		local v41 = l1
		l1 = v40
		l2 = v41
		u3()
	end
end)()
