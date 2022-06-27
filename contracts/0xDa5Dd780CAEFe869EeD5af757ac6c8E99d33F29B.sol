contract main {




// =====================  Runtime code  =====================


const getBlockTime = block.timestamp


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 paused; offset 160
uint128 stor3; offset 160
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 INITIAL_SUPPLY;
uint256 totalSupply;
uint256 stor10;
mapping of uint8 stor11;
mapping of struct releaseTime;
mapping of struct sub_556b6383;

function name() {
    return name[0 len name.length]
}

function getReleaseTime(address arg1) {
    return releaseTime[address(arg1)].field_0
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

function sub_556b6383(?) {
    return sub_556b6383[address(arg1)].field_256
}

function getLockBalance(address arg1) {
    return releaseTime[address(arg1)].field_256
}

function paused() {
    return bool(paused)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_8032301b(?) {
    return sub_556b6383[address(arg1)].field_0
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor11[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender == owner
    require paused
    stor3 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not paused
    stor3 = 1
    emit Pause()
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
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

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor11[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function releaseLock(address arg1) {
    require msg.sender == owner
    require not paused
    require releaseTime[address(arg1)].field_0 <= block.timestamp
    require releaseTime[address(arg1)].field_256 > 0
    emit 0xa9305076: releaseTime[address(arg1)].field_256, arg1
    releaseTime[address(arg1)].field_256 = 0
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 >= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] = 0
    else:
        require arg2 <= allowance[address(msg.sender)][address(arg1)]
        allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor11[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transferAndLock(address arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    require not paused
    require not releaseTime[address(arg1)].field_0
    require arg2 > block.timestamp
    require arg3 > 0
    releaseTime[address(arg1)].field_0 = arg2
    releaseTime[address(arg1)].field_256 = arg3
    emit TimeLock(arg2, arg3, arg1);
    require not stor11[address(msg.sender)]
    require arg3 <= balanceOf[address(msg.sender)]
    require arg1
    require arg3 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg3
    require balanceOf[address(arg1)] + arg3 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg3
    emit Transfer(arg3, msg.sender, arg1);
    return 1
}

function sub_6f00d535(?) {
    require msg.sender == owner
    require not paused
    require not sub_556b6383[address(arg1)].field_0
    require arg2 > block.timestamp
    require arg3 > 0
    sub_556b6383[address(arg1)].field_0 = arg2
    sub_556b6383[address(arg1)].field_256 = arg3
    sub_556b6383[address(arg1)].field_512 = arg4
    sub_556b6383[address(arg1)].field_768 = arg3
    emit 0x694de2f9: arg2, arg3, arg4, arg1
    require not stor11[address(msg.sender)]
    require arg3 <= balanceOf[address(msg.sender)]
    require arg1
    require arg3 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg3
    require balanceOf[address(arg1)] + arg3 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg3
    emit Transfer(arg3, msg.sender, arg1);
    return 1
}

function sub_cf5ce724(?) {
    require msg.sender == owner
    require not paused
    require sub_556b6383[address(arg1)].field_0 <= block.timestamp
    require sub_556b6383[address(arg1)].field_256 > 0
    require sub_556b6383[address(arg1)].field_0 <= block.timestamp
    require stor10
    require (block.timestamp - sub_556b6383[address(arg1)].field_0 / stor10) + 1 >= block.timestamp - sub_556b6383[address(arg1)].field_0 / stor10
    if not sub_556b6383[address(arg1)].field_768:
        if (block.timestamp - sub_556b6383[address(arg1)].field_0 / stor10) + 1:
            require (block.timestamp - sub_556b6383[address(arg1)].field_0 / stor10) + 1
            require not 0 / (block.timestamp - sub_556b6383[address(arg1)].field_0 / stor10) + 1
        require 0 <= sub_556b6383[address(arg1)].field_768
        if sub_556b6383[address(arg1)].field_256 <= sub_556b6383[address(arg1)].field_768:
            return 0
        sub_556b6383[address(arg1)].field_256 = sub_556b6383[address(arg1)].field_768
        if sub_556b6383[address(arg1)].field_256 > 0:
            if sub_556b6383[address(arg1)].field_256 < 0:
                sub_556b6383[address(arg1)].field_256 = 0
    else:
        require sub_556b6383[address(arg1)].field_768
        require sub_556b6383[address(arg1)].field_768 * sub_556b6383[address(arg1)].field_512 / sub_556b6383[address(arg1)].field_768 == sub_556b6383[address(arg1)].field_512
        if not (block.timestamp - sub_556b6383[address(arg1)].field_0 / stor10) + 1:
            require 0 <= sub_556b6383[address(arg1)].field_768
            if sub_556b6383[address(arg1)].field_256 <= sub_556b6383[address(arg1)].field_768:
                return 0
            sub_556b6383[address(arg1)].field_256 = sub_556b6383[address(arg1)].field_768
        else:
            require (block.timestamp - sub_556b6383[address(arg1)].field_0 / stor10) + 1
            require (sub_556b6383[address(arg1)].field_768 * sub_556b6383[address(arg1)].field_512 / 100) + (block.timestamp - sub_556b6383[address(arg1)].field_0 / stor10 * sub_556b6383[address(arg1)].field_768 * sub_556b6383[address(arg1)].field_512 / 100) / (block.timestamp - sub_556b6383[address(arg1)].field_0 / stor10) + 1 == sub_556b6383[address(arg1)].field_768 * sub_556b6383[address(arg1)].field_512 / 100
            require (sub_556b6383[address(arg1)].field_768 * sub_556b6383[address(arg1)].field_512 / 100) + (block.timestamp - sub_556b6383[address(arg1)].field_0 / stor10 * sub_556b6383[address(arg1)].field_768 * sub_556b6383[address(arg1)].field_512 / 100) <= sub_556b6383[address(arg1)].field_768
            if sub_556b6383[address(arg1)].field_256 <= sub_556b6383[address(arg1)].field_768 - (sub_556b6383[address(arg1)].field_768 * sub_556b6383[address(arg1)].field_512 / 100) - (block.timestamp - sub_556b6383[address(arg1)].field_0 / stor10 * sub_556b6383[address(arg1)].field_768 * sub_556b6383[address(arg1)].field_512 / 100):
                return 0
            sub_556b6383[address(arg1)].field_256 = sub_556b6383[address(arg1)].field_768 - (sub_556b6383[address(arg1)].field_768 * sub_556b6383[address(arg1)].field_512 / 100) - (block.timestamp - sub_556b6383[address(arg1)].field_0 / stor10 * sub_556b6383[address(arg1)].field_768 * sub_556b6383[address(arg1)].field_512 / 100)
        if sub_556b6383[address(arg1)].field_256 > 0:
            if sub_556b6383[address(arg1)].field_256 < sub_556b6383[address(arg1)].field_768 * sub_556b6383[address(arg1)].field_512 / 100:
                sub_556b6383[address(arg1)].field_256 = 0
    require sub_556b6383[address(arg1)].field_256 <= sub_556b6383[address(arg1)].field_256
    emit 0x47e255dd: 0, arg1
    return 1
}



}
