contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
address stor2; offset 8
mapping of uint256 stor3;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 6
    stor0.length.field_8 = 'ANYPAY' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 6
    stor1.length.field_8 = 'ANYPAY' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor2.field_0) = 18
    stor5 = 210000000 * 10^18
    stor6 = 8750 * 10^18 * 3600
    stor7 = stor6
    stor8 = 0
    stor9 = 0
    stor10 = 0
    stor11 = 0
    stor12 = 0
    stor13 = 5
    require not msg.value
    address(stor2.field_8) = msg.sender
    stor3[address(msg.sender)] = stor6
    return code.data[486 len 3591]
}



// =====================  Runtime code  =====================


array of uint256 symbol;
array of uint256 name;
uint8 decimals;
address stor2;
address stor2; offset 8
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 stor5;
uint256 totalSupply;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
array of struct stor14;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_44ccfb32(?) {
    require address(stor2.field_8) == msg.sender
    require arg1 <= 100
    stor13 = arg1
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdraw() {
    require address(stor2.field_8) == msg.sender
    call address(stor2.field_8) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function sub_a6f848c4(?) {
    require address(stor2.field_8) == msg.sender
    require block.timestamp >= stor8
    require block.timestamp < stor9
    stor8 = 0
    stor9 = 0
    stor10 = 0
    stor11 = 0
    stor12 = 0
    return 1
}

function sub_95c5e2fa(?) {
    require address(stor2.field_8) == msg.sender
    stor14.length = 0
    idx = 0
    while 3 * stor14.length > idx:
        stor14[idx].field_0 = 0
        stor14[idx].field_256 = 0
        stor14[idx].field_512 = 0
        idx = idx + 3
        continue 
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_4f720372(?) {
    require address(stor2.field_8) == msg.sender
    require arg2 > arg1
    require arg4 > 0
    if block.timestamp > stor8:
        require block.timestamp >= stor9
    if arg3 <= 0:
        require totalSupply < stor5
    else:
        require totalSupply + arg3 >= arg3
        require totalSupply + arg3 <= stor5
    stor8 = arg1
    stor9 = arg2
    stor10 = arg3
    stor11 = arg4
    stor12 = 0
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_f63fe8d6(?) {
    require address(stor2.field_8) == msg.sender
    require arg2 > arg1
    require arg3 <= 100
    stor14.length++
    if not stor14.length <= stor14.length + 1:
        idx = (3 * stor14.length) + 3
        while 3 * stor14.length > idx:
            stor14[idx].field_0 = 0
            stor14[idx].field_256 = 0
            stor14[idx].field_512 = 0
            idx = idx + 3
            continue 
    stor14[stor14.length].field_0 = arg1
    stor14[stor14.length].field_256 = arg2
    stor14[stor14.length].field_512 = arg3
    return 1
}

function _fallback() payable {
    require msg.value > 0
    require block.timestamp >= stor8
    require block.timestamp < stor9
    require stor11
    idx = 0
    while idx < stor14.length:
        mem[0] = 14
        if block.timestamp < stor14[idx].field_0:
            idx = idx + 1
            continue 
        require idx < stor14.length
        mem[0] = 14
        if block.timestamp >= stor14[idx].field_256:
            idx = idx + 1
            continue 
        require idx < stor14.length
        require (10^18 * msg.value / stor11 * stor14[idx].field_512 / 100) + (10^18 * msg.value / stor11) >= 10^18 * msg.value / stor11
        require 10^18 * msg.value / stor11 * stor13 / 100 >= 0
        require totalSupply >= 0
        require totalSupply + (10^18 * msg.value / stor11 * stor13 / 100) + (10^18 * msg.value / stor11 * stor14[idx].field_512 / 100) + (10^18 * msg.value / stor11) <= stor5
        if stor10 > 0:
            require stor12 >= 0
            require stor12 + (10^18 * msg.value / stor11 * stor13 / 100) + (10^18 * msg.value / stor11 * stor14[idx].field_512 / 100) + (10^18 * msg.value / stor11) <= stor10
        require (10^18 * msg.value / stor11 * stor14[idx].field_512 / 100) + (10^18 * msg.value / stor11) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = (10^18 * msg.value / stor11 * stor14[idx].field_512 / 100) + (10^18 * msg.value / stor11) + balanceOf[address(msg.sender)]
        require (10^18 * msg.value / stor11 * stor13 / 100) + balanceOf[address(stor2.field_8)] >= balanceOf[address(stor2.field_8)]
        balanceOf[address(stor2.field_0)] = (10^18 * msg.value / stor11 * stor13 / 100) + balanceOf[address(stor2.field_8)]
        require (10^18 * msg.value / stor11 * stor13 / 100) + (10^18 * msg.value / stor11 * stor14[idx].field_512 / 100) + (10^18 * msg.value / stor11) + stor12 >= stor12
        stor12 = (10^18 * msg.value / stor11 * stor13 / 100) + (10^18 * msg.value / stor11 * stor14[idx].field_512 / 100) + (10^18 * msg.value / stor11) + stor12
        require (10^18 * msg.value / stor11 * stor13 / 100) + (10^18 * msg.value / stor11 * stor14[idx].field_512 / 100) + (10^18 * msg.value / stor11) + totalSupply >= totalSupply
        totalSupply = (10^18 * msg.value / stor11 * stor13 / 100) + (10^18 * msg.value / stor11 * stor14[idx].field_512 / 100) + (10^18 * msg.value / stor11) + totalSupply
    require 10^18 * msg.value / stor11 >= 10^18 * msg.value / stor11
    require (10^18 * msg.value / stor11 * stor13 / 100) + (10^18 * msg.value / stor11) >= 10^18 * msg.value / stor11
    require totalSupply >= 0
    require totalSupply + (10^18 * msg.value / stor11 * stor13 / 100) + (10^18 * msg.value / stor11) <= stor5
    if stor10 > 0:
        require stor12 >= 0
        require stor12 + (10^18 * msg.value / stor11 * stor13 / 100) + (10^18 * msg.value / stor11) <= stor10
    require (10^18 * msg.value / stor11) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 10^18 * msg.value / stor11
    require (10^18 * msg.value / stor11 * stor13 / 100) + balanceOf[address(stor2.field_8)] >= balanceOf[address(stor2.field_8)]
    balanceOf[address(stor2.field_0)] = (10^18 * msg.value / stor11 * stor13 / 100) + balanceOf[address(stor2.field_8)]
    require (10^18 * msg.value / stor11 * stor13 / 100) + (10^18 * msg.value / stor11) + stor12 >= stor12
    stor12 = (10^18 * msg.value / stor11 * stor13 / 100) + (10^18 * msg.value / stor11) + stor12
    require (10^18 * msg.value / stor11 * stor13 / 100) + (10^18 * msg.value / stor11) + totalSupply >= totalSupply
    totalSupply = (10^18 * msg.value / stor11 * stor13 / 100) + (10^18 * msg.value / stor11) + totalSupply
}

function subscribe() payable {
    require msg.value > 0
    require block.timestamp >= stor8
    require block.timestamp < stor9
    require stor11
    idx = 0
    while idx < stor14.length:
        mem[0] = 14
        if block.timestamp < stor14[idx].field_0:
            idx = idx + 1
            continue 
        require idx < stor14.length
        mem[0] = 14
        if block.timestamp >= stor14[idx].field_256:
            idx = idx + 1
            continue 
        require idx < stor14.length
        require (10^18 * msg.value / stor11 * stor14[idx].field_512 / 100) + (10^18 * msg.value / stor11) >= 10^18 * msg.value / stor11
        require 10^18 * msg.value / stor11 * stor13 / 100 >= 0
        require totalSupply >= 0
        require totalSupply + (10^18 * msg.value / stor11 * stor13 / 100) + (10^18 * msg.value / stor11 * stor14[idx].field_512 / 100) + (10^18 * msg.value / stor11) <= stor5
        if stor10 > 0:
            require stor12 >= 0
            require stor12 + (10^18 * msg.value / stor11 * stor13 / 100) + (10^18 * msg.value / stor11 * stor14[idx].field_512 / 100) + (10^18 * msg.value / stor11) <= stor10
        require (10^18 * msg.value / stor11 * stor14[idx].field_512 / 100) + (10^18 * msg.value / stor11) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = (10^18 * msg.value / stor11 * stor14[idx].field_512 / 100) + (10^18 * msg.value / stor11) + balanceOf[address(msg.sender)]
        require (10^18 * msg.value / stor11 * stor13 / 100) + balanceOf[address(stor2.field_8)] >= balanceOf[address(stor2.field_8)]
        balanceOf[address(stor2.field_0)] = (10^18 * msg.value / stor11 * stor13 / 100) + balanceOf[address(stor2.field_8)]
        require (10^18 * msg.value / stor11 * stor13 / 100) + (10^18 * msg.value / stor11 * stor14[idx].field_512 / 100) + (10^18 * msg.value / stor11) + stor12 >= stor12
        stor12 = (10^18 * msg.value / stor11 * stor13 / 100) + (10^18 * msg.value / stor11 * stor14[idx].field_512 / 100) + (10^18 * msg.value / stor11) + stor12
        require (10^18 * msg.value / stor11 * stor13 / 100) + (10^18 * msg.value / stor11 * stor14[idx].field_512 / 100) + (10^18 * msg.value / stor11) + totalSupply >= totalSupply
        totalSupply = (10^18 * msg.value / stor11 * stor13 / 100) + (10^18 * msg.value / stor11 * stor14[idx].field_512 / 100) + (10^18 * msg.value / stor11) + totalSupply
        return 1
    require 10^18 * msg.value / stor11 >= 10^18 * msg.value / stor11
    require (10^18 * msg.value / stor11 * stor13 / 100) + (10^18 * msg.value / stor11) >= 10^18 * msg.value / stor11
    require totalSupply >= 0
    require totalSupply + (10^18 * msg.value / stor11 * stor13 / 100) + (10^18 * msg.value / stor11) <= stor5
    if stor10 > 0:
        require stor12 >= 0
        require stor12 + (10^18 * msg.value / stor11 * stor13 / 100) + (10^18 * msg.value / stor11) <= stor10
    require (10^18 * msg.value / stor11) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 10^18 * msg.value / stor11
    require (10^18 * msg.value / stor11 * stor13 / 100) + balanceOf[address(stor2.field_8)] >= balanceOf[address(stor2.field_8)]
    balanceOf[address(stor2.field_0)] = (10^18 * msg.value / stor11 * stor13 / 100) + balanceOf[address(stor2.field_8)]
    require (10^18 * msg.value / stor11 * stor13 / 100) + (10^18 * msg.value / stor11) + stor12 >= stor12
    stor12 = (10^18 * msg.value / stor11 * stor13 / 100) + (10^18 * msg.value / stor11) + stor12
    require (10^18 * msg.value / stor11 * stor13 / 100) + (10^18 * msg.value / stor11) + totalSupply >= totalSupply
    totalSupply = (10^18 * msg.value / stor11 * stor13 / 100) + (10^18 * msg.value / stor11) + totalSupply
    return 1
}



}
