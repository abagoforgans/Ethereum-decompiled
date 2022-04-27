contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint8 stor2;
address stor2; offset 8
address stor3;
array of uint256 stor4;
array of uint256 stor5;
array of uint256 stor6;
uint8 stor7;

function _fallback() {
    uint8(stor2.field_0) = 0
    address(stor2.field_8) = 0xd1bf1706306c7b667c67ffb5c1f76cc7637685bd
    bool(stor6.length) = 0
    stor6.length.field_1 = 6
    stor6.length.field_8 = 'LKKUSD' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 5
    stor4.length.field_8 = '1.0.0' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 15
    stor5.length.field_8 = 'Lykke USD Token' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor7 = 8
    stor3 = 0xd1bf1706306c7b667c67ffb5c1f76cc7637685bd
    stor0[stor3] = -1
    return code.data[811 len 5144]
}



// =====================  Runtime code  =====================


const MAX_UINT256 = -1


mapping of uint256 stor0;
mapping of uint256 allowance;
uint8 stor2;
address stor2; offset 8
address stor3;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function standard() {
    return standard[0 len standard.length]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function totalSupply() {
    require -1 >= stor0[stor3]
    return (-stor0[stor3] - 1)
}

function sub_567bb0f0(?) {
    if msg.sender == address(stor2.field_8):
        uint8(stor2.field_0) = 0
}

function balanceOf(address arg1) {
    if arg1 == stor3:
        return 0
    return stor0[address(arg1)]
}

function blockTransfers() {
    if msg.sender == address(stor2.field_8):
        uint8(stor2.field_0) = 1
}

function changeOwner(address arg1) {
    if msg.sender == address(stor2.field_8):
        address(stor2.field_8) = arg1
}

function changeIssuer(address arg1) {
    if msg.sender == address(stor2.field_8):
        stor0[address(arg1)] = stor0[stor3]
        stor0[stor3] = 0
        stor3 = arg1
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor2.field_0)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor2.field_0)
    if stor0[address(msg.sender)] < arg2:
        return 0
    if arg2 > 0:
        if arg1 != msg.sender:
            require stor0[address(msg.sender)] >= arg2
            stor0[address(msg.sender)] -= arg2
            require stor0[address(arg1)] <= -arg2 - 1
            stor0[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor2.field_0)
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if stor0[address(arg1)] < arg3:
        return 0
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if arg3 > 0:
        if arg1 != arg2:
            require stor0[address(arg1)] >= arg3
            stor0[address(arg1)] -= arg3
            require stor0[address(arg2)] <= -arg3 - 1
            stor0[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
    return 1
}



}
