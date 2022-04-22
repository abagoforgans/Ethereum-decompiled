contract main {


// =======================  Init code  ======================


address stor3;
array of uint256 stor4;
array of uint256 stor5;
array of uint256 stor6;
bool stor7; offset 256
uint8 stor7;
uint16 stor7; offset 8

function _fallback() payable {
    bool(stor4.length) = 0
    stor4.length.field_1 = 23
    stor4.length.field_8 = 'Papyrus Prototype Token' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 3
    stor5.length.field_8 = 'PRP' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor6.length) = 0
    stor6.length.field_1 = 4
    stor6.length.field_8 = 'H0.1' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor7.field_0) = 18
    uint16(stor7.field_8) = 0
    stor7.field_256 % 1 = 0
    stor3 = msg.sender
    return code.data[468 len 3829]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
array of uint256 name;
array of uint256 symbol;
array of uint256 version;
uint8 decimals;
uint8 stor7; offset 8
uint8 stor7; offset 16
uint256 stor7; offset 8
uint256 totalCollected;

function mintingFinished() {
    return bool(uint8(stor7.field_16))
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
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

function owner() {
    return owner
}

function transferable() {
    return bool(uint8(stor7.field_8))
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function totalCollected() {
    return totalCollected
}

function _fallback() {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function finishMinting() {
    require owner == msg.sender
    require not uint8(stor7.field_16)
    uint8(stor7.field_16) = 1
    emit MintFinished()
    return 1
}

function setTransferable(bool arg1) {
    require owner == msg.sender
    require arg1 != bool(uint8(stor7.field_8))
    Mask(248, 0, stor7.field_8) = Mask(248, 0, arg1)
    emit TransferableChanged(bool(uint8(arg1)));
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if not uint8(stor7.field_8):
        require owner == msg.sender
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2, uint256 arg3) {
    require owner == msg.sender
    require not uint8(stor7.field_16)
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if arg3:
        if arg2:
            require arg2
            require arg3 * arg2 / arg2 == arg3
        require (arg3 * arg2 / 10^18) + totalCollected >= totalCollected
        totalCollected += arg3 * arg2 / 10^18
    emit Mint(arg2, arg3, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not uint8(stor7.field_8):
        require owner == msg.sender
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
