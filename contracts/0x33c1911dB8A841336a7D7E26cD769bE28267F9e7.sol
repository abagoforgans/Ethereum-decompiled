contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function contains(uint256[] arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if mem[(32 * idx) + 128] != arg2:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function slice(uint256[] arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if arg3 <= arg2:
        revert with 0, 'start must be before end'
    mem[(32 * arg1.length) + 128] = arg3 - arg2
    if arg3 - arg2:
        mem[(32 * arg1.length) + 160 len 32 * arg3 - arg2] = code.data[4725 len 32 * arg3 - arg2]
    idx = 0
    while idx < arg3 - arg2:
        require idx + arg2 < arg1.length
        require idx < mem[(32 * arg1.length) + 128]
        mem[(32 * idx) + (32 * arg1.length) + 160] = mem[(32 * idx + arg2) + 128]
        idx = idx + 1
        continue 
    mem[(32 * arg1.length) + (32 * arg3 - arg2) + 160] = 32
    mem[(32 * arg1.length) + (32 * arg3 - arg2) + 192] = mem[(32 * arg1.length) + 128]
    mem[(32 * arg1.length) + (32 * arg3 - arg2) + 224 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
    return 32, mem[(32 * arg1.length) + (32 * arg3 - arg2) + 192 len (32 * mem[(32 * arg1.length) + 128]) + 32]
}

function sub_a6ebae05(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg1.length + arg2.length
    if arg1.length + arg2.length:
        mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg1.length + arg2.length] = code.data[4725 len 32 * arg1.length + arg2.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length + arg2.length
        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        require idx < arg2.length
        mem[(32 * arg1.length + idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        continue 
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg1.length + arg2.length) + 256 len floor32(arg1.length + arg2.length)] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len floor32(arg1.length + arg2.length)]
    return Array(len=arg1.length + arg2.length, data=mem[(32 * arg1.length) + (32 * arg2.length) + 192 len floor32(arg1.length + arg2.length)], mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg1.length + arg2.length) + floor32(arg1.length + arg2.length) + 256 len (32 * arg1.length + arg2.length) - floor32(arg1.length + arg2.length)]), 
}

