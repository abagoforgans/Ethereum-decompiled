contract main {




// =====================  Runtime code  =====================


const name = 'QuickCash'

const decimals = 18

const symbol = 'QC'


uint8 stor0; offset 160
uint128 stor0; offset 160
address stor0;
mapping of uint8 stor1;
array of struct stor2;
uint256 totalSupply;
address incomeAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function stopped() {
    return bool(uint8(stor0.field_160))
}

function allowance(address arg1, address arg2) {
    if uint8(stor0.field_160):
        revert with 0, 'stopping'
    return allowance[address(arg1)][address(arg2)]
}

function getIncome() {
    if address(stor0.field_0) != msg.sender:
        revert with 0, 'not owner'
    return incomeAddress
}

function _fallback() payable {
    revert
}

function stop() {
    if address(stor0.field_0) != msg.sender:
        revert with 0, 'not owner'
    Mask(96, 0, stor0.field_160) = 1
}

function start() {
    if address(stor0.field_0) != msg.sender:
        revert with 0, 'not owner'
    Mask(96, 0, stor0.field_160) = 0
}

function changeOwner(address arg1) {
    if address(stor0.field_0) != msg.sender:
        revert with 0, 'not owner'
    address(stor0.field_0) = arg1
}

function sub_cde240b0(?) {
    if uint8(stor0.field_160):
        revert with 0, 'stopping'
    if address(stor0.field_0) != msg.sender:
        revert with 0, 'not owner'
    incomeAddress = arg1
    return 1
}

function approve(address arg1, uint256 arg2) {
    if uint8(stor0.field_160):
        revert with 0, 'stopping'
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setSupplyController(address arg1) {
    if address(stor0.field_0) != msg.sender:
        revert with 0, 'not owner'
    if stor1[address(arg1)]:
        revert with 0, 'Already is a controller'
    stor1[address(arg1)] = 1
    stor2.length++
    stor2[stor2.length].field_0 = arg1
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if uint8(stor0.field_160):
        revert with 0, 'stopping'
    require arg2
    if arg1 != msg.sender:
        if allowance[address(arg1)][address(msg.sender)] != -1:
            if allowance[address(arg1)][address(msg.sender)] - arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 'sub underflow'
            allowance[address(arg1)][address(msg.sender)] -= arg3
    if balanceOf[address(arg1)] - arg3 > balanceOf[address(arg1)]:
        revert with 0, 'sub underflow'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'add overflow'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if uint8(stor0.field_160):
        revert with 0, 'stopping'
    require arg1
    if msg.sender != msg.sender:
        if allowance[address(msg.sender)][address(msg.sender)] != -1:
            if allowance[address(msg.sender)][address(msg.sender)] - arg2 > allowance[address(msg.sender)][address(msg.sender)]:
                revert with 0, 'sub underflow'
            allowance[address(msg.sender)][address(msg.sender)] -= arg2
    if balanceOf[address(msg.sender)] - arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'sub underflow'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'add overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function repay(uint256 arg1, uint256 arg2) {
    if uint8(stor0.field_160):
        revert with 0, 'stopping'
    require msg.sender
    if balanceOf[address(msg.sender)] - arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 'sub underflow'
    balanceOf[address(msg.sender)] -= arg1
    if not incomeAddress:
        if totalSupply - arg1 > totalSupply:
            revert with 0, 'sub underflow'
        totalSupply -= arg1
    else:
        if balanceOf[stor4] + arg2 < balanceOf[stor4]:
            revert with 0, 'add overflow'
        balanceOf[stor4] += arg2
        if arg1 - arg2 > arg1:
            revert with 0, 'sub underflow'
        if totalSupply - arg1 + arg2 > totalSupply:
            revert with 0, 'sub underflow'
        totalSupply = totalSupply - arg1 + arg2
    emit Repay(arg1, msg.sender);
    return 1
}

function sub_a4375a28(?) {
    if address(stor0.field_0) != msg.sender:
        revert with 0, 'not owner'
    if not stor2.length:
        mem[(32 * stor2.length) + 128] = 32
        mem[(32 * stor2.length) + 160] = stor2.length
        mem[(32 * stor2.length) + 192 len floor32(stor2.length)] = mem[128 len floor32(stor2.length)]
        return memory
          from (32 * stor2.length) + 128
           len (96 * stor2.length) + 64
    mem[128] = address(stor2.field_0)
    idx = 128
    s = 0
    while (32 * stor2.length) + 96 > idx:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor2.length) + 192 len floor32(stor2.length)] = mem[128 len floor32(stor2.length)]
    return Array(len=stor2.length, data=mem[128 len floor32(stor2.length)], mem[(32 * stor2.length) + floor32(stor2.length) + 192 len (32 * stor2.length) - floor32(stor2.length)]), 
}

function loan(address arg1, uint256 arg2, uint256 arg3) {
    if uint8(stor0.field_160):
        revert with 0, 'stopping'
    if not stor1[address(msg.sender)]:
        revert with 0, 'Not a controller'
    require arg1
    if not incomeAddress:
        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
            revert with 0, 'add overflow'
        balanceOf[address(arg1)] += arg2
        if totalSupply + arg2 < totalSupply:
            revert with 0, 'add overflow'
        totalSupply += arg2
        emit Loan(arg2, arg1);
    else:
        if balanceOf[stor4] + arg3 < balanceOf[stor4]:
            revert with 0, 'add overflow'
        balanceOf[stor4] += arg3
        if arg2 - arg3 > arg2:
            revert with 0, 'sub underflow'
        if balanceOf[address(arg1)] + arg2 - arg3 < balanceOf[address(arg1)]:
            revert with 0, 'add overflow'
        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - arg3
        if totalSupply + arg2 < totalSupply:
            revert with 0, 'add overflow'
        totalSupply += arg2
        emit Loan((arg2 - arg3), arg1);
    return 1
}

function sub_6fb8bc74(?) {
    if address(stor0.field_0) != msg.sender:
        revert with 0, 'not owner'
    if not stor1[address(arg1)]:
        revert with 0, 'Not a controller'
    stor1[address(arg1)] = 0
    if stor2.length - 1:
        mem[128 len 32 * stor2.length - 1] = code.data[9543 len 32 * stor2.length - 1]
    idx = 0
    s = 0
    while idx < stor2.length:
        mem[0] = 2
        if stor2[idx].field_0 == arg1:
            idx = idx + 1
            s = s
            continue 
        require idx < stor2.length
        mem[0] = 2
        require uint8(s) < stor2.length - 1
        mem[(32 * uint8(s)) + 128] = stor2[idx].field_0
        idx = idx + 1
        s = s + 1
        continue 
    stor2.length--
    if not stor2.length - 1:
        idx = 0
        while stor2.length > idx:
            stor2[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        t = 0
        idx = 128
        while (32 * stor2.length - 1) + 128 > idx:
            stor2[t].field_0 = mem[idx + 12 len 20]
            t = t + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * stor2.length - 1) + 31) >> 5
        while stor2.length > idx:
            stor2[idx].field_0 = 0
            idx = idx + 1
            continue 
    return 1
}



}
