contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() {
    require code.data[1877 len 32] > 0
    stor0 = code.data[1877 len 32]
    return code.data[68 len 1809]
}



// =====================  Runtime code  =====================


uint256 blocksToLive;
mapping of struct stor1;

function ringhashFound(bytes32 arg1) {
    return bool(stor1[arg1].field_0)
}

function blocksToLive() {
    return blocksToLive
}

function canSubmit(bytes32 arg1, address arg2) {
    if not stor1[arg1].field_0:
        return not bool(stor1[arg1].field_0)
    if stor1[arg1].field_256 + blocksToLive < block.number:
        return (stor1[arg1].field_256 + blocksToLive < block.number)
    return (stor1[arg1].field_0 == arg2)
}

function calculateRinghash(uint256 arg1, uint8[] arg2, bytes32[] arg3, bytes32[] arg4) {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = arg4.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    if arg1 != arg2.length - 1:
        emit Error('invalid ring data');
        revert
    if arg1 != arg3.length - 1:
        emit Error('invalid ring data');
        revert
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192] = 17
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 'invalid ring data'
    if arg1 != arg4.length - 1:
        emit Error('invalid ring data');
        revert
    require 0 < arg2.length
    idx = 1
    s = mem[128]
    while idx < arg1:
        require idx < arg2.length
        idx = idx + 1
        s = s xor mem[(32 * idx) + 128]
        continue 
    require 0 < arg3.length
    idx = 1
    t = mem[(32 * arg2.length) + 160]
    while idx < arg1:
        require idx < mem[(32 * arg2.length) + 128]
        _112 = mem[(32 * idx) + (32 * arg2.length) + 160]
        _115 = mem[64]
        mem[64] = mem[64] + 32
        mem[_115] = 0
        _117 = mem[64]
        mem[64] = mem[64] + 32
        mem[_117] = 0
        _122 = mem[64]
        if msize < mem[64]:
            mem[mem[64]] = 32
            mem[64] = mem[64] + 1056
            s = 0
            while s < 32:
                require s < mem[_122]
                mem[_122 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('xor', ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 2)), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', 2)), 0)), ('var', 1)), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', '_112')), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', '_112')), 0)), ('var', 1)))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('xor', ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 2)), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', 2)), 0)), ('var', 1)), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', '_112')), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', '_112')), 0)), ('var', 1)))), 0) - 256
                s = s + 1
                continue 
            idx = idx + 1
            t = mem[_122 + 32]
            continue 
        _126 = msize
        mem[msize] = 32
        mem[64] = _126 + 1056
        s = 0
        while s < 32:
            require s < mem[_126]
            mem[_126 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('xor', ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 2)), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', 2)), 0)), ('var', 1)), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', '_112')), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', '_112')), 0)), ('var', 1)))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('xor', ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 2)), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', 2)), 0)), ('var', 1)), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', '_112')), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', '_112')), 0)), ('var', 1)))), 0) - 256
            s = s + 1
            continue 
        idx = idx + 1
        t = mem[_126 + 32]
        continue 
    require 0 < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
    idx = 1
    u = mem[(32 * arg2.length) + (32 * arg3.length) + 192]
    while idx < arg1:
        require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
        _148 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]
        _151 = mem[64]
        mem[64] = mem[64] + 32
        mem[_151] = 0
        _152 = mem[64]
        mem[64] = mem[64] + 32
        mem[_152] = 0
        _153 = mem[64]
        if msize < mem[64]:
            mem[mem[64]] = 32
            mem[64] = mem[64] + 1056
            s = 0
            while s < 32:
                require s < mem[_153]
                mem[_153 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('xor', ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 3)), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', 3)), 0)), ('var', 1)), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', '_148')), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', '_148')), 0)), ('var', 1)))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('xor', ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 3)), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', 3)), 0)), ('var', 1)), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', '_148')), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', '_148')), 0)), ('var', 1)))), 0) - 256
                s = s + 1
                continue 
            idx = idx + 1
            u = mem[_153 + 32]
            continue 
        _155 = msize
        mem[msize] = 32
        mem[64] = _155 + 1056
        s = 0
        while s < 32:
            require s < mem[_155]
            mem[_155 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('xor', ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 3)), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', 3)), 0)), ('var', 1)), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', '_148')), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', '_148')), 0)), ('var', 1)))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('xor', ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 3)), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', 3)), 0)), ('var', 1)), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', '_148')), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', '_148')), 0)), ('var', 1)))), 0) - 256
            s = s + 1
            continue 
        idx = idx + 1
        u = mem[_155 + 32]
        continue 
    return sha3(uint8(s), t, u)
}

