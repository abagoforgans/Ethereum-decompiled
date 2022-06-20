contract main {




// =====================  Runtime code  =====================


#
#  - sub_529f22e5(?)
#  - sub_fd7bfc41(?)
#
function _fallback() payable {
    revert
}

function sub_3b13498c(?) payable {
    require calldata.size - 4 >= 32
    return 1
}

function sub_3cde5b72(?) payable {
    require calldata.size - 4 >= 32
    return (arg1 - (arg1 * arg1))
}

function sub_db2828ef(?) payable {
    require calldata.size - 4 >= 32
    if arg1 > 0:
        return arg1
    else:
        return 0
}

function sub_75f6dc55(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender != block.coinbase
    require tx.origin == msg.sender
    return (('smod', ('sha3', ('data', ('blockhash', ('add', -1, 'number')), 'msg.sender', 'difficulty', ('param', 'arg1'))), 2) - 1)
}

function sub_89917cb4(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307()
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        _28 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        require idx < ('cd', 4).length
        _30 = mem[(32 * idx) + 128]
        idx = idx + 1
        s = (mem[(32 * idx) + 128] * mem[(32 * idx) + (32 * ('cd', 4).length) + 160]) + s
        continue 
    return (cd[68] + (_30 * _28 * ('cd', 4).length))
}

function sub_74308a33(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307()
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 4).length
        require idx < ('cd', 36).length
        _30 = mem[(32 * ('cd', 4).length) + (32 * idx) + 160]
        idx = idx + 1
        s = (mem[(32 * ('cd', 4).length) + (32 * idx) + 160] * mem[(32 * ('cd', 4).length) + (32 * idx) + 160]) - (mem[(32 * idx) + 128] * mem[(32 * ('cd', 4).length) + (32 * idx) + 160]) - (mem[(32 * ('cd', 4).length) + (32 * idx) + 160] * mem[(32 * idx) + 128]) + (mem[(32 * idx) + 128] * mem[(32 * idx) + 128]) + s
        continue 
    return (_30 * _30 * ('cd', 4).length)
}

function sub_bb9729cb(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307()
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 4).length
        require idx < ('cd', 36).length
        _34 = mem[(32 * ('cd', 4).length) + (32 * idx) + 160]
        idx = idx + 1
        s = (mem[(32 * ('cd', 4).length) + (32 * idx) + 160] * mem[(32 * ('cd', 4).length) + (32 * idx) + 160]) - (mem[(32 * idx) + 128] * mem[(32 * ('cd', 4).length) + (32 * idx) + 160]) - (mem[(32 * ('cd', 4).length) + (32 * idx) + 160] * mem[(32 * idx) + 128]) + (mem[(32 * idx) + 128] * mem[(32 * idx) + 128]) + s
        continue 
    if ('cd', 4).length:
        return (_34 * _34 * ('cd', 4).length / ('cd', 4).length)
    revert
}

