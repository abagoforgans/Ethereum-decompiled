contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
uint8 stor15;
uint8 stor17; offset 8

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 18
    stor1.length.field_8 = 'Ultimate PickThree' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor15 = 0
    stor17 = 0
    require not msg.value
    stor0 = msg.sender
    stor0 = msg.sender
    require stor17 <= 7
    if not stor17:
        stor17 = 1
    else:
        require stor17 <= 7
        require stor17 != 1
        require stor17 <= 7
        require stor17 != 2
        require stor17 <= 7
        require stor17 != 3
        require stor17 <= 7
        require stor17 != 4
        require stor17 <= 7
        require stor17 != 5
        require stor17 <= 7
        if stor17 != 7:
            require stor17 <= 7
            require stor17 == 6
            stor17 = 1
    return code.data[1449 len 15974]
}



// =====================  Runtime code  =====================


#
#  - sub_1e338640(?)
#  - sub_36a04d8c(?)
#  - sub_61ed81e9(?)
#  - sub_e7afa212(?)
#
address owner;
array of uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint8 stor15;
uint256 stor16;
uint8 stor17;
uint8 stor17; offset 8
array of struct stor18;
array of address stor21;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_00a4e170(?) {
    require owner == msg.sender
    stor15 = 1
}

function sub_3043a229(?) {
    require owner == msg.sender
    stor15 = 0
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_514a971c(?) {
    require owner == msg.sender
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_0449fe56(?) {
    require owner == msg.sender
    s = 0
    s = 0
    idx = 0
    while idx < stor21.length:
        mem[0] = stor21[idx]
        mem[32] = 20
        s = 0
        t = 0
        while s < stor20[stor21[idx]].field_256:
            require s < stor20[stor21[idx]].field_256
            if stor[(2 * s) + ('array', 1, ('map', ('stor', ('array', ('var', 0), ('name', 'stor21', 21))), ('name', 'stor20', 20)))].field_0 + stor5 >= block.timestamp:
                mem[32] = 20
                require s < stor20[stor21[idx]].field_256
                mem[0] = sha3(stor21[idx], 20) + 1
                s = s + 1
                t = t
                continue 
            require s < stor20[stor21[idx]].field_256
            mem[32] = 20
            require s < stor20[stor21[idx]].field_256
            mem[0] = sha3(stor21[idx], 20) + 1
            stor[(2 * s) + ('array', 1, ('map', ('stor', ('array', ('var', 0), ('name', 'stor21', 21))), ('name', 'stor20', 20)))].field_256 = 0
            s = s + 1
            t = stor[(2 * s) + ('array', 1, ('map', ('stor', ('array', ('var', 0), ('name', 'stor21', 21))), ('name', 'stor20', 20)))].field_256 + t
            continue 
        if stor20[stor21[idx]].field_256 > 0:
            mem[32] = 20
            stor20[stor21[idx]].field_256 = 0
            mem[0] = sha3(stor21[idx], 20) + 1
            s = sha3(sha3(stor21[idx], 20) + 1)
            while sha3(sha3(stor21[idx], 20) + 1) + (2 * stor20[stor21[idx]].field_256) > s:
                stor[s] = 0
                stor1[s] = 0
                s = s + 2
                continue 
        s = stor20[stor21[idx]].field_256
        s = stor21[idx]
        idx = idx + 1
        continue 
}

function sub_899a53ff(?) {
    if stor20[address(arg1)].field_256 <= 0:
        return 0
    idx = 0
    s = 0
    t = 0
    while idx < stor20[address(arg1)].field_256:
        mem[32] = 20
        require idx < stor20[address(arg1)].field_256
        mem[0] = sha3(address(arg1), 20) + 1
        idx = idx + 1
        s = s + stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor20', 20)))].field_256
        t = t + 1
        continue 
    return stor20[address(arg1)].field_256, 
           s * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256
}

function sub_74bfe6d3(?) {
    mem[160] = arg1
    mem[192] = arg2
    mem[224] = arg3
    mem[256] = 0
    mem[320] = 3
    idx = 0
    while idx < 3:
        require idx < 3
        require idx < 3
        mem[(32 * idx) + 352] = mem[(32 * idx) + 160]
        idx = idx + 1
        continue 
    mem[480] = 5
    require 1 < 5, None
    mem[544] = 0
    require 2 < 5, None
    mem[576] = 2
    s = 0
    s = 0
    s = 0
    s = 0
    s = 0
    idx = 2
    s = 3
    while idx > 0:
        require idx < mem[480]
        _541 = mem[(32 * idx) + 512]
        require idx - 1 < mem[480]
        _565 = mem[(32 * idx - 1) + 512]
        require mem[(32 * idx) + 512] < 3
        _590 = mem[(32 * mem[(32 * idx) + 512]) + 352]
        s = mem[(32 * idx - 1) + 512]
        t = mem[(32 * idx - 1) + 512]
        while s < _541:
            require s < 3
            if mem[(32 * s) + 352] > _590:
                s = s + 1
                t = t
                continue 
            require s < 3
            _965 = mem[(32 * s) + 352]
            require t < 3
            require t < 3
            require s < 3
            mem[(32 * s) + 352] = mem[(32 * t) + 352]
            mem[(32 * t) + 352] = _965
            s = s + 1
            t = t + 1
            continue 
        require _541 < 3
        _900 = mem[(32 * _541) + 352]
        require t < 3
        require t < 3
        require _541 < 3
        mem[(32 * _541) + 352] = mem[(32 * t) + 352]
        mem[(32 * t) + 352] = _900
        if t <= mem[(32 * idx - 1) + 512] + 1:
            if t + 1 >= _541:
                s = t
                s = s
                s = _590
                s = mem[(32 * idx - 1) + 512]
                s = _541
                idx = idx - 2
                s = t
                continue 
            require idx - 1 < mem[480]
            mem[(32 * idx - 1) + 512] = t + 1
            require idx < mem[480]
            mem[(32 * idx) + 512] = _541
            s = t
            s = s
            s = _590
            s = _565
            s = _541
            idx = idx
            s = t
            continue 
        require idx - 1 < mem[480]
        require idx < mem[480]
        mem[(32 * idx) + 512] = t - 1
        if t + 1 >= _541:
            s = t
            s = s
            s = _590
            s = _565
            s = _541
            idx = idx
            s = t
            continue 
        require idx + 1 < mem[480]
        mem[(32 * idx + 1) + 512] = t + 1
        require idx + 2 < mem[480]
        mem[(32 * idx + 2) + 512] = _541
        s = t
        s = s
        s = _590
        s = _565
        s = _541
        idx = idx + 2
        s = t
        continue 
    idx = 0
    while idx < 3:
        require idx < 3
        require idx < 3
        mem[(32 * idx) + 160] = mem[(32 * idx) + 352]
        idx = idx + 1
        continue 
    mem[672 len 0] = None
    idx = 0
    s = 0
    while idx < stor18[mem[672 len 96]][stor7].field_512:
        require idx < stor18[mem[672 len 96]][stor7].field_512
        mem[0] = sha3(mem[672 len 96], stor7)
        mem[32] = 18
        if address(stor18[mem[672 len 96]][stor7][idx + 2].field_0) != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    return stor18[mem[672 len 96]][stor7].field_512, s
}

function sub_68a40917(?) {
    mem[128 len arg1.length] = arg1[all]
    require owner == msg.sender
    require arg2 > 0
    require arg3 > 0
    require arg3 < 33
    require arg4 >= 0
    require arg5 >= 0
    require arg1.length > 0
    require uint8(stor17.field_8) <= 7
    require uint8(stor17.field_8) == 1
    require not uint8(stor17.field_0)
    stor1.length = (2 * arg1.length) + 1
    if arg1.length <= 0:
        idx = 0
        while stor1.length + 31 / 32 > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
        uint8(stor17.field_0) = 1
        stor6 = arg2
        stor3 = 10^17
        stor4 = 10^17
        stor5 = 2629822
        stor16 = arg3
        stor13 = 0
        stor9 = arg4
        stor2 = arg5
        stor7++
        require uint8(stor17.field_8) <= 7
        require uint8(stor17.field_8)
        require uint8(stor17.field_8) <= 7
        if uint8(stor17.field_8) != 1:
            require uint8(stor17.field_8) <= 7
            require uint8(stor17.field_8) != 2
            require uint8(stor17.field_8) <= 7
            require uint8(stor17.field_8) != 3
            require uint8(stor17.field_8) <= 7
            require uint8(stor17.field_8) != 4
            require uint8(stor17.field_8) <= 7
            require uint8(stor17.field_8) != 5
            require uint8(stor17.field_8) <= 7
            if uint8(stor17.field_8) != 7:
                require uint8(stor17.field_8) <= 7
                require uint8(stor17.field_8) != 6
                revert
            else:
        else:
            stor8 = block.timestamp
            require stor9 + block.timestamp >= block.timestamp
            stor10 = stor9 + block.timestamp
            stor11 = stor9 + block.timestamp
            require stor2 >= 0
            stor12 = stor2 + stor9 + block.timestamp
            uint8(stor17.field_8) = 2
    else:
        stor1 = mem[128]
        s = 1
        idx = 160
        while arg1.length + 128 > idx:
            stor1[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = (Mask(251, 0, arg1.length - 1) >> 5) + 1
        while stor1.length + 31 / 32 > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
        uint8(stor17.field_0) = 1
        stor6 = arg2
        stor3 = 10^17
        stor4 = 10^17
        stor5 = 2629822
        stor16 = arg3
        stor13 = 0
        stor9 = arg4
        stor2 = arg5
        stor7++
        require uint8(stor17.field_8) <= 7
        require uint8(stor17.field_8)
        require uint8(stor17.field_8) <= 7
        if uint8(stor17.field_8) != 1:
            require uint8(stor17.field_8) <= 7
            require uint8(stor17.field_8) != 2
            require uint8(stor17.field_8) <= 7
            require uint8(stor17.field_8) != 3
            require uint8(stor17.field_8) <= 7
            require uint8(stor17.field_8) != 4
            require uint8(stor17.field_8) <= 7
            require uint8(stor17.field_8) != 5
            require uint8(stor17.field_8) <= 7
            if uint8(stor17.field_8) != 7:
                require uint8(stor17.field_8) <= 7
                require uint8(stor17.field_8) != 6
                revert
            else:
        else:
            stor8 = block.timestamp
            require stor9 + block.timestamp >= block.timestamp
            stor10 = stor9 + block.timestamp
            stor11 = stor9 + block.timestamp
            require stor2 >= 0
            stor12 = stor2 + stor9 + block.timestamp
            uint8(stor17.field_8) = 2
}

function sub_2b72814d(?) {
    if stor20[address(msg.sender)].field_256 <= 0:
        return 0
    idx = 0
    s = 0
    t = 0
    while idx < stor20[address(msg.sender)].field_256:
        mem[32] = 20
        require idx < stor20[address(msg.sender)].field_256
        mem[0] = sha3(address(msg.sender), 20) + 1
        idx = idx + 1
        s = s + stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor20', 20)))].field_256
        t = t + 1
        continue 
    return stor20[address(msg.sender)].field_256, 
           s * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256
}

function sub_b734d9cf(?) {
    require not stor15
    require stor20[address(arg1)].field_256 > 0
    idx = 0
    s = 0
    while idx < stor20[address(arg1)].field_256:
        mem[32] = 20
        require idx < stor20[address(arg1)].field_256
        mem[0] = sha3(address(arg1), 20) + 1
        idx = idx + 1
        s = s + stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor20', 20)))].field_256
        continue 
    stor20[address(arg1)].field_256 = 0
    idx = 0
    while 2 * stor20[address(arg1)].field_256 > idx:
        stor20[address(arg1)][idx + 1].field_0 = 0
        stor20[address(arg1)][idx + 1].field_256 = 0
        idx = idx + 2
        continue 
    if s * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 > 0:
        stor14 += -1 * s * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256
        call arg1 with:
           value s * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit 0xf014be2a: Array(len=3, data='Win'), s * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256 * stor20[address(arg1)].field_256, arg1
}

function sub_a9e25154(?) {
    require not stor15
    require stor20[address(msg.sender)].field_256 > 0
    idx = 0
    s = 0
    while idx < stor20[address(msg.sender)].field_256:
        mem[32] = 20
        require idx < stor20[address(msg.sender)].field_256
        mem[0] = sha3(address(msg.sender), 20) + 1
        idx = idx + 1
        s = s + stor[(2 * idx) + ('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor20', 20)))].field_256
        continue 
    stor20[address(msg.sender)].field_256 = 0
    idx = 0
    while 2 * stor20[address(msg.sender)].field_256 > idx:
        stor20[address(msg.sender)][idx + 1].field_0 = 0
        stor20[address(msg.sender)][idx + 1].field_256 = 0
        idx = idx + 2
        continue 
    if s * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 > 0:
        stor14 += -1 * s * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256
        call msg.sender with:
           value s * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit 0xf014be2a: Array(len=3, data='Win'), s * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256 * stor20[address(msg.sender)].field_256, msg.sender
}

function sub_9de8cf3c(?) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    require block.timestamp > stor12
    require uint8(stor17.field_8) <= 7
    require uint8(stor17.field_8)
    require uint8(stor17.field_8) <= 7
    require uint8(stor17.field_8) != 1
    require uint8(stor17.field_8) <= 7
    if uint8(stor17.field_8) != 2:
        require uint8(stor17.field_8) <= 7
        require uint8(stor17.field_8) != 3
        require uint8(stor17.field_8) <= 7
        require uint8(stor17.field_8) != 4
        require uint8(stor17.field_8) <= 7
        require uint8(stor17.field_8) != 5
        require uint8(stor17.field_8) <= 7
        if uint8(stor17.field_8) != 7:
            require uint8(stor17.field_8) <= 7
            require uint8(stor17.field_8) != 6
            revert
        else:
            mem[192] = 0
            mem[224] = 0
            mem[256] = 3
            mem[64] = 384
            if var51003 <= 200:
                mem[384] = block.hash(block.number - var51003)
                mem[416] = block.hash(block.number + -var51003 - 1)
                mem[448] = block.hash(block.number + -var51003 - 2)
                mem[480] = block.hash(block.number + -var51003 - 3)
                mem[512] = block.hash(block.number + -var51003 - 4)
                mem[544] = block.hash(block.number + -var51003 - 5)
                mem[576] = block.hash(block.number + -var51003 - 6)
                mem[608] = block.hash(block.number + -var51003 - 7)
                mem[640] = block.hash(block.number + -var51003 - 8)
                mem[672] = block.hash(block.number + -var51003 - 9)
                mem[704] = block.timestamp
                if not sha3(block.hash(block.number - var51003), block.hash(block.number + -var51003 - 1), block.hash(block.number + -var51003 - 2), block.hash(block.number + -var51003 - 3), block.hash(block.number + -var51003 - 4), block.hash(block.number + -var51003 - 5), block.hash(block.number + -var51003 - 6), block.hash(block.number + -var51003 - 7), block.hash(block.number + -var51003 - 8), block.hash(block.number + -var51003 - 9), block.timestamp):
                    var51003 = var51003 + 10
                    var51004 = sha3(block.hash(block.number - var51003), block.hash(block.number + -var51003 - 1), block.hash(block.number + -var51003 - 2), block.hash(block.number + -var51003 - 3), block.hash(block.number + -var51003 - 4), block.hash(block.number + -var51003 - 5), block.hash(block.number + -var51003 - 6), block.hash(block.number + -var51003 - 7), block.hash(block.number + -var51003 - 8), block.hash(block.number + -var51003 - 9), block.timestamp)
                    continue 
                else:
                    require stor16
                    idx = 0
                    s = 0
                    while idx < 3:
                        require idx < 3
                        if mem[(32 * idx) + 288] != (sha3(block.hash(block.number - var51003), block.hash(block.number + -var51003 - 1), block.hash(block.number + -var51003 - 2), block.hash(block.number + -var51003 - 3), block.hash(block.number + -var51003 - 4), block.hash(block.number + -var51003 - 5), block.hash(block.number + -var51003 - 6), block.hash(block.number + -var51003 - 7), block.hash(block.number + -var51003 - 8), block.hash(block.number + -var51003 - 9), block.timestamp) % stor16) + 1:
                            idx = idx + 1
                            s = s
                            continue 
                        else:
                            idx = idx + 1
                            s = 1
                            continue 
                    if s:
                        var51003 = var51003 + 10
                        var51004 = (sha3(block.hash(block.number - var51003), block.hash(block.number + -var51003 - 1), block.hash(block.number + -var51003 - 2), block.hash(block.number + -var51003 - 3), block.hash(block.number + -var51003 - 4), block.hash(block.number + -var51003 - 5), block.hash(block.number + -var51003 - 6), block.hash(block.number + -var51003 - 7), block.hash(block.number + -var51003 - 8), block.hash(block.number + -var51003 - 9), block.timestamp) % stor16) + 1
                        continue 
                    else:
                        mem[288] = (sha3(block.hash(block.number - var51003), block.hash(block.number + -var51003 - 1), block.hash(block.number + -var51003 - 2), block.hash(block.number + -var51003 - 3), block.hash(block.number + -var51003 - 4), block.hash(block.number + -var51003 - 5), block.hash(block.number + -var51003 - 6), block.hash(block.number + -var51003 - 7), block.hash(block.number + -var51003 - 8), block.hash(block.number + -var51003 - 9), block.timestamp) % stor16) + 1
                        var51003 = var51003 + 10
                        var51004 = (sha3(block.hash(block.number - var51003), block.hash(block.number + -var51003 - 1), block.hash(block.number + -var51003 - 2), block.hash(block.number + -var51003 - 3), block.hash(block.number + -var51003 - 4), block.hash(block.number + -var51003 - 5), block.hash(block.number + -var51003 - 6), block.hash(block.number + -var51003 - 7), block.hash(block.number + -var51003 - 8), block.hash(block.number + -var51003 - 9), block.timestamp) % stor16) + 1
                        continue 
            else:
                mem[384] = block.hash(block.number - 2)
                mem[416] = block.hash(block.number - 3)
                mem[448] = block.hash(block.number - 4)
                mem[480] = block.hash(block.number - 5)
                mem[512] = block.hash(block.number - 6)
                mem[544] = block.hash(block.number - 7)
                mem[576] = block.hash(block.number - 8)
                mem[608] = block.hash(block.number - 9)
                mem[640] = block.hash(block.number - 10)
                mem[672] = block.hash(block.number - 11)
                mem[704] = block.timestamp
                if not sha3(block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 4), block.hash(block.number - 5), block.hash(block.number - 6), block.hash(block.number - 7), block.hash(block.number - 8), block.hash(block.number - 9), block.hash(block.number - 10), block.hash(block.number - 11), block.timestamp):
                    var51003 = 12
                    var51004 = sha3(block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 4), block.hash(block.number - 5), block.hash(block.number - 6), block.hash(block.number - 7), block.hash(block.number - 8), block.hash(block.number - 9), block.hash(block.number - 10), block.hash(block.number - 11), block.timestamp)
                    continue 
                else:
                    require stor16
                    idx = 0
                    s = 0
                    while idx < 3:
                        require idx < 3
                        if mem[(32 * idx) + 288] != (sha3(block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 4), block.hash(block.number - 5), block.hash(block.number - 6), block.hash(block.number - 7), block.hash(block.number - 8), block.hash(block.number - 9), block.hash(block.number - 10), block.hash(block.number - 11), block.timestamp) % stor16) + 1:
                            idx = idx + 1
                            s = s
                            continue 
                        else:
                            idx = idx + 1
                            s = 1
                            continue 
                    if s:
                        var51003 = 12
                        var51004 = (sha3(block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 4), block.hash(block.number - 5), block.hash(block.number - 6), block.hash(block.number - 7), block.hash(block.number - 8), block.hash(block.number - 9), block.hash(block.number - 10), block.hash(block.number - 11), block.timestamp) % stor16) + 1
                        continue 
                    else:
                        mem[288] = (sha3(block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 4), block.hash(block.number - 5), block.hash(block.number - 6), block.hash(block.number - 7), block.hash(block.number - 8), block.hash(block.number - 9), block.hash(block.number - 10), block.hash(block.number - 11), block.timestamp) % stor16) + 1
                        var51003 = 12
                        var51004 = (sha3(block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 4), block.hash(block.number - 5), block.hash(block.number - 6), block.hash(block.number - 7), block.hash(block.number - 8), block.hash(block.number - 9), block.hash(block.number - 10), block.hash(block.number - 11), block.timestamp) % stor16) + 1
                        continue 
    else:
        uint8(stor17.field_8) = 3
        mem[192] = 0
        mem[224] = 0
        mem[256] = 3
        mem[64] = 384
        if var45003 <= 200:
            mem[384] = block.hash(block.number - var45003)
            mem[416] = block.hash(block.number + -var45003 - 1)
            mem[448] = block.hash(block.number + -var45003 - 2)
            mem[480] = block.hash(block.number + -var45003 - 3)
            mem[512] = block.hash(block.number + -var45003 - 4)
            mem[544] = block.hash(block.number + -var45003 - 5)
            mem[576] = block.hash(block.number + -var45003 - 6)
            mem[608] = block.hash(block.number + -var45003 - 7)
            mem[640] = block.hash(block.number + -var45003 - 8)
            mem[672] = block.hash(block.number + -var45003 - 9)
            mem[704] = block.timestamp
            if not sha3(block.hash(block.number - var45003), block.hash(block.number + -var45003 - 1), block.hash(block.number + -var45003 - 2), block.hash(block.number + -var45003 - 3), block.hash(block.number + -var45003 - 4), block.hash(block.number + -var45003 - 5), block.hash(block.number + -var45003 - 6), block.hash(block.number + -var45003 - 7), block.hash(block.number + -var45003 - 8), block.hash(block.number + -var45003 - 9), block.timestamp):
                var45003 = var45003 + 10
                var45004 = sha3(block.hash(block.number - var45003), block.hash(block.number + -var45003 - 1), block.hash(block.number + -var45003 - 2), block.hash(block.number + -var45003 - 3), block.hash(block.number + -var45003 - 4), block.hash(block.number + -var45003 - 5), block.hash(block.number + -var45003 - 6), block.hash(block.number + -var45003 - 7), block.hash(block.number + -var45003 - 8), block.hash(block.number + -var45003 - 9), block.timestamp)
                continue 
            else:
                require stor16
                idx = 0
                s = 0
                while idx < 3:
                    require idx < 3
                    if mem[(32 * idx) + 288] != (sha3(block.hash(block.number - var45003), block.hash(block.number + -var45003 - 1), block.hash(block.number + -var45003 - 2), block.hash(block.number + -var45003 - 3), block.hash(block.number + -var45003 - 4), block.hash(block.number + -var45003 - 5), block.hash(block.number + -var45003 - 6), block.hash(block.number + -var45003 - 7), block.hash(block.number + -var45003 - 8), block.hash(block.number + -var45003 - 9), block.timestamp) % stor16) + 1:
                        idx = idx + 1
                        s = s
                        continue 
                    else:
                        idx = idx + 1
                        s = 1
                        continue 
                if s:
                    var45003 = var45003 + 10
                    var45004 = (sha3(block.hash(block.number - var45003), block.hash(block.number + -var45003 - 1), block.hash(block.number + -var45003 - 2), block.hash(block.number + -var45003 - 3), block.hash(block.number + -var45003 - 4), block.hash(block.number + -var45003 - 5), block.hash(block.number + -var45003 - 6), block.hash(block.number + -var45003 - 7), block.hash(block.number + -var45003 - 8), block.hash(block.number + -var45003 - 9), block.timestamp) % stor16) + 1
                    continue 
                else:
                    mem[288] = (sha3(block.hash(block.number - var45003), block.hash(block.number + -var45003 - 1), block.hash(block.number + -var45003 - 2), block.hash(block.number + -var45003 - 3), block.hash(block.number + -var45003 - 4), block.hash(block.number + -var45003 - 5), block.hash(block.number + -var45003 - 6), block.hash(block.number + -var45003 - 7), block.hash(block.number + -var45003 - 8), block.hash(block.number + -var45003 - 9), block.timestamp) % stor16) + 1
                    var45003 = var45003 + 10
                    var45004 = (sha3(block.hash(block.number - var45003), block.hash(block.number + -var45003 - 1), block.hash(block.number + -var45003 - 2), block.hash(block.number + -var45003 - 3), block.hash(block.number + -var45003 - 4), block.hash(block.number + -var45003 - 5), block.hash(block.number + -var45003 - 6), block.hash(block.number + -var45003 - 7), block.hash(block.number + -var45003 - 8), block.hash(block.number + -var45003 - 9), block.timestamp) % stor16) + 1
                    continue 
        else:
            mem[384] = block.hash(block.number - 2)
            mem[416] = block.hash(block.number - 3)
            mem[448] = block.hash(block.number - 4)
            mem[480] = block.hash(block.number - 5)
            mem[512] = block.hash(block.number - 6)
            mem[544] = block.hash(block.number - 7)
            mem[576] = block.hash(block.number - 8)
            mem[608] = block.hash(block.number - 9)
            mem[640] = block.hash(block.number - 10)
            mem[672] = block.hash(block.number - 11)
            mem[704] = block.timestamp
            if not sha3(block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 4), block.hash(block.number - 5), block.hash(block.number - 6), block.hash(block.number - 7), block.hash(block.number - 8), block.hash(block.number - 9), block.hash(block.number - 10), block.hash(block.number - 11), block.timestamp):
                var45003 = 12
                var45004 = sha3(block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 4), block.hash(block.number - 5), block.hash(block.number - 6), block.hash(block.number - 7), block.hash(block.number - 8), block.hash(block.number - 9), block.hash(block.number - 10), block.hash(block.number - 11), block.timestamp)
                continue 
            else:
                require stor16
                idx = 0
                s = 0
                while idx < 3:
                    require idx < 3
                    if mem[(32 * idx) + 288] != (sha3(block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 4), block.hash(block.number - 5), block.hash(block.number - 6), block.hash(block.number - 7), block.hash(block.number - 8), block.hash(block.number - 9), block.hash(block.number - 10), block.hash(block.number - 11), block.timestamp) % stor16) + 1:
                        idx = idx + 1
                        s = s
                        continue 
                    else:
                        idx = idx + 1
                        s = 1
                        continue 
                if s:
                    var45003 = 12
                    var45004 = (sha3(block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 4), block.hash(block.number - 5), block.hash(block.number - 6), block.hash(block.number - 7), block.hash(block.number - 8), block.hash(block.number - 9), block.hash(block.number - 10), block.hash(block.number - 11), block.timestamp) % stor16) + 1
                    continue 
                else:
                    mem[288] = (sha3(block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 4), block.hash(block.number - 5), block.hash(block.number - 6), block.hash(block.number - 7), block.hash(block.number - 8), block.hash(block.number - 9), block.hash(block.number - 10), block.hash(block.number - 11), block.timestamp) % stor16) + 1
                    var45003 = 12
                    var45004 = (sha3(block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 4), block.hash(block.number - 5), block.hash(block.number - 6), block.hash(block.number - 7), block.hash(block.number - 8), block.hash(block.number - 9), block.hash(block.number - 10), block.hash(block.number - 11), block.timestamp) % stor16) + 1
                    continue 
}

