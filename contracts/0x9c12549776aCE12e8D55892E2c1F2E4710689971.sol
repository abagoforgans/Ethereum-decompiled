contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint32 stor4;
uint256 stor4; offset 32
mapping of struct stor5;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 6
    stor1.length.field_8 = 'Lecoin' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = 'LEC' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 8
    require not msg.value
    uint32(stor4.field_0) = 0
    Mask(224, 0, stor4.field_32) = Mask(224, 0, 10^stor3)
    stor5[address(msg.sender)].field_0 = 0
    stor5[address(msg.sender)].field_32 = Mask(224, 0, 10^stor3)
    stor0 = msg.sender
    return code.data[411 len 1043]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 total;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function total() {
    return total
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}



}
