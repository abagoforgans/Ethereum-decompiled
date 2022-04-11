contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
mapping of uint256 stor5;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'Token 0.1' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor4 = 1500 * 3600
    bool(stor1.length) = 0
    stor1.length.field_1 = 19
    stor1.length.field_8 = 'Rotterdan City Coin' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 0
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = 'RCC' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5[address(msg.sender)] = stor4
    return code.data[546 len 1912]
}



// =====================  Runtime code  =====================


array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 initialSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
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

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() {
    revert
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
}



}
