contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor3;
array of uint256 stor4;
array of uint256 stor5;
uint256 stor6;
uint256 stor7;
uint8 stor8; offset 160

function _fallback() payable {
    bool(stor4.length) = 0
    stor4.length.field_1 = 19
    stor4.length.field_8 = 'Sangus Rating Token' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 3
    stor5.length.field_8 = 'SRT' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 18
    stor7 = 20000000 * 10^18
    stor8 = 0
    require not msg.value
    stor3 = msg.sender
    stor0 = stor7
    stor1[address(msg.sender)] = stor7
    return code.data[437 len 3819]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 INITIAL_SUPPLY;
uint8 stor8; offset 160
address releaseAgentAddress;
mapping of uint8 stor9;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function INITIAL_SUPPLY() {
    return INITIAL_SUPPLY
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function transferAgents(address arg1) {
    return bool(stor9[arg1])
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function released() {
    return bool(stor8)
}

function releaseAgent() {
    return releaseAgentAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function release() {
    require releaseAgentAddress == msg.sender
    require not stor8
    stor8 = 1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function setReleaseAgent(address arg1) {
    require owner == msg.sender
    require not stor8
    releaseAgentAddress = arg1
}

function setTransferAgent(address arg1, bool arg2) {
    require owner == msg.sender
    require not stor8
    stor9[address(arg1)] = uint8(arg2)
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require owner == msg.sender
    require balanceOf[address(msg.sender)] >= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if not stor8:
        require stor9[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require owner == msg.sender
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not stor8:
        require stor9[address(arg1)]
    require arg2
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