function sub_b14463b8(?) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg2.length
    mem[64] = (64 * arg2.length) + 160
    if not arg2.length:
        idx = 0
        while idx < arg2.length:
            require idx < mem[96]
            _72 = mem[64]
            mem[mem[64] + 36] = mem[(32 * idx) + 128]
            _73 = mem[64]
            mem[mem[64]] = 36
            mem[64] = mem[64] + 68
            mem[_73 + 32] = mem[_73 + 36 len 28] or Mask(32, 224, arg3)
            _76 = mem[_73]
            t = _73 + 32
            u = mem[64]
            s = mem[_73]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_73])] = mem[_73 + floor32(mem[_73]) + -(mem[_73] % 32) + 64 len mem[_73] % 32] or Mask(8 * -(mem[_73] % 32) + 32, -(8 * -(mem[_73] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_73])])
            staticcall arg1.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _76 + _72 + -mem[64] + 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'callback failed'
                if mem[96] < 32:
                    revert with 0, 'slicing out of range'
                require idx < mem[(32 * arg2.length) + 128]
                mem[(32 * idx) + (32 * arg2.length) + 160] = mem[128]
            else:
                _140 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_140] = return_data.size
                mem[_140 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'callback failed'
                if return_data.size < 32:
                    revert with 0, 'slicing out of range'
                require idx < mem[(32 * arg2.length) + 128]
                mem[(32 * idx) + (32 * arg2.length) + 160] = mem[_140 + 32]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * arg2.length) + 128]
        _70 = mem[(32 * arg2.length) + 128]
        mem[mem[64] + 64 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
        return 32, mem[mem[64] + 32 len (32 * _70) + 32]
    mem[(32 * arg2.length) + 160 len 32 * arg2.length] = code.data[4725 len 32 * arg2.length]
    idx = 0
    while idx < arg2.length:
        require idx < mem[96]
        _81 = mem[64]
        mem[mem[64] + 36] = mem[(32 * idx) + 128]
        _82 = mem[64]
        mem[mem[64]] = 36
        mem[64] = mem[64] + 68
        mem[_82 + 32] = mem[_82 + 36 len 28] or Mask(32, 224, arg3)
        _85 = mem[_82]
        t = _82 + 32
        u = _81 + 68
        s = mem[_82]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_81 + floor32(mem[_82]) + 68] = mem[_82 + -(mem[_82] % 32) + floor32(mem[_82]) + 64 len mem[_82] % 32] or Mask(8 * -(mem[_82] % 32) + 32, -(8 * -(mem[_82] % 32) + 32) + 256, mem[_81 + floor32(mem[_82]) + 68])
        staticcall arg1.mem[_81 + 68 len 4] with:
                gas gas_remaining wei
               args mem[_81 + 72 len _85 - 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'callback failed'
            if mem[96] < 32:
                revert with 0, 'slicing out of range'
            require idx < mem[(32 * arg2.length) + 128]
            mem[(32 * idx) + (32 * arg2.length) + 160] = mem[128]
        else:
            mem[64] = _81 + ceil32(return_data.size) + 69
            mem[_81 + 68] = return_data.size
            mem[_81 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'callback failed'
            if return_data.size < 32:
                revert with 0, 'slicing out of range'
            require idx < mem[(32 * arg2.length) + 128]
            mem[(32 * idx) + (32 * arg2.length) + 160] = mem[_81 + 100]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[(32 * arg2.length) + 128]
    _79 = mem[(32 * arg2.length) + 128]
    mem[mem[64] + 64 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
    return 32, mem[mem[64] + 32 len (32 * _79) + 32]
}

function unique(uint256[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg1.length
    mem[64] = (64 * arg1.length) + 160
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            _61 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0xb32b8e2c00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 36] = _61
            mem[mem[64] + 4] = 64
            mem[mem[64] + 68] = mem[(32 * arg1.length) + 128]
            _64 = mem[(32 * arg1.length) + 128]
            s = 0
            while s < 32 * _64:
                mem[mem[64] + s + 100] = mem[(32 * arg1.length) + s + 160]
                s = s + 32
                continue 
            require ext_code.size(this.address)
            staticcall this.address.0xb32b8e2c with:
                    gas gas_remaining wei
                   args 64, _61, mem[mem[64] + 68 len (32 * _64) + 32]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * idx) + (32 * arg1.length) + 160] = _61
            idx = idx + 1
            continue 
        _60 = mem[64]
        mem[mem[64]] = arg1.length
        mem[64] = mem[64] + (32 * arg1.length) + 32
        if not arg1.length:
            idx = 0
            while idx < arg1.length:
                require idx < mem[(32 * arg1.length) + 128]
                require idx < mem[_60]
                mem[(32 * idx) + _60 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[_60]
            _130 = mem[_60]
            mem[mem[64] + 64 len floor32(mem[_60])] = mem[_60 + 32 len floor32(mem[_60])]
            return 32, mem[mem[64] + 32 len (32 * _130) + 32]
        mem[_60 + 32 len 32 * arg1.length] = code.data[4725 len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            require idx < mem[(32 * arg1.length) + 128]
            require idx < mem[_60]
            mem[(32 * idx) + _60 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_60]
        _133 = mem[_60]
        mem[mem[64] + 64 len floor32(mem[_60])] = mem[_60 + 32 len floor32(mem[_60])]
        return 32, mem[mem[64] + 32 len (32 * _133) + 32]
    mem[(32 * arg1.length) + 160 len 32 * arg1.length] = code.data[4725 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _66 = mem[(32 * idx) + 128]
        _67 = mem[64]
        mem[mem[64]] = 0xb32b8e2c00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 36] = _66
        mem[mem[64] + 4] = 64
        mem[mem[64] + 68] = mem[(32 * arg1.length) + 128]
        _69 = mem[(32 * arg1.length) + 128]
        s = 0
        while s < 32 * _69:
            mem[mem[64] + s + 100] = mem[(32 * arg1.length) + s + 160]
            s = s + 32
            continue 
        require ext_code.size(this.address)
        staticcall this.address.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len (32 * _69) + _67 + -mem[64] + 96]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * idx) + (32 * arg1.length) + 160] = _66
        idx = idx + 1
        continue 
    _65 = mem[64]
    mem[mem[64]] = arg1.length
    mem[64] = mem[64] + (32 * arg1.length) + 32
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require idx < mem[(32 * arg1.length) + 128]
            require idx < mem[_65]
            mem[(32 * idx) + _65 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_65]
        _137 = mem[_65]
        mem[mem[64] + 64 len floor32(mem[_65])] = mem[_65 + 32 len floor32(mem[_65])]
        return 32, mem[mem[64] + 32 len (32 * _137) + 32]
    mem[_65 + 32 len 32 * arg1.length] = code.data[4725 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < mem[(32 * arg1.length) + 128]
        require idx < mem[_65]
        mem[(32 * idx) + _65 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_65]
    _140 = mem[_65]
    mem[mem[64] + 64 len floor32(mem[_65])] = mem[_65 + 32 len floor32(mem[_65])]
    return 32, mem[mem[64] + 32 len (32 * _140) + 32]
}

