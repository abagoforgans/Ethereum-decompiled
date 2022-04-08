contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 5902]




// =====================  Runtime code  =====================


#
#  - Restitution_Historique_Transactions(address arg1)
#
array of struct actionHistorySize;
array of uint256 stor1;

function getActionHistorySize() {
    return uint256(actionHistorySize[address(msg.sender)].field_0)
}

function _fallback() payable {
    revert
}

function giveConsent(string arg1, string arg2) {
    uint256(actionHistorySize[address(msg.sender)].field_0)++
    if not uint256(actionHistorySize[address(msg.sender)].field_0) <= uint256(actionHistorySize[address(msg.sender)].field_0) + 1:
        mem[0] = sha3(address(msg.sender), 0)
        idx = (3 * uint256(actionHistorySize[address(msg.sender)].field_0)) + 3
        while sha3(sha3(address(msg.sender), 0)) + (3 * uint256(actionHistorySize[address(msg.sender)].field_0)) > idx + sha3(mem[0]):
            uint8(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 2].length:
                mem[0] = idx + sha3(mem[0]) + 2
                s = sha3(idx + sha3(mem[0]) + 2)
                while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            idx = idx + 3
            continue 
    uint8(actionHistorySize[address(msg.sender)][uint256(actionHistorySize[address(msg.sender)].field_0)].field_0) = 1
    uint256(stor[sha3((3 * uint256(actionHistorySize[address(msg.sender)].field_0)) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'actionHistorySize', 0)) + 1)][].field_0) = Array(len=arg1.length, data=arg1[all])
    uint256(stor[sha3((3 * uint256(actionHistorySize[address(msg.sender)].field_0)) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'actionHistorySize', 0)) + 2)][].field_0) = Array(len=arg2.length, data=arg2[all])
}

function revokeConsent(string arg1) {
    uint256(actionHistorySize[address(msg.sender)].field_0)++
    if not uint256(actionHistorySize[address(msg.sender)].field_0) <= uint256(actionHistorySize[address(msg.sender)].field_0) + 1:
        mem[0] = sha3(address(msg.sender), 0)
        idx = (3 * uint256(actionHistorySize[address(msg.sender)].field_0)) + 3
        while sha3(sha3(address(msg.sender), 0)) + (3 * uint256(actionHistorySize[address(msg.sender)].field_0)) > idx + sha3(mem[0]):
            uint8(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 2].length:
                mem[0] = idx + sha3(mem[0]) + 2
                s = sha3(idx + sha3(mem[0]) + 2)
                while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            idx = idx + 3
            continue 
    uint8(actionHistorySize[address(msg.sender)][uint256(actionHistorySize[address(msg.sender)].field_0)].field_0) = 0
    actionHistorySize[address(msg.sender)][uint256(actionHistorySize[address(msg.sender)].field_0)].field_256 % 1 = 0
    uint256(stor[sha3((3 * uint256(actionHistorySize[address(msg.sender)].field_0)) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'actionHistorySize', 0)) + 1)][].field_0) = Array(len=arg1.length, data=arg1[all])
    bool(actionHistorySize[address(msg.sender)][uint256(actionHistorySize[address(msg.sender)].field_0)].field_512) = 0
    uint255(actionHistorySize[address(msg.sender)][uint256(actionHistorySize[address(msg.sender)].field_0)].field_513) = 0
    Mask(248, 0, actionHistorySize[address(msg.sender)][uint256(actionHistorySize[address(msg.sender)].field_0)].field_520) = mem[ceil32(arg1.length) + 256 len 31]
    idx = 0
    while stor[(3 * uint256(actionHistorySize[address(msg.sender)].field_0)) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'actionHistorySize', 0)) + 2].length + 31 / 32 > idx:
        uint256(stor[idx + sha3((3 * uint256(actionHistorySize[address(msg.sender)].field_0)) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'actionHistorySize', 0)) + 2)].field_0) = 0
        idx = idx + 1
        continue 
}

