contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor3; offset 160
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address managerAddress; offset 8
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

function manager() {
    return managerAddress
}

function getBlackListStatus(address arg1) {
    return bool(stor7[address(arg1)])
}

function paused() {
    return bool(uint8(stor3.field_160))
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

function isBlackListed(address arg1) {
    return bool(stor7[arg1])
}

function _fallback() payable {
    revert
}

function changeManager(address arg1) {
    require msg.sender == owner
    managerAddress = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function addBlackList(address arg1) {
    require msg.sender == owner
    stor7[address(arg1)] = 1
    emit AddedBlackList(arg1);
}

function removeBlackList(address arg1) {
    require msg.sender == owner
    stor7[address(arg1)] = 0
    emit RemovedBlackList(arg1);
}

function unpause() {
    require msg.sender == owner
    require uint8(stor3.field_160)
    uint8(stor3.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    uint8(stor3.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function profit(uint256 arg1) {
    if owner != msg.sender:
        require msg.sender == managerAddress
    require arg1 <= balanceOf[address(stor3.field_0)]
    emit Profit(arg1);
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function changeTokenName(string arg1, string arg2) {
    require msg.sender == owner
    name[] = Array(len=arg1.length, data=arg1[all])
    symbol[] = Array(len=arg2.length, data=arg2[all])
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function destroyBlackFunds(address arg1) {
    require msg.sender == owner
    require stor7[address(arg1)]
    balanceOf[address(arg1)] = 0
    require balanceOf[address(arg1)] <= totalSupply
    totalSupply -= balanceOf[address(arg1)]
    emit DestroyedBlackFunds(address(arg1), balanceOf[address(arg1)]);
}

function increaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    if arg2 <= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require not stor7[msg.sender]
    require not uint8(stor3.field_160)
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function issue(uint256 arg1) {
    if owner != msg.sender:
        require msg.sender == managerAddress
    require totalSupply + arg1 > totalSupply
    require balanceOf[address(stor3.field_0)] + arg1 > balanceOf[address(stor3.field_0)]
    require arg1 + balanceOf[address(stor3.field_0)] >= balanceOf[address(stor3.field_0)]
    balanceOf[address(stor3.field_0)] += arg1
    require arg1 + totalSupply >= totalSupply
    totalSupply += arg1
    emit Issue(arg1, owner);
    emit Transfer(arg1, owner, 0);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require not stor7[address(arg1)]
    require not uint8(stor3.field_160)
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function easyCommit(uint256 arg1, uint256 arg2, uint256 arg3) {
    if owner != msg.sender:
        require msg.sender == managerAddress
    require totalSupply + arg1 > totalSupply
    require balanceOf[address(stor3.field_0)] + arg1 > balanceOf[address(stor3.field_0)]
    require arg1 + balanceOf[address(stor3.field_0)] >= balanceOf[address(stor3.field_0)]
    balanceOf[address(stor3.field_0)] += arg1
    require arg1 + totalSupply >= totalSupply
    totalSupply += arg1
    emit Issue(arg1, owner);
    emit Transfer(arg1, owner, 0);
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, msg.sender);
    emit Transfer(arg2, msg.sender, 0);
    if owner != msg.sender:
        require msg.sender == managerAddress
    require arg3 <= balanceOf[address(stor3.field_0)]
    emit Profit(arg3);
    return 1
}



}
