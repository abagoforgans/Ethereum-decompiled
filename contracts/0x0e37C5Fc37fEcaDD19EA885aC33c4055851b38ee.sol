contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function paused() {
    return bool(stor0)
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

function _fallback() payable {
    revert
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'only for owner.'
    if stor0:
        revert with 0, 'Paused.'
    stor0 = 1
    emit Paused(msg.sender);
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'only for owner.'
    if not stor0:
        revert with 0, 'Not paused.'
    stor0 = 0
    emit Unpaused(msg.sender);
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'only for owner.'
    if not arg1:
        revert with 0, 'address is zero.'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    if stor0:
        revert with 0, 'Paused.'
    if not arg1:
        revert with 0, 'address is zero.'
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    if stor0:
        revert with 0, 'Paused.'
    if not arg1:
        revert with 0, 'address is zero.'
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'a must be greater than b or equal to b.'
    allowance[msg.sender][address(arg1)] -= arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    if stor0:
        revert with 0, 'Paused.'
    if not arg1:
        revert with 0, 'address is zero.'
    if arg2 + allowance[msg.sender][address(arg1)] < allowance[msg.sender][address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'c must be greater than b or equal to a.'
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if stor0:
        revert with 0, 'Paused.'
    if not arg1:
        revert with 0, 'address is zero.'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'a must be greater than b or equal to b.'
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'c must be greater than b or equal to a.'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if stor0:
        revert with 0, 'Paused.'
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'a must be greater than b or equal to b.'
    allowance[address(arg1)][msg.sender] -= arg3
    if not arg2:
        revert with 0, 'address is zero.'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'a must be greater than b or equal to b.'
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'c must be greater than b or equal to a.'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
