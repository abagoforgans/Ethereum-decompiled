contract main {


// =======================  Init code  ======================


mapping of uint64 stor1;
bool stor2;
bool stor2; offset 63
uint64 stor2;
uint64 stor2; offset 1
uint64 stor2;
uint64 stor2; offset 64
uint64 stor2; offset 128
uint64 stor2; offset 192
uint64 stor3;
uint64 stor3; offset 192
uint128 stor3; offset 64
uint64 stor4;
uint64 stor4; offset 64

function _fallback() {
    uint64(stor3.field_0) = code.data[6320 len 8]
    uint64(stor2.field_64) = code.data[6384 len 8]
    uint64(stor2.field_128) = 0
    uint64(stor2.field_192) = code.data[6288 len 8]
    uint64(stor2.field_192) = 0
    uint64(stor2.field_192) = 0
    if not code.data[6392 len 32]:
        uint64(stor2.field_0) = 16344623761438316625
    else:
        uint64(stor2.field_0) = code.data[6416 len 8]
    uint128(stor3.field_64) = 0
    uint64(stor3.field_192) = code.data[6352 len 8]
    idx = 1
    while uint64(idx) <= uint64(stor3.field_192):
        mem[0] = uint64(idx)
        mem[32] = 1
        stor1[idx << 192] = uint64(idx)
        idx = idx + 1
        continue 
    uint64(stor4.field_0) = code.data[6448 len 8]
    uint64(stor4.field_64) = 0
    idx = 0
    while uint64(idx) < 64:
        stor2.field_0 % 9223372036854775808 = stor2.field_1 % 9223372036854775808
        bool(stor2.field_63) = 0
        if bool(stor2.field_0) == 1:
            uint64(stor2.field_0) = uint64(15564440312192434176 xor uint64(stor2.field_0))
        idx = idx + 1
        continue 
    mem[288] = code.data[6288 len 8]
    mem[320] = code.data[6320 len 8]
    emit 0x235f4f7e: mem[288 len 64], code.data[6328 len 32] << 192, code.data[6360 len 32] << 192, code.data[6392 len 32] << 192, uint64(code.data[6424 len 32])
    return code.data[737 len 5527]
}



// =====================  Runtime code  =====================


#
#  - tick()
#
mapping of struct stor0;
mapping of struct stor1;
bool stor2;
bool stor2; offset 63
uint64 stor2;
uint64 stor2; offset 1
uint64 stor2;
uint64 sub_b5e3968d; offset 128
uint64 agentCount; offset 64
uint64 sub_017b3285; offset 128
uint64 stor3; offset 192
uint64 stor4;
uint64 stor4; offset 64

function sub_017b3285(?) {
    return sub_017b3285
}

function getAgentCount() {
    return agentCount
}

function sub_b5e3968d(?) {
    return sub_b5e3968d
}

function _fallback() payable {
    revert 
}

function sub_b7149e7c(?) {
    require arg3 < uint256(stor0[arg1 << 192][4][arg2 << 192].field_0)
    uint256(stor0[arg1 << 192][4][arg2 << 192][uint64(arg3) / 4].field_0) = uint256(stor0[arg1 << 192][4][arg2 << 192][uint64(arg3) / 4].field_0) and !(test266151307() * 256^(8 * arg3 % 4)) or 256^(8 * arg3 % 4) * uint64(stor('array', ('mask_shl', 62, 2, -2, ('param', 'arg3')), ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('array', 4, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg1')), ('name', 'stor0', 0)))))[uint8(arg3)] + 1)
    require 0 < uint256(stor0[arg1 << 192][4][arg2 << 192].field_0)
    uint64(stor0[arg1 << 192][4][arg2 << 192].field_0) = uint64(uint64(stor0[arg1 << 192][4][arg2 << 192].field_0) + 1)
    emit 0xfed7abab: arg1 << 192, arg2 << 192, arg3
}

function sub_a1b27aa4(?) {
    mem[64] = ceil32(arg3.length) + 128
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    agentCount = uint64(agentCount + 1)
    uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_8) = uint64(agentCount + 1)
    uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_256) = arg2
    uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_320) = arg1
    uint256(stor1[arg1 << 192].field_256)++
    if not uint256(stor1[arg1 << 192].field_256) > uint256(stor1[arg1 << 192].field_256) + 1:
        uint256(stor[Mask(254, 0, stor1[arg1 << 192].field_258) + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg1')), ('name', 'stor1', 1)))].field_0) = uint256(stor[Mask(254, 0, stor1[arg1 << 192].field_258) + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg1')), ('name', 'stor1', 1)))].field_0) and !(test266151307() * 256^(8 * stor1[arg1 << 192].field_256 % 4)) or 256^(8 * stor1[arg1 << 192].field_256 % 4) * uint64(agentCount + 1)
        uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_384) = 0
        address(stor0[uint64(stor3.field_64) + 1 << 192].field_512) = msg.sender
        uint256(stor0[uint64(stor3.field_64) + 1 << 192].field_768) = (2 * arg3.length) + 1
        s = 0
        idx = 128
        while arg3.length + 128 > idx:
            uint256(stor0[uint64(stor3.field_64) + 1 << 192][s + 3].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        if stor0[uint64(stor3.field_64) + 1 << 192][3].length + 31 / 32 <= Mask(251, 0, arg3.length + 31) >> 5:
            if uint64(stor4.field_64) >= uint64(stor4.field_0):
                uint8(stor0[uint64(stor3.field_64) + 1 << 192].field_0) = 83
                uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_72) = 0
                stor0[uint64(stor3.field_64) + 1 << 192].field_256 % 1 = 0
                mem[0] = uint64(agentCount + 1)
                mem[32] = 0
                uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_136) = 0
                idx = 1
                while uint64(idx) <= uint64(stor3.field_192):
                    _1566 = mem[64]
                    if msize < mem[64]:
                        mem[mem[64]] = uint64(uint64(stor3.field_192) + 1)
                        mem[64] = mem[64] + (32 * uint64(uint64(stor3.field_192) + 1)) + 32
                        mem[0] = uint64(idx)
                        mem[32] = sha3(agentCount + 1 << 192, 0) + 4
                        _1673 = mem[_1566]
                        uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[_1566]
                        mem[0] = sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)
                        if not _1673:
                            s = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                            while sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) + 3 / 4) > s:
                                uint64(stor[s]) = 0
                                s = s + 1
                                continue 
                            idx = idx + 1
                            continue 
                        t = 0
                        s = _1566 + 32
                        while _1566 + (32 * _1673) + 32 > s:
                            uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[s + 24 len 8] * 256^t or !(test266151307() * 256^t) and uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0)
                            t = t + (8 * -t + 15 / 32) + (-1 * t * t + 15 / 32) + 8
                            s = s + 32
                            continue 
                        s = floor32(_1673) >> 2
                        t = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                        while s:
                            uint256(stor[t]) = !(test266151307() * 256^s) and uint256(stor[t])
                            s = s + (8 * -s + 15 / 32) + (-1 * s * s + 15 / 32) + 8
                            t = (s + 15 / 32) + t
                            continue 
                        s = sha3(sha3(s << 192, sha3(agentCount + 1 << 192, 0) + 4)) + ((floor32(_1673) >> 2) + Mask(250, 3, None + -(floor32(_1673) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_1673) >> 2) + 9) >> 3)
                        while sha3(sha3(s << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][s << 192].field_0) + 3 / 4) > s:
                            uint64(stor[s]) = 0
                            s = s + 1
                            continue 
                        s = sha3(sha3(s << 192, sha3(agentCount + 1 << 192, 0) + 4)) + ((floor32(_1673) >> 2) + Mask(250, 3, None + -(floor32(_1673) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_1673) >> 2) + 9) >> 3) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][s << 192].field_0) + 3 / 4) + (-1 * (floor32(_1673) >> 2) + Mask(250, 3, None + -(floor32(_1673) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_1673) >> 2) + 9) >> 3) + 1
                        continue 
                    _1629 = msize
                    mem[msize] = uint64(uint64(stor3.field_192) + 1)
                    mem[64] = _1629 + (32 * uint64(uint64(stor3.field_192) + 1)) + 32
                    mem[0] = uint64(idx)
                    mem[32] = sha3(agentCount + 1 << 192, 0) + 4
                    _1754 = mem[_1629]
                    uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[_1629]
                    mem[0] = sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)
                    if not _1754:
                        s = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                        while sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) + 3 / 4) > s:
                            uint64(stor[s]) = 0
                            s = s + 1
                            continue 
                    else:
                        t = 0
                        s = _1629 + 32
                        while _1629 + (32 * _1754) + 32 > s:
                            uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[s + 24 len 8] * 256^t or !(test266151307() * 256^t) and uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0)
                            t = t + (8 * -t + 15 / 32) + (-1 * t * t + 15 / 32) + 8
                            s = s + 32
                            continue 
                        s = floor32(_1754) >> 2
                        t = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                        while s:
                            uint256(stor[t]) = !(test266151307() * 256^s) and uint256(stor[t])
                            s = s + (8 * -s + 15 / 32) + (-1 * s * s + 15 / 32) + 8
                            t = (s + 15 / 32) + t
                            continue 
                        s = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + ((floor32(_1754) >> 2) + Mask(250, 3, None + -(floor32(_1754) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_1754) >> 2) + 9) >> 3)
                        while sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) + 3 / 4) > s:
                            uint64(stor[s]) = 0
                            s = s + 1
                            continue 
                    idx = idx + 1
                    continue 
                mem[32] = 0
                _1565 = mem[64]
                mem[mem[64]] = uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_8)
                mem[mem[64] + 32] = uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_320)
                mem[mem[64] + 64] = uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_256)
                mem[mem[64] + 128] = Mask(8, 248, uint8(stor0[uint64(stor3.field_64) + 1 << 192].field_0))
                mem[mem[64] + 96] = 160
                mem[mem[64] + 160] = stor0[uint64(stor3.field_64) + 1 << 192][3].length
                mem[mem[64] + 192] = uint256(stor0[uint64(stor3.field_64) + 1 << 192][3].field_0)
                idx = mem[64] + 192
                s = 0
                while mem[64] + stor0[uint64(stor3.field_64) + 1 << 192][3].length + 192 > idx + 32:
                    mem[idx + 32] = uint256(stor0[uint64(stor3.field_64) + 1 << 192][s + 3].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0x9d5b12ec: mem[mem[64] len _1565 + stor0[uint64(stor3.field_64) + 1 << 192][3].length + (floor32(stor0[uint64(stor3.field_64) + 1 << 192][3].length - 1) + -stor0[uint64(stor3.field_64) + 1 << 192][3].length + 32 % 32) + -mem[64] + 192]
            else:
                uint64(stor4.field_64) = uint64(uint64(stor4.field_64) + 1)
                sub_017b3285 = uint64(sub_017b3285 + 1)
                uint8(stor0[uint64(stor3.field_64) + 1 << 192].field_0) = 73
                stor2.field_0 % 9223372036854775808 = stor2.field_1 % 9223372036854775808
                bool(stor2.field_63) = 0
                if bool(stor2.field_0) != 1:
                    uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_72) = uint64((uint64(stor2.field_0) % 346000) + 95000)
                    mem[0] = uint64(agentCount + 1)
                    mem[32] = 0
                    uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_136) = 0
                    idx = 1
                    while uint64(idx) <= uint64(stor3.field_192):
                        _1570 = mem[64]
                        if msize < mem[64]:
                            mem[mem[64]] = uint64(uint64(stor3.field_192) + 1)
                            mem[64] = mem[64] + (32 * uint64(uint64(stor3.field_192) + 1)) + 32
                            mem[0] = uint64(idx)
                            mem[32] = sha3(agentCount + 1 << 192, 0) + 4
                            _1678 = mem[_1570]
                            uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[_1570]
                            mem[0] = sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)
                            if not _1678:
                                s = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                                while sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) + 3 / 4) > s:
                                    uint64(stor[s]) = 0
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                            t = 0
                            s = _1570 + 32
                            while _1570 + (32 * _1678) + 32 > s:
                                uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[s + 24 len 8] * 256^t or !(test266151307() * 256^t) and uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0)
                                t = t + (8 * -t + 15 / 32) + (-1 * t * t + 15 / 32) + 8
                                s = s + 32
                                continue 
                            s = floor32(_1678) >> 2
                            t = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                            while s:
                                uint256(stor[t]) = !(test266151307() * 256^s) and uint256(stor[t])
                                s = s + (8 * -s + 15 / 32) + (-1 * s * s + 15 / 32) + 8
                                t = (s + 15 / 32) + t
                                continue 
                            s = sha3(sha3(s << 192, sha3(agentCount + 1 << 192, 0) + 4)) + ((floor32(_1678) >> 2) + Mask(250, 3, None + -(floor32(_1678) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_1678) >> 2) + 9) >> 3)
                            while sha3(sha3(s << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][s << 192].field_0) + 3 / 4) > s:
                                uint64(stor[s]) = 0
                                s = s + 1
                                continue 
                            s = sha3(sha3(s << 192, sha3(agentCount + 1 << 192, 0) + 4)) + ((floor32(_1678) >> 2) + Mask(250, 3, None + -(floor32(_1678) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_1678) >> 2) + 9) >> 3) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][s << 192].field_0) + 3 / 4) + (-1 * (floor32(_1678) >> 2) + Mask(250, 3, None + -(floor32(_1678) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_1678) >> 2) + 9) >> 3) + 1
                            continue 
                        _1631 = msize
                        mem[msize] = uint64(uint64(stor3.field_192) + 1)
                        mem[64] = _1631 + (32 * uint64(uint64(stor3.field_192) + 1)) + 32
                        mem[0] = uint64(idx)
                        mem[32] = sha3(agentCount + 1 << 192, 0) + 4
                        _1759 = mem[_1631]
                        uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[_1631]
                        mem[0] = sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)
                        if not _1759:
                            s = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                            while sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) + 3 / 4) > s:
                                uint64(stor[s]) = 0
                                s = s + 1
                                continue 
                        else:
                            t = 0
                            s = _1631 + 32
                            while _1631 + (32 * _1759) + 32 > s:
                                uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[s + 24 len 8] * 256^t or !(test266151307() * 256^t) and uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0)
                                t = t + (8 * -t + 15 / 32) + (-1 * t * t + 15 / 32) + 8
                                s = s + 32
                                continue 
                            s = floor32(_1759) >> 2
                            t = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                            while s:
                                uint256(stor[t]) = !(test266151307() * 256^s) and uint256(stor[t])
                                s = s + (8 * -s + 15 / 32) + (-1 * s * s + 15 / 32) + 8
                                t = (s + 15 / 32) + t
                                continue 
                            s = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + ((floor32(_1759) >> 2) + Mask(250, 3, None + -(floor32(_1759) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_1759) >> 2) + 9) >> 3)
                            while sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) + 3 / 4) > s:
                                uint64(stor[s]) = 0
                                s = s + 1
                                continue 
                        idx = idx + 1
                        continue 
                    mem[32] = 0
                    _1569 = mem[64]
                    mem[mem[64]] = uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_8)
                    mem[mem[64] + 32] = uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_320)
                    mem[mem[64] + 64] = uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_256)
                    mem[mem[64] + 128] = Mask(8, 248, uint8(stor0[uint64(stor3.field_64) + 1 << 192].field_0))
                    mem[mem[64] + 96] = 160
                    mem[mem[64] + 160] = stor0[uint64(stor3.field_64) + 1 << 192][3].length
                    mem[mem[64] + 192] = uint256(stor0[uint64(stor3.field_64) + 1 << 192][3].field_0)
                    idx = mem[64] + 192
                    s = 0
                    while mem[64] + stor0[uint64(stor3.field_64) + 1 << 192][3].length + 192 > idx + 32:
                        mem[idx + 32] = uint256(stor0[uint64(stor3.field_64) + 1 << 192][s + 3].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0x9d5b12ec: mem[mem[64] len _1569 + stor0[uint64(stor3.field_64) + 1 << 192][3].length + (floor32(stor0[uint64(stor3.field_64) + 1 << 192][3].length - 1) + -stor0[uint64(stor3.field_64) + 1 << 192][3].length + 32 % 32) + -mem[64] + 192]
                else:
                    uint64(stor2.field_0) = uint64(15564440312192434176 xor uint64(stor2.field_0))
                    uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_72) = uint64((uint64(stor2.field_0) % 346000) + 95000)
                    mem[0] = uint64(agentCount + 1)
                    mem[32] = 0
                    uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_136) = 0
                    idx = 1
                    while uint64(idx) <= uint64(stor3.field_192):
                        _1574 = mem[64]
                        if msize < mem[64]:
                            mem[mem[64]] = uint64(uint64(stor3.field_192) + 1)
                            mem[64] = mem[64] + (32 * uint64(uint64(stor3.field_192) + 1)) + 32
                            mem[0] = uint64(idx)
                            mem[32] = sha3(agentCount + 1 << 192, 0) + 4
                            _1683 = mem[_1574]
                            uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[_1574]
                            mem[0] = sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)
                            if not _1683:
                                s = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                                while sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) + 3 / 4) > s:
                                    uint64(stor[s]) = 0
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                            t = 0
                            s = _1574 + 32
                            while _1574 + (32 * _1683) + 32 > s:
                                uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[s + 24 len 8] * 256^t or !(test266151307() * 256^t) and uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0)
                                t = t + (8 * -t + 15 / 32) + (-1 * t * t + 15 / 32) + 8
                                s = s + 32
                                continue 
                            s = floor32(_1683) >> 2
                            t = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                            while s:
                                uint256(stor[t]) = !(test266151307() * 256^s) and uint256(stor[t])
                                s = s + (8 * -s + 15 / 32) + (-1 * s * s + 15 / 32) + 8
                                t = (s + 15 / 32) + t
                                continue 
                            s = sha3(sha3(s << 192, sha3(agentCount + 1 << 192, 0) + 4)) + ((floor32(_1683) >> 2) + Mask(250, 3, None + -(floor32(_1683) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_1683) >> 2) + 9) >> 3)
                            while sha3(sha3(s << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][s << 192].field_0) + 3 / 4) > s:
                                uint64(stor[s]) = 0
                                s = s + 1
                                continue 
                            s = sha3(sha3(s << 192, sha3(agentCount + 1 << 192, 0) + 4)) + ((floor32(_1683) >> 2) + Mask(250, 3, None + -(floor32(_1683) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_1683) >> 2) + 9) >> 3) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][s << 192].field_0) + 3 / 4) + (-1 * (floor32(_1683) >> 2) + Mask(250, 3, None + -(floor32(_1683) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_1683) >> 2) + 9) >> 3) + 1
                            continue 
                        _1633 = msize
                        mem[msize] = uint64(uint64(stor3.field_192) + 1)
                        mem[64] = _1633 + (32 * uint64(uint64(stor3.field_192) + 1)) + 32
                        mem[0] = uint64(idx)
                        mem[32] = sha3(agentCount + 1 << 192, 0) + 4
                        _1764 = mem[_1633]
                        uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[_1633]
                        mem[0] = sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)
                        if not _1764:
                            s = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                            while sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) + 3 / 4) > s:
                                uint64(stor[s]) = 0
                                s = s + 1
                                continue 
                        else:
                            t = 0
                            s = _1633 + 32
                            while _1633 + (32 * _1764) + 32 > s:
                                uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[s + 24 len 8] * 256^t or !(test266151307() * 256^t) and uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0)
                                t = t + (8 * -t + 15 / 32) + (-1 * t * t + 15 / 32) + 8
                                s = s + 32
                                continue 
                            s = floor32(_1764) >> 2
                            t = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                            while s:
                                uint256(stor[t]) = !(test266151307() * 256^s) and uint256(stor[t])
                                s = s + (8 * -s + 15 / 32) + (-1 * s * s + 15 / 32) + 8
                                t = (s + 15 / 32) + t
                                continue 
                            s = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + ((floor32(_1764) >> 2) + Mask(250, 3, None + -(floor32(_1764) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_1764) >> 2) + 9) >> 3)
                            while sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) + 3 / 4) > s:
                                uint64(stor[s]) = 0
                                s = s + 1
                                continue 
                        idx = idx + 1
                        continue 
                    mem[32] = 0
                    _1573 = mem[64]
                    mem[mem[64]] = uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_8)
                    mem[mem[64] + 32] = uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_320)
                    mem[mem[64] + 64] = uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_256)
                    mem[mem[64] + 128] = Mask(8, 248, uint8(stor0[uint64(stor3.field_64) + 1 << 192].field_0))
                    mem[mem[64] + 96] = 160
                    mem[mem[64] + 160] = stor0[uint64(stor3.field_64) + 1 << 192][3].length
                    mem[mem[64] + 192] = uint256(stor0[uint64(stor3.field_64) + 1 << 192][3].field_0)
                    idx = mem[64] + 192
                    s = 0
                    while mem[64] + stor0[uint64(stor3.field_64) + 1 << 192][3].length + 192 > idx + 32:
                        mem[idx + 32] = uint256(stor0[uint64(stor3.field_64) + 1 << 192][s + 3].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0x9d5b12ec: mem[mem[64] len _1573 + stor0[uint64(stor3.field_64) + 1 << 192][3].length + (floor32(stor0[uint64(stor3.field_64) + 1 << 192][3].length - 1) + -stor0[uint64(stor3.field_64) + 1 << 192][3].length + 32 % 32) + -mem[64] + 192]
        else:
            uint256(stor[('array', 3, ('map', ('mask_shl', 64, 0, 192, ('add', 1, ('type', 64, ('field', 64, ('stor', ('name', 'stor3', 3)))))), ('name', 'stor0', 0))) + (Mask(251, 0, arg3.length + 31) >> 5)].field_0) = 0
            idx = (Mask(251, 0, arg3.length + 31) >> 5) + 1
            while stor0[uint64(stor3.field_64) + 1 << 192][3].length + 31 / 32 > idx:
                uint256(stor0[uint64(stor3.field_64) + 1 << 192][idx + 3].field_0) = 0
                idx = idx + 1
                continue 
            if uint64(stor4.field_64) >= uint64(stor4.field_0):
                uint8(stor0[uint64(stor3.field_64) + 1 << 192].field_0) = 83
                uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_72) = 0
                stor0[uint64(stor3.field_64) + 1 << 192].field_256 % 1 = 0
                mem[0] = uint64(agentCount + 1)
                mem[32] = 0
                uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_136) = 0
                idx = 1
                while uint64(idx) <= uint64(stor3.field_192):
                    _2184 = mem[64]
                    if msize < mem[64]:
                        mem[mem[64]] = uint64(uint64(stor3.field_192) + 1)
                        mem[64] = mem[64] + (32 * uint64(uint64(stor3.field_192) + 1)) + 32
                        mem[0] = uint64(idx)
                        mem[32] = sha3(agentCount + 1 << 192, 0) + 4
                        _2290 = mem[_2184]
                        uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[_2184]
                        mem[0] = sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)
                        if not _2290:
                            s = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                            while sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) + 3 / 4) > s:
                                uint64(stor[s]) = 0
                                s = s + 1
                                continue 
                            idx = idx + 1
                            continue 
                        t = 0
                        s = _2184 + 32
                        while _2184 + (32 * _2290) + 32 > s:
                            uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[s + 24 len 8] * 256^t or !(test266151307() * 256^t) and uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0)
                            t = t + (8 * -t + 15 / 32) + (-1 * t * t + 15 / 32) + 8
                            s = s + 32
                            continue 
                        s = floor32(_2290) >> 2
                        t = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                        while s:
                            uint256(stor[t]) = !(test266151307() * 256^s) and uint256(stor[t])
                            s = s + (8 * -s + 15 / 32) + (-1 * s * s + 15 / 32) + 8
                            t = (s + 15 / 32) + t
                            continue 
                        s = sha3(sha3(s << 192, sha3(agentCount + 1 << 192, 0) + 4)) + ((floor32(_2290) >> 2) + Mask(250, 3, None + -(floor32(_2290) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_2290) >> 2) + 9) >> 3)
                        while sha3(sha3(s << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][s << 192].field_0) + 3 / 4) > s:
                            uint64(stor[s]) = 0
                            s = s + 1
                            continue 
                        s = sha3(sha3(s << 192, sha3(agentCount + 1 << 192, 0) + 4)) + ((floor32(_2290) >> 2) + Mask(250, 3, None + -(floor32(_2290) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_2290) >> 2) + 9) >> 3) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][s << 192].field_0) + 3 / 4) + (-1 * (floor32(_2290) >> 2) + Mask(250, 3, None + -(floor32(_2290) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_2290) >> 2) + 9) >> 3) + 1
                        continue 
                    _2255 = msize
                    mem[msize] = uint64(uint64(stor3.field_192) + 1)
                    mem[64] = _2255 + (32 * uint64(uint64(stor3.field_192) + 1)) + 32
                    mem[0] = uint64(idx)
                    mem[32] = sha3(agentCount + 1 << 192, 0) + 4
                    _2352 = mem[_2255]
                    uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[_2255]
                    mem[0] = sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)
                    if not _2352:
                        s = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                        while sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) + 3 / 4) > s:
                            uint64(stor[s]) = 0
                            s = s + 1
                            continue 
                    else:
                        t = 0
                        s = _2255 + 32
                        while _2255 + (32 * _2352) + 32 > s:
                            uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[s + 24 len 8] * 256^t or !(test266151307() * 256^t) and uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0)
                            t = t + (8 * -t + 15 / 32) + (-1 * t * t + 15 / 32) + 8
                            s = s + 32
                            continue 
                        s = floor32(_2352) >> 2
                        t = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                        while s:
                            uint256(stor[t]) = !(test266151307() * 256^s) and uint256(stor[t])
                            s = s + (8 * -s + 15 / 32) + (-1 * s * s + 15 / 32) + 8
                            t = (s + 15 / 32) + t
                            continue 
                        s = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + ((floor32(_2352) >> 2) + Mask(250, 3, None + -(floor32(_2352) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_2352) >> 2) + 9) >> 3)
                        while sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) + 3 / 4) > s:
                            uint64(stor[s]) = 0
                            s = s + 1
                            continue 
                    idx = idx + 1
                    continue 
                mem[32] = 0
                _2183 = mem[64]
                mem[mem[64]] = uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_8)
                mem[mem[64] + 32] = uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_320)
                mem[mem[64] + 64] = uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_256)
                mem[mem[64] + 128] = Mask(8, 248, uint8(stor0[uint64(stor3.field_64) + 1 << 192].field_0))
                mem[mem[64] + 96] = 160
                mem[mem[64] + 160] = stor0[uint64(stor3.field_64) + 1 << 192][3].length
                mem[mem[64] + 192] = uint256(stor0[uint64(stor3.field_64) + 1 << 192][3].field_0)
                idx = mem[64] + 192
                s = 0
                while mem[64] + stor0[uint64(stor3.field_64) + 1 << 192][3].length + 192 > idx + 32:
                    mem[idx + 32] = uint256(stor0[uint64(stor3.field_64) + 1 << 192][s + 3].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0x9d5b12ec: mem[mem[64] len _2183 + stor0[uint64(stor3.field_64) + 1 << 192][3].length + (floor32(stor0[uint64(stor3.field_64) + 1 << 192][3].length - 1) + -stor0[uint64(stor3.field_64) + 1 << 192][3].length + 32 % 32) + -mem[64] + 192]
            else:
                uint64(stor4.field_64) = uint64(uint64(stor4.field_64) + 1)
                sub_017b3285 = uint64(sub_017b3285 + 1)
                uint8(stor0[uint64(stor3.field_64) + 1 << 192].field_0) = 73
                stor2.field_0 % 9223372036854775808 = stor2.field_1 % 9223372036854775808
                bool(stor2.field_63) = 0
                if bool(stor2.field_0) != 1:
                    uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_72) = uint64((uint64(stor2.field_0) % 346000) + 95000)
                    mem[0] = uint64(agentCount + 1)
                    mem[32] = 0
                    uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_136) = 0
                    idx = 1
                    while uint64(idx) <= uint64(stor3.field_192):
                        _2188 = mem[64]
                        if msize < mem[64]:
                            mem[mem[64]] = uint64(uint64(stor3.field_192) + 1)
                            mem[64] = mem[64] + (32 * uint64(uint64(stor3.field_192) + 1)) + 32
                            mem[0] = uint64(idx)
                            mem[32] = sha3(agentCount + 1 << 192, 0) + 4
                            _2295 = mem[_2188]
                            uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[_2188]
                            mem[0] = sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)
                            if not _2295:
                                s = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                                while sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) + 3 / 4) > s:
                                    uint64(stor[s]) = 0
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                            t = 0
                            s = _2188 + 32
                            while _2188 + (32 * _2295) + 32 > s:
                                uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[s + 24 len 8] * 256^t or !(test266151307() * 256^t) and uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0)
                                t = t + (8 * -t + 15 / 32) + (-1 * t * t + 15 / 32) + 8
                                s = s + 32
                                continue 
                            s = floor32(_2295) >> 2
                            t = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                            while s:
                                uint256(stor[t]) = !(test266151307() * 256^s) and uint256(stor[t])
                                s = s + (8 * -s + 15 / 32) + (-1 * s * s + 15 / 32) + 8
                                t = (s + 15 / 32) + t
                                continue 
                            s = sha3(sha3(s << 192, sha3(agentCount + 1 << 192, 0) + 4)) + ((floor32(_2295) >> 2) + Mask(250, 3, None + -(floor32(_2295) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_2295) >> 2) + 9) >> 3)
                            while sha3(sha3(s << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][s << 192].field_0) + 3 / 4) > s:
                                uint64(stor[s]) = 0
                                s = s + 1
                                continue 
                            s = sha3(sha3(s << 192, sha3(agentCount + 1 << 192, 0) + 4)) + ((floor32(_2295) >> 2) + Mask(250, 3, None + -(floor32(_2295) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_2295) >> 2) + 9) >> 3) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][s << 192].field_0) + 3 / 4) + (-1 * (floor32(_2295) >> 2) + Mask(250, 3, None + -(floor32(_2295) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_2295) >> 2) + 9) >> 3) + 1
                            continue 
                        _2257 = msize
                        mem[msize] = uint64(uint64(stor3.field_192) + 1)
                        mem[64] = _2257 + (32 * uint64(uint64(stor3.field_192) + 1)) + 32
                        mem[0] = uint64(idx)
                        mem[32] = sha3(agentCount + 1 << 192, 0) + 4
                        _2357 = mem[_2257]
                        uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[_2257]
                        mem[0] = sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)
                        if not _2357:
                            s = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                            while sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) + 3 / 4) > s:
                                uint64(stor[s]) = 0
                                s = s + 1
                                continue 
                        else:
                            t = 0
                            s = _2257 + 32
                            while _2257 + (32 * _2357) + 32 > s:
                                uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[s + 24 len 8] * 256^t or !(test266151307() * 256^t) and uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0)
                                t = t + (8 * -t + 15 / 32) + (-1 * t * t + 15 / 32) + 8
                                s = s + 32
                                continue 
                            s = floor32(_2357) >> 2
                            t = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                            while s:
                                uint256(stor[t]) = !(test266151307() * 256^s) and uint256(stor[t])
                                s = s + (8 * -s + 15 / 32) + (-1 * s * s + 15 / 32) + 8
                                t = (s + 15 / 32) + t
                                continue 
                            s = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + ((floor32(_2357) >> 2) + Mask(250, 3, None + -(floor32(_2357) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_2357) >> 2) + 9) >> 3)
                            while sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) + 3 / 4) > s:
                                uint64(stor[s]) = 0
                                s = s + 1
                                continue 
                        idx = idx + 1
                        continue 
                    mem[32] = 0
                    _2187 = mem[64]
                    mem[mem[64]] = uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_8)
                    mem[mem[64] + 32] = uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_320)
                    mem[mem[64] + 64] = uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_256)
                    mem[mem[64] + 128] = Mask(8, 248, uint8(stor0[uint64(stor3.field_64) + 1 << 192].field_0))
                    mem[mem[64] + 96] = 160
                    mem[mem[64] + 160] = stor0[uint64(stor3.field_64) + 1 << 192][3].length
                    mem[mem[64] + 192] = uint256(stor0[uint64(stor3.field_64) + 1 << 192][3].field_0)
                    idx = mem[64] + 192
                    s = 0
                    while mem[64] + stor0[uint64(stor3.field_64) + 1 << 192][3].length + 192 > idx + 32:
                        mem[idx + 32] = uint256(stor0[uint64(stor3.field_64) + 1 << 192][s + 3].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0x9d5b12ec: mem[mem[64] len _2187 + stor0[uint64(stor3.field_64) + 1 << 192][3].length + (floor32(stor0[uint64(stor3.field_64) + 1 << 192][3].length - 1) + -stor0[uint64(stor3.field_64) + 1 << 192][3].length + 32 % 32) + -mem[64] + 192]
                else:
                    uint64(stor2.field_0) = uint64(15564440312192434176 xor uint64(stor2.field_0))
                    uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_72) = uint64((uint64(stor2.field_0) % 346000) + 95000)
                    mem[0] = uint64(agentCount + 1)
                    mem[32] = 0
                    uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_136) = 0
                    idx = 1
                    while uint64(idx) <= uint64(stor3.field_192):
                        _2192 = mem[64]
                        if msize < mem[64]:
                            mem[mem[64]] = uint64(uint64(stor3.field_192) + 1)
                            mem[64] = mem[64] + (32 * uint64(uint64(stor3.field_192) + 1)) + 32
                            mem[0] = uint64(idx)
                            mem[32] = sha3(agentCount + 1 << 192, 0) + 4
                            _2300 = mem[_2192]
                            uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[_2192]
                            mem[0] = sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)
                            if not _2300:
                                s = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                                while sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) + 3 / 4) > s:
                                    uint64(stor[s]) = 0
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                            t = 0
                            s = _2192 + 32
                            while _2192 + (32 * _2300) + 32 > s:
                                uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[s + 24 len 8] * 256^t or !(test266151307() * 256^t) and uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0)
                                t = t + (8 * -t + 15 / 32) + (-1 * t * t + 15 / 32) + 8
                                s = s + 32
                                continue 
                            s = floor32(_2300) >> 2
                            t = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                            while s:
                                uint256(stor[t]) = !(test266151307() * 256^s) and uint256(stor[t])
                                s = s + (8 * -s + 15 / 32) + (-1 * s * s + 15 / 32) + 8
                                t = (s + 15 / 32) + t
                                continue 
                            s = sha3(sha3(s << 192, sha3(agentCount + 1 << 192, 0) + 4)) + ((floor32(_2300) >> 2) + Mask(250, 3, None + -(floor32(_2300) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_2300) >> 2) + 9) >> 3)
                            while sha3(sha3(s << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][s << 192].field_0) + 3 / 4) > s:
                                uint64(stor[s]) = 0
                                s = s + 1
                                continue 
                            s = sha3(sha3(s << 192, sha3(agentCount + 1 << 192, 0) + 4)) + ((floor32(_2300) >> 2) + Mask(250, 3, None + -(floor32(_2300) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_2300) >> 2) + 9) >> 3) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][s << 192].field_0) + 3 / 4) + (-1 * (floor32(_2300) >> 2) + Mask(250, 3, None + -(floor32(_2300) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_2300) >> 2) + 9) >> 3) + 1
                            continue 
                        _2259 = msize
                        mem[msize] = uint64(uint64(stor3.field_192) + 1)
                        mem[64] = _2259 + (32 * uint64(uint64(stor3.field_192) + 1)) + 32
                        mem[0] = uint64(idx)
                        mem[32] = sha3(agentCount + 1 << 192, 0) + 4
                        _2362 = mem[_2259]
                        uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[_2259]
                        mem[0] = sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)
                        if not _2362:
                            s = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                            while sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) + 3 / 4) > s:
                                uint64(stor[s]) = 0
                                s = s + 1
                                continue 
                        else:
                            t = 0
                            s = _2259 + 32
                            while _2259 + (32 * _2362) + 32 > s:
                                uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[s + 24 len 8] * 256^t or !(test266151307() * 256^t) and uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0)
                                t = t + (8 * -t + 15 / 32) + (-1 * t * t + 15 / 32) + 8
                                s = s + 32
                                continue 
                            s = floor32(_2362) >> 2
                            t = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                            while s:
                                uint256(stor[t]) = !(test266151307() * 256^s) and uint256(stor[t])
                                s = s + (8 * -s + 15 / 32) + (-1 * s * s + 15 / 32) + 8
                                t = (s + 15 / 32) + t
                                continue 
                            s = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + ((floor32(_2362) >> 2) + Mask(250, 3, None + -(floor32(_2362) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_2362) >> 2) + 9) >> 3)
                            while sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) + 3 / 4) > s:
                                uint64(stor[s]) = 0
                                s = s + 1
                                continue 
                        idx = idx + 1
                        continue 
                    mem[32] = 0
                    _2191 = mem[64]
                    mem[mem[64]] = uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_8)
                    mem[mem[64] + 32] = uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_320)
                    mem[mem[64] + 64] = uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_256)
                    mem[mem[64] + 128] = Mask(8, 248, uint8(stor0[uint64(stor3.field_64) + 1 << 192].field_0))
                    mem[mem[64] + 96] = 160
                    mem[mem[64] + 160] = stor0[uint64(stor3.field_64) + 1 << 192][3].length
                    mem[mem[64] + 192] = uint256(stor0[uint64(stor3.field_64) + 1 << 192][3].field_0)
                    idx = mem[64] + 192
                    s = 0
                    while mem[64] + stor0[uint64(stor3.field_64) + 1 << 192][3].length + 192 > idx + 32:
                        mem[idx + 32] = uint256(stor0[uint64(stor3.field_64) + 1 << 192][s + 3].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0x9d5b12ec: mem[mem[64] len _2191 + stor0[uint64(stor3.field_64) + 1 << 192][3].length + (floor32(stor0[uint64(stor3.field_64) + 1 << 192][3].length - 1) + -stor0[uint64(stor3.field_64) + 1 << 192][3].length + 32 % 32) + -mem[64] + 192]
    else:
        idx = uint256(stor1[arg1 << 192].field_256) + 4 / 4
        while uint256(stor1[arg1 << 192].field_256) + 3 / 4 > idx:
            uint256(stor1[arg1 << 192][idx + 1].field_0) = 0
            idx = idx + 1
            continue 
        uint256(stor[Mask(254, 0, stor1[arg1 << 192].field_258) + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg1')), ('name', 'stor1', 1)))].field_0) = uint256(stor[Mask(254, 0, stor1[arg1 << 192].field_258) + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg1')), ('name', 'stor1', 1)))].field_0) and !(test266151307() * 256^(8 * stor1[arg1 << 192].field_256 % 4)) or 256^(8 * stor1[arg1 << 192].field_256 % 4) * uint64(agentCount + 1)
        uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_384) = 0
        address(stor0[uint64(stor3.field_64) + 1 << 192].field_512) = msg.sender
        uint256(stor0[uint64(stor3.field_64) + 1 << 192].field_768) = (2 * arg3.length) + 1
        s = 0
        idx = 128
        while arg3.length + 128 > idx:
            uint256(stor0[uint64(stor3.field_64) + 1 << 192][s + 3].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        if stor0[uint64(stor3.field_64) + 1 << 192][3].length + 31 / 32 <= Mask(251, 0, arg3.length + 31) >> 5:
            if uint64(stor4.field_64) >= uint64(stor4.field_0):
                uint8(stor0[uint64(stor3.field_64) + 1 << 192].field_0) = 83
                uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_72) = 0
                stor0[uint64(stor3.field_64) + 1 << 192].field_256 % 1 = 0
                mem[0] = uint64(agentCount + 1)
                mem[32] = 0
                uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_136) = 0
                idx = 1
                while uint64(idx) <= uint64(stor3.field_192):
                    _2220 = mem[64]
                    if msize < mem[64]:
                        mem[mem[64]] = uint64(uint64(stor3.field_192) + 1)
                        mem[64] = mem[64] + (32 * uint64(uint64(stor3.field_192) + 1)) + 32
                        mem[0] = uint64(idx)
                        mem[32] = sha3(agentCount + 1 << 192, 0) + 4
                        _2320 = mem[_2220]
                        uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[_2220]
                        mem[0] = sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)
                        if not _2320:
                            s = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                            while sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) + 3 / 4) > s:
                                uint64(stor[s]) = 0
                                s = s + 1
                                continue 
                            idx = idx + 1
                            continue 
                        t = 0
                        s = _2220 + 32
                        while _2220 + (32 * _2320) + 32 > s:
                            uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[s + 24 len 8] * 256^t or !(test266151307() * 256^t) and uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0)
                            t = t + (8 * -t + 15 / 32) + (-1 * t * t + 15 / 32) + 8
                            s = s + 32
                            continue 
                        s = floor32(_2320) >> 2
                        t = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                        while s:
                            uint256(stor[t]) = !(test266151307() * 256^s) and uint256(stor[t])
                            s = s + (8 * -s + 15 / 32) + (-1 * s * s + 15 / 32) + 8
                            t = (s + 15 / 32) + t
                            continue 
                        s = sha3(sha3(s << 192, sha3(agentCount + 1 << 192, 0) + 4)) + ((floor32(_2320) >> 2) + Mask(250, 3, None + -(floor32(_2320) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_2320) >> 2) + 9) >> 3)
                        while sha3(sha3(s << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][s << 192].field_0) + 3 / 4) > s:
                            uint64(stor[s]) = 0
                            s = s + 1
                            continue 
                        s = sha3(sha3(s << 192, sha3(agentCount + 1 << 192, 0) + 4)) + ((floor32(_2320) >> 2) + Mask(250, 3, None + -(floor32(_2320) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_2320) >> 2) + 9) >> 3) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][s << 192].field_0) + 3 / 4) + (-1 * (floor32(_2320) >> 2) + Mask(250, 3, None + -(floor32(_2320) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_2320) >> 2) + 9) >> 3) + 1
                        continue 
                    _2273 = msize
                    mem[msize] = uint64(uint64(stor3.field_192) + 1)
                    mem[64] = _2273 + (32 * uint64(uint64(stor3.field_192) + 1)) + 32
                    mem[0] = uint64(idx)
                    mem[32] = sha3(agentCount + 1 << 192, 0) + 4
                    _2382 = mem[_2273]
                    uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[_2273]
                    mem[0] = sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)
                    if not _2382:
                        s = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                        while sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) + 3 / 4) > s:
                            uint64(stor[s]) = 0
                            s = s + 1
                            continue 
                    else:
                        t = 0
                        s = _2273 + 32
                        while _2273 + (32 * _2382) + 32 > s:
                            uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[s + 24 len 8] * 256^t or !(test266151307() * 256^t) and uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0)
                            t = t + (8 * -t + 15 / 32) + (-1 * t * t + 15 / 32) + 8
                            s = s + 32
                            continue 
                        s = floor32(_2382) >> 2
                        t = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                        while s:
                            uint256(stor[t]) = !(test266151307() * 256^s) and uint256(stor[t])
                            s = s + (8 * -s + 15 / 32) + (-1 * s * s + 15 / 32) + 8
                            t = (s + 15 / 32) + t
                            continue 
                        s = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + ((floor32(_2382) >> 2) + Mask(250, 3, None + -(floor32(_2382) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_2382) >> 2) + 9) >> 3)
                        while sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) + 3 / 4) > s:
                            uint64(stor[s]) = 0
                            s = s + 1
                            continue 
                    idx = idx + 1
                    continue 
                mem[32] = 0
                _2219 = mem[64]
                mem[mem[64]] = uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_8)
                mem[mem[64] + 32] = uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_320)
                mem[mem[64] + 64] = uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_256)
                mem[mem[64] + 128] = Mask(8, 248, uint8(stor0[uint64(stor3.field_64) + 1 << 192].field_0))
                mem[mem[64] + 96] = 160
                mem[mem[64] + 160] = stor0[uint64(stor3.field_64) + 1 << 192][3].length
                mem[mem[64] + 192] = uint256(stor0[uint64(stor3.field_64) + 1 << 192][3].field_0)
                idx = mem[64] + 192
                s = 0
                while mem[64] + stor0[uint64(stor3.field_64) + 1 << 192][3].length + 192 > idx + 32:
                    mem[idx + 32] = uint256(stor0[uint64(stor3.field_64) + 1 << 192][s + 3].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0x9d5b12ec: mem[mem[64] len _2219 + stor0[uint64(stor3.field_64) + 1 << 192][3].length + (floor32(stor0[uint64(stor3.field_64) + 1 << 192][3].length - 1) + -stor0[uint64(stor3.field_64) + 1 << 192][3].length + 32 % 32) + -mem[64] + 192]
            else:
                uint64(stor4.field_64) = uint64(uint64(stor4.field_64) + 1)
                sub_017b3285 = uint64(sub_017b3285 + 1)
                uint8(stor0[uint64(stor3.field_64) + 1 << 192].field_0) = 73
                stor2.field_0 % 9223372036854775808 = stor2.field_1 % 9223372036854775808
                bool(stor2.field_63) = 0
                if bool(stor2.field_0) != 1:
                    uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_72) = uint64((uint64(stor2.field_0) % 346000) + 95000)
                    mem[0] = uint64(agentCount + 1)
                    mem[32] = 0
                    uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_136) = 0
                    idx = 1
                    while uint64(idx) <= uint64(stor3.field_192):
                        _2224 = mem[64]
                        if msize < mem[64]:
                            mem[mem[64]] = uint64(uint64(stor3.field_192) + 1)
                            mem[64] = mem[64] + (32 * uint64(uint64(stor3.field_192) + 1)) + 32
                            mem[0] = uint64(idx)
                            mem[32] = sha3(agentCount + 1 << 192, 0) + 4
                            _2325 = mem[_2224]
                            uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[_2224]
                            mem[0] = sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)
                            if not _2325:
                                s = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                                while sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) + 3 / 4) > s:
                                    uint64(stor[s]) = 0
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                            t = 0
                            s = _2224 + 32
                            while _2224 + (32 * _2325) + 32 > s:
                                uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[s + 24 len 8] * 256^t or !(test266151307() * 256^t) and uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0)
                                t = t + (8 * -t + 15 / 32) + (-1 * t * t + 15 / 32) + 8
                                s = s + 32
                                continue 
                            s = floor32(_2325) >> 2
                            t = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                            while s:
                                uint256(stor[t]) = !(test266151307() * 256^s) and uint256(stor[t])
                                s = s + (8 * -s + 15 / 32) + (-1 * s * s + 15 / 32) + 8
                                t = (s + 15 / 32) + t
                                continue 
                            s = sha3(sha3(s << 192, sha3(agentCount + 1 << 192, 0) + 4)) + ((floor32(_2325) >> 2) + Mask(250, 3, None + -(floor32(_2325) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_2325) >> 2) + 9) >> 3)
                            while sha3(sha3(s << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][s << 192].field_0) + 3 / 4) > s:
                                uint64(stor[s]) = 0
                                s = s + 1
                                continue 
                            s = sha3(sha3(s << 192, sha3(agentCount + 1 << 192, 0) + 4)) + ((floor32(_2325) >> 2) + Mask(250, 3, None + -(floor32(_2325) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_2325) >> 2) + 9) >> 3) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][s << 192].field_0) + 3 / 4) + (-1 * (floor32(_2325) >> 2) + Mask(250, 3, None + -(floor32(_2325) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_2325) >> 2) + 9) >> 3) + 1
                            continue 
                        _2275 = msize
                        mem[msize] = uint64(uint64(stor3.field_192) + 1)
                        mem[64] = _2275 + (32 * uint64(uint64(stor3.field_192) + 1)) + 32
                        mem[0] = uint64(idx)
                        mem[32] = sha3(agentCount + 1 << 192, 0) + 4
                        _2387 = mem[_2275]
                        uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[_2275]
                        mem[0] = sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)
                        if not _2387:
                            s = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                            while sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) + 3 / 4) > s:
                                uint64(stor[s]) = 0
                                s = s + 1
                                continue 
                        else:
                            t = 0
                            s = _2275 + 32
                            while _2275 + (32 * _2387) + 32 > s:
                                uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[s + 24 len 8] * 256^t or !(test266151307() * 256^t) and uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0)
                                t = t + (8 * -t + 15 / 32) + (-1 * t * t + 15 / 32) + 8
                                s = s + 32
                                continue 
                            s = floor32(_2387) >> 2
                            t = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                            while s:
                                uint256(stor[t]) = !(test266151307() * 256^s) and uint256(stor[t])
                                s = s + (8 * -s + 15 / 32) + (-1 * s * s + 15 / 32) + 8
                                t = (s + 15 / 32) + t
                                continue 
                            s = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + ((floor32(_2387) >> 2) + Mask(250, 3, None + -(floor32(_2387) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_2387) >> 2) + 9) >> 3)
                            while sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) + 3 / 4) > s:
                                uint64(stor[s]) = 0
                                s = s + 1
                                continue 
                        idx = idx + 1
                        continue 
                    mem[32] = 0
                    _2223 = mem[64]
                    mem[mem[64]] = uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_8)
                    mem[mem[64] + 32] = uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_320)
                    mem[mem[64] + 64] = uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_256)
                    mem[mem[64] + 128] = Mask(8, 248, uint8(stor0[uint64(stor3.field_64) + 1 << 192].field_0))
                    mem[mem[64] + 96] = 160
                    mem[mem[64] + 160] = stor0[uint64(stor3.field_64) + 1 << 192][3].length
                    mem[mem[64] + 192] = uint256(stor0[uint64(stor3.field_64) + 1 << 192][3].field_0)
                    idx = mem[64] + 192
                    s = 0
                    while mem[64] + stor0[uint64(stor3.field_64) + 1 << 192][3].length + 192 > idx + 32:
                        mem[idx + 32] = uint256(stor0[uint64(stor3.field_64) + 1 << 192][s + 3].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0x9d5b12ec: mem[mem[64] len _2223 + stor0[uint64(stor3.field_64) + 1 << 192][3].length + (floor32(stor0[uint64(stor3.field_64) + 1 << 192][3].length - 1) + -stor0[uint64(stor3.field_64) + 1 << 192][3].length + 32 % 32) + -mem[64] + 192]
                else:
                    uint64(stor2.field_0) = uint64(15564440312192434176 xor uint64(stor2.field_0))
                    uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_72) = uint64((uint64(stor2.field_0) % 346000) + 95000)
                    mem[0] = uint64(agentCount + 1)
                    mem[32] = 0
                    uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_136) = 0
                    idx = 1
                    while uint64(idx) <= uint64(stor3.field_192):
                        _2228 = mem[64]
                        if msize < mem[64]:
                            mem[mem[64]] = uint64(uint64(stor3.field_192) + 1)
                            mem[64] = mem[64] + (32 * uint64(uint64(stor3.field_192) + 1)) + 32
                            mem[0] = uint64(idx)
                            mem[32] = sha3(agentCount + 1 << 192, 0) + 4
                            _2330 = mem[_2228]
                            uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[_2228]
                            mem[0] = sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)
                            if not _2330:
                                s = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                                while sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) + 3 / 4) > s:
                                    uint64(stor[s]) = 0
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                            t = 0
                            s = _2228 + 32
                            while _2228 + (32 * _2330) + 32 > s:
                                uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[s + 24 len 8] * 256^t or !(test266151307() * 256^t) and uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0)
                                t = t + (8 * -t + 15 / 32) + (-1 * t * t + 15 / 32) + 8
                                s = s + 32
                                continue 
                            s = floor32(_2330) >> 2
                            t = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                            while s:
                                uint256(stor[t]) = !(test266151307() * 256^s) and uint256(stor[t])
                                s = s + (8 * -s + 15 / 32) + (-1 * s * s + 15 / 32) + 8
                                t = (s + 15 / 32) + t
                                continue 
                            s = sha3(sha3(s << 192, sha3(agentCount + 1 << 192, 0) + 4)) + ((floor32(_2330) >> 2) + Mask(250, 3, None + -(floor32(_2330) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_2330) >> 2) + 9) >> 3)
                            while sha3(sha3(s << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][s << 192].field_0) + 3 / 4) > s:
                                uint64(stor[s]) = 0
                                s = s + 1
                                continue 
                            s = sha3(sha3(s << 192, sha3(agentCount + 1 << 192, 0) + 4)) + ((floor32(_2330) >> 2) + Mask(250, 3, None + -(floor32(_2330) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_2330) >> 2) + 9) >> 3) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][s << 192].field_0) + 3 / 4) + (-1 * (floor32(_2330) >> 2) + Mask(250, 3, None + -(floor32(_2330) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_2330) >> 2) + 9) >> 3) + 1
                            continue 
                        _2277 = msize
                        mem[msize] = uint64(uint64(stor3.field_192) + 1)
                        mem[64] = _2277 + (32 * uint64(uint64(stor3.field_192) + 1)) + 32
                        mem[0] = uint64(idx)
                        mem[32] = sha3(agentCount + 1 << 192, 0) + 4
                        _2392 = mem[_2277]
                        uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[_2277]
                        mem[0] = sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)
                        if not _2392:
                            s = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                            while sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) + 3 / 4) > s:
                                uint64(stor[s]) = 0
                                s = s + 1
                                continue 
                        else:
                            t = 0
                            s = _2277 + 32
                            while _2277 + (32 * _2392) + 32 > s:
                                uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[s + 24 len 8] * 256^t or !(test266151307() * 256^t) and uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0)
                                t = t + (8 * -t + 15 / 32) + (-1 * t * t + 15 / 32) + 8
                                s = s + 32
                                continue 
                            s = floor32(_2392) >> 2
                            t = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                            while s:
                                uint256(stor[t]) = !(test266151307() * 256^s) and uint256(stor[t])
                                s = s + (8 * -s + 15 / 32) + (-1 * s * s + 15 / 32) + 8
                                t = (s + 15 / 32) + t
                                continue 
                            s = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + ((floor32(_2392) >> 2) + Mask(250, 3, None + -(floor32(_2392) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_2392) >> 2) + 9) >> 3)
                            while sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) + 3 / 4) > s:
                                uint64(stor[s]) = 0
                                s = s + 1
                                continue 
                        idx = idx + 1
                        continue 
                    mem[32] = 0
                    _2227 = mem[64]
                    mem[mem[64]] = uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_8)
                    mem[mem[64] + 32] = uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_320)
                    mem[mem[64] + 64] = uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_256)
                    mem[mem[64] + 128] = Mask(8, 248, uint8(stor0[uint64(stor3.field_64) + 1 << 192].field_0))
                    mem[mem[64] + 96] = 160
                    mem[mem[64] + 160] = stor0[uint64(stor3.field_64) + 1 << 192][3].length
                    mem[mem[64] + 192] = uint256(stor0[uint64(stor3.field_64) + 1 << 192][3].field_0)
                    idx = mem[64] + 192
                    s = 0
                    while mem[64] + stor0[uint64(stor3.field_64) + 1 << 192][3].length + 192 > idx + 32:
                        mem[idx + 32] = uint256(stor0[uint64(stor3.field_64) + 1 << 192][s + 3].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0x9d5b12ec: mem[mem[64] len _2227 + stor0[uint64(stor3.field_64) + 1 << 192][3].length + (floor32(stor0[uint64(stor3.field_64) + 1 << 192][3].length - 1) + -stor0[uint64(stor3.field_64) + 1 << 192][3].length + 32 % 32) + -mem[64] + 192]
        else:
            uint256(stor[('array', 3, ('map', ('mask_shl', 64, 0, 192, ('add', 1, ('type', 64, ('field', 64, ('stor', ('name', 'stor3', 3)))))), ('name', 'stor0', 0))) + (Mask(251, 0, arg3.length + 31) >> 5)].field_0) = 0
            idx = (Mask(251, 0, arg3.length + 31) >> 5) + 1
            while stor0[uint64(stor3.field_64) + 1 << 192][3].length + 31 / 32 > idx:
                uint256(stor0[uint64(stor3.field_64) + 1 << 192][idx + 3].field_0) = 0
                idx = idx + 1
                continue 
            if uint64(stor4.field_64) >= uint64(stor4.field_0):
                uint8(stor0[uint64(stor3.field_64) + 1 << 192].field_0) = 83
                uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_72) = 0
                stor0[uint64(stor3.field_64) + 1 << 192].field_256 % 1 = 0
                mem[0] = uint64(agentCount + 1)
                mem[32] = 0
                uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_136) = 0
                idx = 1
                while uint64(idx) <= uint64(stor3.field_192):
                    _2527 = mem[64]
                    if msize < mem[64]:
                        mem[mem[64]] = uint64(uint64(stor3.field_192) + 1)
                        mem[64] = mem[64] + (32 * uint64(uint64(stor3.field_192) + 1)) + 32
                        mem[0] = uint64(idx)
                        mem[32] = sha3(agentCount + 1 << 192, 0) + 4
                        _2564 = mem[_2527]
                        uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[_2527]
                        mem[0] = sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)
                        if not _2564:
                            s = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                            while sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) + 3 / 4) > s:
                                uint64(stor[s]) = 0
                                s = s + 1
                                continue 
                            idx = idx + 1
                            continue 
                        t = 0
                        s = _2527 + 32
                        while _2527 + (32 * _2564) + 32 > s:
                            uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[s + 24 len 8] * 256^t or !(test266151307() * 256^t) and uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0)
                            t = t + (8 * -t + 15 / 32) + (-1 * t * t + 15 / 32) + 8
                            s = s + 32
                            continue 
                        s = floor32(_2564) >> 2
                        t = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                        while s:
                            uint256(stor[t]) = !(test266151307() * 256^s) and uint256(stor[t])
                            s = s + (8 * -s + 15 / 32) + (-1 * s * s + 15 / 32) + 8
                            t = (s + 15 / 32) + t
                            continue 
                        s = sha3(sha3(s << 192, sha3(agentCount + 1 << 192, 0) + 4)) + ((floor32(_2564) >> 2) + Mask(250, 3, None + -(floor32(_2564) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_2564) >> 2) + 9) >> 3)
                        while sha3(sha3(s << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][s << 192].field_0) + 3 / 4) > s:
                            uint64(stor[s]) = 0
                            s = s + 1
                            continue 
                        s = sha3(sha3(s << 192, sha3(agentCount + 1 << 192, 0) + 4)) + ((floor32(_2564) >> 2) + Mask(250, 3, None + -(floor32(_2564) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_2564) >> 2) + 9) >> 3) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][s << 192].field_0) + 3 / 4) + (-1 * (floor32(_2564) >> 2) + Mask(250, 3, None + -(floor32(_2564) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_2564) >> 2) + 9) >> 3) + 1
                        continue 
                    _2553 = msize
                    mem[msize] = uint64(uint64(stor3.field_192) + 1)
                    mem[64] = _2553 + (32 * uint64(uint64(stor3.field_192) + 1)) + 32
                    mem[0] = uint64(idx)
                    mem[32] = sha3(agentCount + 1 << 192, 0) + 4
                    _2579 = mem[_2553]
                    uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[_2553]
                    mem[0] = sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)
                    if not _2579:
                        s = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                        while sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) + 3 / 4) > s:
                            uint64(stor[s]) = 0
                            s = s + 1
                            continue 
                    else:
                        t = 0
                        s = _2553 + 32
                        while _2553 + (32 * _2579) + 32 > s:
                            uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[s + 24 len 8] * 256^t or !(test266151307() * 256^t) and uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0)
                            t = t + (8 * -t + 15 / 32) + (-1 * t * t + 15 / 32) + 8
                            s = s + 32
                            continue 
                        s = floor32(_2579) >> 2
                        t = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                        while s:
                            uint256(stor[t]) = !(test266151307() * 256^s) and uint256(stor[t])
                            s = s + (8 * -s + 15 / 32) + (-1 * s * s + 15 / 32) + 8
                            t = (s + 15 / 32) + t
                            continue 
                        s = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + ((floor32(_2579) >> 2) + Mask(250, 3, None + -(floor32(_2579) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_2579) >> 2) + 9) >> 3)
                        while sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) + 3 / 4) > s:
                            uint64(stor[s]) = 0
                            s = s + 1
                            continue 
                    idx = idx + 1
                    continue 
                mem[32] = 0
                _2526 = mem[64]
                mem[mem[64]] = uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_8)
                mem[mem[64] + 32] = uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_320)
                mem[mem[64] + 64] = uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_256)
                mem[mem[64] + 128] = Mask(8, 248, uint8(stor0[uint64(stor3.field_64) + 1 << 192].field_0))
                mem[mem[64] + 96] = 160
                mem[mem[64] + 160] = stor0[uint64(stor3.field_64) + 1 << 192][3].length
                mem[mem[64] + 192] = uint256(stor0[uint64(stor3.field_64) + 1 << 192][3].field_0)
                idx = mem[64] + 192
                s = 0
                while mem[64] + stor0[uint64(stor3.field_64) + 1 << 192][3].length + 192 > idx + 32:
                    mem[idx + 32] = uint256(stor0[uint64(stor3.field_64) + 1 << 192][s + 3].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0x9d5b12ec: mem[mem[64] len _2526 + stor0[uint64(stor3.field_64) + 1 << 192][3].length + (floor32(stor0[uint64(stor3.field_64) + 1 << 192][3].length - 1) + -stor0[uint64(stor3.field_64) + 1 << 192][3].length + 32 % 32) + -mem[64] + 192]
            else:
                uint64(stor4.field_64) = uint64(uint64(stor4.field_64) + 1)
                sub_017b3285 = uint64(sub_017b3285 + 1)
                uint8(stor0[uint64(stor3.field_64) + 1 << 192].field_0) = 73
                stor2.field_0 % 9223372036854775808 = stor2.field_1 % 9223372036854775808
                bool(stor2.field_63) = 0
                if bool(stor2.field_0) != 1:
                    uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_72) = uint64((uint64(stor2.field_0) % 346000) + 95000)
                    mem[0] = uint64(agentCount + 1)
                    mem[32] = 0
                    uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_136) = 0
                    idx = 1
                    while uint64(idx) <= uint64(stor3.field_192):
                        _2531 = mem[64]
                        if msize < mem[64]:
                            mem[mem[64]] = uint64(uint64(stor3.field_192) + 1)
                            mem[64] = mem[64] + (32 * uint64(uint64(stor3.field_192) + 1)) + 32
                            mem[0] = uint64(idx)
                            mem[32] = sha3(agentCount + 1 << 192, 0) + 4
                            _2569 = mem[_2531]
                            uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[_2531]
                            mem[0] = sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)
                            if not _2569:
                                s = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                                while sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) + 3 / 4) > s:
                                    uint64(stor[s]) = 0
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                            t = 0
                            s = _2531 + 32
                            while _2531 + (32 * _2569) + 32 > s:
                                uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[s + 24 len 8] * 256^t or !(test266151307() * 256^t) and uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0)
                                t = t + (8 * -t + 15 / 32) + (-1 * t * t + 15 / 32) + 8
                                s = s + 32
                                continue 
                            s = floor32(_2569) >> 2
                            t = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                            while s:
                                uint256(stor[t]) = !(test266151307() * 256^s) and uint256(stor[t])
                                s = s + (8 * -s + 15 / 32) + (-1 * s * s + 15 / 32) + 8
                                t = (s + 15 / 32) + t
                                continue 
                            s = sha3(sha3(s << 192, sha3(agentCount + 1 << 192, 0) + 4)) + ((floor32(_2569) >> 2) + Mask(250, 3, None + -(floor32(_2569) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_2569) >> 2) + 9) >> 3)
                            while sha3(sha3(s << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][s << 192].field_0) + 3 / 4) > s:
                                uint64(stor[s]) = 0
                                s = s + 1
                                continue 
                            s = sha3(sha3(s << 192, sha3(agentCount + 1 << 192, 0) + 4)) + ((floor32(_2569) >> 2) + Mask(250, 3, None + -(floor32(_2569) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_2569) >> 2) + 9) >> 3) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][s << 192].field_0) + 3 / 4) + (-1 * (floor32(_2569) >> 2) + Mask(250, 3, None + -(floor32(_2569) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_2569) >> 2) + 9) >> 3) + 1
                            continue 
                        _2555 = msize
                        mem[msize] = uint64(uint64(stor3.field_192) + 1)
                        mem[64] = _2555 + (32 * uint64(uint64(stor3.field_192) + 1)) + 32
                        mem[0] = uint64(idx)
                        mem[32] = sha3(agentCount + 1 << 192, 0) + 4
                        _2584 = mem[_2555]
                        uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[_2555]
                        mem[0] = sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)
                        if not _2584:
                            s = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                            while sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) + 3 / 4) > s:
                                uint64(stor[s]) = 0
                                s = s + 1
                                continue 
                        else:
                            t = 0
                            s = _2555 + 32
                            while _2555 + (32 * _2584) + 32 > s:
                                uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[s + 24 len 8] * 256^t or !(test266151307() * 256^t) and uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0)
                                t = t + (8 * -t + 15 / 32) + (-1 * t * t + 15 / 32) + 8
                                s = s + 32
                                continue 
                            s = floor32(_2584) >> 2
                            t = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                            while s:
                                uint256(stor[t]) = !(test266151307() * 256^s) and uint256(stor[t])
                                s = s + (8 * -s + 15 / 32) + (-1 * s * s + 15 / 32) + 8
                                t = (s + 15 / 32) + t
                                continue 
                            s = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + ((floor32(_2584) >> 2) + Mask(250, 3, None + -(floor32(_2584) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_2584) >> 2) + 9) >> 3)
                            while sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) + 3 / 4) > s:
                                uint64(stor[s]) = 0
                                s = s + 1
                                continue 
                        idx = idx + 1
                        continue 
                    mem[32] = 0
                    _2530 = mem[64]
                    mem[mem[64]] = uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_8)
                    mem[mem[64] + 32] = uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_320)
                    mem[mem[64] + 64] = uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_256)
                    mem[mem[64] + 128] = Mask(8, 248, uint8(stor0[uint64(stor3.field_64) + 1 << 192].field_0))
                    mem[mem[64] + 96] = 160
                    mem[mem[64] + 160] = stor0[uint64(stor3.field_64) + 1 << 192][3].length
                    mem[mem[64] + 192] = uint256(stor0[uint64(stor3.field_64) + 1 << 192][3].field_0)
                    idx = mem[64] + 192
                    s = 0
                    while mem[64] + stor0[uint64(stor3.field_64) + 1 << 192][3].length + 192 > idx + 32:
                        mem[idx + 32] = uint256(stor0[uint64(stor3.field_64) + 1 << 192][s + 3].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0x9d5b12ec: mem[mem[64] len _2530 + stor0[uint64(stor3.field_64) + 1 << 192][3].length + (floor32(stor0[uint64(stor3.field_64) + 1 << 192][3].length - 1) + -stor0[uint64(stor3.field_64) + 1 << 192][3].length + 32 % 32) + -mem[64] + 192]
                else:
                    uint64(stor2.field_0) = uint64(15564440312192434176 xor uint64(stor2.field_0))
                    uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_72) = uint64((uint64(stor2.field_0) % 346000) + 95000)
                    mem[0] = uint64(agentCount + 1)
                    mem[32] = 0
                    uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_136) = 0
                    idx = 1
                    while uint64(idx) <= uint64(stor3.field_192):
                        _2535 = mem[64]
                        if msize < mem[64]:
                            mem[mem[64]] = uint64(uint64(stor3.field_192) + 1)
                            mem[64] = mem[64] + (32 * uint64(uint64(stor3.field_192) + 1)) + 32
                            mem[0] = uint64(idx)
                            mem[32] = sha3(agentCount + 1 << 192, 0) + 4
                            _2574 = mem[_2535]
                            uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[_2535]
                            mem[0] = sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)
                            if not _2574:
                                s = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                                while sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) + 3 / 4) > s:
                                    uint64(stor[s]) = 0
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                continue 
                            t = 0
                            s = _2535 + 32
                            while _2535 + (32 * _2574) + 32 > s:
                                uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[s + 24 len 8] * 256^t or !(test266151307() * 256^t) and uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0)
                                t = t + (8 * -t + 15 / 32) + (-1 * t * t + 15 / 32) + 8
                                s = s + 32
                                continue 
                            s = floor32(_2574) >> 2
                            t = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                            while s:
                                uint256(stor[t]) = !(test266151307() * 256^s) and uint256(stor[t])
                                s = s + (8 * -s + 15 / 32) + (-1 * s * s + 15 / 32) + 8
                                t = (s + 15 / 32) + t
                                continue 
                            s = sha3(sha3(s << 192, sha3(agentCount + 1 << 192, 0) + 4)) + ((floor32(_2574) >> 2) + Mask(250, 3, None + -(floor32(_2574) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_2574) >> 2) + 9) >> 3)
                            while sha3(sha3(s << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][s << 192].field_0) + 3 / 4) > s:
                                uint64(stor[s]) = 0
                                s = s + 1
                                continue 
                            s = sha3(sha3(s << 192, sha3(agentCount + 1 << 192, 0) + 4)) + ((floor32(_2574) >> 2) + Mask(250, 3, None + -(floor32(_2574) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_2574) >> 2) + 9) >> 3) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][s << 192].field_0) + 3 / 4) + (-1 * (floor32(_2574) >> 2) + Mask(250, 3, None + -(floor32(_2574) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_2574) >> 2) + 9) >> 3) + 1
                            continue 
                        _2557 = msize
                        mem[msize] = uint64(uint64(stor3.field_192) + 1)
                        mem[64] = _2557 + (32 * uint64(uint64(stor3.field_192) + 1)) + 32
                        mem[0] = uint64(idx)
                        mem[32] = sha3(agentCount + 1 << 192, 0) + 4
                        _2589 = mem[_2557]
                        uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[_2557]
                        mem[0] = sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)
                        if not _2589:
                            s = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                            while sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) + 3 / 4) > s:
                                uint64(stor[s]) = 0
                                s = s + 1
                                continue 
                        else:
                            t = 0
                            s = _2557 + 32
                            while _2557 + (32 * _2589) + 32 > s:
                                uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) = mem[s + 24 len 8] * 256^t or !(test266151307() * 256^t) and uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0)
                                t = t + (8 * -t + 15 / 32) + (-1 * t * t + 15 / 32) + 8
                                s = s + 32
                                continue 
                            s = floor32(_2589) >> 2
                            t = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4))
                            while s:
                                uint256(stor[t]) = !(test266151307() * 256^s) and uint256(stor[t])
                                s = s + (8 * -s + 15 / 32) + (-1 * s * s + 15 / 32) + 8
                                t = (s + 15 / 32) + t
                                continue 
                            s = sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + ((floor32(_2589) >> 2) + Mask(250, 3, None + -(floor32(_2589) >> 2) + 9) + 15 / 32 * Mask(253, 0, None + -(floor32(_2589) >> 2) + 9) >> 3)
                            while sha3(sha3(idx << 192, sha3(agentCount + 1 << 192, 0) + 4)) + (uint256(stor0[uint64(stor3.field_64) + 1 << 192][4][idx << 192].field_0) + 3 / 4) > s:
                                uint64(stor[s]) = 0
                                s = s + 1
                                continue 
                        idx = idx + 1
                        continue 
                    mem[32] = 0
                    _2534 = mem[64]
                    mem[mem[64]] = uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_8)
                    mem[mem[64] + 32] = uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_320)
                    mem[mem[64] + 64] = uint64(stor0[uint64(stor3.field_64) + 1 << 192].field_256)
                    mem[mem[64] + 128] = Mask(8, 248, uint8(stor0[uint64(stor3.field_64) + 1 << 192].field_0))
                    mem[mem[64] + 96] = 160
                    mem[mem[64] + 160] = stor0[uint64(stor3.field_64) + 1 << 192][3].length
                    mem[mem[64] + 192] = uint256(stor0[uint64(stor3.field_64) + 1 << 192][3].field_0)
                    idx = mem[64] + 192
                    s = 0
                    while mem[64] + stor0[uint64(stor3.field_64) + 1 << 192][3].length + 192 > idx + 32:
                        mem[idx + 32] = uint256(stor0[uint64(stor3.field_64) + 1 << 192][s + 3].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0x9d5b12ec: mem[mem[64] len _2534 + stor0[uint64(stor3.field_64) + 1 << 192][3].length + (floor32(stor0[uint64(stor3.field_64) + 1 << 192][3].length - 1) + -stor0[uint64(stor3.field_64) + 1 << 192][3].length + 32 % 32) + -mem[64] + 192]
}



}
