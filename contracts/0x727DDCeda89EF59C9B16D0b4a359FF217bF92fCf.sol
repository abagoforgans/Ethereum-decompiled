contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
mapping of uint8 stor6;
uint8 stor7;
address owner; offset 8
mapping of struct investors_locked;
mapping of uint256 investors_deliveryDate;
uint8 stor10;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function investors_locked(address arg1) {
    return investors_locked[arg1].field_0
}

function decimals() {
    return decimals
}

function isFrozen() {
    return bool(stor10)
}

function isPauser(address arg1) {
    require arg1
    return bool(stor6[address(arg1)])
}

function paused() {
    return bool(stor7)
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

function investors_deliveryDate(address arg1) {
    return investors_deliveryDate[arg1]
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function freeze() {
    require msg.sender == owner
    stor10 = 1
}

function onlyPauserMock() {
    require msg.sender
    require stor6[address(msg.sender)]
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_861138eb(?) {
    require arg1
    return investors_deliveryDate[address(arg1)], investors_locked[address(arg1)].field_0
}

function unpause() {
    require msg.sender
    require stor6[address(msg.sender)]
    require stor7
    stor7 = 0
    emit Unpaused(msg.sender);
}

function removePauser(address arg1) {
    require arg1
    require stor6[address(arg1)]
    stor6[address(arg1)] = 0
    emit PauserRemoved(arg1);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function renouncePauser() {
    require msg.sender
    require stor6[address(msg.sender)]
    stor6[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function pause() {
    require msg.sender
    require stor6[address(msg.sender)]
    require not stor7
    require not stor10
    stor7 = 1
    emit Paused(msg.sender);
}

function addPauser(address arg1) {
    require msg.sender
    require stor6[address(msg.sender)]
    require arg1
    require not stor6[address(arg1)]
    stor6[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function approve(address arg1, uint256 arg2) {
    require not stor7
    require not stor10
    require arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setLockup_investors(address arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    require arg1
    investors_locked[address(arg1)].field_0 = arg2
    investors_deliveryDate[address(arg1)] = arg3
    emit 0xe238d6c1: arg2, arg3, arg1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require not stor7
    require not stor10
    require arg1
    require arg2 <= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] -= arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require not stor7
    require not stor10
    require arg1
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function getLockedAmount_investors(address arg1) {
    require arg1
    if investors_deliveryDate[address(arg1)] >= block.timestamp:
        return investors_locked[address(arg1)].field_0
    if block.timestamp <= investors_deliveryDate[address(arg1)] + (2160 * 24 * 3600):
        if not investors_locked[address(arg1)].field_0:
            return 0
        require 3 * investors_locked[address(arg1)].field_0 / investors_locked[address(arg1)].field_0 == 3
        return (3 * investors_locked[address(arg1)].field_0 / 4)
    if block.timestamp <= investors_deliveryDate[address(arg1)] + (4320 * 24 * 3600):
        if not investors_locked[address(arg1)].field_0:
            return 0
        require 2 * investors_locked[address(arg1)].field_0 / investors_locked[address(arg1)].field_0 == 2
        return investors_locked[address(arg1)].field_1
    if block.timestamp > investors_deliveryDate[address(arg1)] + (6480 * 24 * 3600):
        return 0
    if not investors_locked[address(arg1)].field_0:
        return 0
    require investors_locked[address(arg1)].field_0 / investors_locked[address(arg1)].field_0 == 1
    return investors_locked[address(arg1)].field_2
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2 != this.address
    require arg1
    require arg3 <= balanceOf[address(arg1)]
    if 0 >= investors_locked[address(arg1)].field_0:
        require balanceOf[address(arg1)] - arg3 >= 0
    else:
        require arg1
        if investors_deliveryDate[address(arg1)] >= block.timestamp:
            require investors_locked[address(arg1)].field_0 >= 0
            require balanceOf[address(arg1)] - arg3 >= investors_locked[address(arg1)].field_0
        else:
            if block.timestamp <= investors_deliveryDate[address(arg1)] + (2160 * 24 * 3600):
                if not investors_locked[address(arg1)].field_0:
                    require balanceOf[address(arg1)] - arg3 >= 0
                else:
                    require 3 * investors_locked[address(arg1)].field_0 / investors_locked[address(arg1)].field_0 == 3
                    require 3 * investors_locked[address(arg1)].field_0 / 4 >= 0
                    require balanceOf[address(arg1)] - arg3 >= 3 * investors_locked[address(arg1)].field_0 / 4
            else:
                if block.timestamp <= investors_deliveryDate[address(arg1)] + (4320 * 24 * 3600):
                    if not investors_locked[address(arg1)].field_0:
                        require balanceOf[address(arg1)] - arg3 >= 0
                    else:
                        require 2 * investors_locked[address(arg1)].field_0 / investors_locked[address(arg1)].field_0 == 2
                        require investors_locked[address(arg1)].field_1 >= 0
                        require balanceOf[address(arg1)] - arg3 >= investors_locked[address(arg1)].field_1
                else:
                    if block.timestamp > investors_deliveryDate[address(arg1)] + (6480 * 24 * 3600):
                        require balanceOf[address(arg1)] - arg3 >= 0
                    else:
                        if not investors_locked[address(arg1)].field_0:
                            require balanceOf[address(arg1)] - arg3 >= 0
                        else:
                            require investors_locked[address(arg1)].field_0 / investors_locked[address(arg1)].field_0 == 1
                            require investors_locked[address(arg1)].field_2 >= 0
                            require balanceOf[address(arg1)] - arg3 >= investors_locked[address(arg1)].field_2
    require not stor7
    require not stor10
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    emit Approval(allowance[address(arg1)][msg.sender], arg1, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1 != this.address
    require msg.sender
    require arg2 <= balanceOf[address(msg.sender)]
    if 0 >= investors_locked[address(msg.sender)].field_0:
        require balanceOf[address(msg.sender)] - arg2 >= 0
    else:
        require msg.sender
        if investors_deliveryDate[address(msg.sender)] >= block.timestamp:
            require investors_locked[address(msg.sender)].field_0 >= 0
            require balanceOf[address(msg.sender)] - arg2 >= investors_locked[address(msg.sender)].field_0
        else:
            if block.timestamp <= investors_deliveryDate[address(msg.sender)] + (2160 * 24 * 3600):
                if not investors_locked[address(msg.sender)].field_0:
                    require balanceOf[address(msg.sender)] - arg2 >= 0
                else:
                    require 3 * investors_locked[address(msg.sender)].field_0 / investors_locked[address(msg.sender)].field_0 == 3
                    require 3 * investors_locked[address(msg.sender)].field_0 / 4 >= 0
                    require balanceOf[address(msg.sender)] - arg2 >= 3 * investors_locked[address(msg.sender)].field_0 / 4
            else:
                if block.timestamp <= investors_deliveryDate[address(msg.sender)] + (4320 * 24 * 3600):
                    if not investors_locked[address(msg.sender)].field_0:
                        require balanceOf[address(msg.sender)] - arg2 >= 0
                    else:
                        require 2 * investors_locked[address(msg.sender)].field_0 / investors_locked[address(msg.sender)].field_0 == 2
                        require investors_locked[address(msg.sender)].field_1 >= 0
                        require balanceOf[address(msg.sender)] - arg2 >= investors_locked[address(msg.sender)].field_1
                else:
                    if block.timestamp > investors_deliveryDate[address(msg.sender)] + (6480 * 24 * 3600):
                        require balanceOf[address(msg.sender)] - arg2 >= 0
                    else:
                        if not investors_locked[address(msg.sender)].field_0:
                            require balanceOf[address(msg.sender)] - arg2 >= 0
                        else:
                            require investors_locked[address(msg.sender)].field_0 / investors_locked[address(msg.sender)].field_0 == 1
                            require investors_locked[address(msg.sender)].field_2 >= 0
                            require balanceOf[address(msg.sender)] - arg2 >= investors_locked[address(msg.sender)].field_2
    require not stor7
    require not stor10
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
