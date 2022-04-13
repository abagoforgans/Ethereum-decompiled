contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
address stor5;
uint256 stor6;
uint256 stor7;
mapping of uint256 stor9;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 5
    stor0.length.field_8 = 'ERC20' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 14
    stor1.length.field_8 = 'D-WALLET TOKEN' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = 'DWT' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 0
    stor6 = 417709 * 3600
    stor7 = 419153 * 3600
    require not msg.value
    stor5 = 0x1c46b45a7d6d28e27a755448e68c03248aefd18b
    stor9[stor5] = 10^10
    stor4 = 10^10
    return code.data[697 len 4400]
}



// =====================  Runtime code  =====================


array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
address owner;
uint256 startTime;
uint256 endTime;
uint8 stor8;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function endTime() {
    return endTime
}

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require block.timestamp < startTime
    require arg1 == owner
    revert
}

function _fallback() payable {
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn() {
    if not stor8:
        if block.timestamp > endTime:
            require 1024 * 10^6 <= balanceOf[stor5]
            balanceOf[stor5] = 1024 * 10^6
            require balanceOf[stor5] - 1024 * 10^6 <= totalSupply
            totalSupply = totalSupply + -balanceOf[stor5] + 1024 * 10^6
            stor8 = 1
            emit Burned((balanceOf[stor5] - 1024 * 10^6));
}

function transfer(address arg1, uint256 arg2) {
    require block.timestamp < startTime
    require msg.sender == owner
    require block.timestamp < startTime + (8760 * 24 * 3600)
    require arg2 <= balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] - arg2 < 10^9
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
