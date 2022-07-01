contract main {




// =====================  Runtime code  =====================


#
#  - sub_7945c537(?)
#
array of uint256 keys;
address owner;
array of uint8 stor3;
array of uint256 stor99;

function keys(uint256 arg1) {
    return keys[arg1][0 len keys[arg1].length]
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_9295cd1f(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 0
    stor3[('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 0), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg1')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))))] = 1
}

function setData(string arg1, string arg2, string arg3) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg1.length) + ceil32(arg2.length) + 160 <= test266151307() and ceil32(arg2.length) + 160 >= 128
    mem[ceil32(arg1.length) + 128] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192 <= test266151307() and ceil32(arg3.length) + 192 >= 160
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg3.length] = arg3[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192] = 0
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 320
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224] = ceil32(arg1.length) + 128
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 256] = ceil32(arg1.length) + ceil32(arg2.length) + 160
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 288] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 320 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + -(arg1.length % 32) + 352 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 320] = 0
    _892 = mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 224 len -arg3.length + ceil32(arg3.length)]]
    mem[0] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 320 len (arg1.length % 32) + 32])
    stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 320 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][] = Array(len=_892, data=mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 224 len -arg3.length + ceil32(arg3.length)] + 32 len _892])
    stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 320 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][1][] = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    mem[0] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 320 len (arg1.length % 32) + 32]) + 2
    stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 320 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][2][] = Array(len=Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)], data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]])
    stor3[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 320, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))] = 0
    idx = 0
    while idx < keys.length:
        mem[0] = 1
        _6395 = mem[64]
        mem[64] = mem[64] + ceil32(keys[idx].length) + 32
        mem[_6395] = keys[idx].length
        mem[0] = sha3(1) + idx
        mem[_6395 + 32] = keys[idx]
        s = _6395 + 32
        t = sha3(mem[0])
        while _6395 + keys[idx].length > s:
            mem[s + 32] = keys[t]
            s = s + 32
            t = t + 1
            continue 
        if mem[_6395] != mem[96]:
            idx = idx + 1
            continue 
        s = 0
        while s < mem[_6395]:
            require s < mem[96]
            require s < mem[_6395]
            if Mask(8, 248, mem[_6395 + s + 32]) == Mask(8, 248, mem[s + 128]):
                s = s + 1
                continue 
            idx = idx + 1
            continue 
    keys.length++
    keys[keys.length][] = Array(len=mem[96], data=mem[128 len mem[96]])
}

