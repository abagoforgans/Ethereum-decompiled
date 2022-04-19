contract main {


// =======================  Init code  ======================


mapping of uint256 stor1;
array of uint256 stor4;
address stor5;
address stor6;
address stor7;
address stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
address stor13;
uint256 stor15;

function _fallback() payable {
    bool(stor4.length) = 0
    stor4.length.field_1 = 3
    stor4.length.field_8 = '1.0' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 0x91efd09febb4fae04667bf2aff7b7b29892e7b36
    stor6 = 0xe48f5617ae488d0e0246fa195b45374c70005318
    stor7 = 0xfecbf6771f207aa599691756ea94c9019321354f
    stor8 = 0x7d517f5e62831f4bb43b54bcbe32389cd5d76903
    stor9 = 1
    stor10 = 10^12
    stor11 = 10^15
    stor12 = 10^18
    stor15 = 500000000 * 10^18
    require not msg.value
    stor13 = msg.sender
    stor1[stor5] = 25000000 * 10^18
    stor1[stor6] = 50000000 * 10^18
    stor1[stor7] = 100000000 * 10^18
    stor1[stor8] = 325000000 * 10^18
    return code.data[1195 len 5093]
}



// =====================  Runtime code  =====================


const name = 'Time Game Coin'

const decimals = 18

const symbol = 'TGC'

const RESEARCH_DEVELOPMENT = 100000000 * 10^18

const MINING_OUTPUT = 325000000 * 10^18

const PRIVATEPLACEMENT = 25000000 * 10^18

const AMOUNT_BASETEAM = 50000000 * 10^18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 lockAccount;
array of uint256 version;
uint256 stor11;
address creatorAddress;
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

function lockAccountOf(address arg1) {
    return lockAccount[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
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
       value arg1 * stor11 wei
         gas 2300 * is_zero(value) wei
    return not bool(ext_call.success)
}

function approve(address arg1, uint256 arg2) {
    if block.timestamp < lockAccount[address(msg.sender)]:
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
    if block.timestamp < lockAccount[address(msg.sender)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
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
