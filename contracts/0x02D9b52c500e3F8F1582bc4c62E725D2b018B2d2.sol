contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
mapping of uint256 stor5;

function _fallback() {
    stor0 = msg.sender
    stor3 = 18
    stor4 = 0
    stor5[address(msg.sender)] = 0
    mem[128] = 'Voice Of Coins TOP 25 Index Fund'
    stor1.length = 65
    s = 0
    idx = 128
    while 160 > idx:
        stor1[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 1
    while stor1.length + 31 / 32 > idx:
        stor1[idx] = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 5
    stor2.length.field_8 = 'VOC25' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    return code.data[396 len 3261]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor7;

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

function frozenAccount(address arg1) {
    return bool(stor7[address(arg1)])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function freezeAccount(address arg1, bool arg2) {
    require owner == msg.sender
    stor7[address(arg1)] = uint8(arg2)
    emit AccountFrozen(arg2, arg1);
    return 1
}

function burn(uint256 arg1) {
    require owner == msg.sender
    require not stor7[stor0]
    require balanceOf[stor0] >= arg1
    balanceOf[stor0] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, owner);
    return 1
}

function mintToken(uint256 arg1) {
    require owner == msg.sender
    require not stor7[stor0]
    require balanceOf[stor0] + arg1 >= balanceOf[stor0]
    require totalSupply + arg1 >= totalSupply
    balanceOf[stor0] += arg1
    totalSupply += arg1
    emit Mint(arg1, owner);
    emit Transfer(arg1, 0, owner);
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require not stor7[address(msg.sender)]
    require not stor7[address(arg1)]
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if arg1 != msg.sender:
        require allowance[address(arg1)][address(msg.sender)] >= arg3
        allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require not stor7[address(arg1)]
    require not stor7[address(arg2)]
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require owner == msg.sender
    if stor7[address(arg1)]:
        require owner == msg.sender
        stor7[address(arg1)] = 0
        emit AccountFrozen(0, arg1);
    require owner
    require not stor7[address(arg1)]
    require not stor7[stor0]
    require balanceOf[address(arg1)] >= arg2
    require balanceOf[stor0] + arg2 >= balanceOf[stor0]
    balanceOf[address(arg1)] -= arg2
    balanceOf[stor0] += arg2
    emit Transfer(arg2, arg1, owner);
    require owner == msg.sender
    if not stor7[address(arg1)]:
    else:
        stor7[address(arg1)] = uint8(bool(stor7[address(arg1)]))
        emit AccountFrozen(bool(stor7[address(arg1)]), arg1);
    require not stor7[stor0]
    require balanceOf[stor0] >= arg2
    balanceOf[stor0] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, owner);
    return 1
}



}