function getActionHistoryItem(uint256 arg1) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[288] = 0
    mem[224] = 288
    mem[320] = 0
    mem[256] = 320
    mem[0] = msg.sender
    mem[32] = 0
    mem[64] = (32 * uint256(actionHistorySize[address(msg.sender)].field_0)) + 384
    mem[352] = uint256(actionHistorySize[address(msg.sender)].field_0)
    s = 384
    idx = 0
    while idx < uint256(actionHistorySize[address(msg.sender)].field_0):
        mem[0] = sha3(address(msg.sender), 0)
        _44 = mem[64]
        mem[64] = mem[64] + 96
        require uint8(actionHistorySize[address(msg.sender)][idx].field_0) <= 2
        mem[_44] = uint8(actionHistorySize[address(msg.sender)][idx].field_0)
        _46 = mem[64]
        mem[64] = mem[64] + ceil32(stor[(3 * idx) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'actionHistorySize', 0)) + 1].length) + 32
        mem[_46] = stor[(3 * idx) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'actionHistorySize', 0)) + 1].length
        mem[0] = (3 * idx) + sha3(sha3(address(msg.sender), 0)) + 1
        mem[_46 + 32] = uint256(stor[sha3((3 * idx) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'actionHistorySize', 0)) + 1)].field_0)
        t = _46 + 32
        u = sha3(mem[0])
        while _46 + stor[(3 * idx) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'actionHistorySize', 0)) + 1].length > t:
            mem[t + 32] = stor1[u]
            t = t + 32
            u = u + 1
            continue 
        mem[_44 + 32] = _46
        _77 = mem[64]
        mem[64] = mem[64] + ceil32(stor[(3 * idx) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'actionHistorySize', 0)) + 2].length) + 32
        mem[_77] = stor[(3 * idx) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'actionHistorySize', 0)) + 2].length
        mem[0] = (3 * idx) + sha3(sha3(address(msg.sender), 0)) + 2
        mem[_77 + 32] = uint256(stor[sha3((3 * idx) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'actionHistorySize', 0)) + 2)].field_0)
        t = _77 + 32
        u = sha3(mem[0])
        while _77 + stor[(3 * idx) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'actionHistorySize', 0)) + 2].length > t:
            mem[t + 32] = stor1[u]
            t = t + 32
            u = u + 1
            continue 
        mem[_44 + 64] = _77
        mem[s] = _44
        s = s + 32
        idx = idx + 1
        continue 
    require arg1 < mem[352]
    _42 = mem[mem[(32 * arg1) + 384] + 32]
    _43 = mem[mem[(32 * arg1) + 384] + 64]
    _45 = mem[64]
    require mem[mem[(32 * arg1) + 384]] <= 2
    mem[mem[64]] = mem[mem[(32 * arg1) + 384] + 31 len 1]
    mem[mem[64] + 32] = 96
    mem[mem[64] + 96] = mem[_42]
    _48 = mem[_42]
    if not mem[_42]:
        if not mem[_42] % 32:
            mem[mem[64] + 64] = mem[_42] + 128
            mem[_48 + _45 + 128] = mem[_43]
            _52 = mem[_43]
            if not mem[_43]:
                if not mem[_43] % 32:
                    return memory
                      from mem[64]
                       len mem[_43] + _48 + _45 + -mem[64] + 160
                mem[floor32(mem[_43]) + _48 + _45 + 160] = mem[floor32(mem[_43]) + _48 + _45 + -(mem[_43] % 32) + 192 len mem[_43] % 32]
            else:
                mem[_48 + _45 + 160] = mem[_43 + 32]
                mem[_48 + _45 + 192 len floor32(_52 - 1)] = mem[_43 + 64 len floor32(_52 - 1)]
                if not _52 % 32:
                    return memory
                      from mem[64]
                       len _52 + _48 + _45 + -mem[64] + 160
                mem[floor32(_52) + _48 + _45 + 160] = mem[floor32(_52) + _48 + _45 + -(_52 % 32) + 192 len _52 % 32]
            return memory
              from mem[64]
               len floor32(_52) + _48 + _45 + -mem[64] + 192
        mem[floor32(mem[_42]) + mem[64] + 128] = mem[floor32(mem[_42]) + mem[64] + -(mem[_42] % 32) + 160 len mem[_42] % 32]
        mem[mem[64] + 64] = floor32(_48) + 160
        mem[floor32(_48) + _45 + 160] = mem[_43]
        _57 = mem[_43]
        if not mem[_43]:
            if not mem[_43] % 32:
                return memory
                  from mem[64]
                   len mem[_43] + floor32(_48) + _45 + -mem[64] + 192
            mem[floor32(mem[_43]) + floor32(_48) + _45 + 192] = mem[floor32(mem[_43]) + floor32(_48) + _45 + -(mem[_43] % 32) + 224 len mem[_43] % 32]
        else:
            mem[floor32(_48) + _45 + 192] = mem[_43 + 32]
            mem[floor32(_48) + _45 + 224 len floor32(_57 - 1)] = mem[_43 + 64 len floor32(_57 - 1)]
            if not _57 % 32:
                return memory
                  from mem[64]
                   len _57 + floor32(_48) + _45 + -mem[64] + 192
            mem[floor32(_57) + floor32(_48) + _45 + 192] = mem[floor32(_57) + floor32(_48) + _45 + -(_57 % 32) + 224 len _57 % 32]
        return memory
          from mem[64]
           len floor32(_57) + floor32(_48) + _45 + -mem[64] + 224
    mem[mem[64] + 128] = mem[_42 + 32]
    mem[mem[64] + 160 len floor32(_48 - 1)] = mem[_42 + 64 len floor32(_48 - 1)]
    if not _48 % 32:
        mem[mem[64] + 64] = _48 + 128
        mem[_48 + _45 + 128] = mem[_43]
        _97 = mem[_43]
        if not mem[_43]:
            if not mem[_43] % 32:
                return memory
                  from mem[64]
                   len mem[_43] + _48 + _45 + -mem[64] + 160
            mem[floor32(mem[_43]) + _48 + _45 + 160] = mem[floor32(mem[_43]) + _48 + _45 + -(mem[_43] % 32) + 192 len mem[_43] % 32]
        else:
            mem[_48 + _45 + 160] = mem[_43 + 32]
            mem[_48 + _45 + 192 len floor32(_97 - 1)] = mem[_43 + 64 len floor32(_97 - 1)]
            if not _97 % 32:
                return memory
                  from mem[64]
                   len _97 + _48 + _45 + -mem[64] + 160
            mem[floor32(_97) + _48 + _45 + 160] = mem[floor32(_97) + _48 + _45 + -(_97 % 32) + 192 len _97 % 32]
        return memory
          from mem[64]
           len floor32(_97) + _48 + _45 + -mem[64] + 192
    mem[floor32(_48) + mem[64] + 128] = mem[floor32(_48) + mem[64] + -(_48 % 32) + 160 len _48 % 32]
    mem[mem[64] + 64] = floor32(_48) + 160
    mem[floor32(_48) + _45 + 160] = mem[_43]
    _102 = mem[_43]
    if not mem[_43]:
        if not mem[_43] % 32:
            return memory
              from mem[64]
               len mem[_43] + floor32(_48) + _45 + -mem[64] + 192
        mem[floor32(mem[_43]) + floor32(_48) + _45 + 192] = mem[floor32(mem[_43]) + floor32(_48) + _45 + -(mem[_43] % 32) + 224 len mem[_43] % 32]
    else:
        mem[floor32(_48) + _45 + 192] = mem[_43 + 32]
        mem[floor32(_48) + _45 + 224 len floor32(_102 - 1)] = mem[_43 + 64 len floor32(_102 - 1)]
        if not _102 % 32:
            return memory
              from mem[64]
               len _102 + floor32(_48) + _45 + -mem[64] + 192
        mem[floor32(_102) + floor32(_48) + _45 + 192] = mem[floor32(_102) + floor32(_48) + _45 + -(_102 % 32) + 224 len _102 % 32]
    return memory
      from mem[64]
       len floor32(_102) + floor32(_48) + _45 + -mem[64] + 224
}

