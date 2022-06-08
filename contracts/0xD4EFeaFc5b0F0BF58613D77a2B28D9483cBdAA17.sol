contract main {




// =====================  Runtime code  =====================


array of struct stor0;
array of uint256 stor1;

function _fallback() payable {
    revert
}

function sub_35bafaf0(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    stor0.length++
    stor0[stor0.length][].field_0 = Array(len=arg1.length, data=arg1[all])
    uint8(stor0[stor0.length].field_256) = 1
}

function sub_0059d243(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[4] + cd[s] + 67 < calldata.size
        require cd[(cd[4] + cd[s] + 36)] <= test266151307()
        _19 = mem[64]
        require mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32
        mem[_19] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 68 <= calldata.size
        mem[_19 + 32 len cd[(cd[4] + cd[s] + 36)]] = call.data[cd[4] + cd[s] + 68 len cd[(cd[4] + cd[s] + 36)]]
        mem[_19 + cd[(cd[4] + cd[s] + 36)] + 32] = 0
        mem[t] = _19
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _30 = mem[96]
    idx = 0
    while idx < _30:
        require idx < mem[96]
        _32 = mem[(32 * idx) + 128]
        _33 = mem[64]
        mem[64] = mem[64] + 64
        mem[_33] = mem[(32 * idx) + 128]
        mem[_33 + 32] = 1
        stor0.length++
        mem[0] = 0
        _36 = mem[_32]
        mem[0] = (2 * stor0.length) + sha3(0)
        stor0[stor0.length].field_0 = (2 * _36) + 1
        t = sha3((2 * stor0.length) + sha3(0))
        s = _32 + 32
        while _32 + _36 + 32 > s:
            stor[t] = mem[s]
            _30 = mem[96]
            t = t + 1
            s = s + 32
            continue 
        s = sha3((2 * stor0.length) + sha3(0)) + (Mask(251, 0, _36 + 31) >> 5)
        while sha3((2 * stor0.length) + sha3(0)) + (stor0[stor0.length].length + 31 / 32) > s:
            stor[s] = 0
            _30 = mem[96]
            s = s + 1
            continue 
        uint8(stor0[stor0.length].field_256) = 1
        _30 = mem[96]
        idx = idx + 1
        continue 
}

function sub_faf1a030(?) {
    mem[96] = stor0.length
    mem[64] = (32 * stor0.length) + 128
    if not stor0.length:
        idx = 0
        while idx < stor0.length:
            mem[0] = 0
            if uint8(stor0[idx].field_256):
                require idx < stor0.length
                mem[0] = 0
                _31 = mem[64]
                mem[64] = mem[64] + ceil32(stor0[idx].length) + 32
                mem[_31] = stor0[idx].length
                mem[0] = (2 * idx) + sha3(0)
                mem[_31 + 32] = stor0[idx].field_0
                s = _31 + 32
                t = sha3(mem[0])
                while _31 + stor0[idx].length > s:
                    mem[s + 32] = stor1[t]
                    s = s + 32
                    t = t + 1
                    continue 
                require idx < mem[96]
                mem[(32 * idx) + 128] = _31
            idx = idx + 1
            continue 
        _28 = mem[64]
        mem[mem[64]] = 32
        _32 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _32:
            mem[u] = t + -_28 - 64
            _54 = mem[s]
            _59 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _59:
                mem[t + v + 32] = mem[_54 + v + 32]
                v = v + 32
                continue 
            if ceil32(_59) > _59:
                mem[t + _59 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_59) + 32
            u = u + 32
            continue 
    else:
        mem[128] = 96
        s = 128
        idx = stor0.length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < stor0.length:
            mem[0] = 0
            if uint8(stor0[idx].field_256):
                require idx < stor0.length
                mem[0] = 0
                _61 = mem[64]
                mem[64] = mem[64] + ceil32(stor0[idx].length) + 32
                mem[_61] = stor0[idx].length
                mem[0] = (2 * idx) + sha3(0)
                mem[_61 + 32] = stor0[idx].field_0
                s = _61 + 32
                t = sha3(mem[0])
                while _61 + stor0[idx].length > s:
                    mem[s + 32] = stor1[t]
                    s = s + 32
                    t = t + 1
                    continue 
                require idx < mem[96]
                mem[(32 * idx) + 128] = _61
            idx = idx + 1
            continue 
        _56 = mem[64]
        mem[mem[64]] = 32
        _62 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _62:
            mem[u] = t + -_56 - 64
            _73 = mem[s]
            _76 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _76:
                mem[t + v + 32] = mem[_73 + v + 32]
                v = v + 32
                continue 
            if ceil32(_76) > _76:
                mem[t + _76 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_76) + 32
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_ffffb265(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length
    mem[64] = arg1.length + ceil32(arg1.length) + 160
    mem[arg1.length + ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    mem[arg1.length + ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 192 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32] = mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 192 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
    _75 = sha3(mem[arg1.length + ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    idx = 0
    while idx < stor0.length:
        _101 = mem[64]
        mem[0] = (2 * idx) + sha3(0)
        mem[mem[64] + 32] = stor0[idx].field_0
        s = mem[64] + 32
        t = sha3((2 * idx) + sha3(0))
        while _101 + stor0[idx].length > s:
            mem[s + 32] = stor1[t]
            s = s + 32
            t = t + 1
            continue 
        _137 = mem[64]
        mem[mem[64]] = _101 + stor0[idx].length - mem[64]
        mem[64] = _101 + stor0[idx].length + 32
        _139 = mem[_137]
        t = _137 + 32
        u = mem[64]
        s = mem[_137]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_137])] = mem[_137 + floor32(mem[_137]) + -(mem[_137] % 32) + 64 len mem[_137] % 32] or Mask(8 * -(mem[_137] % 32) + 32, -(8 * -(mem[_137] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_137])])
        if sha3(mem[mem[64] len _139 + _101 + stor0[idx].length + -mem[64] + 32]) == _75:
            require idx < stor0.length
            mem[0] = 0
            if uint8(stor0[idx].field_256):
                require idx < stor0.length
                mem[0] = 0
                uint8(stor0[idx].field_256) = 0
        idx = idx + 1
        continue 
}



}
