contract main {


// =======================  Init code  ======================


array of uint256 stor3;
array of uint256 stor4;
uint256 stor5;
bool stor6; offset 256
uint8 stor6; offset 160
uint8 stor6; offset 168
uint128 stor6; offset 176
address stor6;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 9
    stor3.length.field_8 = 'LvovsCoin' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 3
    stor4.length.field_8 = 'SML' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 18
    uint8(stor6.field_160) = 1
    uint8(stor6.field_168) = 1
    Mask(80, 0, stor6.field_176) = 0
    stor6.field_256 % 1 = 0
    require not msg.value
    address(stor6.field_0) = code.data[3034 len 20]
    return code.data[471 len 2551]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint8 stor6; offset 160
uint8 stor6; offset 168
address managerAddress;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function mintingIsAllowed() {
    return bool(uint8(stor6.field_168))
}

function decimals() {
    return decimals
}

function manager() {
    return managerAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function tokensAreFrozen() {
    return bool(uint8(stor6.field_160))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function endMinting() {
    require managerAddress == msg.sender
    uint8(stor6.field_168) = 0
}

function unfreeze() {
    require managerAddress == msg.sender
    uint8(stor6.field_168) = 0
    revert
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor6.field_160)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 0
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor6.field_160)
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 0
}

function mint(address arg1, uint256 arg2) {
    require managerAddress == msg.sender
    require arg2
    require arg2 + totalSupply <= 7000000000 * 10^18
    require uint8(stor6.field_168)
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor6.field_160)
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 0
}



}
