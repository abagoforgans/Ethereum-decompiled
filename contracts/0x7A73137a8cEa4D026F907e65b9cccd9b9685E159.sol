contract main {


// =======================  Init code  ======================


uint256 stor0;
array of address stor1;
address stor2;
mapping of uint256 stor3;
mapping of uint8 stor4;
address stor5;
uint256 stor6;
uint256 stor7;

function _fallback() {
    stor5 = msg.sender
    stor0 = 10000
    stor2 = stor5
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        idx = stor1.length + 1
        while stor1.length > idx:
            uint256(stor1[idx]) = 0
            idx = idx + 1
            continue 
    address(stor1[stor1.length]) = stor5
    stor3[stor5] = stor0
    stor4[stor5] = 1
    stor7 = 50000
    stor6 = 10
    return code.data[603 len 4011]
}



// =====================  Runtime code  =====================


uint256 stor0;
array of address stor1;
address stor2;
mapping of uint256 stor3;
mapping of uint8 stor4;
address stor5;
uint256 stor6;
uint256 stor7;

function sub_e29aac23(?) {
    require msg.sender == stor5
    stor7 = arg1
}

function sub_80a4019a(?) {
    require msg.sender == stor5
    require arg1 >= 0
    stor6 = arg1
}

function sub_7ac8f29b(?) {
    require msg.sender == stor5
    stor0 += arg1
    stor3[stor2] += arg1
}

function Withdraw() {
    require msg.sender == stor5
    call stor5 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_ad9845bc(?) {
    require msg.sender == stor5
    require arg1
    require arg2 > 0
    require stor3[address(arg1)] >= arg2
    stor3[address(arg1)] -= arg2
    stor3[stor2] += arg2
}

function sub_9f3abf28(?) {
    require msg.sender == stor5
    require arg1
    if not stor4[address(arg1)]:
        stor4[address(arg1)] = 1
        stor1.length++
        if not stor1.length <= stor1.length + 1:
            idx = stor1.length + 1
            while stor1.length > idx:
                uint256(stor1[idx]) = 0
                idx = idx + 1
                continue 
        address(stor1[stor1.length]) = arg1
    stor3[address(arg1)] += stor3[stor2]
    stor3[stor2] = 0
    stor2 = arg1
}

function sub_372ada46(?) {
    require msg.sender == stor5
    require arg1
    require arg2 > 0
    require stor3[stor2] + arg2 > 0
    require stor3[stor2] >= arg2
    if not stor4[address(arg1)]:
        stor4[address(arg1)] = 1
        stor1.length++
        if not stor1.length <= stor1.length + 1:
            idx = stor1.length + 1
            while stor1.length > idx:
                uint256(stor1[idx]) = 0
                idx = idx + 1
                continue 
        address(stor1[stor1.length]) = arg1
    stor3[stor2] -= arg2
    stor3[address(arg1)] += arg2
}

function _fallback() payable {
    require stor0
    s = 0
    t = 0
    u = 0
    idx = 0
    while idx < stor1.length:
        mem[0] = address(stor1[idx])
        mem[32] = 3
        if stor3[address(stor1[idx])] <= 0:
            s = s
            t = t
            u = address(stor1[idx])
            idx = idx + 1
            continue 
        mem[0] = address(stor1[idx])
        mem[32] = 3
        require stor0
        if (msg.value * stor3[address(stor1[idx])]) - (msg.value * stor6 / stor0 * stor3[address(stor1[idx])]) / stor0 <= 0:
            s = s
            t = (msg.value * stor3[address(stor1[idx])]) - (msg.value * stor6 / stor0 * stor3[address(stor1[idx])]) / stor0
            u = address(stor1[idx])
            idx = idx + 1
            continue 
        if uint32(ext_code.size(address(stor1[idx]))) <= 0:
            call address(stor1[idx]) with:
               value (msg.value * stor3[address(stor1[idx])]) - (msg.value * stor6 / stor0 * stor3[address(stor1[idx])]) / stor0 wei
                 gas 2300 * is_zero(value) wei
        else:
            call address(stor1[idx]) with:
               value (msg.value * stor3[address(stor1[idx])]) - (msg.value * stor6 / stor0 * stor3[address(stor1[idx])]) / stor0 wei
                 gas stor7 wei
        if ext_call.success:
            emit Transferred(msg.sender, address(stor1[idx]), (msg.value * stor3[address(stor1[idx])]) - (msg.value * stor6 / stor0 * stor3[address(stor1[idx])]) / stor0);
        s = ext_call.success
        t = (msg.value * stor3[address(stor1[idx])]) - (msg.value * stor6 / stor0 * stor3[address(stor1[idx])]) / stor0
        u = address(stor1[idx])
        idx = idx + 1
        continue 
}



}