function submitRinghash(uint256 arg1, address arg2, uint8[] arg3, bytes32[] arg4, bytes32[] arg5) {
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg5.length
    mem[(32 * arg3.length) + (32 * arg4.length) + 192 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    if arg1 != arg3.length - 1:
        emit Error('invalid ring data');
        revert
    if arg1 != arg4.length - 1:
        emit Error('invalid ring data');
        revert
    mem[64] = (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = 17
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = 'invalid ring data'
    if arg1 != arg5.length - 1:
        emit Error('invalid ring data');
        revert
    require 0 < arg3.length
    idx = 1
    s = mem[128]
    while idx < arg1:
        require idx < arg3.length
        idx = idx + 1
        s = s xor mem[(32 * idx) + 128]
        continue 
    require 0 < arg4.length
    idx = 1
    t = mem[(32 * arg3.length) + 160]
    while idx < arg1:
        require idx < mem[(32 * arg3.length) + 128]
        _170 = mem[(32 * idx) + (32 * arg3.length) + 160]
        _173 = mem[64]
        mem[64] = mem[64] + 32
        mem[_173] = 0
        _175 = mem[64]
        mem[64] = mem[64] + 32
        mem[_175] = 0
        _180 = mem[64]
        if msize < mem[64]:
            mem[mem[64]] = 32
            mem[64] = mem[64] + 1056
            s = 0
            while s < 32:
                require s < mem[_180]
                mem[_180 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('xor', ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 2)), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', 2)), 0)), ('var', 1)), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', '_170')), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', '_170')), 0)), ('var', 1)))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('xor', ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 2)), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', 2)), 0)), ('var', 1)), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', '_170')), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', '_170')), 0)), ('var', 1)))), 0) - 256
                s = s + 1
                continue 
            idx = idx + 1
            t = mem[_180 + 32]
            continue 
        _182 = msize
        mem[msize] = 32
        mem[64] = _182 + 1056
        s = 0
        while s < 32:
            require s < mem[_182]
            mem[_182 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('xor', ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 2)), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', 2)), 0)), ('var', 1)), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', '_170')), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', '_170')), 0)), ('var', 1)))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('xor', ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 2)), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', 2)), 0)), ('var', 1)), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', '_170')), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', '_170')), 0)), ('var', 1)))), 0) - 256
            s = s + 1
            continue 
        idx = idx + 1
        t = mem[_182 + 32]
        continue 
    require 0 < mem[(32 * arg3.length) + (32 * arg4.length) + 160]
    idx = 1
    u = mem[(32 * arg3.length) + (32 * arg4.length) + 192]
    while idx < arg1:
        require idx < mem[(32 * arg3.length) + (32 * arg4.length) + 160]
        _237 = mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + 192]
        _239 = mem[64]
        mem[64] = mem[64] + 32
        mem[_239] = 0
        _240 = mem[64]
        mem[64] = mem[64] + 32
        mem[_240] = 0
        _241 = mem[64]
        if msize < mem[64]:
            mem[mem[64]] = 32
            mem[64] = mem[64] + 1056
            s = 0
            while s < 32:
                require s < mem[_241]
                mem[_241 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('xor', ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 3)), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', 3)), 0)), ('var', 1)), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', '_237')), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', '_237')), 0)), ('var', 1)))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('xor', ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 3)), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', 3)), 0)), ('var', 1)), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', '_237')), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', '_237')), 0)), ('var', 1)))), 0) - 256
                s = s + 1
                continue 
            idx = idx + 1
            u = mem[_241 + 32]
            continue 
        _244 = msize
        mem[msize] = 32
        mem[64] = _244 + 1056
        s = 0
        while s < 32:
            require s < mem[_244]
            mem[_244 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('xor', ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 3)), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', 3)), 0)), ('var', 1)), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', '_237')), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', '_237')), 0)), ('var', 1)))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('xor', ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 3)), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', 3)), 0)), ('var', 1)), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', '_237')), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', '_237')), 0)), ('var', 1)))), 0) - 256
            s = s + 1
            continue 
        idx = idx + 1
        u = mem[_244 + 32]
        continue 
    if stor1[uint8(s)][t][u].field_0:
        if stor1[uint8(s)][t][u].field_256 + blocksToLive >= block.number:
            if stor1[uint8(s)][t][u].field_0 != arg2:
                emit Error('Ringhash submitted');
                revert
    stor1[uint8(s)][t][u].field_0 = arg2
    stor1[uint8(s)][t][u].field_256 = block.number
    emit RinghashSubmitted(arg2, sha3(uint8(s), t, u));
}

