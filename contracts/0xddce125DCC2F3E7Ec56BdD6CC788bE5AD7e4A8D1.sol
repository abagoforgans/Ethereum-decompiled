contract main {




// =====================  Runtime code  =====================


const name = 'ROCKWOOD COIN'

const decimals = 18

const symbol = 'RWD'

const INITIAL_SUPPLY = 30000000000 * 10^18

const TOKEN_OFFERING_ALLOWANCE = 12000000000 * 10^18

const ADMIN_ALLOWANCE = (5000000 * 10^18 * 3600)


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
address adminAddr;
uint8 stor5; offset 160
uint128 stor5; offset 160
address tokenOfferingAddr;

function totalSupply() {
    return totalSupply
}

function transferEnabled() {
    return bool(uint8(stor5.field_160))
}

function tokenOfferingAddr() {
    return tokenOfferingAddr
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function adminAddr() {
    return adminAddr
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
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

function enableTransfer() {
    require msg.sender == owner
    Mask(96, 0, stor5.field_160) = 1
    allowance[address(msg.sender)][address(stor5.field_0)] = 0
    emit Approval(0, msg.sender, tokenOfferingAddr);
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    if not uint8(stor5.field_160):
        require msg.sender == owner
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function setTokenOffering(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not tokenOfferingAddr
    require not uint8(stor5.field_160)
    if not arg2:
        allowance[address(msg.sender)][address(arg1)] = 12000000000 * 10^18
        emit Approval(12000000000 * 10^18, msg.sender, arg1);
    else:
        require arg2 <= 12000000000 * 10^18
        allowance[address(msg.sender)][address(arg1)] = arg2
        emit Approval(arg2, msg.sender, arg1);
    tokenOfferingAddr = arg1
}

function transfer(address arg1, uint256 arg2) {
    if not uint8(stor5.field_160):
        if adminAddr != msg.sender:
            require msg.sender == tokenOfferingAddr
    require arg1
    require arg1 != this.address
    require arg1 != owner
    require arg1 != adminAddr
    require arg1 != tokenOfferingAddr
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
    if not uint8(stor5.field_160):
        if adminAddr != msg.sender:
            require msg.sender == tokenOfferingAddr
    require arg2
    require arg2 != this.address
    require arg2 != owner
    require arg2 != adminAddr
    require arg2 != tokenOfferingAddr
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
