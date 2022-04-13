contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
array of uint256 stor2;
uint8 stor3;
array of uint256 stor4;
array of uint256 stor5;
uint8 stor6;
uint256 stor7;
uint256 stor8;
mapping of uint256 stor9;

function _fallback() payable {
    stor1 = 100000000 * 10^18
    bool(stor2.length) = 0
    stor2.length.field_1 = 6
    stor2.length.field_8 = 'Primas' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 18
    bool(stor4.length) = 0
    stor4.length.field_1 = 3
    stor4.length.field_8 = 'PST' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 4
    stor5.length.field_8 = 'v0.1' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 1
    require not msg.value
    stor0 = msg.sender
    stor9[address(msg.sender)] = stor1
    stor7 = block.number
    stor8 = block.timestamp
    return code.data[508 len 2901]
}



// =====================  Runtime code  =====================


address initialOwner;
uint256 totalSupply;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
array of uint256 version;
uint8 transfersEnabled;
uint256 creationBlock;
uint256 creationTime;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 stor11;

function supply() {
    return totalSupply
}

function name() {
    return name[0 len name.length]
}

function creationBlock() {
    return creationBlock
}

function totalSupply() {
    return totalSupply
}

function initialOwner() {
    return initialOwner
}

function decimals() {
    return decimals
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function transfersEnabled() {
    return bool(transfersEnabled)
}

function creationTime() {
    return creationTime
}

function allowance(address arg1, address arg2) {
    require transfersEnabled
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function enableTransfers(bool arg1) {
    require initialOwner == msg.sender
    transfersEnabled = uint8(arg1)
    return bool(uint8(arg1))
}

function catchYou(address arg1, uint256 arg2) {
    require initialOwner == msg.sender
    require transfersEnabled
    stor11[address(arg1)] = arg2
    return arg2
}

function transfer(address arg1, uint256 arg2) {
    require transfersEnabled
    require stor11[address(msg.sender)] < block.timestamp
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require transfersEnabled
    require stor11[address(msg.sender)] < block.timestamp
    require stor11[address(arg1)] < block.timestamp
    if arg2:
        require transfersEnabled
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require transfersEnabled
    require stor11[address(msg.sender)] < block.timestamp
    require stor11[address(arg2)] < block.timestamp
    require stor11[address(arg1)] < block.timestamp
    require transfersEnabled
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if balanceOf[address(arg1)] < arg3:
        allowance[address(arg1)][address(msg.sender)] += arg3
        return 0
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        allowance[address(arg1)][address(msg.sender)] += arg3
        return 0
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
