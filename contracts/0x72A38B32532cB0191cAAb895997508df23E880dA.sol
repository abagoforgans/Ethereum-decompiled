contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
address stor5; offset 8
address stor6;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'TimereumX' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 4
    stor1.length.field_8 = 'TMEX' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 18
    stor6 = 0x85196da9269b24bdf5ffd2624abb387fca05382b
    stor5 = 0x7598c3543ef4f27f09c98aeb3753506a0290a0fc
    return code.data[569 len 4077]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
uint8 stor5;
address stor5; offset 8
address stor6;
mapping of uint256 stor7;

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

function balanceImportsComplete() {
    return bool(uint8(stor5.field_0))
}

function _fallback() payable {
    revert
}

function lockBalanceChanges() {
    if tx.origin == stor6:
        uint8(stor5.field_0) = 1
}

function approve(address arg1, uint256 arg2) {
    stor7[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function importAmountForAddress(uint256 arg1, address arg2) {
    if tx.origin == stor6:
        if not uint8(stor5.field_0):
            balanceOf[address(arg2)] += arg1
            totalSupply += arg1
}

function removeAmountForAddress(uint256 arg1, address arg2) {
    if tx.origin == stor6:
        if not uint8(stor5.field_0):
            balanceOf[address(arg2)] -= arg1
            totalSupply -= arg1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function createAmountFromTmedForAddress(uint256 arg1, address arg2) {
    if msg.sender == address(stor5.field_8):
        require ext_code.size(address(stor5.field_8))
        call address(stor5.field_8).0x2d668da4 with:
             gas gas_remaining - 710 wei
            args arg2
        require ext_call.success
        if ext_call.return_data[0] == arg1:
            balanceOf[address(arg2)] += arg1
            totalSupply += arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if stor7[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    stor7[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    return 1
}



}
