contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor3;
address stor4;
mapping of uint256 stor5;
uint8 stor7;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 13
    stor0.length.field_8 = 'TORQALL Token' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = 'TRQ' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 8
    stor3 = 24 * 10^15
    stor4 = msg.sender
    stor5[stor4] = 24 * 10^15
    emit Transfer(24 * 10^15, 0, stor4);
    stor7 = 0
    return code.data[732 len 4441]
}



// =====================  Runtime code  =====================


const TOKEN_NAME = 'TORQALL Token'

const TOKEN_SYMBOL = 'TRQ'

const DECIMAL_FACTOR = 100 * 10^6

const TOKEN_DECIMALS = 8

const TOKEN_MAX = 24 * 10^15


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor7;

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

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_f30ff0fb(?) {
    return bool(stor7)
}

function _fallback() payable {
    revert
}

function finalize() {
    require msg.sender == owner
    require not stor7
    stor7 = 1
    emit TokenFinalized()
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if not stor7:
        if owner != msg.sender:
            require arg1 == owner
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not stor7:
        if owner != msg.sender:
            require arg2 == owner
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
