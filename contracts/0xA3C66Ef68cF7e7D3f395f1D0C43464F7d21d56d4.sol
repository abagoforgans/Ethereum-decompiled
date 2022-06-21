contract main {




// =====================  Runtime code  =====================


address stor0;
array of uint256 stor1;
mapping of uint256 sub_2ce5c47e;
array of uint256 history;
array of struct time;
mapping of uint8 stor99;

function sub_2ce5c47e(?) {
    require calldata.size - 4 >= 32
    return sub_2ce5c47e[arg1]
}

function time(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < time.length
    return uint256(time[arg1].field_0)
}

function history(uint256 arg1) {
    return history[arg1][0 len history[arg1].length]
}

function _fallback() payable {
    revert
}

function sub_98568366(?) {
    if time.length:
        mem[128] = uint256(time.field_0)
        idx = 128
        s = 0
        while (32 * time.length) + 96 > idx:
            mem[idx + 32] = uint256(time[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=time.length, data=mem[128 len 32 * time.length])
    mem[(32 * time.length) + 128] = 32
    mem[(32 * time.length) + 160] = time.length
    mem[(32 * time.length) + 192 len 32 * time.length] = mem[128 len 32 * time.length]
    return memory
      from (32 * time.length) + 128
       len (96 * time.length) + 64
}

function sub_5636bd06(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require msg.sender == stor0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 1
    stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)] = uint8(arg2)
}

function sub_b4facdab(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require msg.sender == stor0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 1
    require bool(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)]) == 1
    sub_2ce5c47e[address(msg.sender)]++
    history.length++
    history[history.length][] = Array(len=arg1.length, data=arg1[all])
    time.length++
    uint256(time[time.length].field_0) = block.timestamp
}

function sub_a4778f14(?) {
    mem[64] = (32 * history.length) + 128
    mem[96] = history.length
    s = 128
    idx = 0
    while idx < history.length:
        mem[0] = 3
        _12 = mem[64]
        mem[64] = mem[64] + ceil32(history[idx].length) + 32
        mem[_12] = history[idx].length
        mem[0] = sha3(3) + idx
        mem[_12 + 32] = history[idx]
        t = _12 + 32
        u = sha3(mem[0])
        while _12 + history[idx].length > t:
            mem[t + 32] = stor1[u]
            t = t + 32
            u = u + 1
            continue 
        mem[s] = _12
        s = s + 32
        idx = idx + 1
        continue 
    _13 = mem[64]
    mem[mem[64]] = 32
    _15 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 64
    u = mem[64] + 64
    while idx < _15:
        mem[u] = t + -_13 - 64
        _20 = mem[s]
        _22 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _22:
            mem[t + v + 32] = mem[_20 + v + 32]
            v = v + 32
            continue 
        if ceil32(_22) > _22:
            mem[t + _22 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_22) + 32
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
