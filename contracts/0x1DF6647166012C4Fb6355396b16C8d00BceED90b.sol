contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
array of uint256 stor3;
uint256 stor4;
array of uint256 stor5;
mapping of uint256 stor6;

function _fallback() payable {
    bool(stor5.length) = 0
    stor5.length.field_1 = 9
    stor5.length.field_8 = 'VouchCoin' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor0 = msg.sender
    stor6[address(msg.sender)] = 10^16
    stor1 = 10^16
    bool(stor3.length) = 0
    stor3.length.field_1 = 9
    stor3.length.field_8 = 'VouchCoin' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 8
    return code.data[515 len 2018]
}



// =====================  Runtime code  =====================


address owner;
uint256 totalSupply;
uint256 initialSupply;
array of uint256 name;
uint256 decimals;
array of uint256 standard;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function initialSupply() {
    return initialSupply
}

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function balance(address arg1) {
    return balanceOf[address(arg1)]
}

function _fallback() {
    revert
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[stor0] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[stor0] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, owner, arg1);
}



}