function getLastAction(address arg1) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[288] = 0
    mem[224] = 288
    mem[320] = 0
    mem[256] = 320
    mem[0] = arg1
    mem[32] = 0
    mem[64] = (32 * uint256(actionHistorySize[address(arg1)].field_0)) + 384
    mem[352] = uint256(actionHistorySize[address(arg1)].field_0)
    s = 384
    idx = 0
    while idx < uint256(actionHistorySize[address(arg1)].field_0):
        mem[0] = sha3(address(arg1), 0)
        _62 = mem[64]
        mem[64] = mem[64] + 96
        require uint8(actionHistorySize[address(arg1)][idx].field_0) <= 2
        mem[_62] = uint8(actionHistorySize[address(arg1)][idx].field_0)
        _68 = mem[64]
        mem[64] = mem[64] + ceil32(stor[(3 * idx) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'actionHistorySize', 0)) + 1].length) + 32
        mem[_68] = stor[(3 * idx) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'actionHistorySize', 0)) + 1].length
        mem[0] = (3 * idx) + sha3(sha3(address(arg1), 0)) + 1
        mem[_68 + 32] = uint256(stor[sha3((3 * idx) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'actionHistorySize', 0)) + 1)].field_0)
        t = _68 + 32
        u = sha3(mem[0])
        while _68 + stor[(3 * idx) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'actionHistorySize', 0)) + 1].length > t:
            mem[t + 32] = stor1[u]
            t = t + 32
            u = u + 1
            continue 
        mem[_62 + 32] = _68
        _123 = mem[64]
        mem[64] = mem[64] + ceil32(stor[(3 * idx) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'actionHistorySize', 0)) + 2].length) + 32
        mem[_123] = stor[(3 * idx) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'actionHistorySize', 0)) + 2].length
        mem[0] = (3 * idx) + sha3(sha3(address(arg1), 0)) + 2
        mem[_123 + 32] = uint256(stor[sha3((3 * idx) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'actionHistorySize', 0)) + 2)].field_0)
        t = _123 + 32
        u = sha3(mem[0])
        while _123 + stor[(3 * idx) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'actionHistorySize', 0)) + 2].length > t:
            mem[t + 32] = stor1[u]
            t = t + 32
            u = u + 1
            continue 
        mem[_62 + 64] = _123
        mem[s] = _62
        s = s + 32
        idx = idx + 1
        continue 
    if mem[352] < 1:
        _60 = mem[64]
        mem[64] = mem[64] + 32
        mem[_60] = 0
        _61 = mem[64]
        mem[64] = mem[64] + 32
        mem[_61] = 0
        _67 = mem[64]
        mem[mem[64]] = 2
        mem[mem[64] + 32] = 96
        mem[mem[64] + 96] = 0
        mem[mem[64] + 64] = 128
        mem[_67 + 128] = 0
        return memory
          from mem[64]
           len _67 + -mem[64] + 160
    require mem[352] - 1 < mem[352]
    _65 = mem[mem[(32 * mem[352] - 1) + 384] + 32]
    _66 = mem[mem[(32 * mem[352] - 1) + 384] + 64]
    _69 = mem[64]
    require mem[mem[(32 * mem[352] - 1) + 384]] <= 2
    mem[mem[64]] = mem[mem[(32 * mem[352] - 1) + 384] + 31 len 1]
    mem[mem[64] + 32] = 96
    mem[mem[64] + 96] = mem[_65]
    _74 = mem[_65]
    if not mem[_65]:
        if not mem[_65] % 32:
            mem[mem[64] + 64] = mem[_65] + 128
            mem[_74 + _69 + 128] = mem[_66]
            _82 = mem[_66]
            if not mem[_66]:
                if not mem[_66] % 32:
                    return memory
                      from mem[64]
                       len mem[_66] + _74 + _69 + -mem[64] + 160
                mem[floor32(mem[_66]) + _74 + _69 + 160] = mem[floor32(mem[_66]) + _74 + _69 + -(mem[_66] % 32) + 192 len mem[_66] % 32]
            else:
                mem[_74 + _69 + 160] = mem[_66 + 32]
                mem[_74 + _69 + 192 len floor32(_82 - 1)] = mem[_66 + 64 len floor32(_82 - 1)]
                if not _82 % 32:
                    return memory
                      from mem[64]
                       len _82 + _74 + _69 + -mem[64] + 160
                mem[floor32(_82) + _74 + _69 + 160] = mem[floor32(_82) + _74 + _69 + -(_82 % 32) + 192 len _82 % 32]
            return memory
              from mem[64]
               len floor32(_82) + _74 + _69 + -mem[64] + 192
        mem[floor32(mem[_65]) + mem[64] + 128] = mem[floor32(mem[_65]) + mem[64] + -(mem[_65] % 32) + 160 len mem[_65] % 32]
        mem[mem[64] + 64] = floor32(_74) + 160
        mem[floor32(_74) + _69 + 160] = mem[_66]
        _87 = mem[_66]
        if not mem[_66]:
            if not mem[_66] % 32:
                return memory
                  from mem[64]
                   len mem[_66] + floor32(_74) + _69 + -mem[64] + 192
            mem[floor32(mem[_66]) + floor32(_74) + _69 + 192] = mem[floor32(mem[_66]) + floor32(_74) + _69 + -(mem[_66] % 32) + 224 len mem[_66] % 32]
        else:
            mem[floor32(_74) + _69 + 192] = mem[_66 + 32]
            mem[floor32(_74) + _69 + 224 len floor32(_87 - 1)] = mem[_66 + 64 len floor32(_87 - 1)]
            if not _87 % 32:
                return memory
                  from mem[64]
                   len _87 + floor32(_74) + _69 + -mem[64] + 192
            mem[floor32(_87) + floor32(_74) + _69 + 192] = mem[floor32(_87) + floor32(_74) + _69 + -(_87 % 32) + 224 len _87 % 32]
        return memory
          from mem[64]
           len floor32(_87) + floor32(_74) + _69 + -mem[64] + 224
    mem[mem[64] + 128] = mem[_65 + 32]
    mem[mem[64] + 160 len floor32(_74 - 1)] = mem[_65 + 64 len floor32(_74 - 1)]
    if not _74 % 32:
        mem[mem[64] + 64] = _74 + 128
        mem[_74 + _69 + 128] = mem[_66]
        _156 = mem[_66]
        if not mem[_66]:
            if not mem[_66] % 32:
                return memory
                  from mem[64]
                   len mem[_66] + _74 + _69 + -mem[64] + 160
            mem[floor32(mem[_66]) + _74 + _69 + 160] = mem[floor32(mem[_66]) + _74 + _69 + -(mem[_66] % 32) + 192 len mem[_66] % 32]
        else:
            mem[_74 + _69 + 160] = mem[_66 + 32]
            mem[_74 + _69 + 192 len floor32(_156 - 1)] = mem[_66 + 64 len floor32(_156 - 1)]
            if not _156 % 32:
                return memory
                  from mem[64]
                   len _156 + _74 + _69 + -mem[64] + 160
            mem[floor32(_156) + _74 + _69 + 160] = mem[floor32(_156) + _74 + _69 + -(_156 % 32) + 192 len _156 % 32]
        return memory
          from mem[64]
           len floor32(_156) + _74 + _69 + -mem[64] + 192
    mem[floor32(_74) + mem[64] + 128] = mem[floor32(_74) + mem[64] + -(_74 % 32) + 160 len _74 % 32]
    mem[mem[64] + 64] = floor32(_74) + 160
    mem[floor32(_74) + _69 + 160] = mem[_66]
    _168 = mem[_66]
    if not mem[_66]:
        if not mem[_66] % 32:
            return memory
              from mem[64]
               len mem[_66] + floor32(_74) + _69 + -mem[64] + 192
        mem[floor32(mem[_66]) + floor32(_74) + _69 + 192] = mem[floor32(mem[_66]) + floor32(_74) + _69 + -(mem[_66] % 32) + 224 len mem[_66] % 32]
    else:
        mem[floor32(_74) + _69 + 192] = mem[_66 + 32]
        mem[floor32(_74) + _69 + 224 len floor32(_168 - 1)] = mem[_66 + 64 len floor32(_168 - 1)]
        if not _168 % 32:
            return memory
              from mem[64]
               len _168 + floor32(_74) + _69 + -mem[64] + 192
        mem[floor32(_168) + floor32(_74) + _69 + 192] = mem[floor32(_168) + floor32(_74) + _69 + -(_168 % 32) + 224 len _168 % 32]
    return memory
      from mem[64]
       len floor32(_168) + floor32(_74) + _69 + -mem[64] + 224
}



}
