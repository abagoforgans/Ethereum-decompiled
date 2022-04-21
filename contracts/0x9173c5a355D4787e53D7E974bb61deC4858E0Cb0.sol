contract main {


// =======================  Init code  ======================


array of address stor0;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    stor5 = code.data[2076 len 32]
    stor2 = msg.sender
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = stor0.length + 1
        while stor0.length > idx:
            uint256(stor0[idx]) = 0
            idx = idx + 1
            continue 
    address(stor0[stor0.length]) = stor2
    stor4 = code.data[2140 len 32]
    stor3 = code.data[2140 len 32] - code.data[2108 len 32]
    stor6 += msg.value
    return code.data[318 len 1758]
}



// =====================  Runtime code  =====================


array of address stor0;
mapping of uint256 stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;

function DestroyContract() {
    require stor2 == msg.sender
    selfdestruct(stor2)
}

function Store(uint256 arg1) payable {
    stor6 += arg1
    return 1
}

function _fallback() payable {
    emit 0x504f754d: msg.sender, msg.value
}

function sub_91a7990e(?) {
    idx = 0
    s = 0
    while idx < stor0.length:
        mem[0] = 0
        if address(stor0[idx]) != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    return bool(s)
}

function sub_28646213(?) {
    idx = 0
    s = 0
    while idx < stor0.length:
        mem[0] = 0
        if address(stor0[idx]) != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if not s:
        return 0
    return stor1[address(arg1)]
}

function sub_d7594b85(?) {
    require stor3 >= arg2
    idx = 0
    s = 0
    while idx < stor0.length:
        mem[0] = 0
        if address(stor0[idx]) != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if not s:
        stor0.length++
        if not stor0.length <= stor0.length + 1:
            idx = stor0.length + 1
            while stor0.length > idx:
                uint256(stor0[idx]) = 0
                idx = idx + 1
                continue 
        address(stor0[stor0.length]) = arg1
        stor1[address(arg1)] = 0
    stor3 -= arg2
    stor1[address(arg1)] += arg2
    emit 0x2a6fc472: stor3, address(arg1), arg2, stor1[address(arg1)], arg2 + stor1[address(arg1)]
    return 1
}

function sub_537f2cf8(?) payable {
    mem[64] = 96
    require stor2 == msg.sender
    require stor4
    stor6 += msg.value
    s = 0
    s = 0
    idx = 0
    while idx < stor0.length:
        mem[0] = address(stor0[idx])
        mem[32] = 1
        if stor1[address(stor0[idx])]:
            mem[mem[64]] = address(stor0[idx])
            mem[mem[64] + 32] = stor1[address(stor0[idx])]
            mem[mem[64] + 64] = stor6 / stor4 * stor1[address(stor0[idx])]
            mem[mem[64] + 96] = stor6
            emit 0x5a94fc1b: address(stor0[idx]), stor1[address(stor0[idx])], stor6 / stor4 * stor1[address(stor0[idx])], stor6
            call address(stor0[idx]) with:
               value stor6 / stor4 * stor1[address(stor0[idx])] wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            stor6 += -1 * stor6 / stor4 * stor1[address(stor0[idx])]
        s = stor1[address(stor0[idx])]
        s = address(stor0[idx])
        idx = idx + 1
        continue 
    emit 0xced35ffd: 0, stor6
    return 1
}

function Purchase() payable {
    require stor5
    require stor3 >= msg.value / stor5
    call msg.sender with:
       value msg.value - (msg.value / stor5 * stor5) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor6 += msg.value / stor5 * stor5
    require stor3 >= msg.value / stor5
    idx = 0
    s = 0
    while idx < stor0.length:
        mem[0] = 0
        if address(stor0[idx]) != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if not s:
        stor0.length++
        if not stor0.length <= stor0.length + 1:
            idx = stor0.length + 1
            while stor0.length > idx:
                uint256(stor0[idx]) = 0
                idx = idx + 1
                continue 
        address(stor0[stor0.length]) = msg.sender
        stor1[address(msg.sender)] = 0
    stor3 -= msg.value / stor5
    stor1[address(msg.sender)] += msg.value / stor5
    emit 0x2a6fc472: stor3, msg.sender, msg.value / stor5, stor1[address(msg.sender)], (msg.value / stor5) + stor1[address(msg.sender)]
    emit 0x9ccaf377: msg.sender, msg.value / stor5 * stor5, msg.value - (msg.value / stor5 * stor5)
    return (msg.value / stor5)
}



}
