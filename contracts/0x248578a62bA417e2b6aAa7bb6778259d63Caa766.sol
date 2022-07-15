contract main {




// =====================  Runtime code  =====================


const name = 'KBIT'

const decimals = 8

const initialSupply = 10^16

const symbol = 'KBT'


uint256 totalSupply;
address owner;
mapping of uint256 balanceOf;
mapping of uint8 stor3;
mapping of uint8 stor4;
uint8 locked;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function allowedAddresses(address arg1) {
    return bool(stor3[arg1])
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function lockedAddresses(address arg1) {
    return bool(stor4[arg1])
}

function locked() {
    return bool(locked)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function setLocked(bool arg1) {
    require msg.sender == owner
    locked = uint8(arg1)
}

function lockAddress(address arg1, bool arg2) {
    require msg.sender == owner
    require owner != arg1
    stor4[address(arg1)] = uint8(arg2)
}

function allowAddress(address arg1, bool arg2) {
    require msg.sender == owner
    require owner != arg1
    stor3[address(arg1)] = uint8(arg2)
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function canTransfer(address arg1) {
    if not locked:
        if not stor4[address(arg1)]:
            return 1
    else:
        if stor3[address(arg1)]:
            return 1
        if owner == arg1:
            return 1
    return 0
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require arg1 > 0
    require arg1 <= balanceOf[msg.sender]
    require arg1 <= balanceOf[msg.sender]
    balanceOf[address(msg.sender)] = balanceOf[msg.sender] - arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    if not locked:
        require not stor4[address(msg.sender)]
    else:
        if not stor3[address(msg.sender)]:
            require owner == msg.sender
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    if not locked:
        require not stor4[address(msg.sender)]
    else:
        if not stor3[address(msg.sender)]:
            require owner == msg.sender
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
