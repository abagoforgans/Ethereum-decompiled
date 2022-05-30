contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getMetadata(uint256 arg1) {
    mem[96] = 27
    mem[128] = 'https://cryptoflowers.io/v/'
    if not arg1:
        mem[160] = 1
        mem[192] = '0'
        mem[224] = 28
        mem[256 len 896] = code.data[937 len 896]
        idx = 0
        s = 0
        while idx < 27:
            require idx < 27
            require s < 28
            mem[s + 256 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        idx = 0
        s = 27
        while idx < 1:
            require idx < 1
            require s < 28
            mem[s + 256 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        return Array(len=28, data=mem[260 len 28])
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    mem[160] = s
    mem[64] = ceil32(s) + 192
    if not s:
        t = s - 1
        idx = arg1
        while idx:
            require t < mem[160]
            mem[t + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _151 = mem[160]
        _152 = mem[96]
        _153 = mem[64]
        mem[mem[64]] = mem[96] + mem[160]
        mem[64] = mem[64] + floor32(_152 + _151 + 31) + 32
        if not _152 + _151:
            _225 = mem[96]
            idx = 0
            s = 0
            while idx < _225:
                require idx < mem[96]
                require s < mem[_153]
                mem[_153 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
                idx = idx + 1
                s = s + 1
                continue 
            _293 = mem[160]
            idx = 0
            s = _225
            while idx < _293:
                require idx < mem[160]
                require s < mem[_153]
                mem[_153 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('var', 0)), 32))), 0) - 256
                _293 = mem[160]
                idx = idx + 1
                s = s + 1
                continue 
            _309 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[_153]
            _311 = mem[_153]
            mem[mem[64] + 64 len ceil32(mem[_153])] = mem[_153 + 32 len ceil32(mem[_153])]
            if not _311 % 32:
                return 32, mem[mem[64] + 32 len _311 + 32]
            mem[floor32(_311) + mem[64] + 64] = mem[floor32(_311) + mem[64] + -(_311 % 32) + 96 len _311 % 32]
            return memory
              from mem[64]
               len floor32(_311) + _309 + -mem[64] + 96
        mem[_153 + 32 len 32 * _152 + _151] = code.data[937 len 32 * _152 + _151]
        _226 = mem[96]
        idx = 0
        s = 0
        while idx < _226:
            require idx < mem[96]
            require s < mem[_153]
            mem[_153 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        _294 = mem[160]
        idx = 0
        s = _226
        while idx < _294:
            require idx < mem[160]
            require s < mem[_153]
            mem[_153 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('var', 0)), 32))), 0) - 256
            _294 = mem[160]
            idx = idx + 1
            s = s + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_153]
        _314 = mem[_153]
        mem[mem[64] + 64 len ceil32(mem[_153])] = mem[_153 + 32 len ceil32(mem[_153])]
        if not _314 % 32:
            return 32, mem[mem[64] + 32 len _314 + 32]
        mem[floor32(_314) + mem[64] + 64] = mem[floor32(_314) + mem[64] + -(_314 % 32) + 96 len _314 % 32]
        return 32, mem[mem[64] + 32 len floor32(_314) + 64]
    mem[192 len 32 * s] = code.data[937 len 32 * s]
    t = s - 1
    idx = arg1
    while idx:
        require t < mem[160]
        mem[t + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _154 = mem[160]
    _155 = mem[96]
    _156 = mem[64]
    mem[mem[64]] = mem[96] + mem[160]
    mem[64] = mem[64] + floor32(_155 + _154 + 31) + 32
    if not _155 + _154:
        _227 = mem[96]
        idx = 0
        s = 0
        while idx < _227:
            require idx < mem[96]
            require s < mem[_156]
            mem[_156 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            idx = idx + 1
            s = s + 1
            continue 
        _295 = mem[160]
        idx = 0
        s = _227
        while idx < _295:
            require idx < mem[160]
            require s < mem[_156]
            mem[_156 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('var', 0)), 32))), 0) - 256
            _295 = mem[160]
            idx = idx + 1
            s = s + 1
            continue 
        _315 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_156]
        _317 = mem[_156]
        mem[mem[64] + 64 len ceil32(mem[_156])] = mem[_156 + 32 len ceil32(mem[_156])]
        if not _317 % 32:
            return 32, mem[mem[64] + 32 len _317 + 32]
        mem[floor32(_317) + mem[64] + 64] = mem[floor32(_317) + mem[64] + -(_317 % 32) + 96 len _317 % 32]
        return memory
          from mem[64]
           len floor32(_317) + _315 + -mem[64] + 96
    mem[_156 + 32 len 32 * _155 + _154] = code.data[937 len 32 * _155 + _154]
    _228 = mem[96]
    idx = 0
    s = 0
    while idx < _228:
        require idx < mem[96]
        require s < mem[_156]
        mem[_156 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    _296 = mem[160]
    idx = 0
    s = _228
    while idx < _296:
        require idx < mem[160]
        require s < mem[_156]
        mem[_156 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 192, ('var', 0)), 32))), 0) - 256
        _296 = mem[160]
        idx = idx + 1
        s = s + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_156]
    _320 = mem[_156]
    mem[mem[64] + 64 len ceil32(mem[_156])] = mem[_156 + 32 len ceil32(mem[_156])]
    if not _320 % 32:
        return 32, mem[mem[64] + 32 len _320 + 32]
    mem[floor32(_320) + mem[64] + 64] = mem[floor32(_320) + mem[64] + -(_320 % 32) + 96 len _320 % 32]
    return 32, mem[mem[64] + 32 len floor32(_320) + 64]
}



}
