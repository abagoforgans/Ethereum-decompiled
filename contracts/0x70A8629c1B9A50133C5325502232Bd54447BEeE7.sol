contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
address stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
uint256 stor5;

function _fallback() payable {
    stor1 = 0x4bce8e9850254a86a1988e2da79e41bc6793640d
    bool(stor2.length) = 0
    stor2.length.field_1 = 8
    stor2.length.field_8 = 'Soarcoin' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 4
    stor3.length.field_8 = 'SOAR' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 6
    stor5 = 5 * 10^15
    require not msg.value
    stor0[stor1] = stor5
    return code.data[685 len 1890]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
address stor1;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;

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

function _fallback() payable {
    revert 
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == stor1
    require arg2 > 0
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
}

function transfer(address arg1, uint256 arg2) {
    require arg2 > 0
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