function sub_37cec6c9(?) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg2.length
    mem[64] = (64 * arg2.length) + 160
    if not arg2.length:
        idx = 0
        s = 0
        while idx < arg2.length:
            require idx < mem[96]
            _102 = mem[64]
            mem[mem[64] + 36] = mem[(32 * idx) + 128]
            _103 = mem[64]
            mem[mem[64]] = 36
            mem[64] = mem[64] + 68
            mem[_103 + 32] = mem[_103 + 36 len 28] or Mask(32, 224, arg3)
            _106 = mem[_103]
            u = _103 + 32
            v = _102 + 68
            t = mem[_103]
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            mem[_102 + floor32(mem[_103]) + 68] = mem[_103 + -(mem[_103] % 32) + floor32(mem[_103]) + 64 len mem[_103] % 32] or Mask(8 * -(mem[_103] % 32) + 32, -(8 * -(mem[_103] % 32) + 32) + 256, mem[_102 + floor32(mem[_103]) + 68])
            staticcall arg1.mem[_102 + 68 len 4] with:
                    gas gas_remaining wei
                   args mem[_102 + 72 len _106 - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'callback failed'
                if mem[96] < 32:
                    revert with 0, 'slicing out of range'
                if mem[128] != 1:
                    idx = idx + 1
                    s = s + 1
                    continue 
            else:
                mem[64] = _102 + ceil32(return_data.size) + 69
                mem[_102 + 68] = return_data.size
                mem[_102 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'callback failed'
                if return_data.size < 32:
                    revert with 0, 'slicing out of range'
                if mem[_102 + 100] != 1:
                    idx = idx + 1
                    s = s + 1
                    continue 
            require idx < mem[96]
            require idx - s < mem[(32 * arg2.length) + 128]
            mem[(32 * idx - s) + (32 * arg2.length) + 160] = mem[(32 * idx) + 128]
            idx = idx + 1
            s = s
            continue 
        _100 = mem[64]
        mem[mem[64]] = arg2.length - s
        mem[64] = mem[64] + (32 * arg2.length - s) + 32
        if not arg2.length - s:
            t = 0
            while t < arg2.length - s:
                require t < mem[(32 * arg2.length) + 128]
                require t < mem[_100]
                mem[(32 * t) + _100 + 32] = mem[(32 * t) + (32 * arg2.length) + 160]
                t = t + 1
                continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[_100]
            _216 = mem[_100]
            mem[mem[64] + 64 len floor32(mem[_100])] = mem[_100 + 32 len floor32(mem[_100])]
            return 32, mem[mem[64] + 32 len (32 * _216) + 32]
        mem[_100 + 32 len 32 * arg2.length - s] = code.data[4725 len 32 * arg2.length - s]
        t = 0
        while t < arg2.length - s:
            require t < mem[(32 * arg2.length) + 128]
            require t < mem[_100]
            mem[(32 * t) + _100 + 32] = mem[(32 * t) + (32 * arg2.length) + 160]
            t = t + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_100]
        _219 = mem[_100]
        mem[mem[64] + 64 len floor32(mem[_100])] = mem[_100 + 32 len floor32(mem[_100])]
        return 32, mem[mem[64] + 32 len (32 * _219) + 32]
    mem[(32 * arg2.length) + 160 len 32 * arg2.length] = code.data[4725 len 32 * arg2.length]
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < mem[96]
        _109 = mem[64]
        mem[mem[64] + 36] = mem[(32 * idx) + 128]
        _110 = mem[64]
        mem[mem[64]] = 36
        mem[64] = mem[64] + 68
        mem[_110 + 32] = mem[_110 + 36 len 28] or Mask(32, 224, arg3)
        _113 = mem[_110]
        u = _110 + 32
        v = _109 + 68
        t = mem[_110]
        while t >= 32:
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            t = t - 32
            continue 
        mem[_109 + floor32(mem[_110]) + 68] = mem[_110 + -(mem[_110] % 32) + floor32(mem[_110]) + 64 len mem[_110] % 32] or Mask(8 * -(mem[_110] % 32) + 32, -(8 * -(mem[_110] % 32) + 32) + 256, mem[_109 + floor32(mem[_110]) + 68])
        staticcall arg1.mem[_109 + 68 len 4] with:
                gas gas_remaining wei
               args mem[_109 + 72 len _113 - 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'callback failed'
            if mem[96] < 32:
                revert with 0, 'slicing out of range'
            if mem[128] != 1:
                idx = idx + 1
                s = s + 1
                continue 
        else:
            mem[64] = _109 + ceil32(return_data.size) + 69
            mem[_109 + 68] = return_data.size
            mem[_109 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'callback failed'
            if return_data.size < 32:
                revert with 0, 'slicing out of range'
            if mem[_109 + 100] != 1:
                idx = idx + 1
                s = s + 1
                continue 
        require idx < mem[96]
        require idx - s < mem[(32 * arg2.length) + 128]
        mem[(32 * idx - s) + (32 * arg2.length) + 160] = mem[(32 * idx) + 128]
        idx = idx + 1
        s = s
        continue 
    _107 = mem[64]
    mem[mem[64]] = arg2.length - s
    mem[64] = mem[64] + (32 * arg2.length - s) + 32
    if not arg2.length - s:
        t = 0
        while t < arg2.length - s:
            require t < mem[(32 * arg2.length) + 128]
            require t < mem[_107]
            mem[(32 * t) + _107 + 32] = mem[(32 * t) + (32 * arg2.length) + 160]
            t = t + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_107]
        _222 = mem[_107]
        mem[mem[64] + 64 len floor32(mem[_107])] = mem[_107 + 32 len floor32(mem[_107])]
        return 32, mem[mem[64] + 32 len (32 * _222) + 32]
    mem[_107 + 32 len 32 * arg2.length - s] = code.data[4725 len 32 * arg2.length - s]
    t = 0
    while t < arg2.length - s:
        require t < mem[(32 * arg2.length) + 128]
        require t < mem[_107]
        mem[(32 * t) + _107 + 32] = mem[(32 * t) + (32 * arg2.length) + 160]
        t = t + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[_107]
    _225 = mem[_107]
    mem[mem[64] + 64 len floor32(mem[_107])] = mem[_107 + 32 len floor32(mem[_107])]
    return 32, mem[mem[64] + 32 len (32 * _225) + 32]
}



}
