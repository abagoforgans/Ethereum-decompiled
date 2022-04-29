contract main {


// =======================  Init code  ======================


address stor1;
uint8 stor5;
uint256 stor7;
array of uint256 stor8;
array of uint256 stor9;
array of uint256 stor10;
uint256 stor11;

function _fallback() payable {
    stor5 = 0
    bool(stor8.length) = 0
    stor8.length.field_1 = 3
    stor8.length.field_8 = '1.1' / 256
    idx = 0
    while stor8.length + 31 / 32 > idx:
        stor8[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor1 = msg.sender
    stor7 = 10000000000 * 10^18
    bool(stor9.length) = 0
    stor9.length.field_1 = 26
    stor9.length.field_8 = 'Global Risk Exchange Token' / 256
    idx = 0
    while stor9.length + 31 / 32 > idx:
        stor9[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor10.length) = 0
    stor10.length.field_1 = 3
    stor10.length.field_8 = 'GRE' / 256
    idx = 0
    while stor10.length + 31 / 32 > idx:
        stor10[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor11 = 18
    return code.data[590 len 7983]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
address owner;
mapping of uint256 balanceOf;
uint8 stor3;
mapping of uint256 allowance;
uint8 stor5;
mapping of uint8 stor6;
uint256 cap;
array of uint256 version;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;

function mintingFinished() {
    return bool(stor5)
}

function transfersEnabledFlag() {
    return bool(stor3)
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

function cap() {
    return cap
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

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function minters(address arg1) {
    return bool(stor6[arg1])
}

function _fallback() payable {
    revert
}

function enableTransfers() {
    require msg.sender == owner
    stor3 = 1
}

function addMinter(address arg1) {
    require msg.sender == owner
    stor6[address(arg1)] = 1
}

function deleteMinter(address arg1) {
    require msg.sender == owner
    stor6[address(arg1)] = 0
}

function finishMinting() {
    require msg.sender == owner
    require not stor5
    stor5 = 1
    emit MintFinished()
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require stor3
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require stor3
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require stor3
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require stor3
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require stor3
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

function mint(address arg1, uint256 arg2) {
    if not stor6[address(msg.sender)]:
        require msg.sender == owner
    require not stor5
    require totalSupply + arg2 >= totalSupply
    require totalSupply + arg2 <= cap
    if not stor6[address(msg.sender)]:
        require msg.sender == owner
    require not stor5
    require arg1
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}



}
