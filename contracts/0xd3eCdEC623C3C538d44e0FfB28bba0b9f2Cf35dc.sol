contract main {




// =====================  Runtime code  =====================


const name = 'STARCADE'

const decimals = 18

const initialSupply = 1000000000 * 10^18

const symbol = 'SFE'


uint256 totalSupply;
address owner;
mapping of uint256 balanceOf;
mapping of uint8 stor3;
mapping of uint8 stor4;
uint8 stor5;
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
    return bool(stor5)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function setLocked(bool arg1) {
    require msg.sender == owner
    stor5 = uint8(arg1)
}

function lockAddress(address arg1, bool arg2) {
    require msg.sender == owner
    require arg1 != owner
    stor4[address(arg1)] = uint8(arg2)
}

function allowAddress(address arg1, bool arg2) {
    require msg.sender == owner
    require arg1 != owner
    stor3[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function canTransfer(address arg1) {
    if not stor5:
        if not stor4[address(arg1)]:
            return 1
    else:
        if stor3[address(arg1)]:
            return 1
        if arg1 == owner:
            return 1
    return 0
}

function burn(uint256 arg1) {
    require arg1 > 0
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
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
    if not stor5:
        require not stor4[address(msg.sender)]
    else:
        if not stor3[address(msg.sender)]:
            require msg.sender == owner
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    if not stor5:
        require not stor4[address(msg.sender)]
    else:
        if not stor3[address(msg.sender)]:
            require msg.sender == owner
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
