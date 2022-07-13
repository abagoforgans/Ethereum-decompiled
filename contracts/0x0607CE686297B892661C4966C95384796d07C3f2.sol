contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor2;

function _fallback() {
    stor2 = msg.sender
    stor0 = 10^13
    stor1[address(msg.sender)] = 10^13
    return code.data[196 len 8160]
}



// =====================  Runtime code  =====================


const name = 'Alcohol Coin'

const decimals = 4

const symbol = 'ACoin'

const getNow = block.timestamp

const INITIAL_SUPPLY = 10^13


uint256 totalSupply;
mapping of uint256 balanceOf;
address owner;
mapping of struct lockedFunds;
mapping of uint8 isLock;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function isLock(address arg1) {
    return isLock[address(arg1)]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function getLockedFunds(address arg1) {
    return lockedFunds[address(arg1)].field_0
}

function getLockTime(address arg1) {
    return lockedFunds[address(arg1)].field_256
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function lockUser(address arg1) {
    require msg.sender == owner
    isLock[address(arg1)] = 1
    return 1
}

function unlockUser(address arg1) {
    require msg.sender == owner
    isLock[address(arg1)] = 0
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, owner);
    emit Transfer(arg2, owner, arg1);
}

function sub_d71e055c(?) {
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require balanceOf[0] + arg1 >= balanceOf[0]
    balanceOf[0] += arg1
    emit Transfer(arg1, msg.sender, 0);
    return 1
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

function sub_e5436ff9(?) payable {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    lockedFunds[address(arg1)].field_0 = arg2
    lockedFunds[address(arg1)].field_256 = block.timestamp + arg3
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
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

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require isLock[address(msg.sender)] != 1
    if lockedFunds[address(msg.sender)].field_256:
        if lockedFunds[address(msg.sender)].field_256 >= block.timestamp:
            require balanceOf[address(msg.sender)] - lockedFunds[address(msg.sender)].field_0 >= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
