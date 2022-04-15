contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
mapping of uint256 stor5;
address stor7;
uint256 stor8;
uint256 stor9;
uint256 stor12;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'Token 0.1' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 10
    stor1.length.field_8 = 'SHIT token' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 4
    stor2.length.field_8 = 'SHIT' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 2
    stor4 = 2775 * 10^10 * 24 * 3600
    stor8 = block.timestamp + 600
    stor9 = block.timestamp + (168 * 24 * 3600)
    stor12 = 0
    require not msg.value
    stor7 = msg.sender
    if stor4 / 100:
        require stor4 / 100
        require 90 * stor4 / 100 / stor4 / 100 == 90
    stor5[stor7] = 90 * stor4 / 100
    return code.data[836 len 5563]
}



// =====================  Runtime code  =====================


const sub_346505ee(?) = 10


array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
uint256 icoStartTime;
uint256 icoEndTime;
array of address sub_0b48f082;
mapping of uint256 sub_a7046702;
uint256 icoTotalAmount;

function name() {
    return name[0 len name.length]
}

function sub_0b48f082(?) {
    require arg1 < sub_0b48f082.length
    return address(sub_0b48f082[arg1])
}

function totalSupply() {
    return totalSupply
}

function icoTotalAmount() {
    return icoTotalAmount
}

function decimals() {
    return decimals
}

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function icoEndTime() {
    return icoEndTime
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_a7046702(?) {
    return sub_a7046702[arg1]
}

function icoStartTime() {
    return icoStartTime
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function approve(address arg1, uint256 arg2) {
    require arg1
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg1
    require arg2
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg1)] >= arg3
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require block.timestamp >= icoStartTime
    require block.timestamp < icoEndTime
    require msg.value > 0
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require icoTotalAmount + msg.value >= icoTotalAmount
    icoTotalAmount += msg.value
    if not sub_a7046702[address(msg.sender)]:
        sub_0b48f082.length++
        if not sub_0b48f082.length <= sub_0b48f082.length + 1:
            idx = sub_0b48f082.length + 1
            while sub_0b48f082.length > idx:
                uint256(sub_0b48f082[idx]) = 0
                idx = idx + 1
                continue 
        address(sub_0b48f082[sub_0b48f082.length]) = msg.sender
    require sub_a7046702[address(msg.sender)] + msg.value >= sub_a7046702[address(msg.sender)]
    sub_a7046702[address(msg.sender)] += msg.value
}

function sub_6fb9d33c(?) {
    require msg.sender == owner
    require block.timestamp > icoEndTime
    if totalSupply / 100:
        require totalSupply / 100
        require 10 * totalSupply / 100 / totalSupply / 100 == 10
    if arg2:
        s = 0
        idx = arg1
        while idx < arg2:
            require idx < sub_0b48f082.length
            if sub_a7046702[address(stor10[idx])]:
                require sub_a7046702[address(stor10[idx])]
                require 10 * sub_a7046702[address(stor10[idx])] * totalSupply / 100 / sub_a7046702[address(stor10[idx])] == 10 * totalSupply / 100
            require icoTotalAmount
            require idx < sub_0b48f082.length
            require balanceOf[address(stor10[idx])] + (10 * sub_a7046702[address(stor10[idx])] * totalSupply / 100 / icoTotalAmount) >= balanceOf[address(stor10[idx])]
            require idx < sub_0b48f082.length
            balanceOf[address(stor10[idx])] += 10 * sub_a7046702[address(stor10[idx])] * totalSupply / 100 / icoTotalAmount
            mem[32] = 11
            sub_a7046702[address(stor10[idx])] = 0
            mem[0] = 10
            address(sub_0b48f082[idx]) = 0
            s = 10 * sub_a7046702[address(stor10[idx])] * totalSupply / 100 / icoTotalAmount
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = arg1
        while idx < sub_0b48f082.length:
            if sub_a7046702[address(stor10[idx])]:
                require sub_a7046702[address(stor10[idx])]
                require 10 * sub_a7046702[address(stor10[idx])] * totalSupply / 100 / sub_a7046702[address(stor10[idx])] == 10 * totalSupply / 100
            require icoTotalAmount
            require idx < sub_0b48f082.length
            require balanceOf[address(stor10[idx])] + (10 * sub_a7046702[address(stor10[idx])] * totalSupply / 100 / icoTotalAmount) >= balanceOf[address(stor10[idx])]
            require idx < sub_0b48f082.length
            balanceOf[address(stor10[idx])] += 10 * sub_a7046702[address(stor10[idx])] * totalSupply / 100 / icoTotalAmount
            mem[32] = 11
            sub_a7046702[address(stor10[idx])] = 0
            mem[0] = 10
            address(sub_0b48f082[idx]) = 0
            s = 10 * sub_a7046702[address(stor10[idx])] * totalSupply / 100 / icoTotalAmount
            idx = idx + 1
            continue 
}



}
