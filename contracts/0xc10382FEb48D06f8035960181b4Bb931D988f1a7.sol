contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
address stor3;
array of uint256 stor5;
uint8 stor6;
array of uint256 stor7;
uint256 stor8;
uint8 stor9;

function _fallback() payable {
    bool(stor5.length) = 0
    stor5.length.field_1 = 9
    stor5.length.field_8 = 'ESCOToken' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 18
    bool(stor7.length) = 0
    stor7.length.field_1 = 4
    stor7.length.field_8 = 'ESCO' / 256
    idx = 0
    while stor7.length + 31 / 32 > idx:
        stor7[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor8 = 1000000000 * 10^18
    stor9 = 1
    require not msg.value
    stor3 = msg.sender
    stor0[address(msg.sender)] = stor8
    return code.data[425 len 3378]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
address crowdsaleAddress;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
uint256 totalSupply;
uint8 transferable;

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

function transferable() {
    return bool(transferable)
}

function symbol() {
    return symbol[0 len symbol.length]
}

function crowdsale() {
    return crowdsaleAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function enableTransfers() {
    require owner == msg.sender
    require not transferable
    transferable = 1
    emit EnabledTransfers()
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setCrowdsaleAddress(address arg1) {
    require owner == msg.sender
    require arg1
    crowdsaleAddress = arg1
    emit SetCrowdsaleAddress(arg1);
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require owner == msg.sender
    require arg1 <= balanceOf[stor3]
    require arg1 <= balanceOf[stor3]
    balanceOf[stor3] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, owner);
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
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
    if not transferable:
        require crowdsaleAddress
        require crowdsaleAddress == msg.sender
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not transferable:
        require crowdsaleAddress
        require crowdsaleAddress == msg.sender
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
