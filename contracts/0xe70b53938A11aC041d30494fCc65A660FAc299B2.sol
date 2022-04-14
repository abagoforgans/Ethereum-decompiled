contract main {


// =======================  Init code  ======================


address stor0;
array of struct stor1;
mapping of uint256 stor2;

function _fallback() payable {
    stor0 = msg.sender
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        mem[0] = 1
        idx = (3 * stor1.length) + 3
        while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 2].length:
                mem[0] = idx + sha3(mem[0]) + 2
                s = sha3(idx + sha3(mem[0]) + 2)
                while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            idx = idx + 3
            continue 
    address(stor1[stor1.length].field_0) = msg.sender
    uint256(stor1[stor1.length].field_256) = msg.value
    bool(stor1[stor1.length].field_512) = 0
    uint255(stor1[stor1.length].field_513) = 0
    Mask(248, 0, stor1[stor1.length].field_520) = mem[224 len 31]
    idx = 0
    while stor[(3 * stor1.length) + ('name', 'stor1', 1) + 2].length + 31 / 32 > idx:
        uint256(stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) + 2)].field_0) = 0
        idx = idx + 1
        continue 
    stor2[stor0] += msg.value
    return code.data[672 len 2943]
}



// =====================  Runtime code  =====================


address stor0;
array of struct sub_626eff62;
mapping of uint256 sub_8a73b437;

function bets(uint256 arg1) {
    require arg1 < sub_626eff62.length
    mem[224] = uint256(stor[sha3((3 * arg1) + ('name', 'sub_626eff62', 1) + 2)].field_0)
    idx = 224
    s = 0
    while stor[(3 * arg1) + ('name', 'sub_626eff62', 1) + 2].length + 224 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((3 * arg1) + ('name', 'sub_626eff62', 1) + 2)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(sub_626eff62[arg1].field_0), 
           uint256(sub_626eff62[arg1].field_256),
           Array(len=stor[(3 * arg1) + ('name', 'sub_626eff62', 1) + 2].length, data=mem[224 len stor[(3 * arg1) + ('name', 'sub_626eff62', 1) + 2].length + (floor32(stor[(3 * arg1) + ('name', 'sub_626eff62', 1) + 2].length - 1) + -stor[(3 * arg1) + ('name', 'sub_626eff62', 1) + 2].length + 32 % 32)])
}

function sub_626eff62(?) {
    require sub_626eff62.length - 1 < sub_626eff62.length
    mem[160] = uint256(stor[sha3((3 * sub_626eff62.length) + ('name', 'sub_626eff62', 1) - 1)].field_0)
    idx = 160
    s = 0
    while stor[(3 * sub_626eff62.length) + ('name', 'sub_626eff62', 1) - 1].length + 128 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((3 * sub_626eff62.length) + ('name', 'sub_626eff62', 1) - 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(sub_626eff62[sub_626eff62.length].field_0), 
           uint256(sub_626eff62[sub_626eff62.length].field_0),
           Array(len=stor[(3 * sub_626eff62.length) + ('name', 'sub_626eff62', 1) - 1].length, data=mem[160 len stor[(3 * sub_626eff62.length) + ('name', 'sub_626eff62', 1) - 1].length])
}

function sub_8a73b437(?) {
    return sub_8a73b437[arg1]
}

function sub_f283ac30(?) {
    return sub_626eff62.length
}

function _fallback() payable {
    revert
}

function withdrawPrize() {
    require sub_8a73b437[address(msg.sender)] > 0
    sub_8a73b437[address(msg.sender)] = 0
    call msg.sender with:
       value sub_8a73b437[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
}

function sub_f14a8863(?) {
    if 1 == sub_626eff62.length:
        if sub_626eff62.length - 1 < sub_626eff62.length:
            return (uint256(sub_626eff62[sub_626eff62.length].field_0) + 10^15)
    else:
        if sub_626eff62.length - 2 < sub_626eff62.length:
            if sub_626eff62.length - 1 < sub_626eff62.length:
                return ((2 * uint256(sub_626eff62[sub_626eff62.length].field_0)) - uint256(sub_626eff62[sub_626eff62.length].field_0))
    revert
}

function sub_5dced9d5(?) {
    s = 0
    idx = 0
    while idx < sub_626eff62.length:
        mem[0] = address(sub_626eff62[idx].field_0)
        mem[32] = 2
        if sub_8a73b437[address(stor1[idx].field_0)] > 0:
            require idx < sub_626eff62.length
            mem[32] = 2
            sub_8a73b437[address(stor1[idx].field_0)] = 0
            mem[0] = 1
            call address(sub_626eff62[idx].field_0) with:
               value sub_8a73b437[address(stor1[idx].field_0)] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                require idx < sub_626eff62.length
                mem[0] = address(sub_626eff62[idx].field_0)
                mem[32] = 2
        s = sub_8a73b437[address(stor1[idx].field_0)]
        idx = idx + 1
        continue 
}

function sub_915eb32f(?) payable {
    sub_8a73b437[address(msg.sender)] += msg.value
    require arg1 <= sub_8a73b437[address(msg.sender)]
    sub_8a73b437[address(msg.sender)] -= arg1
    require sub_626eff62.length - 1 < sub_626eff62.length
    require arg1 >= uint256(sub_626eff62[sub_626eff62.length].field_0) + 10^15
    if sub_626eff62.length >= 2:
        require sub_626eff62.length - 2 < sub_626eff62.length
        require arg1 >= (2 * uint256(sub_626eff62[sub_626eff62.length].field_0)) - uint256(sub_626eff62[sub_626eff62.length].field_0)
    require sub_626eff62.length - 1 < sub_626eff62.length
    sub_8a73b437[address(stor1[stor1.length].field_0)] = arg1 - (arg1 - uint256(sub_626eff62[sub_626eff62.length].field_0) / 10) + sub_8a73b437[address(stor1[stor1.length].field_0)]
    sub_8a73b437[stor0] += arg1 - uint256(sub_626eff62[sub_626eff62.length].field_0) / 10
    sub_626eff62.length++
    if not sub_626eff62.length <= sub_626eff62.length + 1:
        mem[0] = 1
        idx = (3 * sub_626eff62.length) + 3
        while sha3(1) + (3 * sub_626eff62.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 2].length:
                mem[0] = idx + sha3(mem[0]) + 2
                s = sha3(idx + sha3(mem[0]) + 2)
                while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            idx = idx + 3
            continue 
    address(sub_626eff62[sub_626eff62.length].field_0) = msg.sender
    uint256(sub_626eff62[sub_626eff62.length].field_256) = arg1
    uint256(stor[sha3((3 * sub_626eff62.length) + ('name', 'sub_626eff62', 1) + 2)][].field_0) = Array(len=arg2.length, data=arg2[all])
}



}