function sub_2d10fa28(?) payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while idx < keys.length:
        _281 = mem[64]
        mem[0] = sha3(1) + idx
        mem[mem[64]] = keys[idx]
        s = mem[64]
        t = sha3(mem[0])
        while _281 + keys[idx].length > s + 32:
            mem[s + 32] = keys[t]
            s = s + 32
            t = t + 1
            continue 
        mem[_281 + keys[idx].length] = 0
        idx = idx + 1
        continue 
    _279 = mem[64]
    mem[mem[64]] = 0
    mem[64] = mem[64] + 32
    idx = 0
    while idx < keys.length:
        _559 = mem[64]
        mem[0] = sha3(1) + idx
        mem[mem[64]] = keys[idx]
        s = mem[64]
        t = sha3(mem[0])
        while _559 + keys[idx].length > s + 32:
            mem[s + 32] = keys[t]
            s = s + 32
            t = t + 1
            continue 
        mem[_559 + keys[idx].length] = 0
        if not stor3[sha3(mem[mem[64] len _559 + stor1[idx].length + -mem[64] + 32])]:
            require idx < keys.length
            _1010 = mem[64]
            mem[0] = sha3(1) + idx
            mem[mem[64]] = keys[idx]
            s = mem[64]
            t = sha3(mem[0])
            while _1010 + keys[idx].length > s + 32:
                mem[s + 32] = keys[t]
                s = s + 32
                t = t + 1
                continue 
            mem[_1010 + keys[idx].length] = 0
            _1427 = sha3(mem[mem[64] len _1010 + keys[idx].length + -mem[64] + 32])
            _1428 = mem[64]
            mem[64] = mem[64] + 128
            _1429 = mem[64]
            mem[64] = mem[64] + ceil32(stor[_1427].length) + 32
            mem[_1429] = stor[_1427].length
            mem[0] = _1427
            mem[_1429 + 32] = stor[sha3(_1427)]
            s = _1429 + 32
            t = sha3(_1427)
            while _1429 + stor[_1427].length > s:
                mem[s + 32] = keys[t]
                s = s + 32
                t = t + 1
                continue 
            mem[_1428] = _1429
            _1535 = mem[64]
            mem[64] = mem[64] + ceil32(stor[_1427 + 1].length) + 32
            mem[_1535] = stor[_1427 + 1].length
            mem[0] = _1427 + 1
            mem[_1535 + 32] = stor[sha3(_1427 + 1)]
            s = _1535 + 32
            t = sha3(_1427 + 1)
            while _1535 + stor[_1427 + 1].length > s:
                mem[s + 32] = keys[t]
                s = s + 32
                t = t + 1
                continue 
            mem[_1428 + 32] = _1535
            _1567 = mem[64]
            mem[64] = mem[64] + ceil32(stor[_1427 + 2].length) + 32
            mem[_1567] = stor[_1427 + 2].length
            mem[0] = _1427 + 2
            mem[_1567 + 32] = stor[sha3(_1427 + 2)]
            s = _1567 + 32
            t = sha3(_1427 + 2)
            while _1567 + stor[_1427 + 2].length > s:
                mem[s + 32] = keys[t]
                s = s + 32
                t = t + 1
                continue 
            mem[_1428 + 64] = _1567
            mem[_1428 + 96] = bool(stor3[_1427])
            require 0 < mem[_279]
            mem[_279 + 32] = _1428
        idx = idx + 1
        continue 
    _557 = mem[64]
    mem[mem[64]] = 32
    _563 = mem[_279]
    mem[mem[64] + 32] = mem[_279]
    idx = 0
    s = _279 + 32
    t = mem[64] + (32 * _563) + 64
    u = mem[64] + 64
    while idx < _563:
        mem[u] = t + -_557 - 64
        _829 = mem[s]
        _830 = mem[mem[s]]
        mem[t] = 128
        _872 = mem[_830]
        mem[t + 128] = mem[_830]
        v = 0
        while v < _872:
            mem[t + v + 160] = mem[_830 + v + 32]
            v = v + 32
            continue 
        if ceil32(_872) <= _872:
            _1069 = mem[_829 + 32]
            mem[t + 32] = ceil32(_872) + 160
            _1108 = mem[_1069]
            mem[t + ceil32(_872) + 160] = mem[_1069]
            v = 0
            while v < _1108:
                mem[t + ceil32(_872) + v + 192] = mem[_1069 + v + 32]
                v = v + 32
                continue 
            if ceil32(_1108) <= _1108:
                _1354 = mem[_829 + 64]
                mem[t + 64] = ceil32(_872) + ceil32(_1108) + 192
                _1382 = mem[_1354]
                mem[t + ceil32(_872) + ceil32(_1108) + 192] = mem[_1354]
                v = 0
                while v < _1382:
                    mem[t + ceil32(_872) + ceil32(_1108) + v + 224] = mem[_1354 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_1382) > _1382:
                    mem[t + ceil32(_872) + ceil32(_1108) + _1382 + 224] = 0
                mem[t + 96] = bool(mem[_829 + 96])
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_872) + ceil32(_1108) + ceil32(_1382) + 224
                u = u + 32
                continue 
            mem[t + ceil32(_872) + _1108 + 192] = 0
            _1364 = mem[_829 + 64]
            mem[t + 64] = ceil32(_872) + ceil32(_1108) + 192
            _1396 = mem[_1364]
            mem[t + ceil32(_872) + ceil32(_1108) + 192] = mem[_1364]
            v = 0
            while v < _1396:
                mem[t + ceil32(_872) + ceil32(_1108) + v + 224] = mem[_1364 + v + 32]
                v = v + 32
                continue 
            if ceil32(_1396) > _1396:
                mem[t + ceil32(_872) + ceil32(_1108) + _1396 + 224] = 0
            mem[t + 96] = bool(mem[_829 + 96])
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_872) + ceil32(_1108) + ceil32(_1396) + 224
            u = u + 32
            continue 
        mem[t + _872 + 160] = 0
        _1084 = mem[_829 + 32]
        mem[t + 32] = ceil32(_872) + 160
        _1127 = mem[_1084]
        mem[t + ceil32(_872) + 160] = mem[_1084]
        v = 0
        while v < _1127:
            mem[t + ceil32(_872) + v + 192] = mem[_1084 + v + 32]
            v = v + 32
            continue 
        if ceil32(_1127) <= _1127:
            _1355 = mem[_829 + 64]
            mem[t + 64] = ceil32(_872) + ceil32(_1127) + 192
            _1383 = mem[_1355]
            mem[t + ceil32(_872) + ceil32(_1127) + 192] = mem[_1355]
            v = 0
            while v < _1383:
                mem[t + ceil32(_872) + ceil32(_1127) + v + 224] = mem[_1355 + v + 32]
                v = v + 32
                continue 
            if ceil32(_1383) > _1383:
                mem[t + ceil32(_872) + ceil32(_1127) + _1383 + 224] = 0
            mem[t + 96] = bool(mem[_829 + 96])
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_872) + ceil32(_1127) + ceil32(_1383) + 224
            u = u + 32
            continue 
        mem[t + ceil32(_872) + _1127 + 192] = 0
        _1365 = mem[_829 + 64]
        mem[t + 64] = ceil32(_872) + ceil32(_1127) + 192
        _1397 = mem[_1365]
        mem[t + ceil32(_872) + ceil32(_1127) + 192] = mem[_1365]
        v = 0
        while v < _1397:
            mem[t + ceil32(_872) + ceil32(_1127) + v + 224] = mem[_1365 + v + 32]
            v = v + 32
            continue 
        if ceil32(_1397) > _1397:
            mem[t + ceil32(_872) + ceil32(_1127) + _1397 + 224] = 0
        mem[t + 96] = bool(mem[_829 + 96])
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_872) + ceil32(_1127) + ceil32(_1397) + 224
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
