contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


#
#  - setFoundationWallet(address arg1)
#  - getState()
#  - getMultiplierAtTime(uint256 arg1)
#  - finalize(address arg1)
#  - registerOffChainDonation(address arg1, uint256 arg2, uint256 arg3, string arg4, bytes32 arg5)
#  - getStatus(uint256 arg1, address arg2, address arg3)
#  - donateAsWithChecksum(address arg1, bytes4 arg2)
#  - getPhaseAtTime(uint256 arg1)
#
const round0StartTime = (412020 * 3600)

const round0Target = 100 * 10^6

const minDonation = 10^18

const round1BonusSteps = 5

const round1StartTime = (413730 * 3600)

const round1EndTime = (414738 * 3600)

const maxRoundDelay = (6480 * 24 * 3600)

const gracePeriodAfterRound1Target = 0

const gracePeriodAfterRound0Target = (24 * 3600)

const finalizeStartTime = (414906 * 3600)

const finalizeEndTime = (9174906 * 3600)

const round1Target = 2 * 10^9

const round0EndTime = (413028 * 3600)

const earlyContribShare = 20

const tokensPerCHF = 10

const round1InitialBonus = 25

const round0Bonus = 150

const millionInCents = 100 * 10^6


uint256 restrictedShare;
mapping of uint256 tokens;
mapping of uint256 restrictions;
uint256 totalRestrictedTokens;
uint256 totalUnrestrictedTokens;
uint256 totalRestrictedAssignments;
uint256 totalUnrestrictedAssignments;
uint8 stor7;
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
mapping of uint8 stor18;
array of address donorList;
array of address earlyContribList;
uint256 weiPerCHF;
uint256 totalWeiDonated;
mapping of uint256 weiDonated;
address foundationWalletAddress;
address registrarAuthAddress;
address exchangeRateAuthAddress;
address masterAuthAddress;
uint256 stor29;
uint256 stor30;

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
    return bool(stor7)
}

function donorList(uint256 arg1) {
    require arg1 < donorList.length
    return donorList[arg1]
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

function earlyContribList(uint256 arg1) {
    require arg1 < earlyContribList.length
    return address(earlyContribList[arg1])
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

function masterAuth() {
    return masterAuthAddress
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

function targetReached(uint256 arg1) {
    return counter[arg1] >= target[arg1]
}

function setWeiPerCHF(uint256 arg1) {
    require exchangeRateAuthAddress == msg.sender
    weiPerCHF = arg1
}

function setMasterAuth(address arg1) {
    require masterAuthAddress == msg.sender
    masterAuthAddress = arg1
}

function isUnrestricted() {
    if not stor7:
        return bool(stor7)
    return not bool(totalRestrictedTokens)
}

function setRegistrarAuth(address arg1) {
    require masterAuthAddress == msg.sender
    registrarAuthAddress = arg1
}

function setExchangeRateAuth(address arg1) {
    require masterAuthAddress == msg.sender
    exchangeRateAuthAddress = arg1
}

function isRegistered(address arg1, bool arg2) {
    if not arg2:
        return (tokens[address(arg1)] > 0)
    return (restrictions[address(arg1)] > 0)
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

function delayDonPhase(uint256 arg1, uint256 arg2) {
    require registrarAuthAddress == msg.sender
    if not arg1:
        require stor29 - 1 < N
        require stor29 - 1 < phaseStartTime.length
        require block.timestamp < phaseStartTime[stor29]
        require arg2 <= maxDelay[stor29 - 1]
        maxDelay[stor29 - 1] -= arg2
        idx = stor29 - 1
        while idx < N:
            require idx < phaseStartTime.length
            mem[0] = 10
            phaseStartTime[idx] += arg2
            idx = idx + 1
            continue 
    else:
        if 1 == arg1:
            require stor30 - 1 < N
            require stor30 - 1 < phaseStartTime.length
            require block.timestamp < phaseStartTime[stor30]
            require arg2 <= maxDelay[stor30 - 1]
            maxDelay[stor30 - 1] -= arg2
            idx = stor30 - 1
            while idx < N:
                require idx < phaseStartTime.length
                mem[0] = 10
                phaseStartTime[idx] += arg2
                idx = idx + 1
                continue 
}

function registerEarlyContrib(address arg1, uint256 arg2, bytes32 arg3) {
    require registrarAuthAddress == msg.sender
    require block.timestamp <= block.timestamp
    if var14001 >= N:
        require stor18[var14001] <= 6
        require stor18[var14001] == 1
    else:
        require var16002 < phaseStartTime.length
        mem[0] = 10
        idx = var16002
        s = var16002
        while idx:
            if var18002 + 1 < N:
                require var18002 + 1 < phaseStartTime.length
                mem[0] = 10
                idx = var18002 + 1
                s = var18002 + 1
                continue 
            require stor18[var18002 + 1] <= 6
            require stor18[var18002 + 1] == 1
            if restrictions[address(arg1)] <= 0:
                earlyContribList.length++
                if not earlyContribList.length <= earlyContribList.length + 1:
                    mem[0] = 21
                    idx = earlyContribList.length + sha3(mem[0]) + 1
                    while sha3(21) + earlyContribList.length > idx:
                        stor[idx] = 0
                        mem[0] = 10
                        idx = idx + 1
                        continue 
                address(earlyContribList[earlyContribList.length]) = arg1
            require not stor7
            tokens[address(arg1)] += arg2
            totalRestrictedTokens += arg2
            totalRestrictedAssignments++
            restrictions[address(arg1)] += arg2
            emit EarlyContribReceipt(arg2, arg3, arg1);
        require stor18[var18002] <= 6
        require stor18[var18002] == 1
    if restrictions[address(arg1)] <= 0:
        earlyContribList.length++
        if not earlyContribList.length <= earlyContribList.length + 1:
            idx = earlyContribList.length + 1
            while earlyContribList.length > idx:
                uint256(earlyContribList[idx]) = 0
                idx = idx + 1
                continue 
        address(earlyContribList[earlyContribList.length]) = arg1
    require not stor7
    tokens[address(arg1)] += arg2
    totalRestrictedTokens += arg2
    totalRestrictedAssignments++
    restrictions[address(arg1)] += arg2
    emit EarlyContribReceipt(arg2, arg3, arg1);
}



}