function _fallback() payable {
    if uint32(call.func_hash) == unknown_0x3e8b2a1d(?????):
        require not msg.value
        mem[96] = arg2.length
        mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
        mem[(32 * arg2.length) + 128] = arg3.length
        mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = arg4.length
        mem[(32 * arg2.length) + (32 * arg3.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
        if arg1 != arg2.length - 1:
            emit Error('invalid ring data');
            revert
        if arg1 != arg3.length - 1:
            emit Error('invalid ring data');
            revert
        mem[64] = (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256
        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192] = 17
        mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 'invalid ring data'
        if arg1 != arg4.length - 1:
            emit Error('invalid ring data');
            revert
        require 0 < arg2.length
        idx = 1
        s = mem[128]
        while idx < arg1:
            require idx < arg2.length
            idx = idx + 1
            s = s xor mem[(32 * idx) + 128]
            continue 
        require 0 < arg3.length
        idx = 1
        t = mem[(32 * arg2.length) + 160]
        while idx < arg1:
            require idx < mem[(32 * arg2.length) + 128]
            _293 = mem[(32 * idx) + (32 * arg2.length) + 160]
            _298 = mem[64]
            mem[64] = mem[64] + 32
            mem[_298] = 0
            _302 = mem[64]
            mem[64] = mem[64] + 32
            mem[_302] = 0
            _309 = mem[64]
            if msize < mem[64]:
                mem[mem[64]] = 32
                mem[64] = mem[64] + 1056
                s = 0
                while s < 32:
                    require s < mem[_309]
                    mem[_309 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('xor', ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 2)), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', 2)), 0)), ('var', 1)), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', '_293')), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', '_293')), 0)), ('var', 1)))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('xor', ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 2)), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', 2)), 0)), ('var', 1)), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', '_293')), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', '_293')), 0)), ('var', 1)))), 0) - 256
                    s = s + 1
                    continue 
                idx = idx + 1
                t = mem[_309 + 32]
                continue 
            _319 = msize
            mem[msize] = 32
            mem[64] = _319 + 1056
            s = 0
            while s < 32:
                require s < mem[_319]
                mem[_319 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('xor', ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 2)), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', 2)), 0)), ('var', 1)), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', '_293')), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', '_293')), 0)), ('var', 1)))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('xor', ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 2)), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', 2)), 0)), ('var', 1)), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', '_293')), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', '_293')), 0)), ('var', 1)))), 0) - 256
                s = s + 1
                continue 
            idx = idx + 1
            t = mem[_319 + 32]
            continue 
        require 0 < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
        idx = 1
        u = mem[(32 * arg2.length) + (32 * arg3.length) + 192]
        while idx < arg1:
            require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
            _393 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]
            _400 = mem[64]
            mem[64] = mem[64] + 32
            mem[_400] = 0
            _403 = mem[64]
            mem[64] = mem[64] + 32
            mem[_403] = 0
            _405 = mem[64]
            if msize < mem[64]:
                mem[mem[64]] = 32
                mem[64] = mem[64] + 1056
                s = 0
                while s < 32:
                    require s < mem[_405]
                    mem[_405 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('xor', ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 3)), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', 3)), 0)), ('var', 1)), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', '_393')), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', '_393')), 0)), ('var', 1)))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('xor', ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 3)), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', 3)), 0)), ('var', 1)), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', '_393')), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', '_393')), 0)), ('var', 1)))), 0) - 256
                    s = s + 1
                    continue 
                idx = idx + 1
                u = mem[_405 + 32]
                continue 
            _409 = msize
            mem[msize] = 32
            mem[64] = _409 + 1056
            s = 0
            while s < 32:
                require s < mem[_409]
                mem[_409 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('xor', ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 3)), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', 3)), 0)), ('var', 1)), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', '_393')), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', '_393')), 0)), ('var', 1)))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('xor', ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 3)), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', 3)), 0)), ('var', 1)), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', '_393')), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', '_393')), 0)), ('var', 1)))), 0) - 256
                s = s + 1
                continue 
            idx = idx + 1
            u = mem[_409 + 32]
            continue 
        return sha3(uint8(s), t, u)
    if unknown_0xb8ab45ca(?????) == uint32(call.func_hash):
        require not msg.value
        return bool(stor1[arg1].field_0)
    if unknown_0xbfcf73e7(?????) == uint32(call.func_hash):
        require not msg.value
        return blocksToLive
    if unknown_0xc34b45c9(?????) == uint32(call.func_hash):
        require not msg.value
        if not stor1[arg1].field_0:
            return not bool(stor1[arg1].field_0)
        if stor1[arg1].field_256 + blocksToLive < block.number:
            return (stor1[arg1].field_256 + blocksToLive < block.number)
        return (stor1[arg1].field_0 == address(arg2))
    require unknown_0xe62a0bc3(?????) == uint32(call.func_hash)
    require not msg.value
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg5.length
    mem[(32 * arg3.length) + (32 * arg4.length) + 192 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    if arg1 != arg3.length - 1:
        emit Error('invalid ring data');
        revert
    if arg1 != arg4.length - 1:
        emit Error('invalid ring data');
        revert
    mem[64] = (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 192] = 17
    mem[(32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 224] = 'invalid ring data'
    if arg1 != arg5.length - 1:
        emit Error('invalid ring data');
        revert
    require 0 < arg3.length
    idx = 1
    s = mem[128]
    while idx < arg1:
        require idx < arg3.length
        idx = idx + 1
        s = s xor mem[(32 * idx) + 128]
        continue 
    require 0 < arg4.length
    idx = 1
    t = mem[(32 * arg3.length) + 160]
    while idx < arg1:
        require idx < mem[(32 * arg3.length) + 128]
        _294 = mem[(32 * idx) + (32 * arg3.length) + 160]
        _300 = mem[64]
        mem[64] = mem[64] + 32
        mem[_300] = 0
        _304 = mem[64]
        mem[64] = mem[64] + 32
        mem[_304] = 0
        _315 = mem[64]
        if msize < mem[64]:
            mem[mem[64]] = 32
            mem[64] = mem[64] + 1056
            s = 0
            while s < 32:
                require s < mem[_315]
                mem[_315 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('xor', ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 2)), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', 2)), 0)), ('var', 1)), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', '_294')), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', '_294')), 0)), ('var', 1)))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('xor', ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 2)), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', 2)), 0)), ('var', 1)), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', '_294')), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', '_294')), 0)), ('var', 1)))), 0) - 256
                s = s + 1
                continue 
            idx = idx + 1
            t = mem[_315 + 32]
            continue 
        _320 = msize
        mem[msize] = 32
        mem[64] = _320 + 1056
        s = 0
        while s < 32:
            require s < mem[_320]
            mem[_320 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('xor', ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 2)), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', 2)), 0)), ('var', 1)), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', '_294')), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', '_294')), 0)), ('var', 1)))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('xor', ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 2)), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', 2)), 0)), ('var', 1)), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', '_294')), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', '_294')), 0)), ('var', 1)))), 0) - 256
            s = s + 1
            continue 
        idx = idx + 1
        t = mem[_320 + 32]
        continue 
    require 0 < mem[(32 * arg3.length) + (32 * arg4.length) + 160]
    idx = 1
    u = mem[(32 * arg3.length) + (32 * arg4.length) + 192]
    while idx < arg1:
        require idx < mem[(32 * arg3.length) + (32 * arg4.length) + 160]
        _397 = mem[(32 * idx) + (32 * arg3.length) + (32 * arg4.length) + 192]
        _402 = mem[64]
        mem[64] = mem[64] + 32
        mem[_402] = 0
        _404 = mem[64]
        mem[64] = mem[64] + 32
        mem[_404] = 0
        _407 = mem[64]
        if msize < mem[64]:
            mem[mem[64]] = 32
            mem[64] = mem[64] + 1056
            s = 0
            while s < 32:
                require s < mem[_407]
                mem[_407 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('xor', ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 3)), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', 3)), 0)), ('var', 1)), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', '_397')), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', '_397')), 0)), ('var', 1)))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('xor', ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 3)), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', 3)), 0)), ('var', 1)), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', '_397')), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', '_397')), 0)), ('var', 1)))), 0) - 256
                s = s + 1
                continue 
            idx = idx + 1
            u = mem[_407 + 32]
            continue 
        _411 = msize
        mem[msize] = 32
        mem[64] = _411 + 1056
        s = 0
        while s < 32:
            require s < mem[_411]
            mem[_411 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('xor', ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 3)), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', 3)), 0)), ('var', 1)), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', '_397')), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', '_397')), 0)), ('var', 1)))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('xor', ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', 3)), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', 3)), 0)), ('var', 1)), ('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', '_397')), 0))), ('add', -8, (('mask_shl', 256, 0, -3, ('var', '_397')), 0)), ('var', 1)))), 0) - 256
            s = s + 1
            continue 
        idx = idx + 1
        u = mem[_411 + 32]
        continue 
    if stor1[uint8(s)][t][u].field_0:
        if stor1[uint8(s)][t][u].field_256 + blocksToLive >= block.number:
            if stor1[uint8(s)][t][u].field_0 != address(arg2):
                emit Error('Ringhash submitted');
                revert
    stor1[uint8(s)][t][u].field_0 = address(arg2)
    stor1[uint8(s)][t][u].field_256 = block.number
    emit RinghashSubmitted(address(arg2), sha3(uint8(s), t, u));
}



}
