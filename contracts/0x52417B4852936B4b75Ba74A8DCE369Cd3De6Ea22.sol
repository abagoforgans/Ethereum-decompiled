contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


#
#  - getState()
#  - getMultiplierAtTime(uint256 arg1)
#  - finalize(address arg1)
#  - registerOffChainDonation(address arg1, uint256 arg2, uint256 arg3, string arg4, bytes32 arg5)
#  - getStatus(uint256 arg1, address arg2, address arg3)
#  - donateAsWithChecksum(address arg1, bytes4 arg2)
#  - getPhaseAtTime(uint256 arg1)
#  - registerEarlyContrib(address arg1, uint256 arg2, bytes32 arg3)
#
const sub_011a85c9(?) = 5

const name = Array(len=9, data=mem[224])

const sub_0e9c2a53(?) = (block.timestamp + 7201)

const minDonation = 10^18

const sub_1e0b023f(?) = (4320 * 24 * 3600)

const sub_25f43be2(?) = 100 * 10^6

const decimals = 0

const sub_54f42b66(?) = (block.timestamp + 267001)

const sub_57077019(?) = 3600

const sub_649d75a7(?) = 2 * 10^9

const finalizeStartTime = (block.timestamp + 353461)

const finalizeEndTime = (block.timestamp + 31536353461)

const sub_8a393f06(?) = (block.timestamp + 1)

const earlyContribShare = 20

const sub_900b362d(?) = 25

const symbol = Array(len=3, data=mem[224])

const sub_aa4cfe0f(?) = (block.timestamp + 353401)

const tokensPerCHF = 10

const sub_e19b8c26(?) = (block.timestamp + 266401)

const sub_f8b5508a(?) = 150

const millionInCents = 100 * 10^6


uint256 restrictedShare;
mapping of uint256 tokens;
mapping of uint256 restrictions;
uint256 totalRestrictedTokens;
uint256 totalUnrestrictedTokens;
uint256 totalRestrictedAssignments;
uint256 totalUnrestrictedAssignments;
uint8 assignmentsClosed;
uint256 burnMultDen;
uint256 burnMultNom;
array of uint256 phaseStartTime;
uint256 N;
mapping of uint256 maxDelay;
uint256 phaseLength;
uint256 nSteps;
uint256 step;
mapping of uint256 counter;
mapping of uint256 target;
uint256 weiPerCHF;
uint256 totalWeiDonated;
mapping of uint256 weiDonated;
address foundationWalletAddress;
address registrarAuthAddress;
address exchangeRateAuthAddress;
uint256 stor27;

function totalSupply() {
    return totalUnrestrictedTokens
}

function totalUnrestrictedAssignments() {
    return totalUnrestrictedAssignments
}

function weiDonated(address arg1) {
    return weiDonated[arg1]
}

function totalRestrictedTokens() {
    return totalRestrictedTokens
}

function getPhaseStartTime(uint256 arg1) {
    require arg1
    require arg1 - 1 < phaseStartTime.length
    return phaseStartTime[arg1]
}

function assignmentsClosed() {
    return bool(assignmentsClosed)
}

function phaseLength() {
    return phaseLength
}

function totalRestrictedAssignments() {
    return totalRestrictedAssignments
}

function burnMultNom() {
    return burnMultNom
}

function foundationWallet() {
    return foundationWalletAddress
}

function burnMultDen() {
    return burnMultDen
}

function restrictions(address arg1) {
    return restrictions[arg1]
}

function target(uint256 arg1) {
    return target[arg1]
}

function totalUnrestrictedTokens() {
    return totalUnrestrictedTokens
}

function weiPerCHF() {
    return weiPerCHF
}

function exchangeRateAuth() {
    return exchangeRateAuthAddress
}

function counter(uint256 arg1) {
    return counter[arg1]
}

function registrarAuth() {
    return registrarAuthAddress
}

function restrictedShare() {
    return restrictedShare
}

function N() {
    return N
}

function phaseEndTime(uint256 arg1) {
    require arg1 < phaseStartTime.length
    return phaseStartTime[arg1]
}

function maxDelay(uint256 arg1) {
    return maxDelay[arg1]
}

function step() {
    return step
}

function tokens(address arg1) {
    return tokens[arg1]
}

function nSteps() {
    return nSteps
}

function totalWeiDonated() {
    return totalWeiDonated
}

function _fallback() payable {
    revert 
}

function approve(address arg1, uint256 arg2) {
    revert 
}

function transfer(address arg1, uint256 arg2) {
    revert 
}

function allowance(address arg1, address arg2) {
    revert 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    revert 
}

function targetReached(uint256 arg1) {
    return counter[arg1] >= target[arg1]
}

function balanceOf(address arg1) {
    return (tokens[address(arg1)] - restrictions[address(arg1)])
}

function setWeiPerCHF(uint256 arg1) {
    require exchangeRateAuthAddress == msg.sender
    weiPerCHF = arg1
}

function isUnrestricted() {
    if not assignmentsClosed:
        return bool(assignmentsClosed)
    return not bool(totalRestrictedTokens)
}

function multFracCeiling(uint256 arg1, uint256 arg2, uint256 arg3) {
    if not arg2:
        return 0
    require arg3
    return ((arg1 * arg2) + arg3 - 1 / arg3)
}

function empty() {
    call foundationWalletAddress with:
       value eth.balance(this.address) wei
         gas gas_remaining - 34050 wei
    return bool(ext_call.success)
}

function getStepFunction(uint256 arg1) {
    require arg1 < phaseLength
    require phaseLength
    return (-nSteps + phaseLength + (nSteps * phaseLength) + -arg1 + (-1 * nSteps * arg1) - 1 / phaseLength * step)
}

function sub_77cc9de9(?) {
    require registrarAuthAddress == msg.sender
    require stor27 - 1 < N
    require stor27 - 1 < phaseStartTime.length
    require block.timestamp < phaseStartTime[stor27]
    require arg1 <= maxDelay[stor27 - 1]
    maxDelay[stor27 - 1] -= arg1
    idx = stor27 - 1
    while idx < N:
        require idx < phaseStartTime.length
        mem[0] = 11
        phaseStartTime[idx] += arg1
        idx = idx + 1
        continue 
}

function isPhase(uint256 arg1, uint256 arg2) {
    require arg1 <= block.timestamp
    require arg2 < N
    if arg2 <= 0:
        if arg2 >= N:
            return 1
        require arg2 < phaseStartTime.length
        if arg1 < phaseStartTime[arg2]:
            return 1
    else:
        require arg2 - 1 < phaseStartTime.length
        if phaseStartTime[arg2] <= arg1:
            if arg2 >= N:
                return 1
            require arg2 < phaseStartTime.length
            if arg1 < phaseStartTime[arg2]:
                return 1
    return 0
}



}
