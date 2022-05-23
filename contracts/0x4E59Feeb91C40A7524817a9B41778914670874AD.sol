contract main {




// =====================  Runtime code  =====================


address stor0;
address owner_;
mapping of uint256 contracts;
mapping of address sub_b11524c5;
uint256 nonce;
array of struct stor7;
mapping of uint256 sub_f940cd98;
mapping of uint8 sub_0cd26ebe;

function sub_0cd26ebe(?) {
    return uint256(sub_0cd26ebe[arg1])
}

function contracts(address arg1) {
    return contracts[arg1]
}

function nonce() {
    return nonce
}

function sub_b11524c5(?) {
    return sub_b11524c5[arg1]
}

function owner_() {
    return owner_
}

function sub_f940cd98(?) {
    return sub_f940cd98[arg1]
}

function byebye() {
    selfdestruct(0x6acbded8c0f48c88d72f2bcda42618fee4b)
}

function _fallback() payable {
    revert
}

function sub_6bd9fca0(?) {
    if msg.sender != 0x6acbded8c0f48c88d72f2bcda42618fee4b:
        require msg.sender == owner_
    uint256(sub_0cd26ebe[address(arg1)]) = 0
}

function sub_53119e82(?) {
    if msg.sender != 0x6acbded8c0f48c88d72f2bcda42618fee4b:
        require msg.sender == owner_
    uint256(sub_0cd26ebe[address(arg1)]) = arg2
}

function withdraw() {
    if msg.sender != 0x6acbded8c0f48c88d72f2bcda42618fee4b:
        require msg.sender == owner_
    call owner_ with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ae3abd03(?) {
    if not arg2:
        return address(sha3(Mask(184, 0, 0, 0, arg1, 128, 0)))
    if arg2 <= 127:
        return address(sha3(Mask(184, 64, 0, 0, arg1) >> 64))
    if arg2 <= 255:
        return address(sha3(Mask(192, 56, 0, 0, arg1, 0) >> 56))
    if arg2 <= 65535:
        return address(sha3(Mask(200, 40, 0, 0, arg1, 0) >> 40))
    if arg2 > 16777215:
        return address(sha3(Mask(216, 0, 0, 0, arg1, 0, uint32(arg2), 0)))
    return address(sha3(Mask(208, 24, 0, 0, arg1, 0) >> 24))
}

function sub_a8e02dfc(?) {
    if msg.sender != 0x6acbded8c0f48c88d72f2bcda42618fee4b:
        require msg.sender == owner_
    s = 0
    idx = 0
    while idx < arg1:
        mem[96 len 510] = code.data[5582 len 510]
        create contract with 0 wei
                        code: code.data[5582 len 510]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        stor7.length++
        stor7[stor7.length].field_0 = address(create.new_address)
        mem[0] = address(create.new_address)
        sub_f940cd98[address(create.new_address)] = stor7.length
        mem[32] = 9
        uint256(sub_0cd26ebe[address(create.new_address)]) = 1
        mem[96] = address(create.new_address)
        emit C(address(create.new_address));
        s = create.new_address
        idx = idx + 1
        continue 
}

function sub_80f045a9(?) {
    idx = 0
    while idx < stor7.length:
        mem[0] = stor7[idx].field_0
        mem[32] = 9
        require idx < stor7.length
        mem[(32 * idx) + 128] = uint256(sub_0cd26ebe[stor7[idx].field_0])
        idx = idx + 1
        continue 
    if stor7.length:
        mem[(32 * stor7.length) + 160] = address(stor7.field_0)
        idx = (32 * stor7.length) + 160
        s = 0
        while (64 * stor7.length) + 128 > idx:
            mem[idx + 32] = stor7[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(64 * stor7.length) + 160] = 64
    mem[(64 * stor7.length) + 224] = stor7.length
    mem[(64 * stor7.length) + 256 len floor32(stor7.length)] = mem[(32 * stor7.length) + 160 len floor32(stor7.length)]
    mem[(64 * stor7.length) + 192] = (32 * stor7.length) + 96
    mem[(98 * stor7.length) + 256] = stor7.length
    return Array(len=stor7.length, data=mem[(32 * stor7.length) + 160 len floor32(stor7.length)], mem[(64 * stor7.length) + floor32(stor7.length) + 256 len (64 * stor7.length) + -floor32(stor7.length) + 32]), 
           (32 * stor7.length) + 96
}

function sub_c1516f60(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if msg.sender != 0x6acbded8c0f48c88d72f2bcda42618fee4b:
        require msg.sender == owner_
    stor7.length = arg1.length
    if not arg1.length:
        idx = 0
        while stor7.length > idx:
            stor7[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            stor7[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while stor7.length > idx:
            stor7[idx].field_0 = 0
            idx = idx + 1
            continue 
    idx = 0
    while idx <= arg1.length - 1:
        require idx < arg1.length
        sub_f940cd98[mem[(32 * idx) + 140 len 20]] = idx
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 9
        uint256(sub_0cd26ebe[mem[(32 * idx) + 140 len 20]]) = mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        continue 
}

function sub_227e9247(?) payable {
    mem[64] = 96
    require var60003 < stor7.length
    mem[0] = stor7[var60003].field_0
    mem[32] = 9
    if not uint256(sub_0cd26ebe[stor7[var60003].field_0]):
        var60001 = var60001
        var60002 = var60002
        var60003 = var60003 + 1
        continue 
    require var60003 < stor7.length
    mem[0] = stor7[var60003].field_0
    mem[32] = 9
    if not uint256(sub_0cd26ebe[stor7[var60003].field_0]):
        mem[128] = 0xd600000000000000000000000000000000000000000000000000000000000000
        mem[129] = 0x9400000000000000000000000000000000000000000000000000000000000000
        mem[130] = stor7[var60003].field_0
        mem[150] = 0x8000000000000000000000000000000000000000000000000000000000000000
        mem[96] = 23
        mem[151 len 0] = None
        mem[183] = address(sha3(Mask(184, 0, 0, 0, stor7[var60003].field_0, 128, 0)))
        mem[151] = 20
        mem[203 len 0] = None
        require block.timestamp
        mem[235] = address(block.coinbase)
        mem[203] = 20
        mem[255 len 0] = None
        require block.timestamp
        if block.difficulty + block.timestamp < block.timestamp:
            revert with 0, 'SafeMath add failed'
        if sha3(address(block.coinbase, 0)) / block.timestamp < 0:
            revert with 0, 'SafeMath add failed'
        if block.gas_limit < 0:
            revert with 0, 'SafeMath add failed'
        if sha3(address(address(sha3(Mask(184, 0, 0, 0, stor7[var60003].field_0, 128, 0))), 0)) / block.timestamp < 0:
            revert with 0, 'SafeMath add failed'
        if block.number < 0:
            revert with 0, 'SafeMath add failed'
        mem[287] = block.number + (sha3(address(address(sha3(Mask(184, 0, 0, 0, stor7[var60003].field_0, 128, 0))), 0)) / block.timestamp) + block.gas_limit + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.difficulty + block.timestamp
        mem[255] = 32
        mem[64] = 319
        require ext_code.size(stor0)
        call stor0.0x11a09ae7 with:
             gas gas_remaining wei
        mem[319] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sha3(block.number + (sha3(address(address(sha3(Mask(184, 0, 0, 0, stor7[var60003].field_0, 128, 0))), 0)) / block.timestamp) + block.gas_limit + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.difficulty + block.timestamp) - (1000 * sha3(block.number + (sha3(address(address(sha3(Mask(184, 0, 0, 0, stor7[var60003].field_0, 128, 0))), 0)) / block.timestamp) + block.gas_limit + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.difficulty + block.timestamp) / 1000) >= ext_call.return_data[0]:
            var60001 = var60001
            var60002 = var60002
            var60003 = var60003 + 1
            continue 
        require var60003 < stor7.length
        uint256(sub_0cd26ebe[stor7[var60003].field_0])++
        mem[64] = 1183
        mem[319] = 810
        mem[351 len 810] = code.data[6092 len 810]
        mem[1219] = 810
        mem[1251 len 832] = code.data[6092 len 810], mem[1161 len 22]
        mem[2051] = mem[1173 len 10]
        require ext_code.size(stor7[var60003].field_0)
        call stor7[var60003].field_0.0x9a875cc2 with:
           value msg.value wei
             gas gas_remaining wei
            args Array(len=810, data=code.data[6092 len 810], mem[1161 len 22] >> 6144, mem[1173 len 10])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require var60003 < stor7.length
        mem[0] = stor7[var60003].field_0
        mem[32] = 9
        mem[1183] = 0xf1aaee1b00000000000000000000000000000000000000000000000000000000
        mem[1187] = uint256(sub_0cd26ebe[stor7[var60003].field_0])
    else:
        if uint256(sub_0cd26ebe[stor7[var60003].field_0]) <= 127:
            mem[128] = 0xd600000000000000000000000000000000000000000000000000000000000000
            mem[129] = 0x9400000000000000000000000000000000000000000000000000000000000000
            mem[130] = stor7[var60003].field_0
            mem[150] = Mask(8, 248, uint8(sub_0cd26ebe[stor7[var60003].field_0]))
            mem[96] = 23
            mem[183] = address(sha3(Mask(184, 72, 0, 0, stor7[var60003].field_0, 0) >> 72))
            mem[151] = 20
            mem[203 len 0] = None
            require block.timestamp
            mem[235] = address(block.coinbase)
            mem[203] = 20
            mem[255 len 0] = None
            require block.timestamp
            if block.difficulty + block.timestamp < block.timestamp:
                revert with 0, 'SafeMath add failed'
            if sha3(address(block.coinbase, 0)) / block.timestamp < 0:
                revert with 0, 'SafeMath add failed'
            if block.gas_limit < 0:
                revert with 0, 'SafeMath add failed'
            if sha3(address(address(sha3(Mask(184, 72, 0, 0, stor7[var60003].field_0, 0) >> 72)), 0)) / block.timestamp < 0:
                revert with 0, 'SafeMath add failed'
            if block.number < 0:
                revert with 0, 'SafeMath add failed'
            mem[287] = block.number + (sha3(address(address(sha3(Mask(184, 72, 0, 0, stor7[var60003].field_0, 0) >> 72)), 0)) / block.timestamp) + block.gas_limit + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.difficulty + block.timestamp
            mem[255] = 32
            mem[64] = 319
            require ext_code.size(stor0)
            call stor0.0x11a09ae7 with:
                 gas gas_remaining wei
            mem[319] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sha3(block.number + (sha3(address(address(sha3(Mask(184, 72, 0, 0, stor7[var60003].field_0, 0) >> 72)), 0)) / block.timestamp) + block.gas_limit + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.difficulty + block.timestamp) - (1000 * sha3(block.number + (sha3(address(address(sha3(Mask(184, 72, 0, 0, stor7[var60003].field_0, 0) >> 72)), 0)) / block.timestamp) + block.gas_limit + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.difficulty + block.timestamp) / 1000) >= ext_call.return_data[0]:
                var60001 = var60001
                var60002 = var60002
                var60003 = var60003 + 1
                continue 
            require var60003 < stor7.length
            uint256(sub_0cd26ebe[stor7[var60003].field_0])++
            mem[64] = 1183
            mem[319] = 810
            mem[351 len 810] = code.data[6092 len 810]
            mem[1219] = 810
            mem[1251 len 832] = code.data[6092 len 810], mem[1161 len 22]
            mem[2051] = mem[1173 len 10]
            require ext_code.size(stor7[var60003].field_0)
            call stor7[var60003].field_0.0x9a875cc2 with:
               value msg.value wei
                 gas gas_remaining wei
                args Array(len=810, data=code.data[6092 len 810], mem[1161 len 22] >> 6144, mem[1173 len 10])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require var60003 < stor7.length
            mem[0] = stor7[var60003].field_0
            mem[32] = 9
            mem[1183] = 0xf1aaee1b00000000000000000000000000000000000000000000000000000000
            mem[1187] = uint256(sub_0cd26ebe[stor7[var60003].field_0])
        else:
            if uint256(sub_0cd26ebe[stor7[var60003].field_0]) <= 255:
                mem[128] = 0xd700000000000000000000000000000000000000000000000000000000000000
                mem[129] = 0x9400000000000000000000000000000000000000000000000000000000000000
                mem[130] = stor7[var60003].field_0
                mem[150] = 0x8100000000000000000000000000000000000000000000000000000000000000
                mem[151] = uint8(sub_0cd26ebe[stor7[var60003].field_0])
                mem[96] = 24
                mem[184] = address(sha3(Mask(192, 64, 0, 0, stor7[var60003].field_0, 0, Mask(72, 0, sub_0cd26ebe[stor7[var60003].field_0])) >> 64))
                mem[152] = 20
                mem[204 len 0] = None
                require block.timestamp
                mem[236] = address(block.coinbase)
                mem[204] = 20
                mem[256 len 0] = None
                require block.timestamp
                if block.difficulty + block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath add failed'
                if sha3(address(block.coinbase, 0)) / block.timestamp < 0:
                    revert with 0, 'SafeMath add failed'
                if block.gas_limit < 0:
                    revert with 0, 'SafeMath add failed'
                if sha3(address(address(sha3(Mask(192, 64, 0, 0, stor7[var60003].field_0, 0, Mask(72, 0, sub_0cd26ebe[stor7[var60003].field_0])) >> 64)), 0)) / block.timestamp < 0:
                    revert with 0, 'SafeMath add failed'
                if block.number < 0:
                    revert with 0, 'SafeMath add failed'
                mem[288] = block.number + (sha3(address(address(sha3(Mask(192, 64, 0, 0, stor7[var60003].field_0, 0, Mask(72, 0, sub_0cd26ebe[stor7[var60003].field_0])) >> 64)), 0)) / block.timestamp) + block.gas_limit + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.difficulty + block.timestamp
                mem[256] = 32
                mem[64] = 320
                require ext_code.size(stor0)
                call stor0.0x11a09ae7 with:
                     gas gas_remaining wei
                mem[320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if sha3(block.number + (sha3(address(address(sha3(Mask(192, 64, 0, 0, stor7[var60003].field_0, 0, Mask(72, 0, sub_0cd26ebe[stor7[var60003].field_0])) >> 64)), 0)) / block.timestamp) + block.gas_limit + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.difficulty + block.timestamp) - (1000 * sha3(block.number + (sha3(address(address(sha3(Mask(192, 64, 0, 0, stor7[var60003].field_0, 0, Mask(72, 0, sub_0cd26ebe[stor7[var60003].field_0])) >> 64)), 0)) / block.timestamp) + block.gas_limit + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.difficulty + block.timestamp) / 1000) >= ext_call.return_data[0]:
                    var60001 = var60001
                    var60002 = var60002
                    var60003 = var60003 + 1
                    continue 
                require var60003 < stor7.length
                uint256(sub_0cd26ebe[stor7[var60003].field_0])++
                mem[64] = 1184
                mem[320] = 810
                mem[352 len 810] = code.data[6092 len 810]
                mem[1220] = 810
                mem[1252 len 832] = code.data[6092 len 810], mem[1162 len 22]
                mem[2052] = mem[1174 len 10]
                require ext_code.size(stor7[var60003].field_0)
                call stor7[var60003].field_0.0x9a875cc2 with:
                   value msg.value wei
                     gas gas_remaining wei
                    args Array(len=810, data=code.data[6092 len 810], mem[1162 len 22] >> 6144, mem[1174 len 10])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require var60003 < stor7.length
                mem[0] = stor7[var60003].field_0
                mem[32] = 9
                mem[1184] = 0xf1aaee1b00000000000000000000000000000000000000000000000000000000
                mem[1188] = uint256(sub_0cd26ebe[stor7[var60003].field_0])
            else:
                if uint256(sub_0cd26ebe[stor7[var60003].field_0]) <= 65535:
                    mem[128] = 0xd800000000000000000000000000000000000000000000000000000000000000
                    mem[129] = 0x9400000000000000000000000000000000000000000000000000000000000000
                    mem[130] = stor7[var60003].field_0
                    mem[150] = 0x8200000000000000000000000000000000000000000000000000000000000000
                    mem[151] = uint16(sub_0cd26ebe[stor7[var60003].field_0])
                    mem[96] = 25
                    mem[185] = address(sha3(Mask(200, 56, 0, 0, stor7[var60003].field_0, 0, Mask(72, 0, sub_0cd26ebe[stor7[var60003].field_0])) >> 56))
                    mem[153] = 20
                    mem[205 len 0] = None
                    require block.timestamp
                    mem[237] = address(block.coinbase)
                    mem[205] = 20
                    mem[257 len 0] = None
                    require block.timestamp
                    if block.difficulty + block.timestamp < block.timestamp:
                        revert with 0, 'SafeMath add failed'
                    if sha3(address(block.coinbase, 0)) / block.timestamp < 0:
                        revert with 0, 'SafeMath add failed'
                    if block.gas_limit < 0:
                        revert with 0, 'SafeMath add failed'
                    if sha3(address(address(sha3(Mask(200, 56, 0, 0, stor7[var60003].field_0, 0, Mask(72, 0, sub_0cd26ebe[stor7[var60003].field_0])) >> 56)), 0)) / block.timestamp < 0:
                        revert with 0, 'SafeMath add failed'
                    if block.number < 0:
                        revert with 0, 'SafeMath add failed'
                    mem[289] = block.number + (sha3(address(address(sha3(Mask(200, 56, 0, 0, stor7[var60003].field_0, 0, Mask(72, 0, sub_0cd26ebe[stor7[var60003].field_0])) >> 56)), 0)) / block.timestamp) + block.gas_limit + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.difficulty + block.timestamp
                    mem[257] = 32
                    mem[64] = 321
                    require ext_code.size(stor0)
                    call stor0.0x11a09ae7 with:
                         gas gas_remaining wei
                    mem[321] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if sha3(block.number + (sha3(address(address(sha3(Mask(200, 56, 0, 0, stor7[var60003].field_0, 0, Mask(72, 0, sub_0cd26ebe[stor7[var60003].field_0])) >> 56)), 0)) / block.timestamp) + block.gas_limit + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.difficulty + block.timestamp) - (1000 * sha3(block.number + (sha3(address(address(sha3(Mask(200, 56, 0, 0, stor7[var60003].field_0, 0, Mask(72, 0, sub_0cd26ebe[stor7[var60003].field_0])) >> 56)), 0)) / block.timestamp) + block.gas_limit + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.difficulty + block.timestamp) / 1000) >= ext_call.return_data[0]:
                        var60001 = var60001
                        var60002 = var60002
                        var60003 = var60003 + 1
                        continue 
                    require var60003 < stor7.length
                    uint256(sub_0cd26ebe[stor7[var60003].field_0])++
                    mem[64] = 1185
                    mem[321] = 810
                    mem[353 len 810] = code.data[6092 len 810]
                    mem[1221] = 810
                    mem[1253 len 832] = code.data[6092 len 810], mem[1163 len 22]
                    mem[2053] = mem[1175 len 10]
                    require ext_code.size(stor7[var60003].field_0)
                    call stor7[var60003].field_0.0x9a875cc2 with:
                       value msg.value wei
                         gas gas_remaining wei
                        args Array(len=810, data=code.data[6092 len 810], mem[1163 len 22] >> 6144, mem[1175 len 10])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require var60003 < stor7.length
                    mem[0] = stor7[var60003].field_0
                    mem[32] = 9
                    mem[1185] = 0xf1aaee1b00000000000000000000000000000000000000000000000000000000
                    mem[1189] = uint256(sub_0cd26ebe[stor7[var60003].field_0])
                else:
                    if uint256(sub_0cd26ebe[stor7[var60003].field_0]) <= 16777215:
                        mem[128] = 0xd900000000000000000000000000000000000000000000000000000000000000
                        mem[129] = 0x9400000000000000000000000000000000000000000000000000000000000000
                        mem[130] = stor7[var60003].field_0
                        mem[150] = 0x8300000000000000000000000000000000000000000000000000000000000000
                        mem[151] = sub_0cd26ebe[stor7[var60003].field_0] % 16777216
                        mem[96] = 26
                        mem[186] = address(sha3(Mask(208, 48, 0, 0, stor7[var60003].field_0, 0, Mask(72, 0, sub_0cd26ebe[stor7[var60003].field_0])) >> 48))
                        mem[154] = 20
                        mem[206 len 0] = None
                        require block.timestamp
                        mem[238] = address(block.coinbase)
                        mem[206] = 20
                        mem[258 len 0] = None
                        require block.timestamp
                        if block.difficulty + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath add failed'
                        if sha3(address(block.coinbase, 0)) / block.timestamp < 0:
                            revert with 0, 'SafeMath add failed'
                        if block.gas_limit < 0:
                            revert with 0, 'SafeMath add failed'
                        if sha3(address(address(sha3(Mask(208, 48, 0, 0, stor7[var60003].field_0, 0, Mask(72, 0, sub_0cd26ebe[stor7[var60003].field_0])) >> 48)), 0)) / block.timestamp < 0:
                            revert with 0, 'SafeMath add failed'
                        if block.number < 0:
                            revert with 0, 'SafeMath add failed'
                        mem[290] = block.number + (sha3(address(address(sha3(Mask(208, 48, 0, 0, stor7[var60003].field_0, 0, Mask(72, 0, sub_0cd26ebe[stor7[var60003].field_0])) >> 48)), 0)) / block.timestamp) + block.gas_limit + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.difficulty + block.timestamp
                        mem[258] = 32
                        mem[64] = 322
                        require ext_code.size(stor0)
                        call stor0.0x11a09ae7 with:
                             gas gas_remaining wei
                        mem[322] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if sha3(block.number + (sha3(address(address(sha3(Mask(208, 48, 0, 0, stor7[var60003].field_0, 0, Mask(72, 0, sub_0cd26ebe[stor7[var60003].field_0])) >> 48)), 0)) / block.timestamp) + block.gas_limit + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.difficulty + block.timestamp) - (1000 * sha3(block.number + (sha3(address(address(sha3(Mask(208, 48, 0, 0, stor7[var60003].field_0, 0, Mask(72, 0, sub_0cd26ebe[stor7[var60003].field_0])) >> 48)), 0)) / block.timestamp) + block.gas_limit + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.difficulty + block.timestamp) / 1000) >= ext_call.return_data[0]:
                            var60001 = var60001
                            var60002 = var60002
                            var60003 = var60003 + 1
                            continue 
                        require var60003 < stor7.length
                        uint256(sub_0cd26ebe[stor7[var60003].field_0])++
                        mem[64] = 1186
                        mem[322] = 810
                        mem[354 len 810] = code.data[6092 len 810]
                        mem[1222] = 810
                        mem[1254 len 832] = code.data[6092 len 810], mem[1164 len 22]
                        mem[2054] = mem[1176 len 10]
                        require ext_code.size(stor7[var60003].field_0)
                        call stor7[var60003].field_0.0x9a875cc2 with:
                           value msg.value wei
                             gas gas_remaining wei
                            args Array(len=810, data=code.data[6092 len 810], mem[1164 len 22] >> 6144, mem[1176 len 10])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require var60003 < stor7.length
                        mem[0] = stor7[var60003].field_0
                        mem[32] = 9
                        mem[1186] = 0xf1aaee1b00000000000000000000000000000000000000000000000000000000
                        mem[1190] = uint256(sub_0cd26ebe[stor7[var60003].field_0])
                    else:
                        mem[128] = 0xda00000000000000000000000000000000000000000000000000000000000000
                        mem[129] = 0x9400000000000000000000000000000000000000000000000000000000000000
                        mem[130] = stor7[var60003].field_0
                        mem[150] = 0x8400000000000000000000000000000000000000000000000000000000000000
                        mem[151] = uint32(sub_0cd26ebe[stor7[var60003].field_0])
                        mem[96] = 27
                        mem[155 len 0] = None
                        mem[187] = address(sha3(Mask(216, 0, 0, 0, stor7[var60003].field_0, 0, uint32(sub_0cd26ebe[stor7[var60003].field_0]), 0)))
                        mem[155] = 20
                        mem[207 len 0] = None
                        require block.timestamp
                        mem[239] = address(block.coinbase)
                        mem[207] = 20
                        mem[259 len 0] = None
                        require block.timestamp
                        if block.difficulty + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath add failed'
                        if sha3(address(block.coinbase, 0)) / block.timestamp < 0:
                            revert with 0, 'SafeMath add failed'
                        if block.gas_limit < 0:
                            revert with 0, 'SafeMath add failed'
                        if sha3(address(address(sha3(Mask(216, 0, 0, 0, stor7[var60003].field_0, 0, uint32(sub_0cd26ebe[stor7[var60003].field_0]), 0))), 0)) / block.timestamp < 0:
                            revert with 0, 'SafeMath add failed'
                        if block.number < 0:
                            revert with 0, 'SafeMath add failed'
                        mem[291] = block.number + (sha3(address(address(sha3(Mask(216, 0, 0, 0, stor7[var60003].field_0, 0, uint32(sub_0cd26ebe[stor7[var60003].field_0]), 0))), 0)) / block.timestamp) + block.gas_limit + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.difficulty + block.timestamp
                        mem[259] = 32
                        mem[64] = 323
                        require ext_code.size(stor0)
                        call stor0.0x11a09ae7 with:
                             gas gas_remaining wei
                        mem[323] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if sha3(block.number + (sha3(address(address(sha3(Mask(216, 0, 0, 0, stor7[var60003].field_0, 0, uint32(sub_0cd26ebe[stor7[var60003].field_0]), 0))), 0)) / block.timestamp) + block.gas_limit + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.difficulty + block.timestamp) - (1000 * sha3(block.number + (sha3(address(address(sha3(Mask(216, 0, 0, 0, stor7[var60003].field_0, 0, uint32(sub_0cd26ebe[stor7[var60003].field_0]), 0))), 0)) / block.timestamp) + block.gas_limit + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.difficulty + block.timestamp) / 1000) >= ext_call.return_data[0]:
                            var60001 = var60001
                            var60002 = var60002
                            var60003 = var60003 + 1
                            continue 
                        require var60003 < stor7.length
                        uint256(sub_0cd26ebe[stor7[var60003].field_0])++
                        mem[64] = 1187
                        mem[323] = 810
                        mem[355 len 810] = code.data[6092 len 810]
                        mem[1223] = 810
                        mem[1255 len 832] = code.data[6092 len 810], mem[1165 len 22]
                        mem[2055] = mem[1177 len 10]
                        require ext_code.size(stor7[var60003].field_0)
                        call stor7[var60003].field_0.0x9a875cc2 with:
                           value msg.value wei
                             gas gas_remaining wei
                            args Array(len=810, data=code.data[6092 len 810], mem[1165 len 22] >> 6144, mem[1177 len 10])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require var60003 < stor7.length
                        mem[0] = stor7[var60003].field_0
                        mem[32] = 9
                        mem[1187] = 0xf1aaee1b00000000000000000000000000000000000000000000000000000000
                        mem[1191] = uint256(sub_0cd26ebe[stor7[var60003].field_0])
    require ext_code.size(stor7[var60003].field_0)
    call stor7[var60003].field_0.0xf1aaee1b with:
         gas gas_remaining wei
        args uint256(sub_0cd26ebe[stor7[var60003].field_0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    var60001 = ext_call.return_data[0]
    var60002 = stor7[var60003].field_0
    var60003 = var60003 + 1
    continue 
}

function sub_0f1afa5a(?) payable {
    mem[64] = 96
    require not msg.value
    require ext_code.size(stor0)
    call stor0.0x11a09ae7 with:
         gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    s = 0
    idx = 0
    while idx < stor7.length:
        mem[0] = stor7[idx].field_0
        mem[32] = 9
        if not uint256(sub_0cd26ebe[stor7[idx].field_0]):
            _483 = mem[64]
            mem[mem[64] + 32] = 0xd600000000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 33] = 0x9400000000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 34] = stor7[idx].field_0
            mem[mem[64] + 54] = 0x8000000000000000000000000000000000000000000000000000000000000000
            _484 = mem[64]
            mem[mem[64]] = 23
            mem[64] = mem[64] + 55
            _485 = mem[_484]
            u = _484 + 32
            v = _483 + 55
            t = mem[_484]
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            mem[_483 + floor32(mem[_484]) + 55] = mem[_483 + floor32(mem[_484]) + 55] and 256^(-(mem[_484] % 32) + 32) - 1 or mem[_484 + floor32(mem[_484]) + 32] and !(256^(-(mem[_484] % 32) + 32) - 1)
            _1057 = mem[64]
            mem[mem[64] + 32] = address(sha3(mem[mem[64] len _483 + _485 + -mem[64] + 55]))
            _1058 = mem[64]
            mem[mem[64]] = 20
            mem[64] = mem[64] + 52
            _1060 = mem[_1058]
            u = _1058 + 32
            v = _1057 + 52
            t = mem[_1058]
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            mem[_1057 + floor32(mem[_1058]) + 52] = mem[_1057 + floor32(mem[_1058]) + 52] and 256^(-(mem[_1058] % 32) + 32) - 1 or mem[_1058 + floor32(mem[_1058]) + 32] and !(256^(-(mem[_1058] % 32) + 32) - 1)
            _1413 = sha3(mem[_1057 + 52 len _1060])
            require block.timestamp
            mem[_1057 + 84] = address(block.coinbase)
            mem[_1057 + 52] = 20
            mem[64] = _1057 + 104
            u = _1057 + 84
            v = _1057 + 104
            t = 20
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            mem[_1057 + 104] = mem[_1057 + 124 len 12] or Mask(160, 96, mem[_1057 + 84])
            require block.timestamp
            if block.difficulty + block.timestamp < block.timestamp:
                revert with 0, 'SafeMath add failed'
            if sha3(mem[_1057 + 104 len 20]) / block.timestamp < 0:
                revert with 0, 'SafeMath add failed'
            if block.gas_limit < 0:
                revert with 0, 'SafeMath add failed'
            if _1413 / block.timestamp < 0:
                revert with 0, 'SafeMath add failed'
            if block.number < 0:
                revert with 0, 'SafeMath add failed'
            mem[_1057 + 136] = block.number + (_1413 / block.timestamp) + block.gas_limit + (sha3(mem[_1057 + 104 len 20]) / block.timestamp) + block.difficulty + block.timestamp
            mem[_1057 + 104] = 32
            mem[64] = _1057 + 168
            u = _1057 + 136
            v = _1057 + 168
            t = 32
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            _1916 = sha3(mem[_1057 + 168])
            require ext_code.size(stor0)
            call stor0.0x11a09ae7 with:
                 gas gas_remaining wei
            mem[_1057 + 168] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if _1916 - (1000 * _1916 / 1000) >= ext_call.return_data[0]:
                s = s
                idx = idx + 1
                continue 
            s = s + 1
            idx = idx + 1
            continue 
        if uint256(sub_0cd26ebe[stor7[idx].field_0]) <= 127:
            _486 = mem[64]
            mem[mem[64] + 32] = 0xd600000000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 33] = 0x9400000000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 34] = stor7[idx].field_0
            mem[mem[64] + 54] = Mask(8, 248, uint8(sub_0cd26ebe[stor7[idx].field_0]))
            _487 = mem[64]
            mem[mem[64]] = 23
            mem[64] = mem[64] + 55
            _488 = mem[_487]
            if mem[_487] < 32:
                mem[_486 + 55] = 0, mem[_486 + 86 len 1] and 256^(-mem[_487] + 32) - 1 or mem[_487 + 32] and !(256^(-mem[_487] + 32) - 1)
                mem[_486 + 87] = address(sha3(mem[_486 + 55 len _488]))
                mem[_486 + 55] = 20
                mem[64] = _486 + 107
                u = _486 + 87
                v = _486 + 107
                t = 20
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                mem[_486 + 107] = mem[_486 + 127 len 12] or Mask(160, 96, mem[_486 + 87])
                _989 = sha3(mem[_486 + 107 len 20])
                require block.timestamp
                mem[_486 + 139] = address(block.coinbase)
                mem[_486 + 107] = 20
                mem[64] = _486 + 159
                u = _486 + 139
                v = mem[64]
                t = mem[_486 + 107]
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                mem[mem[64] + floor32(mem[_486 + 107])] = mem[mem[64] + floor32(mem[_486 + 107])] and 256^(-(mem[_486 + 107] % 32) + 32) - 1 or mem[_486 + floor32(mem[_486 + 107]) + 139] and !(256^(-(mem[_486 + 107] % 32) + 32) - 1)
                require block.timestamp
                if block.difficulty + block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath add failed'
                if sha3(mem[mem[64] len _486 + -mem[64] + 179]) / block.timestamp < 0:
                    revert with 0, 'SafeMath add failed'
                if block.gas_limit < 0:
                    revert with 0, 'SafeMath add failed'
                if _989 / block.timestamp < 0:
                    revert with 0, 'SafeMath add failed'
                if block.number < 0:
                    revert with 0, 'SafeMath add failed'
                _1569 = mem[64]
                mem[mem[64] + 32] = block.number + (_989 / block.timestamp) + block.gas_limit + (sha3(mem[mem[64] len _486 + -mem[64] + 179]) / block.timestamp) + block.difficulty + block.timestamp
                _1570 = mem[64]
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                _1572 = mem[_1570]
                u = _1570 + 32
                v = _1569 + 64
                t = mem[_1570]
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                mem[_1569 + floor32(mem[_1570]) + 64] = 256^(-(mem[_1570] % 32) + 32) - 1 and mem[_1569 + floor32(mem[_1570]) + 64] or mem[_1570 + floor32(mem[_1570]) + 32] and !(256^(-(mem[_1570] % 32) + 32) - 1)
                _1730 = sha3(mem[_1569 + 64 len _1572])
                require ext_code.size(stor0)
                call stor0.0x11a09ae7 with:
                     gas gas_remaining wei
                mem[_1569 + 64] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if _1730 - (1000 * _1730 / 1000) >= ext_call.return_data[0]:
                    s = s
                    idx = idx + 1
                    continue 
            else:
                mem[_486 + 55] = mem[_487 + 32]
                u = _487 + 64
                v = _486 + 87
                t = _488 - 32
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                mem[_486 + floor32(_488 - 32) + 87] = mem[_486 + floor32(_488 - 32) + 87] and 256^(-_488 + floor32(_488 - 32) + 64) - 1 or mem[_487 + floor32(_488 - 32) + 64] and !(256^(-_488 + floor32(_488 - 32) + 64) - 1)
                _1053 = mem[64]
                mem[mem[64] + 32] = address(sha3(mem[mem[64] len _486 + _488 + -mem[64] + 55]))
                _1054 = mem[64]
                mem[mem[64]] = 20
                mem[64] = mem[64] + 52
                _1056 = mem[_1054]
                u = _1054 + 32
                v = _1053 + 52
                t = mem[_1054]
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                mem[_1053 + floor32(mem[_1054]) + 52] = mem[_1053 + floor32(mem[_1054]) + 52] and 256^(-(mem[_1054] % 32) + 32) - 1 or mem[_1054 + floor32(mem[_1054]) + 32] and !(256^(-(mem[_1054] % 32) + 32) - 1)
                _1408 = sha3(mem[_1053 + 52 len _1056])
                require block.timestamp
                mem[_1053 + 84] = address(block.coinbase)
                mem[_1053 + 52] = 20
                mem[64] = _1053 + 104
                u = _1053 + 84
                v = _1053 + 104
                t = 20
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                mem[_1053 + 104] = mem[_1053 + 124 len 12] or Mask(160, 96, mem[_1053 + 84])
                require block.timestamp
                if block.difficulty + block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath add failed'
                if sha3(mem[_1053 + 104 len 20]) / block.timestamp < 0:
                    revert with 0, 'SafeMath add failed'
                if block.gas_limit < 0:
                    revert with 0, 'SafeMath add failed'
                if _1408 / block.timestamp < 0:
                    revert with 0, 'SafeMath add failed'
                if block.number < 0:
                    revert with 0, 'SafeMath add failed'
                mem[_1053 + 136] = block.number + (_1408 / block.timestamp) + block.gas_limit + (sha3(mem[_1053 + 104 len 20]) / block.timestamp) + block.difficulty + block.timestamp
                mem[_1053 + 104] = 32
                mem[64] = _1053 + 168
                u = _1053 + 136
                v = _1053 + 168
                t = 32
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                _1910 = sha3(mem[_1053 + 168])
                require ext_code.size(stor0)
                call stor0.0x11a09ae7 with:
                     gas gas_remaining wei
                mem[_1053 + 168] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if _1910 - (1000 * _1910 / 1000) >= ext_call.return_data[0]:
                    s = s
                    idx = idx + 1
                    continue 
            s = s + 1
            idx = idx + 1
            continue 
        if uint256(sub_0cd26ebe[stor7[idx].field_0]) <= 255:
            _489 = mem[64]
            mem[mem[64] + 32] = 0xd700000000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 33] = 0x9400000000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 34] = stor7[idx].field_0
            mem[mem[64] + 54] = 0x8100000000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 55] = uint8(sub_0cd26ebe[stor7[idx].field_0])
            _490 = mem[64]
            mem[mem[64]] = 24
            mem[64] = mem[64] + 56
            _491 = mem[_490]
            if mem[_490] < 32:
                mem[_489 + 56] = Mask(248, 0, sub_0cd26ebe[stor7[idx].field_0]), mem[_489 + 87 len 1] and 256^(-mem[_490] + 32) - 1 or mem[_490 + 32] and !(256^(-mem[_490] + 32) - 1)
                mem[_489 + 88] = address(sha3(mem[_489 + 56 len _491]))
                mem[_489 + 56] = 20
                mem[64] = _489 + 108
                u = _489 + 88
                v = _489 + 108
                t = 20
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                mem[_489 + 108] = mem[_489 + 128 len 12] or Mask(160, 96, mem[_489 + 88])
                _979 = sha3(mem[_489 + 108 len 20])
                require block.timestamp
                mem[_489 + 140] = address(block.coinbase)
                mem[_489 + 108] = 20
                mem[64] = _489 + 160
                u = _489 + 140
                v = _489 + 160
                t = 20
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                mem[_489 + 160] = mem[_489 + 180 len 12] or Mask(160, 96, mem[_489 + 140])
                require block.timestamp
                if block.difficulty + block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath add failed'
                if sha3(mem[_489 + 160 len 20]) / block.timestamp < 0:
                    revert with 0, 'SafeMath add failed'
                if block.gas_limit < 0:
                    revert with 0, 'SafeMath add failed'
                if _979 / block.timestamp < 0:
                    revert with 0, 'SafeMath add failed'
                if block.number < 0:
                    revert with 0, 'SafeMath add failed'
                mem[_489 + 192] = block.number + (_979 / block.timestamp) + block.gas_limit + (sha3(mem[_489 + 160 len 20]) / block.timestamp) + block.difficulty + block.timestamp
                mem[_489 + 160] = 32
                mem[64] = _489 + 224
                u = _489 + 192
                v = _489 + 224
                t = 32
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                _1719 = sha3(mem[_489 + 224])
                require ext_code.size(stor0)
                call stor0.0x11a09ae7 with:
                     gas gas_remaining wei
                mem[_489 + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if _1719 - (1000 * _1719 / 1000) >= ext_call.return_data[0]:
                    s = s
                    idx = idx + 1
                    continue 
            else:
                mem[_489 + 56] = mem[_490 + 32]
                u = _490 + 64
                v = _489 + 88
                t = _491 - 32
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                mem[_489 + floor32(_491 - 32) + 88] = mem[_489 + floor32(_491 - 32) + 88] and 256^(-_491 + floor32(_491 - 32) + 64) - 1 or mem[_490 + floor32(_491 - 32) + 64] and !(256^(-_491 + floor32(_491 - 32) + 64) - 1)
                _1044 = mem[64]
                mem[mem[64] + 32] = address(sha3(mem[mem[64] len _489 + _491 + -mem[64] + 56]))
                _1045 = mem[64]
                mem[mem[64]] = 20
                mem[64] = mem[64] + 52
                _1047 = mem[_1045]
                u = _1045 + 32
                v = _1044 + 52
                t = mem[_1045]
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                mem[_1044 + floor32(mem[_1045]) + 52] = mem[_1044 + floor32(mem[_1045]) + 52] and 256^(-(mem[_1045] % 32) + 32) - 1 or mem[_1045 + floor32(mem[_1045]) + 32] and !(256^(-(mem[_1045] % 32) + 32) - 1)
                _1398 = sha3(mem[_1044 + 52 len _1047])
                require block.timestamp
                mem[_1044 + 84] = address(block.coinbase)
                mem[_1044 + 52] = 20
                mem[64] = _1044 + 104
                u = _1044 + 84
                v = mem[64]
                t = mem[_1044 + 52]
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                mem[mem[64] + floor32(mem[_1044 + 52])] = mem[mem[64] + floor32(mem[_1044 + 52])] and 256^(-(mem[_1044 + 52] % 32) + 32) - 1 or mem[_1044 + floor32(mem[_1044 + 52]) + 84] and !(256^(-(mem[_1044 + 52] % 32) + 32) - 1)
                require block.timestamp
                if block.difficulty + block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath add failed'
                if sha3(mem[mem[64] len _1044 + -mem[64] + 124]) / block.timestamp < 0:
                    revert with 0, 'SafeMath add failed'
                if block.gas_limit < 0:
                    revert with 0, 'SafeMath add failed'
                if _1398 / block.timestamp < 0:
                    revert with 0, 'SafeMath add failed'
                if block.number < 0:
                    revert with 0, 'SafeMath add failed'
                _1823 = mem[64]
                mem[mem[64] + 32] = block.number + (_1398 / block.timestamp) + block.gas_limit + (sha3(mem[mem[64] len _1044 + -mem[64] + 124]) / block.timestamp) + block.difficulty + block.timestamp
                _1824 = mem[64]
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                _1826 = mem[_1824]
                u = _1824 + 32
                v = _1823 + 64
                t = mem[_1824]
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                mem[_1823 + floor32(mem[_1824]) + 64] = 256^(-(mem[_1824] % 32) + 32) - 1 and mem[_1823 + floor32(mem[_1824]) + 64] or mem[_1824 + floor32(mem[_1824]) + 32] and !(256^(-(mem[_1824] % 32) + 32) - 1)
                _1904 = sha3(mem[_1823 + 64 len _1826])
                require ext_code.size(stor0)
                call stor0.0x11a09ae7 with:
                     gas gas_remaining wei
                mem[_1823 + 64] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if _1904 - (1000 * _1904 / 1000) >= ext_call.return_data[0]:
                    s = s
                    idx = idx + 1
                    continue 
            s = s + 1
            idx = idx + 1
            continue 
        if uint256(sub_0cd26ebe[stor7[idx].field_0]) > 65535:
            if uint256(sub_0cd26ebe[stor7[idx].field_0]) > 16777215:
                _510 = mem[64]
                mem[mem[64] + 32] = 0xda00000000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 33] = 0x9400000000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 34] = stor7[idx].field_0
                mem[mem[64] + 54] = 0x8400000000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 55] = uint32(sub_0cd26ebe[stor7[idx].field_0])
                _511 = mem[64]
                mem[mem[64]] = 27
                mem[64] = mem[64] + 59
                _512 = mem[_511]
                u = _511 + 32
                v = _510 + 59
                t = mem[_511]
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                mem[_510 + floor32(mem[_511]) + 59] = mem[_510 + floor32(mem[_511]) + 59] and 256^(-(mem[_511] % 32) + 32) - 1 or mem[_511 + floor32(mem[_511]) + 32] and !(256^(-(mem[_511] % 32) + 32) - 1)
                _1017 = mem[64]
                mem[mem[64] + 32] = address(sha3(mem[mem[64] len _510 + _512 + -mem[64] + 59]))
                _1018 = mem[64]
                mem[mem[64]] = 20
                mem[64] = mem[64] + 52
                _1020 = mem[_1018]
                u = _1018 + 32
                v = mem[64]
                t = mem[_1018]
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                mem[mem[64] + floor32(mem[_1018])] = mem[mem[64] + floor32(mem[_1018])] and 256^(-(mem[_1018] % 32) + 32) - 1 or mem[_1018 + floor32(mem[_1018]) + 32] and !(256^(-(mem[_1018] % 32) + 32) - 1)
                _1368 = sha3(mem[mem[64] len _1017 + _1020 + -mem[64] + 52])
                require block.timestamp
                _1415 = mem[64]
                mem[mem[64] + 32] = address(block.coinbase)
                _1416 = mem[64]
                mem[mem[64]] = 20
                mem[64] = mem[64] + 52
                _1418 = mem[_1416]
                u = _1416 + 32
                v = _1415 + 52
                t = mem[_1416]
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                mem[_1415 + floor32(mem[_1416]) + 52] = mem[_1415 + floor32(mem[_1416]) + 52] and 256^(-(mem[_1416] % 32) + 32) - 1 or mem[_1416 + floor32(mem[_1416]) + 32] and !(256^(-(mem[_1416] % 32) + 32) - 1)
                require block.timestamp
                if block.difficulty + block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath add failed'
                if sha3(mem[_1415 + 52 len _1418]) / block.timestamp < 0:
                    revert with 0, 'SafeMath add failed'
                if block.gas_limit < 0:
                    revert with 0, 'SafeMath add failed'
                if _1368 / block.timestamp < 0:
                    revert with 0, 'SafeMath add failed'
                if block.number < 0:
                    revert with 0, 'SafeMath add failed'
                mem[_1415 + 84] = block.number + (_1368 / block.timestamp) + block.gas_limit + (sha3(mem[_1415 + 52 len _1418]) / block.timestamp) + block.difficulty + block.timestamp
                mem[_1415 + 52] = 32
                mem[64] = _1415 + 116
                u = _1415 + 84
                v = _1415 + 116
                t = 32
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                _1886 = sha3(mem[_1415 + 116])
                require ext_code.size(stor0)
                call stor0.0x11a09ae7 with:
                     gas gas_remaining wei
                mem[_1415 + 116] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if _1886 - (1000 * _1886 / 1000) >= ext_call.return_data[0]:
                    v = _1415 + 148
                    t = 1
                    continue 
                v = _1415 + 149
                t = 1
                continue 
            _513 = mem[64]
            mem[mem[64] + 32] = 0xd900000000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 33] = 0x9400000000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 34] = stor7[idx].field_0
            mem[mem[64] + 54] = 0x8300000000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 55] = sub_0cd26ebe[stor7[idx].field_0] % 16777216
            _514 = mem[64]
            mem[mem[64]] = 26
            mem[64] = mem[64] + 58
            _515 = mem[_514]
            if mem[_514] < 32:
                mem[_513 + 58] = Mask(232, 0, sub_0cd26ebe[stor7[idx].field_0]), mem[_513 + 87 len 3] and 256^(-mem[_514] + 32) - 1 or mem[_514 + 32] and !(256^(-mem[_514] + 32) - 1)
                mem[_513 + 90] = address(sha3(mem[_513 + 58 len _515]))
                mem[_513 + 58] = 20
                mem[64] = _513 + 110
                u = _513 + 90
                v = _513 + 110
                t = 20
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                mem[_513 + 110] = mem[_513 + 130 len 12] or Mask(160, 96, mem[_513 + 90])
                _959 = sha3(mem[_513 + 110 len 20])
                require block.timestamp
                mem[_513 + 142] = address(block.coinbase)
                mem[_513 + 110] = 20
                mem[64] = _513 + 162
                u = _513 + 142
                v = _513 + 162
                t = 20
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                mem[_513 + 162] = mem[_513 + 182 len 12] or Mask(160, 96, mem[_513 + 142])
                require block.timestamp
                if block.difficulty + block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath add failed'
                if sha3(mem[_513 + 162 len 20]) / block.timestamp < 0:
                    revert with 0, 'SafeMath add failed'
                if block.gas_limit < 0:
                    revert with 0, 'SafeMath add failed'
                if _959 / block.timestamp < 0:
                    revert with 0, 'SafeMath add failed'
                if block.number < 0:
                    revert with 0, 'SafeMath add failed'
                mem[_513 + 194] = block.number + (_959 / block.timestamp) + block.gas_limit + (sha3(mem[_513 + 162 len 20]) / block.timestamp) + block.difficulty + block.timestamp
                mem[_513 + 162] = 32
                mem[64] = _513 + 226
                u = _513 + 194
                v = _513 + 226
                t = 32
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                _1697 = sha3(mem[_513 + 226])
                require ext_code.size(stor0)
                call stor0.0x11a09ae7 with:
                     gas gas_remaining wei
                mem[_513 + 226] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if _1697 - (1000 * _1697 / 1000) >= ext_call.return_data[0]:
                    s = s
                    idx = idx + 1
                    continue 
            else:
                mem[_513 + 58] = mem[_514 + 32]
                u = _514 + 64
                v = _513 + 90
                t = _515 - 32
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                mem[_513 + floor32(_515 - 32) + 90] = mem[_513 + floor32(_515 - 32) + 90] and 256^(-_515 + floor32(_515 - 32) + 64) - 1 or mem[_514 + floor32(_515 - 32) + 64] and !(256^(-_515 + floor32(_515 - 32) + 64) - 1)
                _1026 = mem[64]
                mem[mem[64] + 32] = address(sha3(mem[mem[64] len _513 + _515 + -mem[64] + 58]))
                _1027 = mem[64]
                mem[mem[64]] = 20
                mem[64] = mem[64] + 52
                _1029 = mem[_1027]
                u = _1027 + 32
                v = mem[64]
                t = mem[_1027]
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                mem[mem[64] + floor32(mem[_1027])] = mem[mem[64] + floor32(mem[_1027])] and 256^(-(mem[_1027] % 32) + 32) - 1 or mem[_1027 + floor32(mem[_1027]) + 32] and !(256^(-(mem[_1027] % 32) + 32) - 1)
                _1378 = sha3(mem[mem[64] len _1026 + _1029 + -mem[64] + 52])
                require block.timestamp
                _1419 = mem[64]
                mem[mem[64] + 32] = address(block.coinbase)
                _1420 = mem[64]
                mem[mem[64]] = 20
                mem[64] = mem[64] + 52
                _1422 = mem[_1420]
                u = _1420 + 32
                v = _1419 + 52
                t = mem[_1420]
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                mem[_1419 + floor32(mem[_1420]) + 52] = mem[_1419 + floor32(mem[_1420]) + 52] and 256^(-(mem[_1420] % 32) + 32) - 1 or mem[_1420 + floor32(mem[_1420]) + 32] and !(256^(-(mem[_1420] % 32) + 32) - 1)
                require block.timestamp
                if block.difficulty + block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath add failed'
                if sha3(mem[_1419 + 52 len _1422]) / block.timestamp < 0:
                    revert with 0, 'SafeMath add failed'
                if block.gas_limit < 0:
                    revert with 0, 'SafeMath add failed'
                if _1378 / block.timestamp < 0:
                    revert with 0, 'SafeMath add failed'
                if block.number < 0:
                    revert with 0, 'SafeMath add failed'
                mem[_1419 + 84] = block.number + (_1378 / block.timestamp) + block.gas_limit + (sha3(mem[_1419 + 52 len _1422]) / block.timestamp) + block.difficulty + block.timestamp
                mem[_1419 + 52] = 32
                mem[64] = _1419 + 116
                u = _1419 + 84
                v = _1419 + 116
                t = 32
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                _1892 = sha3(mem[_1419 + 116])
                require ext_code.size(stor0)
                call stor0.0x11a09ae7 with:
                     gas gas_remaining wei
                mem[_1419 + 116] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if _1892 - (1000 * _1892 / 1000) >= ext_call.return_data[0]:
                    s = s
                    idx = idx + 1
                    continue 
            s = s + 1
            idx = idx + 1
            continue 
        _502 = mem[64]
        mem[mem[64] + 32] = 0xd800000000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 33] = 0x9400000000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 34] = stor7[idx].field_0
        mem[mem[64] + 54] = 0x8200000000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 55] = uint16(sub_0cd26ebe[stor7[idx].field_0])
        _503 = mem[64]
        mem[mem[64]] = 25
        mem[64] = mem[64] + 57
        _504 = mem[_503]
        if mem[_503] < 32:
            mem[_502 + 57] = Mask(240, 0, sub_0cd26ebe[stor7[idx].field_0]), mem[_502 + 87 len 2] and 256^(-mem[_503] + 32) - 1 or mem[_503 + 32] and !(256^(-mem[_503] + 32) - 1)
            mem[_502 + 89] = address(sha3(mem[_502 + 57 len _504]))
            mem[_502 + 57] = 20
            mem[64] = _502 + 109
            u = _502 + 89
            v = mem[64]
            t = mem[_502 + 57]
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            mem[mem[64] + floor32(mem[_502 + 57])] = mem[mem[64] + floor32(mem[_502 + 57])] and 256^(-(mem[_502 + 57] % 32) + 32) - 1 or mem[_502 + floor32(mem[_502 + 57]) + 89] and !(256^(-(mem[_502 + 57] % 32) + 32) - 1)
            _969 = sha3(mem[mem[64] len _502 + -mem[64] + 129])
            require block.timestamp
            _1005 = mem[64]
            mem[mem[64] + 32] = address(block.coinbase)
            _1006 = mem[64]
            mem[mem[64]] = 20
            mem[64] = mem[64] + 52
            _1008 = mem[_1006]
            u = _1006 + 32
            v = mem[64]
            t = mem[_1006]
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            mem[mem[64] + floor32(mem[_1006])] = mem[mem[64] + floor32(mem[_1006])] and 256^(-(mem[_1006] % 32) + 32) - 1 or mem[_1006 + floor32(mem[_1006]) + 32] and !(256^(-(mem[_1006] % 32) + 32) - 1)
            require block.timestamp
            if block.difficulty + block.timestamp < block.timestamp:
                revert with 0, 'SafeMath add failed'
            if sha3(mem[mem[64] len _1005 + _1008 + -mem[64] + 52]) / block.timestamp < 0:
                revert with 0, 'SafeMath add failed'
            if block.gas_limit < 0:
                revert with 0, 'SafeMath add failed'
            if _969 / block.timestamp < 0:
                revert with 0, 'SafeMath add failed'
            if block.number < 0:
                revert with 0, 'SafeMath add failed'
            _1561 = mem[64]
            mem[mem[64] + 32] = block.number + (_969 / block.timestamp) + block.gas_limit + (sha3(mem[mem[64] len _1005 + _1008 + -mem[64] + 52]) / block.timestamp) + block.difficulty + block.timestamp
            _1562 = mem[64]
            mem[mem[64]] = 32
            mem[64] = mem[64] + 64
            _1564 = mem[_1562]
            u = _1562 + 32
            v = mem[64]
            t = mem[_1562]
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            mem[mem[64] + floor32(mem[_1562])] = 256^(-(mem[_1562] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_1562])] or mem[_1562 + floor32(mem[_1562]) + 32] and !(256^(-(mem[_1562] % 32) + 32) - 1)
            _1708 = sha3(mem[mem[64] len _1561 + _1564 + -mem[64] + 64])
            require ext_code.size(stor0)
            call stor0.0x11a09ae7 with:
                 gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if _1708 - (1000 * _1708 / 1000) >= ext_call.return_data[0]:
                s = s
                idx = idx + 1
                continue 
            s = s + 1
            idx = idx + 1
            continue 
        mem[_502 + 57] = mem[_503 + 32]
        u = _503 + 64
        v = _502 + 89
        t = _504 - 32
        while t >= 32:
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            t = t - 32
            continue 
        mem[_502 + floor32(_504 - 32) + 89] = mem[_502 + floor32(_504 - 32) + 89] and 256^(-_504 + floor32(_504 - 32) + 64) - 1 or mem[_503 + floor32(_504 - 32) + 64] and !(256^(-_504 + floor32(_504 - 32) + 64) - 1)
        _1035 = mem[64]
        mem[mem[64] + 32] = address(sha3(mem[mem[64] len _502 + _504 + -mem[64] + 57]))
        _1036 = mem[64]
        mem[mem[64]] = 20
        mem[64] = mem[64] + 52
        _1038 = mem[_1036]
        u = _1036 + 32
        v = _1035 + 52
        t = mem[_1036]
        while t >= 32:
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            t = t - 32
            continue 
        mem[_1035 + floor32(mem[_1036]) + 52] = mem[_1035 + floor32(mem[_1036]) + 52] and 256^(-(mem[_1036] % 32) + 32) - 1 or mem[_1036 + floor32(mem[_1036]) + 32] and !(256^(-(mem[_1036] % 32) + 32) - 1)
        _1388 = sha3(mem[_1035 + 52 len _1038])
        require block.timestamp
        mem[_1035 + 84] = address(block.coinbase)
        mem[_1035 + 52] = 20
        mem[64] = _1035 + 104
        u = _1035 + 84
        v = mem[64]
        t = mem[_1035 + 52]
        while t >= 32:
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            t = t - 32
            continue 
        mem[mem[64] + floor32(mem[_1035 + 52])] = mem[mem[64] + floor32(mem[_1035 + 52])] and 256^(-(mem[_1035 + 52] % 32) + 32) - 1 or mem[_1035 + floor32(mem[_1035 + 52]) + 84] and !(256^(-(mem[_1035 + 52] % 32) + 32) - 1)
        require block.timestamp
        if block.difficulty + block.timestamp < block.timestamp:
            revert with 0, 'SafeMath add failed'
        if sha3(mem[mem[64] len _1035 + -mem[64] + 124]) / block.timestamp < 0:
            revert with 0, 'SafeMath add failed'
        if block.gas_limit < 0:
            revert with 0, 'SafeMath add failed'
        if _1388 / block.timestamp < 0:
            revert with 0, 'SafeMath add failed'
        if block.number < 0:
            revert with 0, 'SafeMath add failed'
        _1819 = mem[64]
        mem[mem[64] + 32] = block.number + (_1388 / block.timestamp) + block.gas_limit + (sha3(mem[mem[64] len _1035 + -mem[64] + 124]) / block.timestamp) + block.difficulty + block.timestamp
        _1820 = mem[64]
        mem[mem[64]] = 32
        mem[64] = mem[64] + 64
        _1822 = mem[_1820]
        u = _1820 + 32
        v = mem[64]
        t = mem[_1820]
        while t >= 32:
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            t = t - 32
            continue 
        mem[mem[64] + floor32(mem[_1820])] = 256^(-(mem[_1820] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_1820])] or mem[_1820 + floor32(mem[_1820]) + 32] and !(256^(-(mem[_1820] % 32) + 32) - 1)
        _1898 = sha3(mem[mem[64] len _1819 + _1822 + -mem[64] + 64])
        require ext_code.size(stor0)
        call stor0.0x11a09ae7 with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if _1898 - (1000 * _1898 / 1000) >= ext_call.return_data[0]:
            v = v
            t = t + 1
            continue 
        v = v + 1
        t = t + 1
        continue 
    return s, stor7.length, ext_call.return_data[0]
}



}
