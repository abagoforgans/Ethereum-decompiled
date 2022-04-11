contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
uint8 stor2;
array of uint256 stor3;
array of uint256 stor4;
mapping of uint256 stor5;

function _fallback() {
    stor0 = 2 * 10^11
    uint8(stor1.length) = 8
    stor1.length.field_8 = 'Fame' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 2
    uint8(stor3.length) = 6
    stor3.length.field_8 = 'MPG' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor4.length) = 12
    stor4.length.field_8 = 'MPG1.0' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5[address(msg.sender)] = stor0
    return code.data[447 len 2122]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
array of uint256 version;
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

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg2)][address(arg1)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    require arg1 > 0
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require 68 == calldata.size
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 > 0
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}



}
