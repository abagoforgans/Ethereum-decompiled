contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;

function _fallback() {
    stor0[address(msg.sender)] = 100000
    bool(stor1.length) = 0
    stor1.length.field_1 = 11
    stor1.length.field_8 = 'LiangToken1' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = 'lt1' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 2
    return code.data[384 len 1062]
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
    balanceOf[address(msg.sender)] += 1000
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] >= arg2:
        if balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]:
            balanceOf[address(msg.sender)] -= arg2
            balanceOf[arg1] += arg2
}



}
