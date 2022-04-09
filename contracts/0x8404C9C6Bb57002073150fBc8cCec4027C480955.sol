contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 10
    stor0.length.field_8 = 'Token 0.69' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 14
    stor1.length.field_8 = 'Dick Butt Coin' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = 'DBC' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 0
    stor4 = 0
    if not msg.value:
        return code.data[480 len 4181]
    revert
}



// =====================  Runtime code  =====================


array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 stor5;
mapping of uint8 stor6;
mapping of uint256 allowance;
uint8 stor8;
uint256 stor8;
uint256 deactivateTime;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function deactivateTime() {
    return deactivateTime
}

function standard() {
    return standard[0 len standard.length]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function MyToken() {
    deactivateTime = block.timestamp + (2160 * 24 * 3600)
}

function updateActivation() {
    uint256(stor8) = block.timestamp < deactivateTime or Mask(248, 8, uint256(stor8))
}

function balanceOf(address arg1) {
    if not uint8(stor8):
        return stor5[address(arg1)]
    if stor6[address(arg1)]:
        return stor5[address(arg1)]
    return (stor5[address(arg1)] + 1)
}

function approve(address arg1, uint256 arg2) {
    if uint8(stor8):
        if not stor6[address(msg.sender)]:
            stor6[address(msg.sender)] = 1
            stor5[address(msg.sender)]++
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require stor5[address(arg1)] >= arg3
    require stor5[address(arg2)] + arg3 >= stor5[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    stor5[address(arg1)] -= arg3
    stor5[address(arg2)] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if uint8(stor8):
        if not stor6[address(msg.sender)]:
            stor6[address(msg.sender)] = 1
            stor5[address(msg.sender)]++
    require arg1
    require stor5[address(msg.sender)] >= arg2
    require stor5[address(arg1)] + arg2 >= stor5[address(arg1)]
    stor5[address(msg.sender)] -= arg2
    stor5[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}



}
