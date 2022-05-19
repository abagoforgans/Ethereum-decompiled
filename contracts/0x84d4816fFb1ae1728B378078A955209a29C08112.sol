contract main {




// =====================  Runtime code  =====================


const name = 'Game Engine Chain'

const decimals = 18

const symbol = 'GES'

const PRIVATE_PHASE = 2000000000 * 10^18

const MINE = (1250000 * 10^18 * 3600)

const BASE_TEAM = 2000000000 * 10^18

const STAGE_FOUNDATION = 500000000 * 10^18

const PLATFORM_DEVELOPMENT = 1000000000 * 10^18


address creatorAddress;
uint256 stopToken;
mapping of uint256 lockAccount;
uint256 stopTransferToken;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 version;
uint256 stor15;
address creator_newAddress;
uint256 totalSupply;

function creator() {
    return creatorAddress
}

function totalSupply() {
    return totalSupply
}

function lockAccount(address arg1) {
    return lockAccount[arg1]
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function creator_new() {
    return creator_newAddress
}

function stopToken() {
    return stopToken
}

function lockAccountOf(address arg1) {
    return lockAccount[address(arg1)]
}

function stopTransferToken() {
    return stopTransferToken
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function StopToken() {
    require msg.sender == creatorAddress
    stopToken = 1
}

function OpenToken() {
    require msg.sender == creatorAddress
    stopToken = 0
}

function OpenTransferToken() {
    require msg.sender == creatorAddress
    stopTransferToken = 0
}

function StopTransferToken() {
    require msg.sender == creatorAddress
    stopTransferToken = 1
}

function transferOwnershipSend(address arg1) {
    require msg.sender == creatorAddress
    creator_newAddress = arg1
}

function transferOwnershipReceive() {
    require msg.sender == creator_newAddress
    creatorAddress = creator_newAddress
}

function _fallback() payable {
    call creatorAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function createTokens() payable {
    call creatorAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function setLockAccount(address arg1, uint256 arg2) {
    require msg.sender == creatorAddress
    lockAccount[address(arg1)] = arg2
    emit LockFunds(address(arg1), arg2);
}

function getEth(uint256 arg1) {
    require msg.sender == creatorAddress
    call creatorAddress with:
       value arg1 * stor15 wei
         gas 2300 * is_zero(value) wei
    return not bool(ext_call.success)
}

function approve(address arg1, uint256 arg2) {
    if block.timestamp < lockAccount[address(msg.sender)]:
        return 0
    if stopToken:
        return 0
    if stopTransferToken:
        return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if stopToken:
        return 0
    if stopTransferToken:
        return 0
    if block.timestamp < lockAccount[address(msg.sender)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if block.timestamp < lockAccount[address(msg.sender)]:
        return 0
    if stopToken:
        return 0
    if stopTransferToken:
        return 0
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
