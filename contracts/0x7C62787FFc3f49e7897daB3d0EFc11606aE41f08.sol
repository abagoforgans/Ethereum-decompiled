contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor3;
uint256 stor5;
uint8 stor6;
array of uint256 stor7;
array of uint256 stor8;
array of uint256 stor9;
uint8 stor10;
mapping of uint8 stor11;
uint256 stor12;
uint256 stor14;

function _fallback() payable {
    stor14 = 200000000 * 10^18
    require not msg.value
    stor3 = msg.sender
    bool(stor9.length) = 0
    stor9.length.field_1 = 9
    stor9.length.field_8 = 'ERC20 0.1' / 256
    idx = 0
    while stor9.length + 31 / 32 > idx:
        stor9[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor10 = uint8(bool(code.data[9208 len 32]))
    stor0 = code.data[9176 len 32]
    stor1[address(this.address)] = stor0
    bool(stor7.length) = 0
    stor7.length.field_1 = 6
    stor7.length.field_8 = 'BidDex' / 256
    idx = 0
    while stor7.length + 31 / 32 > idx:
        stor7[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor8.length) = 0
    stor8.length.field_1 = 3
    stor8.length.field_8 = 'BDX' / 256
    idx = 0
    while stor8.length + 31 / 32 > idx:
        stor8[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 18
    stor5 = block.number
    bool(stor9.length) = 0
    stor9.length.field_1 = 16
    stor9.length.field_8 = 'MintingERC20 0.1' / 256
    idx = 0
    while stor9.length + 31 / 32 > idx:
        stor9[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor11[address(msg.sender)] = 1
    stor12 = stor14
    bool(stor9.length) = 0
    stor9.length.field_1 = 12
    stor9.length.field_8 = 'Biddable 0.1' / 256
    idx = 0
    while stor9.length + 31 / 32 > idx:
        stor9[idx].field_0 = 0
        idx = idx + 1
        continue 
    return code.data[1071 len 8105]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
address newOwner;
uint256 creationBlock;
uint8 decimals;
array of uint256 name;
array of uint256 symbol;
array of uint256 standard;
uint8 stor10;
mapping of uint8 stor11;
uint256 stor12;
uint8 disableMinting;
uint8 transferFrozen; offset 8
uint256 stor13; offset 8
uint256 maxSupply;

function name() {
    return name[0 len name.length]
}

function creationBlock() {
    return creationBlock
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function disableMinting() {
    return bool(disableMinting)
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function transferFrozen() {
    return bool(transferFrozen)
}

function locked() {
    return bool(stor10)
}

function newOwner() {
    return newOwner
}

function maxSupply() {
    return maxSupply
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function minters(address arg1) {
    return bool(stor11[arg1])
}

function _fallback() payable {
    revert
}

function acceptOwnership() {
    if msg.sender == newOwner:
        owner = newOwner
}

function setLocked(bool arg1) {
    require msg.sender == owner
    stor10 = uint8(arg1)
}

function freezing(bool arg1) {
    require msg.sender == owner
    stor13 = Mask(248, 0, arg1)
}

function addMinter(address arg1) {
    require msg.sender == owner
    stor11[address(arg1)] = 1
}

function removeMinter(address arg1) {
    require msg.sender == owner
    stor11[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    newOwner = arg1
}

function approve(address arg1, uint256 arg2) {
    if stor10:
        return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    if stor10:
        return 0
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if stor10:
        return 0
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not transferFrozen
    require not stor10
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require 1 == bool(stor11[address(msg.sender)])
    if 1 == bool(disableMinting):
        return 0
    if not arg2:
        return 0
    require totalSupply + arg2 >= totalSupply
    if totalSupply + arg2 > stor12:
        return 0
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return arg2
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not transferFrozen
    if stor10:
        return 0
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
