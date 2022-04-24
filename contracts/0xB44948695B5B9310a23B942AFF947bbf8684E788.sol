contract main {


// =======================  Init code  ======================


address stor3;
uint256 stor4;

function _fallback() {
    stor4 += gas_remaining * block.gasprice
    stor3 = msg.sender
    return code.data[113 len 9856]
}



// =====================  Runtime code  =====================


#
#  - sub_812f0fb0(?)
#
array of struct stor0;
array of uint8 balance;
mapping of uint8 stor2;
address stor3;
uint256 sub_4e69f36a;

function getBalance() {
    return uint256(balance[address(msg.sender)])
}

function sub_4e69f36a(?) {
    return sub_4e69f36a
}

function destroy() {
    require msg.sender == stor3
    selfdestruct(stor3)
}

function _fallback() payable {
    revert
}

function max(uint256 arg1, uint256 arg2) {
    if arg1 > arg2:
        return arg1
    return arg2
}

function min(uint256 arg1, uint256 arg2) {
    if arg1 < arg2:
        return arg2
    return arg1
}

function removeModerator(address arg1) {
    sub_4e69f36a += gas_remaining * block.gasprice
    require msg.sender == stor3
    stor2[address(arg1)] = 0
}

function sub_8f371be3(?) {
    require arg1 <= 3
    if not arg1:
        return 'betting'
    require arg1 <= 3
    if arg1 == 1:
        return 'pending'
    require arg1 <= 3
    if arg1 != 2:
        return 'right-win'
    return 'left-win'
}

function getPrizes(uint256 arg1) {
    require arg1 <= uint256(balance[address(msg.sender)])
    uint256(balance[address(msg.sender)]) -= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_af80fe84(?) {
    if stor3 != msg.sender:
        require stor2[stor3]
    sub_4e69f36a += gas_remaining * block.gasprice
    require arg1 < stor0.length
    require arg1 < stor0.length
    require uint8(stor0[8 * uint32(arg1)].field_1280) <= 3
    require not uint8(stor0[8 * uint32(arg1)].field_1280)
    require arg1 < stor0.length
    uint8(stor0[8 * uint32(arg1)].field_1280) = 1
}

function addModerator(address arg1) {
    if msg.sender == stor3:
        sub_4e69f36a += gas_remaining * block.gasprice
    else:
        require stor2[stor3]
        sub_4e69f36a += gas_remaining * block.gasprice
        if stor3 != msg.sender:
            require stor2[address(msg.sender)] < 3
    require not stor2[address(arg1)]
    if stor3 != msg.sender:
        stor2[address(msg.sender)] = uint8(stor2[address(msg.sender)] + 1)
    stor2[address(arg1)] = 1
}

function changeAdmin(address arg1) {
    sub_4e69f36a += gas_remaining * block.gasprice
    require msg.sender == stor3
    stor3 = arg1
    sub_4e69f36a += gas_remaining * block.gasprice
    require not stor2[address(msg.sender)]
    if msg.sender == stor3:
        stor2[address(msg.sender)] = 1
        sub_4e69f36a += gas_remaining * block.gasprice
        stor2[address(msg.sender)] = 0
    stor2[address(msg.sender)] = uint8(stor2[address(msg.sender)] + 1)
    stor2[address(msg.sender)] = 1
    sub_4e69f36a += gas_remaining * block.gasprice
    revert
}

function sub_03746b9e(?) payable {
    require arg1 < stor0.length
    require arg1 < stor0.length
    require uint8(stor0[8 * uint32(arg1)].field_1280) <= 3
    require not uint8(stor0[8 * uint32(arg1)].field_1280)
    require arg1 < stor0.length
    require not uint256(stor[(8 * uint32(arg1)) + ('name', 'stor0', 0) + 7][address(msg.sender)].field_0)
    require arg1 < stor0.length
    uint256(stor[(8 * uint32(arg1)) + ('name', 'stor0', 0) + 7][address(msg.sender)].field_0) = msg.value
    uint8(stor[(8 * uint32(arg1)) + ('name', 'stor0', 0) + 7][address(msg.sender)].field_256) = uint8(arg2)
    uint256(stor0[8 * uint32(arg1)].field_1536)++
    if not uint256(stor0[8 * uint32(arg1)].field_1536) <= uint256(stor0[8 * uint32(arg1)].field_1536) + 1:
        idx = uint256(stor0[8 * uint32(arg1)].field_1536) + 1
        while uint256(stor0[8 * uint32(arg1)].field_1536) > idx:
            uint256(stor[idx + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0) = 0
            idx = idx + 1
            continue 
    address(stor[uint256(stor0[8 * uint32(arg1)].field_1536) + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0) = msg.sender
}

function sub_f5cfdd3c(?) {
    if stor3 != msg.sender:
        require stor2[stor3]
    sub_4e69f36a += gas_remaining * block.gasprice
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        mem[0] = 0
        idx = 8 * stor0.length + 1
        while sha3(0) + (8 * stor0.length) > idx + sha3(mem[0]):
            uint32(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 2].length:
                s = sha3(idx + sha3(mem[0]) + 2)
                while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 3].length:
                s = sha3(idx + sha3(mem[0]) + 3)
                while sha3(idx + sha3(mem[0]) + 3) + (stor[idx + sha3(mem[0]) + 3].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
            uint8(stor[idx + sha3(mem[0]) + 5]) = 0
            uint256(stor[idx + sha3(mem[0]) + 6]) = 0
            mem[0] = idx + sha3(mem[0]) + 6
            s = sha3(idx + sha3(mem[0]) + 6)
            while sha3(idx + sha3(mem[0]) + 6) + uint256(stor[idx + sha3(mem[0]) + 6]) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            idx = idx + 8
            continue 
    uint32(stor0[stor0.length].field_0) = arg4
    uint256(stor[sha3((8 * stor0.length) + ('name', 'stor0', 0) + 1)][].field_0) = Array(len=arg5.length, data=arg5[all])
    uint256(stor[sha3((8 * stor0.length) + ('name', 'stor0', 0) + 2)][].field_0) = Array(len=arg1.length, data=arg1[all])
    uint256(stor[sha3((8 * stor0.length) + ('name', 'stor0', 0) + 3)][].field_0) = Array(len=arg2.length, data=arg2[all])
    uint256(stor0[stor0.length].field_1024) = arg3
    uint8(stor0[stor0.length].field_1280) = 0
    stor0[stor0.length].field_1536 % 1 = 0
    uint256(stor0[stor0.length].field_1536) = 0
    idx = 0
    while uint256(stor0[stor0.length].field_1536) > idx:
        address(stor[idx + sha3((8 * stor0.length) + ('name', 'stor0', 0) + 6)].field_0) = 0
        idx = idx + 1
        continue 
}

function sub_10574149(?) {
    mem[96] = 0
    mem[128] = 0
    mem[64] = 192
    mem[160] = 0
    idx = 0
    while uint32(idx) < stor0.length:
        require uint32(idx) < stor0.length
        mem[0] = 0
        require uint8(stor0[8 * uint32(idx)].field_1280) <= 3
        if not uint8(stor0[8 * uint32(idx)].field_1280):
            _25 = mem[64]
            mem[64] = mem[64] + 32
            mem[_25] = 0
            _26 = mem[64]
            mem[64] = mem[64] + 32
            mem[_26] = 0
            _27 = mem[64]
            if msize < mem[64]:
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                t = 0
                s = 0
                while s < 32:
                    if uint8(uint32(idx) * 2^(8 * s)):
                        require s < mem[_27]
                        mem[_27 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('mul', ('mask_shl', 32, 0, 0, ('var', 0)), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 1))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('mul', ('mask_shl', 32, 0, 0, ('var', 0)), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 1))))), 0) - 256
                    t = uint32(idx) * 2^(8 * s) << 248
                    s = s + 1
                    continue 
                _38 = mem[64]
                mem[64] = mem[64] + 32
                mem[_38] = 0
                _40 = mem[64]
                mem[64] = mem[64] + 32
                mem[_40] = 0
                _42 = mem[64]
                mem[64] = mem[64] + 32
                mem[_42] = 0
                _44 = mem[64]
                mem[64] = mem[64] + 32
                mem[_44] = 0
                _46 = mem[64]
                mem[64] = mem[64] + 32
                mem[_46] = 0
                _48 = mem[_27]
                _49 = mem[160]
                _50 = mem[64]
                if msize < mem[64]:
                    mem[mem[64]] = mem[160] + mem[_27]
                    mem[64] = mem[64] + floor32(_49 + _48 + 31) + 32
                    _90 = mem[160]
                    t = 0
                    s = 0
                    while s < _90:
                        require s < mem[160]
                        require t < mem[_50]
                        mem[_50 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('var', 1)), 32))), 0) - 256
                        t = t + 1
                        s = s + 1
                        continue 
                    _122 = mem[_27]
                    t = _90
                    s = 0
                    while s < _122:
                        require s < mem[_27]
                        require t < mem[_50]
                        mem[_50 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_27'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_27'), ('var', 1)), 32))), 0) - 256
                        _122 = mem[_27]
                        t = t + 1
                        s = s + 1
                        continue 
                else:
                    _56 = msize
                    mem[msize] = mem[160] + mem[_27]
                    mem[64] = _56 + floor32(_49 + _48 + 31) + 32
                    _91 = mem[160]
                    t = 0
                    s = 0
                    while s < _91:
                        require s < mem[160]
                        require t < mem[_56]
                        mem[_56 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('var', 1)), 32))), 0) - 256
                        t = t + 1
                        s = s + 1
                        continue 
                    _123 = mem[_27]
                    t = _91
                    s = 0
                    while s < _123:
                        require s < mem[_27]
                        require t < mem[_56]
                        mem[_56 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_27'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_27'), ('var', 1)), 32))), 0) - 256
                        _123 = mem[_27]
                        t = t + 1
                        s = s + 1
                        continue 
            else:
                _29 = msize
                mem[msize] = 32
                mem[64] = _29 + 64
                t = 0
                s = 0
                while s < 32:
                    if uint8(uint32(idx) * 2^(8 * s)):
                        require s < mem[_29]
                        mem[_29 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('mul', ('mask_shl', 32, 0, 0, ('var', 0)), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 1))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('mul', ('mask_shl', 32, 0, 0, ('var', 0)), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 1))))), 0) - 256
                    t = uint32(idx) * 2^(8 * s) << 248
                    s = s + 1
                    continue 
                _39 = mem[64]
                mem[64] = mem[64] + 32
                mem[_39] = 0
                _41 = mem[64]
                mem[64] = mem[64] + 32
                mem[_41] = 0
                _43 = mem[64]
                mem[64] = mem[64] + 32
                mem[_43] = 0
                _45 = mem[64]
                mem[64] = mem[64] + 32
                mem[_45] = 0
                _47 = mem[64]
                mem[64] = mem[64] + 32
                mem[_47] = 0
                _52 = mem[_29]
                _53 = mem[160]
                _54 = mem[64]
                if msize < mem[64]:
                    mem[mem[64]] = mem[160] + mem[_29]
                    mem[64] = mem[64] + floor32(_53 + _52 + 31) + 32
                    _92 = mem[160]
                    t = 0
                    s = 0
                    while s < _92:
                        require s < mem[160]
                        require t < mem[_54]
                        mem[_54 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('var', 1)), 32))), 0) - 256
                        t = t + 1
                        s = s + 1
                        continue 
                    _124 = mem[_29]
                    t = _92
                    s = 0
                    while s < _124:
                        require s < mem[_29]
                        require t < mem[_54]
                        mem[_54 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_29'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_29'), ('var', 1)), 32))), 0) - 256
                        _124 = mem[_29]
                        t = t + 1
                        s = s + 1
                        continue 
                else:
                    _57 = msize
                    mem[msize] = mem[160] + mem[_29]
                    mem[64] = _57 + floor32(_53 + _52 + 31) + 32
                    _93 = mem[160]
                    t = 0
                    s = 0
                    while s < _93:
                        require s < mem[160]
                        require t < mem[_57]
                        mem[_57 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('var', 1)), 32))), 0) - 256
                        t = t + 1
                        s = s + 1
                        continue 
                    _125 = mem[_29]
                    t = _93
                    s = 0
                    while s < _125:
                        require s < mem[_29]
                        require t < mem[_57]
                        mem[_57 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_29'), ('var', 1)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 32, ('var', '_29'), ('var', 1)), 32))), 0) - 256
                        _125 = mem[_29]
                        t = t + 1
                        s = s + 1
                        continue 
        idx = idx + 1
        continue 
    _17 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[160]
    _19 = mem[160]
    mem[mem[64] + 64 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
    if not _19 % 32:
        return 32, mem[mem[64] + 32 len _19 + 32]
    mem[floor32(_19) + mem[64] + 64] = mem[floor32(_19) + mem[64] + -(_19 % 32) + 96 len _19 % 32]
    return memory
      from mem[64]
       len floor32(_19) + _17 + -mem[64] + 96
}

function sub_63c4b177(?) payable {
    mem[64] = 96
    require not msg.value
    if msg.sender == stor3:
        sub_4e69f36a += gas_remaining * block.gasprice
        require arg1 < stor0.length
        require arg1 < stor0.length
        require uint8(stor0[8 * uint32(arg1)].field_1280) <= 3
        require uint8(stor0[8 * uint32(arg1)].field_1280) == 1
        require arg1 < stor0.length
        if arg2:
            uint8(stor0[8 * uint32(arg1)].field_1280) = 2
        else:
            uint8(stor0[8 * uint32(arg1)].field_1280) = 3
        require arg1 < stor0.length
        if var28008 >= uint256(stor0[8 * uint32(arg1)].field_1536):
            require var28005
            require arg1 < stor0.length
            if var42008 >= uint256(stor0[8 * uint32(arg1)].field_1536):
            require arg1 < stor0.length
            require var48010 < uint256(stor0[8 * uint32(arg1)].field_1536)
            mem[32] = var48004
            require arg1 < stor0.length
            if arg2 != bool(uint8(balance[('map', ('type', 160, ('field', 0, ('stor', ('add', ('var', 48010), ('sha3', ('add', 6, ('mask_shl', 32, 0, 3, ('param', 'arg1')), ('name', 'stor0', 0))))))), ('var', 48004))])):
                if var48010 + 1 >= uint256(stor0[8 * uint32(arg1)].field_1536):
                require arg1 < stor0.length
                mem[0] = 0
                var48004 = (8 * uint32(arg1)) + sha3(0) + 7
                var48009 = var48009
                var48010 = var48010 + 1
                continue 
            require var48010 < uint256(stor0[8 * uint32(arg1)].field_1536)
            require arg1 < stor0.length
            require var48010 < uint256(stor0[8 * uint32(arg1)].field_1536)
            mem[32] = 1
            if var28006 - var28005 / 2 < sub_4e69f36a:
                uint256(balance[address(stor[var48010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)]) += uint256(stor[(8 * uint32(arg1)) + ('name', 'stor0', 0) + 7][address(stor[var48010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)].field_0) * (2750000 * 3600 * var28005) + (2750000 * 3600 * sub_4e69f36a) / var28005 / 10^10
            else:
                uint256(balance[address(stor[var48010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)]) += uint256(stor[(8 * uint32(arg1)) + ('name', 'stor0', 0) + 7][address(stor[var48010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)].field_0) * (2750000 * 3600 * var28005) + (2750000 * 3600 * var28006 - var28005 / 2) / var28005 / 10^10
            require arg1 < stor0.length
            if var48010 + 1 >= uint256(stor0[8 * uint32(arg1)].field_1536):
            require arg1 < stor0.length
            mem[0] = 0
            var48004 = (8 * uint32(arg1)) + sha3(0) + 7
            var48009 = uint256(stor[(8 * uint32(arg1)) + ('name', 'stor0', 0) + 7][address(stor[var48010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)].field_0)
            var48010 = var48010 + 1
            continue 
        require arg1 < stor0.length
        require var34010 < uint256(stor0[8 * uint32(arg1)].field_1536)
        require arg1 < stor0.length
        require var34010 < uint256(stor0[8 * uint32(arg1)].field_1536)
        mem[32] = (8 * uint32(arg1)) + sha3(0) + 7
        require arg1 < stor0.length
        if arg2 != bool(uint8(stor[(8 * uint32(arg1)) + ('name', 'stor0', 0) + 7][address(stor[var34010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)].field_256)):
            if var34010 + 1 < uint256(stor0[8 * uint32(arg1)].field_1536):
                require arg1 < stor0.length
                mem[0] = 0
                var34004 = (8 * uint32(arg1)) + sha3(0) + 7
                var34007 = var34007
                var34008 = var34008 + uint256(stor[var34004][address(stor[var34010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)])
                var34009 = uint256(stor[var34004][address(stor[var34010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)])
                var34010 = var34010 + 1
                continue 
            require var34007
            require arg1 < stor0.length
            if var55008 >= uint256(stor0[8 * uint32(arg1)].field_1536):
            require arg1 < stor0.length
            require var61010 < uint256(stor0[8 * uint32(arg1)].field_1536)
            mem[32] = var61004
            require arg1 < stor0.length
            if arg2 != bool(uint8(balance[('map', ('type', 160, ('field', 0, ('stor', ('add', ('var', 61010), ('sha3', ('add', 6, ('mask_shl', 32, 0, 3, ('param', 'arg1')), ('name', 'stor0', 0))))))), ('var', 61004))])):
                if var61010 + 1 >= uint256(stor0[8 * uint32(arg1)].field_1536):
                require arg1 < stor0.length
                mem[0] = 0
                var61004 = (8 * uint32(arg1)) + sha3(0) + 7
                var61009 = var61009
                var61010 = var61010 + 1
                continue 
            require var61010 < uint256(stor0[8 * uint32(arg1)].field_1536)
            require arg1 < stor0.length
            require var61010 < uint256(stor0[8 * uint32(arg1)].field_1536)
            mem[32] = 1
            if var34008 + uint256(stor[var34004][address(stor[var34010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)]) - var34007 / 2 < sub_4e69f36a:
                uint256(balance[address(stor[var61010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)]) += uint256(stor[(8 * uint32(arg1)) + ('name', 'stor0', 0) + 7][address(stor[var61010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)].field_0) * (2750000 * 3600 * var34007) + (2750000 * 3600 * sub_4e69f36a) / var34007 / 10^10
            else:
                uint256(balance[address(stor[var61010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)]) += uint256(stor[(8 * uint32(arg1)) + ('name', 'stor0', 0) + 7][address(stor[var61010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)].field_0) * (2750000 * 3600 * var34007) + (2750000 * 3600 * var34008 + uint256(stor[var34004][address(stor[var34010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)]) - var34007 / 2) / var34007 / 10^10
            require arg1 < stor0.length
            if var61010 + 1 >= uint256(stor0[8 * uint32(arg1)].field_1536):
            require arg1 < stor0.length
            mem[0] = 0
            var61004 = (8 * uint32(arg1)) + sha3(0) + 7
            var61009 = uint256(stor[(8 * uint32(arg1)) + ('name', 'stor0', 0) + 7][address(stor[var61010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)].field_0)
            var61010 = var61010 + 1
            continue 
        if var34010 + 1 < uint256(stor0[8 * uint32(arg1)].field_1536):
            require arg1 < stor0.length
            mem[0] = 0
            var34004 = (8 * uint32(arg1)) + sha3(0) + 7
            var34007 = var34007 + uint256(stor[var34004][address(stor[var34010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)])
            var34008 = var34008 + uint256(stor[var34004][address(stor[var34010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)])
            var34009 = uint256(stor[var34004][address(stor[var34010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)])
            var34010 = var34010 + 1
            continue 
        require var34007 + uint256(stor[var34004][address(stor[var34010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)])
        require arg1 < stor0.length
        if var56008 >= uint256(stor0[8 * uint32(arg1)].field_1536):
        require arg1 < stor0.length
        require var62010 < uint256(stor0[8 * uint32(arg1)].field_1536)
        mem[32] = var62004
        require arg1 < stor0.length
        if arg2 != bool(uint8(balance[('map', ('type', 160, ('field', 0, ('stor', ('add', ('var', 62010), ('sha3', ('add', 6, ('mask_shl', 32, 0, 3, ('param', 'arg1')), ('name', 'stor0', 0))))))), ('var', 62004))])):
            if var62010 + 1 >= uint256(stor0[8 * uint32(arg1)].field_1536):
            require arg1 < stor0.length
            mem[0] = 0
            var62004 = (8 * uint32(arg1)) + sha3(0) + 7
            var62009 = var62009
            var62010 = var62010 + 1
            continue 
        require var62010 < uint256(stor0[8 * uint32(arg1)].field_1536)
        require arg1 < stor0.length
        require var62010 < uint256(stor0[8 * uint32(arg1)].field_1536)
        mem[32] = 1
        if var34008 - var34007 / 2 < sub_4e69f36a:
            uint256(balance[address(stor[var62010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)]) += uint256(stor[(8 * uint32(arg1)) + ('name', 'stor0', 0) + 7][address(stor[var62010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)].field_0) * (2750000 * 3600 * uint256(stor[var34004][address(stor[var34010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)])) + (2750000 * 3600 * var34007) + (2750000 * 3600 * sub_4e69f36a) / var34007 + uint256(stor[var34004][address(stor[var34010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)]) / 10^10
        else:
            uint256(balance[address(stor[var62010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)]) += uint256(stor[(8 * uint32(arg1)) + ('name', 'stor0', 0) + 7][address(stor[var62010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)].field_0) * (2750000 * 3600 * uint256(stor[var34004][address(stor[var34010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)])) + (2750000 * 3600 * var34007) + (2750000 * 3600 * var34008 - var34007 / 2) / var34007 + uint256(stor[var34004][address(stor[var34010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)]) / 10^10
        require arg1 < stor0.length
        if var62010 + 1 >= uint256(stor0[8 * uint32(arg1)].field_1536):
        require arg1 < stor0.length
        mem[0] = 0
        var62004 = (8 * uint32(arg1)) + sha3(0) + 7
        var62009 = uint256(stor[(8 * uint32(arg1)) + ('name', 'stor0', 0) + 7][address(stor[var62010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)].field_0)
        var62010 = var62010 + 1
        continue 
    require stor2[stor3]
    sub_4e69f36a += gas_remaining * block.gasprice
    require arg1 < stor0.length
    require arg1 < stor0.length
    require uint8(stor0[8 * uint32(arg1)].field_1280) <= 3
    require uint8(stor0[8 * uint32(arg1)].field_1280) == 1
    require arg1 < stor0.length
    if arg2:
        uint8(stor0[8 * uint32(arg1)].field_1280) = 2
    else:
        uint8(stor0[8 * uint32(arg1)].field_1280) = 3
    require arg1 < stor0.length
    if var29008 >= uint256(stor0[8 * uint32(arg1)].field_1536):
        require var29005
        require arg1 < stor0.length
        if var43008 >= uint256(stor0[8 * uint32(arg1)].field_1536):
        require arg1 < stor0.length
        require var49010 < uint256(stor0[8 * uint32(arg1)].field_1536)
        mem[32] = var49004
        require arg1 < stor0.length
        if arg2 != bool(uint8(balance[('map', ('type', 160, ('field', 0, ('stor', ('add', ('var', 49010), ('sha3', ('add', 6, ('mask_shl', 32, 0, 3, ('param', 'arg1')), ('name', 'stor0', 0))))))), ('var', 49004))])):
            if var49010 + 1 >= uint256(stor0[8 * uint32(arg1)].field_1536):
            require arg1 < stor0.length
            mem[0] = 0
            var49004 = (8 * uint32(arg1)) + sha3(0) + 7
            var49009 = var49009
            var49010 = var49010 + 1
            continue 
        require var49010 < uint256(stor0[8 * uint32(arg1)].field_1536)
        require arg1 < stor0.length
        require var49010 < uint256(stor0[8 * uint32(arg1)].field_1536)
        mem[32] = 1
        if var29006 - var29005 / 2 < sub_4e69f36a:
            uint256(balance[address(stor[var49010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)]) += uint256(stor[(8 * uint32(arg1)) + ('name', 'stor0', 0) + 7][address(stor[var49010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)].field_0) * (2750000 * 3600 * var29005) + (2750000 * 3600 * sub_4e69f36a) / var29005 / 10^10
        else:
            uint256(balance[address(stor[var49010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)]) += uint256(stor[(8 * uint32(arg1)) + ('name', 'stor0', 0) + 7][address(stor[var49010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)].field_0) * (2750000 * 3600 * var29005) + (2750000 * 3600 * var29006 - var29005 / 2) / var29005 / 10^10
        require arg1 < stor0.length
        if var49010 + 1 >= uint256(stor0[8 * uint32(arg1)].field_1536):
        require arg1 < stor0.length
        mem[0] = 0
        var49004 = (8 * uint32(arg1)) + sha3(0) + 7
        var49009 = uint256(stor[(8 * uint32(arg1)) + ('name', 'stor0', 0) + 7][address(stor[var49010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)].field_0)
        var49010 = var49010 + 1
        continue 
    require arg1 < stor0.length
    require var35010 < uint256(stor0[8 * uint32(arg1)].field_1536)
    require arg1 < stor0.length
    require var35010 < uint256(stor0[8 * uint32(arg1)].field_1536)
    mem[32] = (8 * uint32(arg1)) + sha3(0) + 7
    require arg1 < stor0.length
    if arg2 != bool(uint8(stor[(8 * uint32(arg1)) + ('name', 'stor0', 0) + 7][address(stor[var35010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)].field_256)):
        if var35010 + 1 < uint256(stor0[8 * uint32(arg1)].field_1536):
            require arg1 < stor0.length
            mem[0] = 0
            var35004 = (8 * uint32(arg1)) + sha3(0) + 7
            var35007 = var35007
            var35008 = var35008 + uint256(stor[var35004][address(stor[var35010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)])
            var35009 = uint256(stor[var35004][address(stor[var35010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)])
            var35010 = var35010 + 1
            continue 
        require var35007
        require arg1 < stor0.length
        if var56008 >= uint256(stor0[8 * uint32(arg1)].field_1536):
        require arg1 < stor0.length
        require var62010 < uint256(stor0[8 * uint32(arg1)].field_1536)
        mem[32] = var62004
        require arg1 < stor0.length
        if arg2 != bool(uint8(balance[('map', ('type', 160, ('field', 0, ('stor', ('add', ('var', 62010), ('sha3', ('add', 6, ('mask_shl', 32, 0, 3, ('param', 'arg1')), ('name', 'stor0', 0))))))), ('var', 62004))])):
            if var62010 + 1 >= uint256(stor0[8 * uint32(arg1)].field_1536):
            require arg1 < stor0.length
            mem[0] = 0
            var62004 = (8 * uint32(arg1)) + sha3(0) + 7
            var62009 = var62009
            var62010 = var62010 + 1
            continue 
        require var62010 < uint256(stor0[8 * uint32(arg1)].field_1536)
        require arg1 < stor0.length
        require var62010 < uint256(stor0[8 * uint32(arg1)].field_1536)
        mem[32] = 1
        if var35008 + uint256(stor[var35004][address(stor[var35010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)]) - var35007 / 2 < sub_4e69f36a:
            uint256(balance[address(stor[var62010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)]) += uint256(stor[(8 * uint32(arg1)) + ('name', 'stor0', 0) + 7][address(stor[var62010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)].field_0) * (2750000 * 3600 * var35007) + (2750000 * 3600 * sub_4e69f36a) / var35007 / 10^10
        else:
            uint256(balance[address(stor[var62010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)]) += uint256(stor[(8 * uint32(arg1)) + ('name', 'stor0', 0) + 7][address(stor[var62010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)].field_0) * (2750000 * 3600 * var35007) + (2750000 * 3600 * var35008 + uint256(stor[var35004][address(stor[var35010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)]) - var35007 / 2) / var35007 / 10^10
        require arg1 < stor0.length
        if var62010 + 1 >= uint256(stor0[8 * uint32(arg1)].field_1536):
        require arg1 < stor0.length
        mem[0] = 0
        var62004 = (8 * uint32(arg1)) + sha3(0) + 7
        var62009 = uint256(stor[(8 * uint32(arg1)) + ('name', 'stor0', 0) + 7][address(stor[var62010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)].field_0)
        var62010 = var62010 + 1
        continue 
    if var35010 + 1 < uint256(stor0[8 * uint32(arg1)].field_1536):
        require arg1 < stor0.length
        mem[0] = 0
        var35004 = (8 * uint32(arg1)) + sha3(0) + 7
        var35007 = var35007 + uint256(stor[var35004][address(stor[var35010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)])
        var35008 = var35008 + uint256(stor[var35004][address(stor[var35010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)])
        var35009 = uint256(stor[var35004][address(stor[var35010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)])
        var35010 = var35010 + 1
        continue 
    require var35007 + uint256(stor[var35004][address(stor[var35010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)])
    require arg1 < stor0.length
    if var57008 >= uint256(stor0[8 * uint32(arg1)].field_1536):
    require arg1 < stor0.length
    require var63010 < uint256(stor0[8 * uint32(arg1)].field_1536)
    mem[32] = var63004
    require arg1 < stor0.length
    if arg2 != bool(uint8(balance[('map', ('type', 160, ('field', 0, ('stor', ('add', ('var', 63010), ('sha3', ('add', 6, ('mask_shl', 32, 0, 3, ('param', 'arg1')), ('name', 'stor0', 0))))))), ('var', 63004))])):
        if var63010 + 1 >= uint256(stor0[8 * uint32(arg1)].field_1536):
        require arg1 < stor0.length
        mem[0] = 0
        var63004 = (8 * uint32(arg1)) + sha3(0) + 7
        var63009 = var63009
        var63010 = var63010 + 1
        continue 
    require var63010 < uint256(stor0[8 * uint32(arg1)].field_1536)
    require arg1 < stor0.length
    require var63010 < uint256(stor0[8 * uint32(arg1)].field_1536)
    mem[32] = 1
    if var35008 - var35007 / 2 < sub_4e69f36a:
        uint256(balance[address(stor[var63010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)]) += uint256(stor[(8 * uint32(arg1)) + ('name', 'stor0', 0) + 7][address(stor[var63010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)].field_0) * (2750000 * 3600 * uint256(stor[var35004][address(stor[var35010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)])) + (2750000 * 3600 * var35007) + (2750000 * 3600 * sub_4e69f36a) / var35007 + uint256(stor[var35004][address(stor[var35010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)]) / 10^10
    else:
        uint256(balance[address(stor[var63010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)]) += uint256(stor[(8 * uint32(arg1)) + ('name', 'stor0', 0) + 7][address(stor[var63010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)].field_0) * (2750000 * 3600 * uint256(stor[var35004][address(stor[var35010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)])) + (2750000 * 3600 * var35007) + (2750000 * 3600 * var35008 - var35007 / 2) / var35007 + uint256(stor[var35004][address(stor[var35010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)]) / 10^10
    require arg1 < stor0.length
    if var63010 + 1 >= uint256(stor0[8 * uint32(arg1)].field_1536):
    require arg1 < stor0.length
    mem[0] = 0
    var63004 = (8 * uint32(arg1)) + sha3(0) + 7
    var63009 = uint256(stor[(8 * uint32(arg1)) + ('name', 'stor0', 0) + 7][address(stor[var63010 + sha3((8 * uint32(arg1)) + ('name', 'stor0', 0) + 6)].field_0)].field_0)
    var63010 = var63010 + 1
    continue 
}



}
