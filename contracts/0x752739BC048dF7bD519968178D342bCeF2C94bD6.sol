contract main {


// =======================  Init code  ======================


uint128 stor3; offset 168
uint128 stor3; offset 160
address stor3;
uint256 stor4;
array of uint256 stor5;
array of uint256 stor6;
uint256 stor7;

function _fallback() payable {
    Mask(96, 0, stor3.field_160) = 0
    Mask(88, 0, stor3.field_168) = 0
    stor4 = 0
    bool(stor5.length) = 0
    stor5.length.field_1 = 9
    stor5.length.field_8 = 'ECT Token' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor6.length) = 0
    stor6.length.field_1 = 3
    stor6.length.field_8 = 'ECT' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor7 = 9
    require not msg.value
    address(stor3.field_0) = msg.sender
    return code.data[498 len 5652]
}



// =====================  Runtime code  =====================


mapping of uint256 balances;
mapping of uint256 allowed;
uint8 stor3; offset 160
uint8 stor3; offset 168
uint128 stor3; offset 168
uint128 stor3; offset 160
address owner;
uint256 stor4;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 totalSupply;

function mintingFinished() {
    return bool(uint8(stor3.field_168))
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function paused() {
    return bool(uint8(stor3.field_160))
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function finishMinting() {
    require msg.sender == owner
    Mask(88, 0, stor3.field_168) = 1
    emit MintFinished()
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function unpause() {
    require msg.sender == owner
    require uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 0
    emit UnpauseEvent()
    return 1
}

function pause() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 1
    emit PauseEvent()
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not uint8(stor3.field_168)
    require stor4 + arg2 >= stor4
    stor4 += arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit MintEvent(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    if calldata.size < 68:
        require calldata.size > 68
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit TransferEvent(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor3.field_160)
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require arg3 <= allowed[address(arg1)][address(msg.sender)]
    allowed[address(arg1)][address(msg.sender)] -= arg3
    emit TransferEvent(arg3, arg1, arg2);
}



}