function sub_100c51b7(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 >= 96 and (32 * ('cd', 36).length) + 128 <= test266151307()
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[64] = (32 * ('cd', 36).length) + 256
    mem[(32 * ('cd', 36).length) + 128] = 0
    mem[(32 * ('cd', 36).length) + 160] = 96
    mem[(32 * ('cd', 36).length) + 192] = 96
    mem[(32 * ('cd', 36).length) + 224] = 96
    idx = 1
    while idx <= cd[4]:
        require idx < mem[96]
        if var74003 > mem[(32 * idx) + 128]:
            idx = idx + 1
            continue 
        require msg.sender != block.coinbase
        require tx.origin == msg.sender
        _242 = mem[64]
        mem[mem[64] + 32] = block.hash(block.number - 1)
        mem[mem[64] + 64] = address(msg.sender)
        mem[mem[64] + 84] = block.difficulty
        mem[mem[64] + 116] = block.timestamp
        _243 = mem[64]
        mem[mem[64]] = 116
        mem[64] = mem[64] + 148
        require idx < mem[96]
        require var80005 < mem[mem[(32 * idx) + 128]]
        mem[mem[(32 * idx) + 128] + (32 * var80005) + 32] = ('smod', ('sha3', ('mem', ('range', ('add', 32, ('var', '_243')), ('mem', ('range', ('var', '_243'), 32))))), 2) - 2
        require idx - 1 < mem[96]
        if var117003 <= mem[(32 * idx - 1) + 128]:
            require msg.sender != block.coinbase
            require tx.origin == msg.sender
            mem[_242 + 180] = block.hash(block.number - 1)
            mem[_242 + 212] = address(msg.sender)
            mem[_242 + 232] = block.difficulty
            mem[_242 + 264] = block.timestamp
            mem[_242 + 148] = 116
            mem[64] = _242 + 296
            require idx < mem[96]
            require var80005 < mem[mem[(32 * idx) + 128]]
            require var121003 < mem[mem[(32 * var80005) + mem[(32 * idx) + 128] + 32]]
            mem[mem[(32 * var80005) + mem[(32 * idx) + 128] + 32] + (32 * var121003) + 32] = ('smod', ('sha3', ('data', ('blockhash', ('add', -1, 'number')), 'msg.sender', 'difficulty', 'timestamp')), 2) - 1
            require idx - 1 < mem[96]
            _328 = mem[(32 * idx - 1) + 128]
            s = var121003
            while s + 1 <= _328:
                require msg.sender != block.coinbase
                require tx.origin == msg.sender
                mem[mem[64] + 32] = block.hash(block.number - 1)
                mem[_242 + 212] = address(msg.sender)
                mem[_242 + 232] = block.difficulty
                mem[_242 + 264] = block.timestamp
                mem[mem[64]] = _242 + -mem[64] + 264
                mem[64] = _242 + 296
                require idx < mem[96]
                require var80005 < mem[mem[(32 * idx) + 128]]
                require s + 1 < mem[mem[(32 * var80005) + mem[(32 * idx) + 128] + 32]]
                mem[mem[(32 * var80005) + mem[(32 * idx) + 128] + 32] + (32 * s + 1) + 32] = ('smod', ('sha3', ('mem', ('range', ('add', 180, ('var', '_242')), ('mem', ('range', ('add', 148, ('var', '_242')), 32))))), 2) - 1
                require idx - 1 < mem[96]
                _328 = mem[(32 * idx - 1) + 128]
                s = s + 1
                continue 
        require idx < mem[96]
        if var80005 + 1 > mem[(32 * idx) + 128]:
            idx = idx + 1
            continue 
        require msg.sender != block.coinbase
        var80005 = var80005 + 1
        continue 
    _84 = mem[64]
    mem[64] = mem[64] + 128
    mem[_84] = 0
    mem[_84 + 32] = 96
    mem[_84 + 64] = 96
    mem[_84 + 96] = 96
    _86 = mem[64]
    mem[64] = mem[64] + 128
    mem[_86] = cd[4]
    mem[_86 + 32] = 96
    mem[_86 + 64] = 96
    mem[_86 + 96] = 96
    _88 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = cd[4]
    mem[mem[64] + 64] = 128
    _92 = mem[96]
    mem[mem[64] + 160] = mem[96]
    mem[mem[64] + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 96] = (32 * mem[96]) + 160
    _128 = mem[96]
    mem[mem[64] + (32 * mem[96]) + 192] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * _92) + (32 * _128) + 224
    u = mem[64] + (32 * _92) + 224
    while idx < _128:
        mem[u] = t + -_88 + -(32 * _92) - 224
        _160 = mem[s]
        _163 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        w = _160 + 32
        x = t + 32
        while v < _163:
            mem[x] = mem[w]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        idx = idx + 1
        s = s + 32
        t = t + (32 * _163) + 32
        u = u + 32
        continue 
    _161 = mem[_86 + 96]
    mem[_88 + 128] = t + -_88 - 32
    _162 = mem[_161]
    mem[t] = mem[_161]
    idx = 0
    s = _161 + 32
    u = t + (32 * _162) + 32
    v = t + 32
    while idx < _162:
        mem[v] = u + -t - 32
        _191 = mem[s]
        _195 = mem[mem[s]]
        mem[u] = mem[mem[s]]
        t = 0
        w = _191 + 32
        x = u + (32 * _195) + 32
        y = u + 32
        while t < _195:
            mem[y] = x + -u - 32
            _218 = mem[w]
            _220 = mem[mem[w]]
            mem[x] = mem[mem[w]]
            idx = 0
            s = _218 + 32
            u = x + 32
            while idx < _220:
                mem[u] = mem[s]
                idx = idx + 1
                s = s + 32
                u = u + 32
                continue 
            t = t + 1
            w = w + 32
            x = x + (32 * _220) + 32
            y = y + 32
            continue 
        idx = idx + 1
        s = s + 32
        u = x
        v = v + 32
        continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_99824475(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + 128
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size > cd[4] + cd[s] + 67
        require cd[(cd[4] + cd[s] + 36)] <= test266151307()
        _45 = mem[64]
        require mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * cd[(cd[4] + cd[s] + 36)]) + 32
        mem[_45] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + (32 * cd[(cd[4] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[4] + cd[s] + 68
        w = _45 + 32
        while u < cd[(cd[4] + cd[s] + 36)]:
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _45
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    require ('cd', 36).length <= test266151307()
    _46 = mem[64]
    require mem[64] + (32 * ('cd', 36).length) + 32 >= mem[64] and mem[64] + (32 * ('cd', 36).length) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
    mem[_46] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = _46 + 32
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] <= test266151307()
    require calldata.size + -cd[132] - 4 >= 128
    _88 = mem[64]
    require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
    mem[64] = mem[64] + 128
    mem[_88] = ('cd', 132).length
    require ('cd', 132)[0] <= test266151307()
    require calldata.size > cd[132] + ('cd', 132)[0] + 35
    require cd[(cd[132] + ('cd', 132)[0] + 4)] <= test266151307()
    _89 = mem[64]
    require mem[64] + (32 * cd[(cd[132] + ('cd', 132)[0] + 4)]) + 32 >= mem[64] and mem[64] + (32 * cd[(cd[132] + ('cd', 132)[0] + 4)]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * cd[(cd[132] + ('cd', 132)[0] + 4)]) + 32
    mem[_89] = cd[(cd[132] + ('cd', 132)[0] + 4)]
    require cd[132] + ('cd', 132)[0] + (32 * cd[(cd[132] + ('cd', 132)[0] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[132] + ('cd', 132)[0] + 36
    t = _89 + 32
    while idx < cd[(cd[132] + ('cd', 132)[0] + 4)]:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_88 + 32] = _89
    require ('cd', 132)[1] <= test266151307()
    require calldata.size > cd[132] + ('cd', 132)[1] + 35
    require cd[(cd[132] + ('cd', 132)[1] + 4)] <= test266151307()
    _129 = mem[64]
    require mem[64] + (32 * cd[(cd[132] + ('cd', 132)[1] + 4)]) + 32 >= mem[64] and mem[64] + (32 * cd[(cd[132] + ('cd', 132)[1] + 4)]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * cd[(cd[132] + ('cd', 132)[1] + 4)]) + 32
    mem[_129] = cd[(cd[132] + ('cd', 132)[1] + 4)]
    idx = 0
    s = cd[132] + ('cd', 132)[1] + 36
    t = _129 + 32
    while idx < cd[(cd[132] + ('cd', 132)[1] + 4)]:
        require calldata.size > cd[132] + ('cd', 132)[1] + cd[s] + 67
        require cd[(cd[132] + ('cd', 132)[1] + cd[s] + 36)] <= test266151307()
        _168 = mem[64]
        require mem[64] + (32 * cd[(cd[132] + ('cd', 132)[1] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(cd[132] + ('cd', 132)[1] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * cd[(cd[132] + ('cd', 132)[1] + cd[s] + 36)]) + 32
        mem[_168] = cd[(cd[132] + ('cd', 132)[1] + cd[s] + 36)]
        require cd[132] + ('cd', 132)[1] + cd[s] + (32 * cd[(cd[132] + ('cd', 132)[1] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[132] + ('cd', 132)[1] + cd[s] + 68
        w = _168 + 32
        while u < cd[(cd[132] + ('cd', 132)[1] + cd[s] + 36)]:
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _168
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_88 + 64] = _129
    require ('cd', 132)[2] <= test266151307()
    require calldata.size > cd[132] + ('cd', 132)[2] + 35
    require cd[(cd[132] + ('cd', 132)[2] + 4)] <= test266151307()
    _169 = mem[64]
    require mem[64] + (32 * cd[(cd[132] + ('cd', 132)[2] + 4)]) + 32 >= mem[64] and mem[64] + (32 * cd[(cd[132] + ('cd', 132)[2] + 4)]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * cd[(cd[132] + ('cd', 132)[2] + 4)]) + 32
    mem[_169] = cd[(cd[132] + ('cd', 132)[2] + 4)]
    idx = 0
    s = cd[132] + ('cd', 132)[2] + 36
    t = _169 + 32
    while idx < cd[(cd[132] + ('cd', 132)[2] + 4)]:
        require calldata.size > cd[132] + ('cd', 132)[2] + cd[s] + 67
        require cd[(cd[132] + ('cd', 132)[2] + cd[s] + 36)] <= test266151307()
        _207 = mem[64]
        require mem[64] + (32 * cd[(cd[132] + ('cd', 132)[2] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(cd[132] + ('cd', 132)[2] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * cd[(cd[132] + ('cd', 132)[2] + cd[s] + 36)]) + 32
        mem[_207] = cd[(cd[132] + ('cd', 132)[2] + cd[s] + 36)]
        u = 0
        v = cd[132] + ('cd', 132)[2] + cd[s] + 68
        w = _207 + 32
        while u < cd[(cd[132] + ('cd', 132)[2] + cd[s] + 36)]:
            require calldata.size > cd[132] + ('cd', 132)[2] + cd[s] + cd[v] + 99
            require cd[(cd[132] + ('cd', 132)[2] + cd[s] + cd[v] + 68)] <= test266151307()
            _252 = mem[64]
            require mem[64] + (32 * cd[(cd[132] + ('cd', 132)[2] + cd[s] + cd[v] + 68)]) + 32 >= mem[64] and mem[64] + (32 * cd[(cd[132] + ('cd', 132)[2] + cd[s] + cd[v] + 68)]) + 32 <= test266151307()
            mem[64] = mem[64] + (32 * cd[(cd[132] + ('cd', 132)[2] + cd[s] + cd[v] + 68)]) + 32
            mem[_252] = cd[(cd[132] + ('cd', 132)[2] + cd[s] + cd[v] + 68)]
            require cd[132] + ('cd', 132)[2] + cd[s] + cd[v] + (32 * cd[(cd[132] + ('cd', 132)[2] + cd[s] + cd[v] + 68)]) + 100 <= calldata.size
            t = 0
            x = cd[132] + ('cd', 132)[2] + cd[s] + cd[v] + 100
            y = _252 + 32
            while t < cd[(cd[132] + ('cd', 132)[2] + cd[s] + cd[v] + 68)]:
                mem[y] = cd[x]
                t = t + 1
                x = x + 32
                y = y + 32
                continue 
            mem[w] = _252
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _207
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if var100001 >= cd[100]:
        return 0
    # nil
}

function sub_4f12c436(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require calldata.size > cd[36] + cd[s] + 67
        require cd[(cd[36] + cd[s] + 36)] <= test266151307()
        _85 = mem[64]
        require mem[64] + (32 * cd[(cd[36] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(cd[36] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * cd[(cd[36] + cd[s] + 36)]) + 32
        mem[_85] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + (32 * cd[(cd[36] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[36] + cd[s] + 68
        w = _85 + 32
        while u < cd[(cd[36] + cd[s] + 36)]:
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _85
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require calldata.size + -cd[68] - 4 >= 128
    _84 = mem[64]
    require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
    mem[64] = mem[64] + 128
    mem[_84] = ('cd', 68).length
    require ('cd', 68)[0] <= test266151307()
    require calldata.size > cd[68] + ('cd', 68)[0] + 35
    require cd[(cd[68] + ('cd', 68)[0] + 4)] <= test266151307()
    _86 = mem[64]
    require mem[64] + (32 * cd[(cd[68] + ('cd', 68)[0] + 4)]) + 32 >= mem[64] and mem[64] + (32 * cd[(cd[68] + ('cd', 68)[0] + 4)]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * cd[(cd[68] + ('cd', 68)[0] + 4)]) + 32
    mem[_86] = cd[(cd[68] + ('cd', 68)[0] + 4)]
    require cd[68] + ('cd', 68)[0] + (32 * cd[(cd[68] + ('cd', 68)[0] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[68] + ('cd', 68)[0] + 36
    t = _86 + 32
    while idx < cd[(cd[68] + ('cd', 68)[0] + 4)]:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_84 + 32] = _86
    require ('cd', 68)[1] <= test266151307()
    require calldata.size > cd[68] + ('cd', 68)[1] + 35
    require cd[(cd[68] + ('cd', 68)[1] + 4)] <= test266151307()
    _124 = mem[64]
    require mem[64] + (32 * cd[(cd[68] + ('cd', 68)[1] + 4)]) + 32 >= mem[64] and mem[64] + (32 * cd[(cd[68] + ('cd', 68)[1] + 4)]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * cd[(cd[68] + ('cd', 68)[1] + 4)]) + 32
    mem[_124] = cd[(cd[68] + ('cd', 68)[1] + 4)]
    idx = 0
    s = cd[68] + ('cd', 68)[1] + 36
    t = _124 + 32
    while idx < cd[(cd[68] + ('cd', 68)[1] + 4)]:
        require calldata.size > cd[68] + ('cd', 68)[1] + cd[s] + 67
        require cd[(cd[68] + ('cd', 68)[1] + cd[s] + 36)] <= test266151307()
        _161 = mem[64]
        require mem[64] + (32 * cd[(cd[68] + ('cd', 68)[1] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(cd[68] + ('cd', 68)[1] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * cd[(cd[68] + ('cd', 68)[1] + cd[s] + 36)]) + 32
        mem[_161] = cd[(cd[68] + ('cd', 68)[1] + cd[s] + 36)]
        require cd[68] + ('cd', 68)[1] + cd[s] + (32 * cd[(cd[68] + ('cd', 68)[1] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[68] + ('cd', 68)[1] + cd[s] + 68
        w = _161 + 32
        while u < cd[(cd[68] + ('cd', 68)[1] + cd[s] + 36)]:
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _161
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_84 + 64] = _124
    require ('cd', 68)[2] <= test266151307()
    require calldata.size > cd[68] + ('cd', 68)[2] + 35
    require cd[(cd[68] + ('cd', 68)[2] + 4)] <= test266151307()
    _162 = mem[64]
    require mem[64] + (32 * cd[(cd[68] + ('cd', 68)[2] + 4)]) + 32 >= mem[64] and mem[64] + (32 * cd[(cd[68] + ('cd', 68)[2] + 4)]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * cd[(cd[68] + ('cd', 68)[2] + 4)]) + 32
    mem[_162] = cd[(cd[68] + ('cd', 68)[2] + 4)]
    idx = 0
    s = cd[68] + ('cd', 68)[2] + 36
    t = _162 + 32
    while idx < cd[(cd[68] + ('cd', 68)[2] + 4)]:
        require calldata.size > cd[68] + ('cd', 68)[2] + cd[s] + 67
        require cd[(cd[68] + ('cd', 68)[2] + cd[s] + 36)] <= test266151307()
        _198 = mem[64]
        require mem[64] + (32 * cd[(cd[68] + ('cd', 68)[2] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(cd[68] + ('cd', 68)[2] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * cd[(cd[68] + ('cd', 68)[2] + cd[s] + 36)]) + 32
        mem[_198] = cd[(cd[68] + ('cd', 68)[2] + cd[s] + 36)]
        u = 0
        v = cd[68] + ('cd', 68)[2] + cd[s] + 68
        w = _198 + 32
        while u < cd[(cd[68] + ('cd', 68)[2] + cd[s] + 36)]:
            require calldata.size > cd[68] + ('cd', 68)[2] + cd[s] + cd[v] + 99
            require cd[(cd[68] + ('cd', 68)[2] + cd[s] + cd[v] + 68)] <= test266151307()
            _245 = mem[64]
            require mem[64] + (32 * cd[(cd[68] + ('cd', 68)[2] + cd[s] + cd[v] + 68)]) + 32 >= mem[64] and mem[64] + (32 * cd[(cd[68] + ('cd', 68)[2] + cd[s] + cd[v] + 68)]) + 32 <= test266151307()
            mem[64] = mem[64] + (32 * cd[(cd[68] + ('cd', 68)[2] + cd[s] + cd[v] + 68)]) + 32
            mem[_245] = cd[(cd[68] + ('cd', 68)[2] + cd[s] + cd[v] + 68)]
            require cd[68] + ('cd', 68)[2] + cd[s] + cd[v] + (32 * cd[(cd[68] + ('cd', 68)[2] + cd[s] + cd[v] + 68)]) + 100 <= calldata.size
            t = 0
            x = cd[68] + ('cd', 68)[2] + cd[s] + cd[v] + 100
            y = _245 + 32
            while t < cd[(cd[68] + ('cd', 68)[2] + cd[s] + cd[v] + 68)]:
                mem[y] = cd[x]
                t = t + 1
                x = x + 32
                y = y + 32
                continue 
            mem[w] = _245
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _198
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_84 + 96] = _162
    _231 = mem[_84]
    t = 1
    u = 96
    while t <= _231:
        require t < mem[mem[_84 + 32]]
        if var101003 <= mem[var101002 + (32 * t) + 32]:
            require t < mem[mem[_84 + 96]]
            require var103001 < mem[mem[(32 * t) + var103002 + 32]]
            if var103003 < mem[mem[(32 * var103001) + mem[(32 * t) + var103002 + 32] + 32]]:
                require t < mem[mem[_84 + 96]]
                require var103001 < mem[mem[(32 * t) + mem[_84 + 96] + 32]]
                require var103003 < mem[mem[(32 * var103001) + mem[(32 * t) + mem[_84 + 96] + 32] + 32]]
                require var103003 < mem[u]
                require t < mem[mem[_84 + 96]]
                _231 = mem[_84]
                var103002 = mem[_84 + 96]
                var103003 = var103003 + 1
                var103005 = (mem[u + (32 * var103003) + 32] * mem[(32 * var103003) + mem[(32 * var103001) + mem[(32 * t) + mem[_84 + 96] + 32] + 32] + 32]) + var103005
                continue 
            require t < mem[(32 * ('cd', 4).length) + 128]
            require var103001 < mem[mem[(32 * t) + (32 * ('cd', 4).length) + 160]]
            require var103001 < mem[96]
            mem[(32 * var103001) + 128] = (mem[(32 * var103001) + mem[(32 * t) + (32 * ('cd', 4).length) + 160] + 32] * var103005) - (mem[(32 * var103001) + mem[(32 * t) + (32 * ('cd', 4).length) + 160] + 32] * mem[(32 * var103001) + mem[(32 * t) + (32 * ('cd', 4).length) + 160] + 32] * var103005)
            require t < mem[mem[_84 + 32]]
            if var103001 + 1 <= mem[mem[_84 + 32] + (32 * t) + 32]:
                require t < mem[mem[_84 + 96]]
                _231 = mem[_84]
                var103002 = mem[_84 + 96]
                var103003 = 0
                var103005 = 0
                continue 
        require mem[_84] - t < mem[96]
        mem[(32 * mem[_84] - t) + 128] = 96
        _231 = mem[_84]
        t = t + 1
        u = 96
        continue 
    _232 = mem[64]
    mem[mem[64]] = 32
    _238 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 64
    u = mem[64] + 64
    while idx < _238:
        mem[u] = t + -_232 - 64
        _266 = mem[s]
        _273 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        w = _266 + 32
        x = t + 32
        while v < _273:
            mem[x] = mem[w]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        idx = idx + 1
        s = s + 32
        t = t + (32 * _273) + 32
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
