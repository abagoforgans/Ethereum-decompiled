contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = 2 * 10^16
    stor2 = 0
    return code.data[50 len 1786]
}



// =====================  Runtime code  =====================


address owner;
uint256 fee;
uint256 sub_306329f3;
array of struct bets;

function sub_306329f3(?) payable {
    return sub_306329f3
}

function sub_495c1902(?) payable {
    require arg1 >= 0
    require arg1 < uint256(bets[stor2].field_0)
    require arg1 < uint256(bets[stor2].field_0)
    return uint16(bets[stor2][arg1].field_256), 
           uint16(bets[stor2][arg1].field_256),
           uint16(bets[stor2][arg1].field_256),
           bets[stor2][arg1].field_304
}

function bets(uint256 arg1, uint256 arg2) payable {
    require arg2 < uint256(bets[arg1].field_0)
    return address(bets[arg1][arg2].field_0), uint256(bets[arg1][arg2].field_256)
}

function sub_734b1946(?) payable {
    return uint256(bets[stor2].field_0)
}

function owner() payable {
    return owner
}

function fee() payable {
    return fee
}

function _fallback() payable {
  stop
}

function set_fee(uint256 arg1) payable {
    if owner == msg.sender:
        fee = arg1
}

function sub_10266d10(?) payable {
    if owner == msg.sender:
        sub_306329f3 = arg1
}

function sub_b1183c53(?) payable {
    require arg1 >= 0
    s = 0
    idx = 0
    while idx < uint256(bets[arg1].field_0):
        mem[32] = 3
        require idx < uint256(bets[arg1].field_0)
        mem[0] = sha3(arg1, 3)
        s = bets[arg1][idx].field_304 + s
        idx = idx + 1
        continue 
    return (stor[(2 * uint256(stor3[arg1].field_0)) + _9 + 1] * uint256(bets[arg1].field_0))
}

function bet(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require msg.value > fee
    require arg1 > 0
    require arg1 < 3650
    require arg2 >= 0
    require arg3 >= 0
    require arg2 <= arg3
    require arg3 <= 65000
    require arg1 - sub_306329f3 > 0
    uint256(bets[arg1].field_0)++
    if not uint256(bets[arg1].field_0) <= uint256(bets[arg1].field_0) + 1:
        idx = 2 * uint256(bets[arg1].field_0) + 1
        while 2 * uint256(bets[arg1].field_0) > idx:
            address(bets[arg1][idx].field_0) = 0
            uint256(bets[arg1][idx].field_256) = 0
            idx = idx + 1
            continue 
    require uint256(bets[arg1].field_0) < uint256(bets[arg1].field_0)
    uint256(bets[arg1][uint256(bets[arg1].field_0)].field_0) = msg.sender or Mask(96, 160, uint256(bets[arg1][uint256(bets[arg1].field_0)].field_0))
    require uint256(bets[arg1].field_0) < uint256(bets[arg1].field_0)
    if 0 == (arg1 * arg1) - (sub_306329f3 * arg1) - (arg1 * sub_306329f3) + (sub_306329f3 * sub_306329f3) / 2:
        uint256(bets[arg1][uint256(bets[arg1].field_0)].field_256) = arg2 + (65536 * arg3) + (msg.value - fee << 48) + 4294967296
    else:
        if (arg1 * arg1) - (sub_306329f3 * arg1) - (arg1 * sub_306329f3) + (sub_306329f3 * sub_306329f3) / 2 <= 500:
            uint256(bets[arg1][uint256(bets[arg1].field_0)].field_256) = arg2 + (65536 * arg3) + (Mask(224, 1, (arg1 * arg1) - (sub_306329f3 * arg1) - (arg1 * sub_306329f3) + (sub_306329f3 * sub_306329f3)) << 31) + (msg.value - fee << 48)
        else:
            uint256(bets[arg1][uint256(bets[arg1].field_0)].field_256) = arg2 + (65536 * arg3) + (msg.value - fee << 48) + 2147483648000
    call owner with:
       value fee wei
         gas 0 wei
    return 1
}

function sub_9f13339c(?) payable {
    if owner != msg.sender:
        return 0
    s = 0
    t = 0
    u = 0
    v = 0
    w = 0
    idx = 0
    x = 0
    while idx < uint256(bets[arg1].field_0):
        mem[32] = 3
        require idx < uint256(bets[arg1].field_0)
        mem[0] = sha3(arg1, 3)
        if arg2 < uint16(bets[arg1][idx].field_256):
            s = bets[arg1][idx].field_304
            t = uint16(bets[arg1][idx].field_288)
            u = uint16(bets[arg1][idx].field_272)
            v = uint16(bets[arg1][idx].field_256)
            w = uint256(bets[arg1][idx].field_256)
            idx = idx + 1
            x = x
            continue 
        if arg2 > uint16(bets[arg1][idx].field_272):
            s = bets[arg1][idx].field_304
            t = uint16(bets[arg1][idx].field_288)
            u = uint16(bets[arg1][idx].field_272)
            v = uint16(bets[arg1][idx].field_256)
            w = uint256(bets[arg1][idx].field_256)
            idx = idx + 1
            x = x
            continue 
        s = bets[arg1][idx].field_304
        t = uint16(bets[arg1][idx].field_288)
        u = uint16(bets[arg1][idx].field_272)
        v = uint16(bets[arg1][idx].field_256)
        w = uint256(bets[arg1][idx].field_256)
        idx = idx + 1
        x = x + (uint16(bets[arg1][idx].field_288) * 100 * bets[arg1][idx].field_304 / uint16(bets[arg1][idx].field_272) - uint16(bets[arg1][idx].field_256))
        continue 
    y = 0
    z = 0
    a = s
    a = t
    a = u
    a = v
    a = w
    idx = 0
    while idx < uint256(bets[arg1].field_0):
        mem[32] = 3
        require idx < uint256(bets[arg1].field_0)
        mem[0] = sha3(arg1, 3)
        if arg2 < uint16(bets[arg1][idx].field_256):
            y = y
            z = z
            a = bets[arg1][idx].field_304
            a = uint16(bets[arg1][idx].field_288)
            a = uint16(bets[arg1][idx].field_272)
            a = uint16(bets[arg1][idx].field_256)
            a = uint256(bets[arg1][idx].field_256)
            idx = idx + 1
            continue 
        if arg2 > uint16(bets[arg1][idx].field_272):
            y = y
            z = z
            a = bets[arg1][idx].field_304
            a = uint16(bets[arg1][idx].field_288)
            a = uint16(bets[arg1][idx].field_272)
            a = uint16(bets[arg1][idx].field_256)
            a = uint256(bets[arg1][idx].field_256)
            idx = idx + 1
            continue 
        mem[32] = 3
        require idx < uint256(bets[arg1].field_0)
        mem[0] = sha3(arg1, 3)
        call address(bets[arg1][idx].field_0) with:
           value bets[arg1][idx].field_304 + (0 / x) wei
             gas 0 wei
        y = bets[arg1][idx].field_304 + (0 / x)
        z = 100 * bets[arg1][idx].field_304 / uint16(bets[arg1][idx].field_272) - uint16(bets[arg1][idx].field_256) * uint16(bets[arg1][idx].field_288)
        a = bets[arg1][idx].field_304
        a = uint16(bets[arg1][idx].field_288)
        a = uint16(bets[arg1][idx].field_272)
        a = uint16(bets[arg1][idx].field_256)
        a = uint256(bets[arg1][idx].field_256)
        idx = idx + 1
        continue 
    return 1
}



}
