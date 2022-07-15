contract main {




// =====================  Runtime code  =====================


const MAX_UINT = -1


uint8 paused; offset 160
uint128 stor0; offset 160
address owner;
uint256 _totalSupply;
mapping of uint256 balances;
mapping of uint256 allowed;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
mapping of uint8 stor7;
mapping of uint8 stor8;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return _totalSupply
}

function balances(address arg1) {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function decimals() {
    return decimals
}

function _totalSupply() {
    return _totalSupply
}

function allowed(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowed[arg1][arg2]
}

function paused() {
    return bool(paused)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function authorized(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function blacklisted(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowed[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Sender is not the owner.'
    if paused:
        revert with 0, 'Token is paused.'
    stor0 = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Sender is not the owner.'
    if arg1:
        owner = arg1
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Sender is not the owner.'
    if not paused:
        revert with 0, 'Token is unpaused.'
    stor0 = 0
    emit Unpause()
}

function setAuthorization(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Sender is not the owner.'
    if not arg1:
        revert with 0, 'Provided address is invalid.'
    if stor7[address(arg1)]:
        revert with 0, 'Address is already authorized.'
    stor7[address(arg1)] = 1
    emit AuthorizationSet(arg1);
}

function issue(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor7[address(msg.sender)]:
        revert with 0, 'msg.sender is not authorized'
    require _totalSupply + arg1 >= _totalSupply
    _totalSupply += arg1
    require balances[address(msg.sender)] + arg1 >= balances[address(msg.sender)]
    balances[address(msg.sender)] += arg1
    emit Issue(arg1);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if calldata.size < 68:
        revert with 0, 'Payload size is incorrect.'
    if arg2:
        if allowed[address(msg.sender)][address(arg1)]:
            revert with 0, 'Invalid function arguments.'
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function revokeAuthorization(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Sender is not the owner.'
    if not arg1:
        revert with 0, 'Provided address is invalid.'
    if not stor7[address(arg1)]:
        revert with 0, 'Address is already unauthorized.'
    stor7[address(arg1)] = 0
    emit AuthorizationRevoked(arg1);
}

function addBlacklist(address arg1) {
    require calldata.size - 4 >= 32
    if not stor7[address(msg.sender)]:
        revert with 0, 'msg.sender is not authorized'
    if not arg1:
        revert with 0, 'Provided address is invalid.'
    if stor8[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The provided address is already blacklisted'
    stor8[address(arg1)] = 1
    emit BlacklistAdded(arg1);
}

function removeBlacklist(address arg1) {
    require calldata.size - 4 >= 32
    if not stor7[address(msg.sender)]:
        revert with 0, 'msg.sender is not authorized'
    if not arg1:
        revert with 0, 'Provided address is invalid.'
    if not stor8[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The provided address is already not blacklisted'
    stor8[address(arg1)] = 0
    emit BlacklistRemoved(arg1);
}

function redeem(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor7[address(msg.sender)]:
        revert with 0, 'msg.sender is not authorized'
    if _totalSupply < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Redeem amount is greater than total supply.'
    if balances[address(msg.sender)] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Redeem amount is greater than sender's balance.'
    require arg1 <= _totalSupply
    _totalSupply -= arg1
    require arg1 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg1
    emit Redeem(arg1);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor8[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The provided address is blacklisted.'
    if stor8[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The provided address is blacklisted.'
    if paused:
        revert with 0, 'Token is paused.'
    if calldata.size < 68:
        revert with 0, 'Payload size is incorrect.'
    if not arg1:
        revert with 0, '_to address is invalid.'
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if stor8[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The provided address is blacklisted.'
    if stor8[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The provided address is blacklisted.'
    if stor8[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The provided address is blacklisted.'
    if paused:
        revert with 0, 'Token is paused.'
    if calldata.size < 100:
        revert with 0, 'Payload size is incorrect.'
    if not arg1:
        revert with 0, '_from address is invalid.'
    if not arg2:
        revert with 0, '_to address is invalid.'
    if allowed[address(arg1)][address(msg.sender)] < -1:
        require arg3 <= allowed[address(arg1)][address(msg.sender)]
        allowed[address(arg1)][address(msg.sender)] -= arg3
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
}



}
