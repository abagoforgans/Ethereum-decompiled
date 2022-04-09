contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 10
    stor1.length.field_8 = 'SuperToken' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = 'SSS' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 8
    stor4 = 22 * 10^6
    require not msg.value
    stor0[address(msg.sender)] = stor4
    return code.data[459 len 1457]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}



}