function CurrentState() {
    if stor15:
        if stor14 <= eth.balance(this.address):
            if not eth.balance(this.address) - stor14:
                if not eth.balance(this.address) - stor14:
                    if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                        if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                            return 'Emergency Halted', 
                                   eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                   stor6,
                                   stor7,
                                   stor13,
                                   stor8,
                                   stor10,
                                   stor14
                else:
                    if eth.balance(this.address) - stor14:
                        if (eth.balance(this.address) * stor4) - (stor14 * stor4) / eth.balance(this.address) - stor14 == stor4:
                            if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                    return 'Emergency Halted', 
                                           eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                           stor6,
                                           stor7,
                                           stor13,
                                           stor8,
                                           stor10,
                                           stor14
            else:
                if eth.balance(this.address) - stor14:
                    if (eth.balance(this.address) * stor3) - (stor14 * stor3) / eth.balance(this.address) - stor14 == stor3:
                        if not eth.balance(this.address) - stor14:
                            if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                    return 'Emergency Halted', 
                                           eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                           stor6,
                                           stor7,
                                           stor13,
                                           stor8,
                                           stor10,
                                           stor14
                        else:
                            if eth.balance(this.address) - stor14:
                                if (eth.balance(this.address) * stor4) - (stor14 * stor4) / eth.balance(this.address) - stor14 == stor4:
                                    if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                        if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                            return 'Emergency Halted', 
                                                   eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                   stor6,
                                                   stor7,
                                                   stor13,
                                                   stor8,
                                                   stor10,
                                                   stor14
    else:
        if uint8(stor17.field_8) <= 7:
            if not uint8(stor17.field_8):
                if stor14 <= eth.balance(this.address):
                    if not eth.balance(this.address) - stor14:
                        if not eth.balance(this.address) - stor14:
                            if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                    return 'Contract Loaded', 
                                           eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                           stor6,
                                           stor7,
                                           stor13,
                                           stor8,
                                           stor10,
                                           stor14
                        else:
                            if eth.balance(this.address) - stor14:
                                if (eth.balance(this.address) * stor4) - (stor14 * stor4) / eth.balance(this.address) - stor14 == stor4:
                                    if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                        if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                            return 'Contract Loaded', 
                                                   eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                   stor6,
                                                   stor7,
                                                   stor13,
                                                   stor8,
                                                   stor10,
                                                   stor14
                    else:
                        if eth.balance(this.address) - stor14:
                            if (eth.balance(this.address) * stor3) - (stor14 * stor3) / eth.balance(this.address) - stor14 == stor3:
                                if not eth.balance(this.address) - stor14:
                                    if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                        if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                            return 'Contract Loaded', 
                                                   eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                   stor6,
                                                   stor7,
                                                   stor13,
                                                   stor8,
                                                   stor10,
                                                   stor14
                                else:
                                    if eth.balance(this.address) - stor14:
                                        if (eth.balance(this.address) * stor4) - (stor14 * stor4) / eth.balance(this.address) - stor14 == stor4:
                                            if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                                if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                                    return 'Contract Loaded', 
                                                           eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                           stor6,
                                                           stor7,
                                                           stor13,
                                                           stor8,
                                                           stor10,
                                                           stor14
            else:
                if uint8(stor17.field_8) <= 7:
                    if uint8(stor17.field_8) == 1:
                        if stor14 <= eth.balance(this.address):
                            if not eth.balance(this.address) - stor14:
                                if not eth.balance(this.address) - stor14:
                                    if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                        if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                            return 'Waiting to start', 
                                                   eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                   stor6,
                                                   stor7,
                                                   stor13,
                                                   stor8,
                                                   stor10,
                                                   stor14
                                else:
                                    if eth.balance(this.address) - stor14:
                                        if (eth.balance(this.address) * stor4) - (stor14 * stor4) / eth.balance(this.address) - stor14 == stor4:
                                            if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                                if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                                    return 'Waiting to start', 
                                                           eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                           stor6,
                                                           stor7,
                                                           stor13,
                                                           stor8,
                                                           stor10,
                                                           stor14
                            else:
                                if eth.balance(this.address) - stor14:
                                    if (eth.balance(this.address) * stor3) - (stor14 * stor3) / eth.balance(this.address) - stor14 == stor3:
                                        if not eth.balance(this.address) - stor14:
                                            if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                                if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                                    return 'Waiting to start', 
                                                           eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                           stor6,
                                                           stor7,
                                                           stor13,
                                                           stor8,
                                                           stor10,
                                                           stor14
                                        else:
                                            if eth.balance(this.address) - stor14:
                                                if (eth.balance(this.address) * stor4) - (stor14 * stor4) / eth.balance(this.address) - stor14 == stor4:
                                                    if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                                        if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                                            return 'Waiting to start', 
                                                                   eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                                   stor6,
                                                                   stor7,
                                                                   stor13,
                                                                   stor8,
                                                                   stor10,
                                                                   stor14
                    else:
                        if uint8(stor17.field_8) <= 7:
                            if uint8(stor17.field_8) == 2:
                                if stor10 >= block.timestamp:
                                    if stor14 <= eth.balance(this.address):
                                        if not eth.balance(this.address) - stor14:
                                            if not eth.balance(this.address) - stor14:
                                                if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                                    if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                                        return 'Game is open to deposits.', 
                                                               eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                               stor6,
                                                               stor7,
                                                               stor13,
                                                               stor8,
                                                               stor10,
                                                               stor14
                                            else:
                                                if eth.balance(this.address) - stor14:
                                                    if (eth.balance(this.address) * stor4) - (stor14 * stor4) / eth.balance(this.address) - stor14 == stor4:
                                                        if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                                            if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                                                return 'Game is open to deposits.', 
                                                                       eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                                       stor6,
                                                                       stor7,
                                                                       stor13,
                                                                       stor8,
                                                                       stor10,
                                                                       stor14
                                        else:
                                            if eth.balance(this.address) - stor14:
                                                if (eth.balance(this.address) * stor3) - (stor14 * stor3) / eth.balance(this.address) - stor14 == stor3:
                                                    if not eth.balance(this.address) - stor14:
                                                        if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                                            if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                                                return 'Game is open to deposits.', 
                                                                       eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                                       stor6,
                                                                       stor7,
                                                                       stor13,
                                                                       stor8,
                                                                       stor10,
                                                                       stor14
                                                    else:
                                                        if eth.balance(this.address) - stor14:
                                                            if (eth.balance(this.address) * stor4) - (stor14 * stor4) / eth.balance(this.address) - stor14 == stor4:
                                                                if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                                                    if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                                                        return 'Game is open to deposits.', 
                                                                               eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                                               stor6,
                                                                               stor7,
                                                                               stor13,
                                                                               stor8,
                                                                               stor10,
                                                                               stor14
                                else:
                                    if stor12 >= block.timestamp:
                                        if stor14 <= eth.balance(this.address):
                                            if not eth.balance(this.address) - stor14:
                                                if not eth.balance(this.address) - stor14:
                                                    if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                                        if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                                            return Array(len=48, data='Game is closed, pausing 1 hr for', ' number release.', Mask(128, -256, 'Game is closed, pausing 1 hr for', ' number release.') << 256), 
                                                                   eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                                   stor6,
                                                                   stor7,
                                                                   stor13,
                                                                   stor8,
                                                                   stor10,
                                                                   stor14
                                                else:
                                                    if eth.balance(this.address) - stor14:
                                                        if (eth.balance(this.address) * stor4) - (stor14 * stor4) / eth.balance(this.address) - stor14 == stor4:
                                                            if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                                                if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                                                    return Array(len=48, data='Game is closed, pausing 1 hr for', ' number release.', Mask(128, -256, 'Game is closed, pausing 1 hr for', ' number release.') << 256), 
                                                                           eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                                           stor6,
                                                                           stor7,
                                                                           stor13,
                                                                           stor8,
                                                                           stor10,
                                                                           stor14
                                            else:
                                                if eth.balance(this.address) - stor14:
                                                    if (eth.balance(this.address) * stor3) - (stor14 * stor3) / eth.balance(this.address) - stor14 == stor3:
                                                        if not eth.balance(this.address) - stor14:
                                                            if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                                                if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                                                    return Array(len=48, data='Game is closed, pausing 1 hr for', ' number release.', Mask(128, -256, 'Game is closed, pausing 1 hr for', ' number release.') << 256), 
                                                                           eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                                           stor6,
                                                                           stor7,
                                                                           stor13,
                                                                           stor8,
                                                                           stor10,
                                                                           stor14
                                                        else:
                                                            if eth.balance(this.address) - stor14:
                                                                if (eth.balance(this.address) * stor4) - (stor14 * stor4) / eth.balance(this.address) - stor14 == stor4:
                                                                    if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                                                        if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                                                            return Array(len=48, data='Game is closed, pausing 1 hr for', ' number release.', Mask(128, -256, 'Game is closed, pausing 1 hr for', ' number release.') << 256), 
                                                                                   eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                                                   stor6,
                                                                                   stor7,
                                                                                   stor13,
                                                                                   stor8,
                                                                                   stor10,
                                                                                   stor14
                                    else:
                                        if stor14 <= eth.balance(this.address):
                                            if not eth.balance(this.address) - stor14:
                                                if not eth.balance(this.address) - stor14:
                                                    if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                                        if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                                            return Array(len=47, data='Please call [Release Numbers]! P', 'ause is over!  ', Mask(120, -256, 'Please call [Release Numbers]! P', 'ause is over!  ') << 256), 
                                                                   eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                                   stor6,
                                                                   stor7,
                                                                   stor13,
                                                                   stor8,
                                                                   stor10,
                                                                   stor14
                                                else:
                                                    if eth.balance(this.address) - stor14:
                                                        if (eth.balance(this.address) * stor4) - (stor14 * stor4) / eth.balance(this.address) - stor14 == stor4:
                                                            if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                                                if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                                                    return Array(len=47, data='Please call [Release Numbers]! P', 'ause is over!  ', Mask(120, -256, 'Please call [Release Numbers]! P', 'ause is over!  ') << 256), 
                                                                           eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                                           stor6,
                                                                           stor7,
                                                                           stor13,
                                                                           stor8,
                                                                           stor10,
                                                                           stor14
                                            else:
                                                if eth.balance(this.address) - stor14:
                                                    if (eth.balance(this.address) * stor3) - (stor14 * stor3) / eth.balance(this.address) - stor14 == stor3:
                                                        if not eth.balance(this.address) - stor14:
                                                            if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                                                if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                                                    return Array(len=47, data='Please call [Release Numbers]! P', 'ause is over!  ', Mask(120, -256, 'Please call [Release Numbers]! P', 'ause is over!  ') << 256), 
                                                                           eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                                           stor6,
                                                                           stor7,
                                                                           stor13,
                                                                           stor8,
                                                                           stor10,
                                                                           stor14
                                                        else:
                                                            if eth.balance(this.address) - stor14:
                                                                if (eth.balance(this.address) * stor4) - (stor14 * stor4) / eth.balance(this.address) - stor14 == stor4:
                                                                    if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                                                        if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                                                            return Array(len=47, data='Please call [Release Numbers]! P', 'ause is over!  ', Mask(120, -256, 'Please call [Release Numbers]! P', 'ause is over!  ') << 256), 
                                                                                   eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                                                   stor6,
                                                                                   stor7,
                                                                                   stor13,
                                                                                   stor8,
                                                                                   stor10,
                                                                                   stor14
                            else:
                                if uint8(stor17.field_8) <= 7:
                                    if uint8(stor17.field_8) == 3:
                                        if stor12 >= block.timestamp:
                                            if stor14 <= eth.balance(this.address):
                                                if not eth.balance(this.address) - stor14:
                                                    if not eth.balance(this.address) - stor14:
                                                        if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                                            if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                                                return Array(len=48, data='Game is closed, pausing 1 hr for', ' number release.', Mask(128, -256, 'Game is closed, pausing 1 hr for', ' number release.') << 256), 
                                                                       eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                                       stor6,
                                                                       stor7,
                                                                       stor13,
                                                                       stor8,
                                                                       stor10,
                                                                       stor14
                                                    else:
                                                        if eth.balance(this.address) - stor14:
                                                            if (eth.balance(this.address) * stor4) - (stor14 * stor4) / eth.balance(this.address) - stor14 == stor4:
                                                                if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                                                    if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                                                        return Array(len=48, data='Game is closed, pausing 1 hr for', ' number release.', Mask(128, -256, 'Game is closed, pausing 1 hr for', ' number release.') << 256), 
                                                                               eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                                               stor6,
                                                                               stor7,
                                                                               stor13,
                                                                               stor8,
                                                                               stor10,
                                                                               stor14
                                                else:
                                                    if eth.balance(this.address) - stor14:
                                                        if (eth.balance(this.address) * stor3) - (stor14 * stor3) / eth.balance(this.address) - stor14 == stor3:
                                                            if not eth.balance(this.address) - stor14:
                                                                if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                                                    if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                                                        return Array(len=48, data='Game is closed, pausing 1 hr for', ' number release.', Mask(128, -256, 'Game is closed, pausing 1 hr for', ' number release.') << 256), 
                                                                               eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                                               stor6,
                                                                               stor7,
                                                                               stor13,
                                                                               stor8,
                                                                               stor10,
                                                                               stor14
                                                            else:
                                                                if eth.balance(this.address) - stor14:
                                                                    if (eth.balance(this.address) * stor4) - (stor14 * stor4) / eth.balance(this.address) - stor14 == stor4:
                                                                        if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                                                            if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                                                                return Array(len=48, data='Game is closed, pausing 1 hr for', ' number release.', Mask(128, -256, 'Game is closed, pausing 1 hr for', ' number release.') << 256), 
                                                                                       eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                                                       stor6,
                                                                                       stor7,
                                                                                       stor13,
                                                                                       stor8,
                                                                                       stor10,
                                                                                       stor14
                                        else:
                                            if stor14 <= eth.balance(this.address):
                                                if not eth.balance(this.address) - stor14:
                                                    if not eth.balance(this.address) - stor14:
                                                        if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                                            if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                                                return Array(len=53, data='Ready for release. Please call [', 'Release Numbers] !!  ', Mask(168, -256, 'Ready for release. Please call [', 'Release Numbers] !!  ') << 256), 
                                                                       eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                                       stor6,
                                                                       stor7,
                                                                       stor13,
                                                                       stor8,
                                                                       stor10,
                                                                       stor14
                                                    else:
                                                        if eth.balance(this.address) - stor14:
                                                            if (eth.balance(this.address) * stor4) - (stor14 * stor4) / eth.balance(this.address) - stor14 == stor4:
                                                                if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                                                    if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                                                        return Array(len=53, data='Ready for release. Please call [', 'Release Numbers] !!  ', Mask(168, -256, 'Ready for release. Please call [', 'Release Numbers] !!  ') << 256), 
                                                                               eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                                               stor6,
                                                                               stor7,
                                                                               stor13,
                                                                               stor8,
                                                                               stor10,
                                                                               stor14
                                                else:
                                                    if eth.balance(this.address) - stor14:
                                                        if (eth.balance(this.address) * stor3) - (stor14 * stor3) / eth.balance(this.address) - stor14 == stor3:
                                                            if not eth.balance(this.address) - stor14:
                                                                if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                                                    if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                                                        return Array(len=53, data='Ready for release. Please call [', 'Release Numbers] !!  ', Mask(168, -256, 'Ready for release. Please call [', 'Release Numbers] !!  ') << 256), 
                                                                               eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                                               stor6,
                                                                               stor7,
                                                                               stor13,
                                                                               stor8,
                                                                               stor10,
                                                                               stor14
                                                            else:
                                                                if eth.balance(this.address) - stor14:
                                                                    if (eth.balance(this.address) * stor4) - (stor14 * stor4) / eth.balance(this.address) - stor14 == stor4:
                                                                        if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                                                            if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                                                                return Array(len=53, data='Ready for release. Please call [', 'Release Numbers] !!  ', Mask(168, -256, 'Ready for release. Please call [', 'Release Numbers] !!  ') << 256), 
                                                                                       eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                                                       stor6,
                                                                                       stor7,
                                                                                       stor13,
                                                                                       stor8,
                                                                                       stor10,
                                                                                       stor14
                                    else:
                                        if uint8(stor17.field_8) <= 7:
                                            if uint8(stor17.field_8) == 4:
                                                if stor14 <= eth.balance(this.address):
                                                    if not eth.balance(this.address) - stor14:
                                                        if not eth.balance(this.address) - stor14:
                                                            if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                                                if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                                                    return 'Numbers and key released', 
                                                                           eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                                           stor6,
                                                                           stor7,
                                                                           stor13,
                                                                           stor8,
                                                                           stor10,
                                                                           stor14
                                                        else:
                                                            if eth.balance(this.address) - stor14:
                                                                if (eth.balance(this.address) * stor4) - (stor14 * stor4) / eth.balance(this.address) - stor14 == stor4:
                                                                    if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                                                        if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                                                            return 'Numbers and key released', 
                                                                                   eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                                                   stor6,
                                                                                   stor7,
                                                                                   stor13,
                                                                                   stor8,
                                                                                   stor10,
                                                                                   stor14
                                                    else:
                                                        if eth.balance(this.address) - stor14:
                                                            if (eth.balance(this.address) * stor3) - (stor14 * stor3) / eth.balance(this.address) - stor14 == stor3:
                                                                if not eth.balance(this.address) - stor14:
                                                                    if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                                                        if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                                                            return 'Numbers and key released', 
                                                                                   eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                                                   stor6,
                                                                                   stor7,
                                                                                   stor13,
                                                                                   stor8,
                                                                                   stor10,
                                                                                   stor14
                                                                else:
                                                                    if eth.balance(this.address) - stor14:
                                                                        if (eth.balance(this.address) * stor4) - (stor14 * stor4) / eth.balance(this.address) - stor14 == stor4:
                                                                            if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                                                                if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                                                                    return 'Numbers and key released', 
                                                                                           eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                                                           stor6,
                                                                                           stor7,
                                                                                           stor13,
                                                                                           stor8,
                                                                                           stor10,
                                                                                           stor14
                                            else:
                                                if uint8(stor17.field_8) <= 7:
                                                    if uint8(stor17.field_8) == 5:
                                                        if stor14 <= eth.balance(this.address):
                                                            if not eth.balance(this.address) - stor14:
                                                                if not eth.balance(this.address) - stor14:
                                                                    if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                                                        if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                                                            return 'Game was won!  yay!', 
                                                                                   eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                                                   stor6,
                                                                                   stor7,
                                                                                   stor13,
                                                                                   stor8,
                                                                                   stor10,
                                                                                   stor14
                                                                else:
                                                                    if eth.balance(this.address) - stor14:
                                                                        if (eth.balance(this.address) * stor4) - (stor14 * stor4) / eth.balance(this.address) - stor14 == stor4:
                                                                            if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                                                                if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                                                                    return 'Game was won!  yay!', 
                                                                                           eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                                                           stor6,
                                                                                           stor7,
                                                                                           stor13,
                                                                                           stor8,
                                                                                           stor10,
                                                                                           stor14
                                                            else:
                                                                if eth.balance(this.address) - stor14:
                                                                    if (eth.balance(this.address) * stor3) - (stor14 * stor3) / eth.balance(this.address) - stor14 == stor3:
                                                                        if not eth.balance(this.address) - stor14:
                                                                            if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                                                                if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                                                                    return 'Game was won!  yay!', 
                                                                                           eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                                                           stor6,
                                                                                           stor7,
                                                                                           stor13,
                                                                                           stor8,
                                                                                           stor10,
                                                                                           stor14
                                                                        else:
                                                                            if eth.balance(this.address) - stor14:
                                                                                if (eth.balance(this.address) * stor4) - (stor14 * stor4) / eth.balance(this.address) - stor14 == stor4:
                                                                                    if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                                                                        if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                                                                            return 'Game was won!  yay!', 
                                                                                                   eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                                                                   stor6,
                                                                                                   stor7,
                                                                                                   stor13,
                                                                                                   stor8,
                                                                                                   stor10,
                                                                                                   stor14
                                                    else:
                                                        if uint8(stor17.field_8) <= 7:
                                                            if uint8(stor17.field_8) == 7:
                                                                if stor14 <= eth.balance(this.address):
                                                                    if not eth.balance(this.address) - stor14:
                                                                        if not eth.balance(this.address) - stor14:
                                                                            if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                                                                if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                                                                    return 'Game has stopped', 
                                                                                           eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                                                           stor6,
                                                                                           stor7,
                                                                                           stor13,
                                                                                           stor8,
                                                                                           stor10,
                                                                                           stor14
                                                                        else:
                                                                            if eth.balance(this.address) - stor14:
                                                                                if (eth.balance(this.address) * stor4) - (stor14 * stor4) / eth.balance(this.address) - stor14 == stor4:
                                                                                    if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                                                                        if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                                                                            return 'Game has stopped', 
                                                                                                   eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                                                                   stor6,
                                                                                                   stor7,
                                                                                                   stor13,
                                                                                                   stor8,
                                                                                                   stor10,
                                                                                                   stor14
                                                                    else:
                                                                        if eth.balance(this.address) - stor14:
                                                                            if (eth.balance(this.address) * stor3) - (stor14 * stor3) / eth.balance(this.address) - stor14 == stor3:
                                                                                if not eth.balance(this.address) - stor14:
                                                                                    if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                                                                        if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                                                                            return 'Game has stopped', 
                                                                                                   eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                                                                   stor6,
                                                                                                   stor7,
                                                                                                   stor13,
                                                                                                   stor8,
                                                                                                   stor10,
                                                                                                   stor14
                                                                                else:
                                                                                    if eth.balance(this.address) - stor14:
                                                                                        if (eth.balance(this.address) * stor4) - (stor14 * stor4) / eth.balance(this.address) - stor14 == stor4:
                                                                                            if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                                                                                if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                                                                                    return 'Game has stopped', 
                                                                                                           eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                                                                           stor6,
                                                                                                           stor7,
                                                                                                           stor13,
                                                                                                           stor8,
                                                                                                           stor10,
                                                                                                           stor14
                                                            else:
                                                                if uint8(stor17.field_8) <= 7:
                                                                    if uint8(stor17.field_8) != 6:
                                                                        if stor14 <= eth.balance(this.address):
                                                                            if not eth.balance(this.address) - stor14:
                                                                                if not eth.balance(this.address) - stor14:
                                                                                    if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                                                                        if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                                                                            return 256, 
                                                                                                   eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                                                                   stor6,
                                                                                                   stor7,
                                                                                                   stor13,
                                                                                                   stor8,
                                                                                                   stor10,
                                                                                                   stor14,
                                                                                                   0,
                                                                                                   None
                                                                                else:
                                                                                    if eth.balance(this.address) - stor14:
                                                                                        if (eth.balance(this.address) * stor4) - (stor14 * stor4) / eth.balance(this.address) - stor14 == stor4:
                                                                                            if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                                                                                if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                                                                                    return 256, 
                                                                                                           eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                                                                           stor6,
                                                                                                           stor7,
                                                                                                           stor13,
                                                                                                           stor8,
                                                                                                           stor10,
                                                                                                           stor14,
                                                                                                           0,
                                                                                                           None
                                                                            else:
                                                                                if eth.balance(this.address) - stor14:
                                                                                    if (eth.balance(this.address) * stor3) - (stor14 * stor3) / eth.balance(this.address) - stor14 == stor3:
                                                                                        if not eth.balance(this.address) - stor14:
                                                                                            if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                                                                                if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                                                                                    return 256, 
                                                                                                           eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                                                                           stor6,
                                                                                                           stor7,
                                                                                                           stor13,
                                                                                                           stor8,
                                                                                                           stor10,
                                                                                                           stor14,
                                                                                                           0,
                                                                                                           None
                                                                                        else:
                                                                                            if eth.balance(this.address) - stor14:
                                                                                                if (eth.balance(this.address) * stor4) - (stor14 * stor4) / eth.balance(this.address) - stor14 == stor4:
                                                                                                    if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                                                                                        if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                                                                                            return 256, 
                                                                                                                   eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                                                                                   stor6,
                                                                                                                   stor7,
                                                                                                                   stor13,
                                                                                                                   stor8,
                                                                                                                   stor10,
                                                                                                                   stor14,
                                                                                                                   0,
                                                                                                                   None
                                                                    else:
                                                                        if stor14 <= eth.balance(this.address):
                                                                            if not eth.balance(this.address) - stor14:
                                                                                if not eth.balance(this.address) - stor14:
                                                                                    if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                                                                        if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                                                                            return 'Restarting', 
                                                                                                   eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                                                                   stor6,
                                                                                                   stor7,
                                                                                                   stor13,
                                                                                                   stor8,
                                                                                                   stor10,
                                                                                                   stor14
                                                                                else:
                                                                                    if eth.balance(this.address) - stor14:
                                                                                        if (eth.balance(this.address) * stor4) - (stor14 * stor4) / eth.balance(this.address) - stor14 == stor4:
                                                                                            if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                                                                                if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                                                                                    return 'Restarting', 
                                                                                                           eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                                                                           stor6,
                                                                                                           stor7,
                                                                                                           stor13,
                                                                                                           stor8,
                                                                                                           stor10,
                                                                                                           stor14
                                                                            else:
                                                                                if eth.balance(this.address) - stor14:
                                                                                    if (eth.balance(this.address) * stor3) - (stor14 * stor3) / eth.balance(this.address) - stor14 == stor3:
                                                                                        if not eth.balance(this.address) - stor14:
                                                                                            if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                                                                                if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                                                                                    return 'Restarting', 
                                                                                                           eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                                                                           stor6,
                                                                                                           stor7,
                                                                                                           stor13,
                                                                                                           stor8,
                                                                                                           stor10,
                                                                                                           stor14
                                                                                        else:
                                                                                            if eth.balance(this.address) - stor14:
                                                                                                if (eth.balance(this.address) * stor4) - (stor14 * stor4) / eth.balance(this.address) - stor14 == stor4:
                                                                                                    if (eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18 <= eth.balance(this.address) - stor14:
                                                                                                        if (eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18 <= eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18):
                                                                                                            return 'Restarting', 
                                                                                                                   eth.balance(this.address) - stor14 - ((eth.balance(this.address) * stor3) - (stor14 * stor3) / 10^18) - ((eth.balance(this.address) * stor4) - (stor14 * stor4) / 10^18),
                                                                                                                   stor6,
                                                                                                                   stor7,
                                                                                                                   stor13,
                                                                                                                   stor8,
                                                                                                                   stor10,
                                                                                                                   stor14
    revert
}



}
