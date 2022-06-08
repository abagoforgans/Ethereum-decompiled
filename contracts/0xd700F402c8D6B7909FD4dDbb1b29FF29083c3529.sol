contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 merkleRoot;
address stor2;
mapping of uint8 stor3;

function merkleRoot() {
    return merkleRoot
}

function claim_rest_of_tokens_and_selfdestruct() {
    require msg.sender == stor0
    require ext_code.size(stor2)
    call stor2.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= 0
    require ext_code.size(stor2)
    call stor2.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function setRoot(bytes32 arg1) {
    require msg.sender == stor0
    merkleRoot = arg1
}

function contractTokenBalance() {
    require ext_code.size(stor2)
    call stor2.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_3e40abf1(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[0] = arg3
    mem[32] = 3
    require bool(stor3[address(arg3)]) != 1
    require arg4 > 0
    require msg.sender == arg3
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 2
    mem[(32 * arg1.length) + (32 * arg2.length) + 192] = '0x'
    mem[(32 * arg1.length) + (32 * arg2.length) + 224] = 1
    mem[(32 * arg1.length) + (32 * arg2.length) + 256] = ' '
    mem[(32 * arg1.length) + (32 * arg2.length) + 288] = 40
    mem[(32 * arg1.length) + (32 * arg2.length) + 320 len 1280] = code.data[5310 len 1280]
    s = 0
    t = 0
    u = 0
    idx = 0
    while idx < 20:
        require 2^(8 * -idx + 19)
        require 2 * idx < 40
        if Mask(4, 4, arg3 / 2^(8 * -idx + 19)) << 244 >= 0xa00000000000000000000000000000000000000000000000000000000000000:
            mem[(32 * arg1.length) + (32 * arg2.length) + (2 * idx) + 320 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 87, ('div', ('mask', 8, 0, ('div', ('param', 'arg3'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 16))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 87, ('div', ('mask', 8, 0, ('div', ('param', 'arg3'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 16))), 0) - 256
        else:
            mem[(32 * arg1.length) + (32 * arg2.length) + (2 * idx) + 320 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('div', ('mask', 8, 0, ('div', ('param', 'arg3'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 16))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('div', ('mask', 8, 0, ('div', ('param', 'arg3'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), 16))), 0) - 256
        require (2 * idx) + 1 < 40
        if uint8(arg3 / 2^(8 * -idx + 19)) - Mask(4, 4, arg3 / 2^(8 * -idx + 19)) << 248 >= 0xa00000000000000000000000000000000000000000000000000000000000000:
            mem[(32 * arg1.length) + (32 * arg2.length) + (2 * idx) + 321 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 87, ('mask_shl', 8, 0, 0, ('add', ('mask_shl', 8, 0, 0, ('div', ('param', 'arg3'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), ('mul', -1, ('mask_shl', 4, 4, 0, ('div', ('param', 'arg3'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0)))))))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 87, ('mask_shl', 8, 0, 0, ('add', ('mask_shl', 8, 0, 0, ('div', ('param', 'arg3'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), ('mul', -1, ('mask_shl', 4, 4, 0, ('div', ('param', 'arg3'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0)))))))))))), 0) - 256
        else:
            mem[(32 * arg1.length) + (32 * arg2.length) + (2 * idx) + 321 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('mask_shl', 8, 0, 0, ('div', ('param', 'arg3'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), ('mul', -1, ('mask_shl', 4, 4, 0, ('div', ('param', 'arg3'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0)))))))))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('mask_shl', 8, 0, 0, ('div', ('param', 'arg3'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0))))))), ('mul', -1, ('mask_shl', 4, 4, 0, ('div', ('param', 'arg3'), ('exp', 2, ('mask_shl', 253, 0, 3, ('add', 19, ('mul', -1, ('var', 0)))))))))))), 0) - 256
        s = uint8(arg3 / 2^(8 * -idx + 19)) - Mask(4, 4, arg3 / 2^(8 * -idx + 19)) << 248
        t = Mask(4, 4, arg3 / 2^(8 * -idx + 19)) << 244
        u = arg3 / 2^(8 * -idx + 19) << 248
        idx = idx + 1
        continue 
    if not arg4:
        mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 1
        mem[(32 * arg1.length) + (32 * arg2.length) + 416] = '0'
        mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 44
        mem[64] = (32 * arg1.length) + (32 * arg2.length) + 544
        mem[(32 * arg1.length) + (32 * arg2.length) + 480 len 1408] = code.data[5310 len 1408]
        idx = 0
        s = 0
        while idx < 2:
            require idx < 2
            require s < 44
            mem[(32 * arg1.length) + (32 * arg2.length) + s + 480 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = 2
        while idx < 40:
            require idx < 40
            require s < 44
            mem[(32 * arg1.length) + (32 * arg2.length) + s + 480 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 320, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 320, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = 42
        while idx < 1:
            require idx < 1
            require s < 44
            mem[(32 * arg1.length) + (32 * arg2.length) + s + 480 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = 43
        while idx < 1:
            require idx < 1
            require s < 44
            mem[(32 * arg1.length) + (32 * arg2.length) + s + 480 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 416, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 416, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        mem[(32 * arg1.length) + (32 * arg2.length) + 544] = mem[(32 * arg1.length) + (32 * arg2.length) + 480]
        mem[(32 * arg1.length) + (32 * arg2.length) + 596 len 12] = mem[(32 * arg1.length) + (32 * arg2.length) + 532 len 12]
        s = 0
        idx = 0
        t = 0
        while idx <= arg1.length - 1:
            require idx < mem[96]
            _1772 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            if mem[(32 * idx) + (32 * arg1.length) + 160] != 1:
                _1810 = mem[64]
                mem[mem[64] + 32] = mem[(32 * idx) + 128]
                mem[mem[64] + 64] = t + sha3(mem[mem[64] len (32 * arg1.length) + (32 * arg2.length) + -mem[64] + 588])
                _1811 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                _1813 = mem[_1811]
                t = _1811 + 32
                v = mem[64]
                u = mem[_1811]
                while u + sha3(mem[mem[64] len (32 * arg1.length) + (32 * arg2.length) + -mem[64] + 588]) >= 32:
                    mem[v] = mem[t]
                    t = t + 32
                    v = v + 32
                    u = u - 32
                    continue 
                mem[mem[64] + floor32(mem[_1811])] = mem[_1811 + floor32(mem[_1811]) + -(mem[_1811] % 32) + 64 len mem[_1811] % 32] or Mask(8 * -(mem[_1811] % 32) + 32, -(8 * -(mem[_1811] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1811])])
                t = _1772
                v = v + 1
                u = sha3(mem[mem[64] len _1813 + _1810 + -mem[64] + 96])
                continue 
            _1814 = mem[64]
            mem[mem[64] + 32] = t + sha3(mem[mem[64] len (32 * arg1.length) + (32 * arg2.length) + -mem[64] + 588])
            mem[mem[64] + 64] = _1772
            _1815 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _1817 = mem[_1815]
            t = _1815 + 32
            v = mem[64]
            u = mem[_1815]
            while u + sha3(mem[mem[64] len (32 * arg1.length) + (32 * arg2.length) + -mem[64] + 588]) >= 32:
                mem[v] = mem[t]
                t = t + 32
                v = v + 32
                u = u - 32
                continue 
            mem[mem[64] + floor32(mem[_1815])] = mem[_1815 + floor32(mem[_1815]) + -(mem[_1815] % 32) + 64 len mem[_1815] % 32] or Mask(8 * -(mem[_1815] % 32) + 32, -(8 * -(mem[_1815] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1815])])
            t = _1772
            v = v + 1
            u = sha3(mem[mem[64] len _1817 + _1814 + -mem[64] + 96])
            continue 
        if t != merkleRoot:
            return 0
    else:
        s = 0
        idx = arg4
        while idx:
            s = s + 1
            idx = idx / 10
            continue 
        mem[(32 * arg1.length) + (32 * arg2.length) + 384] = s
        if not s:
            t = s - 1
            idx = arg4
            while idx:
                require t < s
                mem[(32 * arg1.length) + (32 * arg2.length) + t + 416 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(s) + 416] = s + 43
            mem[64] = (32 * arg1.length) + (32 * arg2.length) + ceil32(s) + floor32(s + 74) + 448
            if not s + 43:
                idx = 0
                t = 0
                while idx < 2:
                    require idx < 2
                    require t < s + 43
                    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(s) + t + 448 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('var', 0)), 32))), 0) - 256
                    idx = idx + 1
                    t = t + 1
                    continue 
                idx = 0
                t = 2
                while idx < 40:
                    require idx < 40
                    require t < s + 43
                    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(s) + t + 448 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 320, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 320, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('var', 0)), 32))), 0) - 256
                    idx = idx + 1
                    t = t + 1
                    continue 
                idx = 0
                t = 42
                while idx < 1:
                    require idx < 1
                    require t < s + 43
                    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(s) + t + 448 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('var', 0)), 32))), 0) - 256
                    idx = idx + 1
                    t = t + 1
                    continue 
                t = 0
                u = 43
                while t < s:
                    require t < s
                    require u < s + 43
                    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(s) + u + 448 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 416, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 416, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('var', 2)), 32))), 0) - 256
                    t = t + 1
                    u = u + 1
                    continue 
                mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(s) + floor32(s + 74) + 448 len floor32(s + 43)] = mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(s) + 448 len floor32(s + 43)]
                mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(s) + floor32(s + 74) + floor32(s + 43) + -(s + 43 % 32) + 480 len s + 43 % 32] = mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(s) + floor32(s + 43) + -(s + 43 % 32) + 480 len s + 43 % 32]
                t = 0
                idx = 0
                u = 0
                while idx <= arg1.length - 1:
                    require idx < mem[96]
                    _2174 = mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg1.length) + 128]
                    if mem[(32 * idx) + (32 * arg1.length) + 160] != 1:
                        _2198 = mem[64]
                        mem[mem[64] + 32] = mem[(32 * idx) + 128]
                        mem[mem[64] + 64] = u + sha3(mem[mem[64] len s + (32 * arg1.length) + (32 * arg2.length) + ceil32(s) + floor32(s + 74) + -mem[64] + 491])
                        _2199 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        _2201 = mem[_2199]
                        v = _2199 + 32
                        w = mem[64]
                        x = mem[_2199]
                        while x + sha3(mem[mem[64] len s + (32 * arg1.length) + (32 * arg2.length) + ceil32(s) + floor32(s + 74) + -mem[64] + 491]) >= 32:
                            mem[w] = mem[v]
                            v = v + 32
                            w = w + 32
                            x = x - 32
                            continue 
                        mem[mem[64] + floor32(mem[_2199])] = mem[_2199 + floor32(mem[_2199]) + -(mem[_2199] % 32) + 64 len mem[_2199] % 32] or Mask(8 * -(mem[_2199] % 32) + 32, -(8 * -(mem[_2199] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2199])])
                        v = _2174
                        w = w + 1
                        x = sha3(mem[mem[64] len _2201 + _2198 + -mem[64] + 96])
                        continue 
                    _2202 = mem[64]
                    mem[mem[64] + 32] = u + sha3(mem[mem[64] len s + (32 * arg1.length) + (32 * arg2.length) + ceil32(s) + floor32(s + 74) + -mem[64] + 491])
                    mem[mem[64] + 64] = _2174
                    _2203 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    _2205 = mem[_2203]
                    v = _2203 + 32
                    w = mem[64]
                    x = mem[_2203]
                    while x + sha3(mem[mem[64] len s + (32 * arg1.length) + (32 * arg2.length) + ceil32(s) + floor32(s + 74) + -mem[64] + 491]) >= 32:
                        mem[w] = mem[v]
                        v = v + 32
                        w = w + 32
                        x = x - 32
                        continue 
                    mem[mem[64] + floor32(mem[_2203])] = mem[_2203 + floor32(mem[_2203]) + -(mem[_2203] % 32) + 64 len mem[_2203] % 32] or Mask(8 * -(mem[_2203] % 32) + 32, -(8 * -(mem[_2203] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2203])])
                    v = _2174
                    w = w + 1
                    x = sha3(mem[mem[64] len _2205 + _2202 + -mem[64] + 96])
                    continue 
            else:
                mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(s) + 448 len 32 * s + 43] = code.data[5310 len 32 * s + 43]
                idx = 0
                t = 0
                while idx < 2:
                    require idx < 2
                    require t < s + 43
                    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(s) + t + 448 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('var', 0)), 32))), 0) - 256
                    idx = idx + 1
                    t = t + 1
                    continue 
                idx = 0
                t = 2
                while idx < 40:
                    require idx < 40
                    require t < s + 43
                    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(s) + t + 448 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 320, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 320, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('var', 0)), 32))), 0) - 256
                    idx = idx + 1
                    t = t + 1
                    continue 
                idx = 0
                t = 42
                while idx < 1:
                    require idx < 1
                    require t < s + 43
                    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(s) + t + 448 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('var', 0)), 32))), 0) - 256
                    idx = idx + 1
                    t = t + 1
                    continue 
                t = 0
                u = 43
                while t < s:
                    require t < s
                    require u < s + 43
                    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(s) + u + 448 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 416, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 416, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('var', 2)), 32))), 0) - 256
                    t = t + 1
                    u = u + 1
                    continue 
                mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(s) + floor32(s + 74) + 448 len floor32(s + 43)] = mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(s) + 448 len floor32(s + 43)]
                mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(s) + floor32(s + 74) + floor32(s + 43) + -(s + 43 % 32) + 480 len s + 43 % 32] = mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(s) + floor32(s + 43) + -(s + 43 % 32) + 480 len s + 43 % 32]
                t = 0
                idx = 0
                u = 0
                while idx <= arg1.length - 1:
                    require idx < mem[96]
                    _2176 = mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg1.length) + 128]
                    if mem[(32 * idx) + (32 * arg1.length) + 160] != 1:
                        _2206 = mem[64]
                        mem[mem[64] + 32] = mem[(32 * idx) + 128]
                        mem[mem[64] + 64] = u + sha3(mem[mem[64] len s + (32 * arg1.length) + (32 * arg2.length) + ceil32(s) + floor32(s + 74) + -mem[64] + 491])
                        _2207 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        _2209 = mem[_2207]
                        v = _2207 + 32
                        w = mem[64]
                        x = mem[_2207]
                        while x + sha3(mem[mem[64] len s + (32 * arg1.length) + (32 * arg2.length) + ceil32(s) + floor32(s + 74) + -mem[64] + 491]) >= 32:
                            mem[w] = mem[v]
                            v = v + 32
                            w = w + 32
                            x = x - 32
                            continue 
                        mem[mem[64] + floor32(mem[_2207])] = mem[_2207 + floor32(mem[_2207]) + -(mem[_2207] % 32) + 64 len mem[_2207] % 32] or Mask(8 * -(mem[_2207] % 32) + 32, -(8 * -(mem[_2207] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2207])])
                        v = _2176
                        w = w + 1
                        x = sha3(mem[mem[64] len _2209 + _2206 + -mem[64] + 96])
                        continue 
                    _2210 = mem[64]
                    mem[mem[64] + 32] = u + sha3(mem[mem[64] len s + (32 * arg1.length) + (32 * arg2.length) + ceil32(s) + floor32(s + 74) + -mem[64] + 491])
                    mem[mem[64] + 64] = _2176
                    _2211 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    _2213 = mem[_2211]
                    v = _2211 + 32
                    w = mem[64]
                    x = mem[_2211]
                    while x + sha3(mem[mem[64] len s + (32 * arg1.length) + (32 * arg2.length) + ceil32(s) + floor32(s + 74) + -mem[64] + 491]) >= 32:
                        mem[w] = mem[v]
                        v = v + 32
                        w = w + 32
                        x = x - 32
                        continue 
                    mem[mem[64] + floor32(mem[_2211])] = mem[_2211 + floor32(mem[_2211]) + -(mem[_2211] % 32) + 64 len mem[_2211] % 32] or Mask(8 * -(mem[_2211] % 32) + 32, -(8 * -(mem[_2211] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2211])])
                    v = _2176
                    w = w + 1
                    x = sha3(mem[mem[64] len _2213 + _2210 + -mem[64] + 96])
                    continue 
        else:
            mem[(32 * arg1.length) + (32 * arg2.length) + 416 len 32 * s] = code.data[5310 len 32 * s]
            t = s - 1
            idx = arg4
            while idx:
                require t < s
                mem[(32 * arg1.length) + (32 * arg2.length) + t + 416 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(s) + 416] = s + 43
            mem[64] = (32 * arg1.length) + (32 * arg2.length) + ceil32(s) + floor32(s + 74) + 448
            if not s + 43:
                idx = 0
                t = 0
                while idx < 2:
                    require idx < 2
                    require t < s + 43
                    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(s) + t + 448 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('var', 0)), 32))), 0) - 256
                    idx = idx + 1
                    t = t + 1
                    continue 
                idx = 0
                t = 2
                while idx < 40:
                    require idx < 40
                    require t < s + 43
                    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(s) + t + 448 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 320, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 320, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('var', 0)), 32))), 0) - 256
                    idx = idx + 1
                    t = t + 1
                    continue 
                idx = 0
                t = 42
                while idx < 1:
                    require idx < 1
                    require t < s + 43
                    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(s) + t + 448 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('var', 0)), 32))), 0) - 256
                    idx = idx + 1
                    t = t + 1
                    continue 
                t = 0
                u = 43
                while t < s:
                    require t < s
                    require u < s + 43
                    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(s) + u + 448 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 416, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 416, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('var', 2)), 32))), 0) - 256
                    t = t + 1
                    u = u + 1
                    continue 
                mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(s) + floor32(s + 74) + 448 len floor32(s + 43)] = mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(s) + 448 len floor32(s + 43)]
                mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(s) + floor32(s + 74) + floor32(s + 43) + -(s + 43 % 32) + 480 len s + 43 % 32] = mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(s) + floor32(s + 43) + -(s + 43 % 32) + 480 len s + 43 % 32]
                t = 0
                idx = 0
                u = 0
                while idx <= arg1.length - 1:
                    require idx < mem[96]
                    _2178 = mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg1.length) + 128]
                    if mem[(32 * idx) + (32 * arg1.length) + 160] != 1:
                        _2214 = mem[64]
                        mem[mem[64] + 32] = mem[(32 * idx) + 128]
                        mem[mem[64] + 64] = u + sha3(mem[mem[64] len s + (32 * arg1.length) + (32 * arg2.length) + ceil32(s) + floor32(s + 74) + -mem[64] + 491])
                        _2215 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        _2217 = mem[_2215]
                        v = _2215 + 32
                        w = mem[64]
                        x = mem[_2215]
                        while x + sha3(mem[mem[64] len s + (32 * arg1.length) + (32 * arg2.length) + ceil32(s) + floor32(s + 74) + -mem[64] + 491]) >= 32:
                            mem[w] = mem[v]
                            v = v + 32
                            w = w + 32
                            x = x - 32
                            continue 
                        mem[mem[64] + floor32(mem[_2215])] = mem[_2215 + floor32(mem[_2215]) + -(mem[_2215] % 32) + 64 len mem[_2215] % 32] or Mask(8 * -(mem[_2215] % 32) + 32, -(8 * -(mem[_2215] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2215])])
                        v = _2178
                        w = w + 1
                        x = sha3(mem[mem[64] len _2217 + _2214 + -mem[64] + 96])
                        continue 
                    _2218 = mem[64]
                    mem[mem[64] + 32] = u + sha3(mem[mem[64] len s + (32 * arg1.length) + (32 * arg2.length) + ceil32(s) + floor32(s + 74) + -mem[64] + 491])
                    mem[mem[64] + 64] = _2178
                    _2219 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    _2221 = mem[_2219]
                    v = _2219 + 32
                    w = mem[64]
                    x = mem[_2219]
                    while x + sha3(mem[mem[64] len s + (32 * arg1.length) + (32 * arg2.length) + ceil32(s) + floor32(s + 74) + -mem[64] + 491]) >= 32:
                        mem[w] = mem[v]
                        v = v + 32
                        w = w + 32
                        x = x - 32
                        continue 
                    mem[mem[64] + floor32(mem[_2219])] = mem[_2219 + floor32(mem[_2219]) + -(mem[_2219] % 32) + 64 len mem[_2219] % 32] or Mask(8 * -(mem[_2219] % 32) + 32, -(8 * -(mem[_2219] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2219])])
                    v = _2178
                    w = w + 1
                    x = sha3(mem[mem[64] len _2221 + _2218 + -mem[64] + 96])
                    continue 
            else:
                mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(s) + 448 len 32 * s + 43] = code.data[5310 len 32 * s + 43]
                idx = 0
                t = 0
                while idx < 2:
                    require idx < 2
                    require t < s + 43
                    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(s) + t + 448 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('var', 0)), 32))), 0) - 256
                    idx = idx + 1
                    t = t + 1
                    continue 
                idx = 0
                t = 2
                while idx < 40:
                    require idx < 40
                    require t < s + 43
                    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(s) + t + 448 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 320, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 320, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('var', 0)), 32))), 0) - 256
                    idx = idx + 1
                    t = t + 1
                    continue 
                idx = 0
                t = 42
                while idx < 1:
                    require idx < 1
                    require t < s + 43
                    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(s) + t + 448 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('var', 0)), 32))), 0) - 256
                    idx = idx + 1
                    t = t + 1
                    continue 
                t = 0
                u = 43
                while t < s:
                    require t < s
                    require u < s + 43
                    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(s) + u + 448 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 416, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 416, ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('param', 'arg2')))), ('var', 2)), 32))), 0) - 256
                    t = t + 1
                    u = u + 1
                    continue 
                mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(s) + floor32(s + 74) + 448 len floor32(s + 43)] = mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(s) + 448 len floor32(s + 43)]
                mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(s) + floor32(s + 74) + floor32(s + 43) + -(s + 43 % 32) + 480 len s + 43 % 32] = mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(s) + floor32(s + 43) + -(s + 43 % 32) + 480 len s + 43 % 32]
                t = 0
                idx = 0
                u = 0
                while idx <= arg1.length - 1:
                    require idx < mem[96]
                    _2180 = mem[(32 * idx) + 128]
                    require idx < mem[(32 * arg1.length) + 128]
                    if mem[(32 * idx) + (32 * arg1.length) + 160] != 1:
                        _2222 = mem[64]
                        mem[mem[64] + 32] = mem[(32 * idx) + 128]
                        mem[mem[64] + 64] = u + sha3(mem[mem[64] len s + (32 * arg1.length) + (32 * arg2.length) + ceil32(s) + floor32(s + 74) + -mem[64] + 491])
                        _2223 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        _2225 = mem[_2223]
                        v = _2223 + 32
                        w = mem[64]
                        x = mem[_2223]
                        while x + sha3(mem[mem[64] len s + (32 * arg1.length) + (32 * arg2.length) + ceil32(s) + floor32(s + 74) + -mem[64] + 491]) >= 32:
                            mem[w] = mem[v]
                            v = v + 32
                            w = w + 32
                            x = x - 32
                            continue 
                        mem[mem[64] + floor32(mem[_2223])] = mem[_2223 + floor32(mem[_2223]) + -(mem[_2223] % 32) + 64 len mem[_2223] % 32] or Mask(8 * -(mem[_2223] % 32) + 32, -(8 * -(mem[_2223] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2223])])
                        v = _2180
                        w = w + 1
                        x = sha3(mem[mem[64] len _2225 + _2222 + -mem[64] + 96])
                        continue 
                    _2226 = mem[64]
                    mem[mem[64] + 32] = u + sha3(mem[mem[64] len s + (32 * arg1.length) + (32 * arg2.length) + ceil32(s) + floor32(s + 74) + -mem[64] + 491])
                    mem[mem[64] + 64] = _2180
                    _2227 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    _2229 = mem[_2227]
                    v = _2227 + 32
                    w = mem[64]
                    x = mem[_2227]
                    while x + sha3(mem[mem[64] len s + (32 * arg1.length) + (32 * arg2.length) + ceil32(s) + floor32(s + 74) + -mem[64] + 491]) >= 32:
                        mem[w] = mem[v]
                        v = v + 32
                        w = w + 32
                        x = x - 32
                        continue 
                    mem[mem[64] + floor32(mem[_2227])] = mem[_2227 + floor32(mem[_2227]) + -(mem[_2227] % 32) + 64 len mem[_2227] % 32] or Mask(8 * -(mem[_2227] % 32) + 32, -(8 * -(mem[_2227] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_2227])])
                    v = _2180
                    w = w + 1
                    x = sha3(mem[mem[64] len _2229 + _2226 + -mem[64] + 96])
                    continue 
        if u != merkleRoot:
            return 0
    stor3[address(arg3)] = 1
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require bool(ext_call.return_data[0]) == 1
    emit AirdropTransfer(address(arg3), arg4);
    return 1
}



}
