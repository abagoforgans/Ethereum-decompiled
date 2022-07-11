contract main {




// =====================  Runtime code  =====================


#
#  - sub_2ee8a9b0(?)
#
mapping of struct stor0;
array of uint8 stor103;
array of struct sub_2f971ab7;
array of uint8 stor3;
mapping of address stor99;

function sub_2f971ab7(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_2f971ab7.length
    return address(sub_2f971ab7[arg1].field_0), 
           bool(uint8(sub_2f971ab7[arg1].field_160)),
           uint8(sub_2f971ab7[arg1].field_0),
           uint8(sub_2f971ab7[arg1].field_0),
           uint8(sub_2f971ab7[arg1].field_184),
           uint8(sub_2f971ab7[arg1].field_0)
}

function sub_df49a2a9(?) {
    require calldata.size - 4 >= 64
    require arg1 < 50
    require arg2 < 50
    return sub_df49a2a9[uint8(arg2)]
}

function sub_e7d40d76(?) {
    require calldata.size - 4 >= 64
    require arg1 < 50
    require arg2 < 50
    return sub_e7d40d76[uint8(arg2)]
}

function _fallback() payable {
    revert
}

function sub_c1676318(?) {
    require calldata.size - 4 >= 32
    mem[128] = uint256(stor0[arg1].field_0)
    idx = 128
    s = 0
    while stor0[arg1].length + 96 > idx:
        mem[idx + 32] = uint256(stor0[arg1][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor0[arg1].length, data=mem[128 len stor0[arg1].length]), 
           bool(uint8(stor0[arg1].field_256)),
           bool(uint8(stor0[arg1].field_264))
}

function getUser(address arg1) {
    require calldata.size - 4 >= 32
    mem[128] = uint256(stor0[address(arg1)].field_0)
    idx = 128
    s = 0
    while stor0[address(arg1)].length + 96 > idx:
        mem[idx + 32] = uint256(stor0[address(arg1)][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor0[address(arg1)].length, data=mem[128 len stor0[address(arg1)].length]), 
           bool(uint8(stor0[address(arg1)].field_256))
}

function buildHouse(uint256 arg1) {
    require calldata.size - 4 >= 32
    if bool(uint8(stor0[address(msg.sender)].field_264)) != 1:
        revert with 0, 'Only registered can call this.'
    require arg1 < sub_2f971ab7.length
    require address(sub_2f971ab7[arg1].field_0) == msg.sender
    require arg1 < sub_2f971ab7.length
    require not uint8(sub_2f971ab7[arg1].field_160)
    require arg1 < sub_2f971ab7.length
    Mask(96, 0, sub_2f971ab7[arg1].field_160) = 1
    emit 0x6ab627ba: arg1
}

function sub_f67de5fd(?) {
    mem[64] = 81696
    mem[80096 len 1600] = code.data[8429 len 1600]
    mem[var8001] = 80096
    s = var8001
    idx = var8002
    while idx - 1:
        mem[64] = mem[64] + 1600
        mem[80096 len 1600] = code.data[8429 len 1600]
        mem[s + 32] = 80096
        s = s + 32
        idx = idx - 1
        continue 
    _7 = mem[64]
    mem[64] = mem[64] + 1600
    s = _7
    idx = 0
    while idx < 50:
        _9 = mem[64]
        mem[64] = mem[64] + 1600
        mem[_9] = stor3[idx]
        t = _9
        u = 0
        while _9 + 1600 > t + 32:
            mem[t + 32] = stor3[-(0.03125 / u + 1) + u + (-1 * 0.03125 / u + 1 * u) + 1]
            t = t + 32
            u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
            continue 
        mem[s] = _9
        s = s + 32
        idx = idx + 1
        continue 
    s = mem[64]
    idx = 0
    while idx < 50:
        _15 = mem[(32 * idx) + _7]
        t = 0
        while t < 1600:
            mem[2 * t] = mem[_15 + t]
            t = t + 32
            continue 
        t = 3200
        idx = idx + 1
        continue 
    return memory
      from mem[64]
       len s - mem[64]
}

function sub_bee2a343(?) {
    mem[64] = 81696
    mem[80096 len 1600] = code.data[8429 len 1600]
    mem[var8001] = 80096
    s = var8001
    idx = var8002
    while idx - 1:
        mem[64] = mem[64] + 1600
        mem[80096 len 1600] = code.data[8429 len 1600]
        mem[s + 32] = 80096
        s = s + 32
        idx = idx - 1
        continue 
    _7 = mem[64]
    mem[64] = mem[64] + 1600
    s = _7
    idx = 0
    while idx < 50:
        _9 = mem[64]
        mem[64] = mem[64] + 1600
        mem[_9] = stor103[idx]
        t = _9
        u = 0
        while _9 + 1600 > t + 32:
            mem[t + 32] = stor103[-(0.03125 / u + 1) + u + (-1 * 0.03125 / u + 1 * u) + 1]
            t = t + 32
            u = -(u + 1 / 32) + u + (-1 * u + 1 / 32 * u) + 1
            continue 
        mem[s] = _9
        s = s + 32
        idx = idx + 1
        continue 
    s = mem[64]
    idx = 0
    while idx < 50:
        _15 = mem[(32 * idx) + _7]
        t = 0
        while t < 1600:
            mem[2 * t] = mem[_15 + t]
            t = t + 32
            continue 
        t = 3200
        idx = idx + 1
        continue 
    return memory
      from mem[64]
       len s - mem[64]
}

function sub_4f352f1a(?) {
    require calldata.size - 4 >= 128
    if bool(uint8(stor0[address(msg.sender)].field_264)) != 1:
        revert with 0, 'Only registered can call this.'
    if uint8(stor0[address(msg.sender)].field_256):
        revert with 0, 'cant claim more than one land'
    if arg3 < 4:
        revert with 0, 'size invalid'
    if arg3 > 7:
        revert with 0, 'size invalid'
    if arg4 < 4:
        revert with 0, 'size invalid'
    if arg4 > 7:
        revert with 0, 'size invalid'
    idx = arg1
    while idx < arg1 + arg3:
        s = arg2
        while s < arg2 + arg4 + 1:
            require idx < 50
            require s < 50
            if stor((0.03125 / s) + (2 * idx) + 103)[uint8(s)]:
                revert with 0, 'cant claim this land'
            require idx < 50
            require s < 50
            uint256(stor[(0.03125 / s) + (2 * idx) + 103]) = uint8(sub_2f971ab7.length) * 256^(s % 32) or !(255 * 256^(s % 32)) and uint256(stor[(0.03125 / s) + (2 * idx) + 103])
            s = s + 1
            continue 
        idx = idx + 1
        continue 
    sub_2f971ab7.length++
    address(sub_2f971ab7[sub_2f971ab7.length].field_0) = msg.sender
    Mask(96, 0, sub_2f971ab7[sub_2f971ab7.length].field_160) = 0
    uint8(sub_2f971ab7[sub_2f971ab7.length].field_168) = uint8(arg1)
    uint8(sub_2f971ab7[sub_2f971ab7.length].field_176) = uint8(arg2)
    uint8(sub_2f971ab7[sub_2f971ab7.length].field_184) = uint8(arg3)
    uint8(sub_2f971ab7[sub_2f971ab7.length].field_192) = uint8(arg4)
    uint8(stor0[address(msg.sender)].field_256) = 1
    emit 0xbe501563: uint8(sub_2f971ab7.length)
}

function registerName(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[0] = msg.sender
    mem[32] = 0
    if uint8(stor0[address(msg.sender)].field_264):
        revert with 0, 'Only Unregistered can call this.'
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 1
    if address(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)]):
        revert with 0, 'Name already registered.'
    if arg1.length <= 3:
        revert with 0, 'Name is too short'
    if arg1.length >= 12:
        revert with 0, 'Name is too long'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) < 0x3000000000000000000000000000000000000000000000000000000000000000:
            if Mask(8, 248, mem[idx + 128]) != 0x2e00000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 'Name has to be alphanumeric!'
        else:
            if Mask(8, 248, mem[idx + 128]) > 0x3900000000000000000000000000000000000000000000000000000000000000:
                if Mask(8, 248, mem[idx + 128]) < 0x4100000000000000000000000000000000000000000000000000000000000000:
                    if Mask(8, 248, mem[idx + 128]) != 0x2e00000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'Name has to be alphanumeric!'
                else:
                    if Mask(8, 248, mem[idx + 128]) > 0x5a00000000000000000000000000000000000000000000000000000000000000:
                        if Mask(8, 248, mem[idx + 128]) < 0x6100000000000000000000000000000000000000000000000000000000000000:
                            if Mask(8, 248, mem[idx + 128]) != 0x2e00000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'Name has to be alphanumeric!'
                        else:
                            if Mask(8, 248, mem[idx + 128]) > 0x7a00000000000000000000000000000000000000000000000000000000000000:
                                if Mask(8, 248, mem[idx + 128]) != 0x2e00000000000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'Name has to be alphanumeric!'
        idx = idx + 1
        continue 
    uint256(stor0[address(msg.sender)][].field_0) = Array(len=arg1.length, data=arg1[all])
    Mask(248, 0, stor0[address(msg.sender)].field_264) = 1
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 1
    address(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)]) = msg.sender
    mem[ceil32(arg1.length) + 128] = msg.sender
    emit UserRegistered(address arg1):
                        Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                        mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)],
}



}
