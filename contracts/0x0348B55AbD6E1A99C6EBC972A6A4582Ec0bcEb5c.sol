contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
address stor3;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;

function _fallback() payable {
    stor5 = 3 * 10^6
    stor6 = 0
    stor7 = 0
    stor8 = 0
    stor9 = 0
    stor10 = 0
    require not msg.value
    stor0 = msg.sender
    stor1 = sha3(code.data[9042 len 32])
    stor3 = code.data[9086 len 20]
    stor11 = code.data[9106 len 32]
    return code.data[166 len 8876]
}



// =====================  Runtime code  =====================


#
#  - getWithdrawalData(uint256 arg1)
#
const minimumPrepaidClaimedPercent = 65


address stor0;
uint256 stor1;
mapping of uint256 stor2;
address stor3;
array of address previousFounders;
uint256 promissoryUnits;
uint256 prepaidUnits;
uint256 claimedUnits;
uint256 claimedPrepaidUnits;
uint256 redeemedTokens;
uint256 lastPrice;
uint256 numOfBackers;
array of address earlyBackerList;
array of address backers;
array of struct backers;
mapping of uint8 stor15;
array of struct withdrawals;
mapping of uint8 stor17;

function lastPrice() {
    return lastPrice
}

function backersAddresses(uint256 arg1) {
    require arg1 < backers.length
    return backers[arg1]
}

function numOfBackers() {
    return numOfBackers
}

function checkBalance(address arg1, uint256 arg2) {
    require arg2 < uint256(backers[address(arg1)].field_0)
    require arg2 < uint256(backers[address(arg1)].field_0)
    require arg2 < uint256(backers[address(arg1)].field_0)
    require arg2 < uint256(backers[address(arg1)].field_0)
    require arg2 < uint256(backers[address(arg1)].field_0)
    return uint256(backers[address(arg1)][arg2].field_0), 
           uint256(backers[address(arg1)][arg2].field_256),
           uint256(backers[address(arg1)][arg2].field_512),
           bool(uint8(backers[address(arg1)][arg2].field_768)),
           bool(uint8(backers[address(arg1)][arg2].field_776))
}

function claimedPrepaidUnits() {
    return claimedPrepaidUnits
}

function promissoryUnits() {
    return promissoryUnits
}

function withdrawals(uint256 arg1) {
    require arg1 < withdrawals.length
    mem[288] = uint256(stor[sha3((6 * arg1) + ('name', 'withdrawals', 16) + 2)].field_0)
    idx = 288
    s = 0
    while stor[(6 * arg1) + ('name', 'withdrawals', 16) + 2].length + 288 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((6 * arg1) + ('name', 'withdrawals', 16) + 2)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return uint256(withdrawals[arg1].field_0), 
           bool(uint8(withdrawals[arg1].field_256)),
           bool(uint8(withdrawals[arg1].field_264)),
           Array(len=stor[(6 * arg1) + ('name', 'withdrawals', 16) + 2].length, data=mem[288 len stor[(6 * arg1) + ('name', 'withdrawals', 16) + 2].length + (floor32(stor[(6 * arg1) + ('name', 'withdrawals', 16) + 2].length - 1) + -stor[(6 * arg1) + ('name', 'withdrawals', 16) + 2].length + 32 % 32)]),
           uint256(withdrawals[arg1].field_1024)
}

function backers(address arg1, uint256 arg2) {
    require arg2 < uint256(backers[arg1].field_0)
    return uint256(backers[arg1][arg2].field_0), 
           uint256(backers[arg1][arg2].field_256),
           uint256(backers[arg1][arg2].field_512),
           bool(uint8(backers[arg1][arg2].field_768)),
           bool(uint8(backers[arg1][arg2].field_776)),
           uint256(backers[arg1][arg2].field_1024)
}

function prepaidUnits() {
    return prepaidUnits
}

function backersRedeemed(address arg1) {
    return bool(stor15[arg1])
}

function previousFounders(uint256 arg1) {
    require arg1 < previousFounders.length
    return address(previousFounders[arg1])
}

function withdrawalsVotes(address arg1, uint256 arg2) {
    return bool(stor17[arg1][arg2])
}

function claimedUnits() {
    return claimedUnits
}

function redeemedTokens() {
    return redeemedTokens
}

function earlyBackerList(uint256 arg1) {
    require arg1 < earlyBackerList.length
    return earlyBackerList[arg1]
}

function _fallback() {
    revert 
}

function cofounderSwitchAddress(address arg1) {
    require stor3 == msg.sender
    stor3 = arg1
    emit CofounderSwitchedEvent(arg1);
    return 1
}

function founderSwitchRequest(bytes32 arg1, bytes32 arg2) {
    require stor1 == sha3(arg1)
    stor2[address(msg.sender)] = sha3(msg.sender, stor1, arg2)
    emit FounderSwitchRequestEvent(msg.sender);
    return 1
}

function cofounderApproveSwitchRequest(address arg1, bytes32 arg2) {
    require stor3 == msg.sender
    require sha3(arg1, stor1, arg2) == stor2[address(arg1)]
    previousFounders.length++
    if not previousFounders.length <= previousFounders.length + 1:
        idx = previousFounders.length + 1
        while previousFounders.length > idx:
            uint256(previousFounders[idx]) = 0
            idx = idx + 1
            continue 
    address(previousFounders[previousFounders.length]) = stor0
    stor0 = arg1
    emit FounderSwitchedEvent(arg1);
    return 1
}

function claimPrepaid(uint256 arg1, uint256 arg2, uint256 arg3, string arg4, uint256 arg5) {
    require earlyBackerList.length >= numOfBackers
    require arg1 < uint256(backers[address(msg.sender)].field_0)
    require 1 == bool(uint8(backers[address(msg.sender)][arg1].field_768))
    require arg1 < uint256(backers[address(msg.sender)].field_0)
    require not uint8(backers[address(msg.sender)][arg1].field_776)
    require arg1 < uint256(backers[address(msg.sender)].field_0)
    require uint256(backers[address(msg.sender)][arg1].field_256) == arg3
    require arg1 < uint256(backers[address(msg.sender)].field_0)
    require uint256(backers[address(msg.sender)][arg1].field_0) == arg2
    require arg1 < uint256(backers[address(msg.sender)].field_0)
    require uint256(backers[address(msg.sender)][arg1].field_512) == sha3(arg4[all], msg.sender)
    require arg1 < uint256(backers[address(msg.sender)].field_0)
    require uint256(backers[address(msg.sender)][arg1].field_1024) == arg5
    require arg1 < uint256(backers[address(msg.sender)].field_0)
    Mask(248, 0, backers[address(msg.sender)][arg1].field_776) = 1
    claimedPrepaidUnits += arg3
    emit PrepaidTokensClaimedEvent(address(msg.sender), arg1, arg2, arg3);
}

function claim() payable {
    require prepaidUnits != 0
    require claimedPrepaidUnits
    require prepaidUnits
    require 100 * claimedPrepaidUnits / prepaidUnits >= 65
    require lastPrice
    require msg.value
    require 60 * lastPrice / 100
    require (msg.value / 60 * lastPrice / 100) + claimedUnits + prepaidUnits <= promissoryUnits
    if uint256(backers[address(msg.sender)].field_0):
        uint256(backers[address(msg.sender)].field_0)++
    else:
        backers.length++
        backers[backers.length] = msg.sender
        uint256(backers[address(msg.sender)].field_0)++
    uint256(backers[address(msg.sender)][uint256(backers[address(msg.sender)].field_0)].field_0) = 60 * lastPrice / 100
    uint256(backers[address(msg.sender)][uint256(backers[address(msg.sender)].field_0)].field_256) = msg.value / 60 * lastPrice / 100
    uint256(backers[address(msg.sender)][uint256(backers[address(msg.sender)].field_0)].field_512) = sha3(msg.sender)
    uint8(backers[address(msg.sender)][uint256(backers[address(msg.sender)].field_0)].field_768) = 0
    uint8(backers[address(msg.sender)][uint256(backers[address(msg.sender)].field_0)].field_776) = 1
    uint256(backers[address(msg.sender)][uint256(backers[address(msg.sender)].field_0)].field_1024) = 0
    claimedUnits += msg.value / 60 * lastPrice / 100
    emit TokensClaimedEvent(msg.sender, uint256(backers[address(msg.sender)].field_0) - 1, 60 * lastPrice / 100, msg.value / 60 * lastPrice / 100);
}

function setPrepaid(address arg1, uint256 arg2, uint256 arg3, string arg4, uint256 arg5) {
    require stor0 == msg.sender
    require arg2
    require arg3
    require claimedPrepaidUnits <= 0
    require arg3 + prepaidUnits + claimedUnits <= promissoryUnits
    if earlyBackerList.length == numOfBackers:
        require uint256(backers[address(arg1)].field_0)
    if uint256(backers[address(arg1)].field_0):
        uint256(backers[address(arg1)].field_0)++
        if not uint256(backers[address(arg1)].field_0) <= uint256(backers[address(arg1)].field_0) + 1:
            idx = (5 * uint256(backers[address(arg1)].field_0)) + 5
            while 5 * uint256(backers[address(arg1)].field_0) > idx:
                uint256(backers[address(arg1)][idx].field_0) = 0
                uint256(backers[address(arg1)][idx].field_256) = 0
                uint256(backers[address(arg1)][idx].field_512) = 0
                uint16(backers[address(arg1)][idx].field_768) = 0
                uint256(backers[address(arg1)][idx].field_1024) = 0
                idx = idx + 5
                continue 
    else:
        earlyBackerList.length++
        earlyBackerList[earlyBackerList.length] = arg1
        backers.length++
        backers[backers.length] = arg1
        uint256(backers[address(arg1)].field_0)++
        if not uint256(backers[address(arg1)].field_0) <= uint256(backers[address(arg1)].field_0) + 1:
            idx = (5 * uint256(backers[address(arg1)].field_0)) + 5
            while 5 * uint256(backers[address(arg1)].field_0) > idx:
                uint256(backers[address(arg1)][idx].field_0) = 0
                uint256(backers[address(arg1)][idx].field_256) = 0
                uint256(backers[address(arg1)][idx].field_512) = 0
                uint16(backers[address(arg1)][idx].field_768) = 0
                uint256(backers[address(arg1)][idx].field_1024) = 0
                idx = idx + 5
                continue 
    uint256(backers[address(arg1)][uint256(backers[address(arg1)].field_0)].field_0) = arg2
    uint256(backers[address(arg1)][uint256(backers[address(arg1)].field_0)].field_256) = arg3
    uint256(backers[address(arg1)][uint256(backers[address(arg1)].field_0)].field_512) = sha3(arg4[all], arg1)
    uint8(backers[address(arg1)][uint256(backers[address(arg1)].field_0)].field_768) = 1
    Mask(248, 0, backers[address(arg1)][uint256(backers[address(arg1)].field_0)].field_776) = 0
    uint256(backers[address(arg1)][uint256(backers[address(arg1)].field_0)].field_1024) = arg5
    prepaidUnits += arg3
    lastPrice = arg2
    emit AddedPrepaidTokensEvent(address(arg1), uint256(backers[address(arg1)].field_0) - 1, arg2, arg3);
    return (uint256(backers[address(arg1)].field_0) - 1)
}

function withdraw(uint256 arg1, bytes arg2, address[] arg3) {
    require stor0 == msg.sender
    require eth.balance(this.address) >= arg1
    withdrawals.length++
    if not withdrawals.length <= withdrawals.length + 1:
        mem[0] = 16
        idx = (6 * withdrawals.length) + 6
        while sha3(16) + (6 * withdrawals.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            uint16(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            if 31 >= stor[idx + sha3(mem[0]) + 2].length:
                uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                if sha3(idx + sha3(mem[0]) + 3) + uint256(stor[idx + sha3(mem[0]) + 3]) <= sha3(idx + sha3(mem[0]) + 3):
                    uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 5]) = 0
                    mem[0] = idx + sha3(mem[0]) + 5
                    if sha3(idx + sha3(mem[0]) + 5) + uint256(stor[idx + sha3(mem[0]) + 5]) > sha3(idx + sha3(mem[0]) + 5):
                        uint256(stor[sha3(idx + sha3(mem[0]) + 5)]) = 0
                        s = sha3(idx + sha3(mem[0]) + 5) + 1
                        while sha3(idx + sha3(mem[0]) + 5) + uint256(stor[idx + sha3(mem[0]) + 5]) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                    idx = idx + 6
                    continue 
                uint256(stor[sha3(idx + sha3(mem[0]) + 3)]) = 0
                s = sha3(idx + sha3(mem[0]) + 3) + 1
                while sha3(idx + sha3(mem[0]) + 3) + uint256(stor[idx + sha3(mem[0]) + 3]) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                uint256(stor[idx + sha3(mem[0]) + 5]) = 0
                mem[0] = idx + sha3(mem[0]) + 5
                if sha3(idx + sha3(mem[0]) + 5) + uint256(stor[idx + sha3(mem[0]) + 5]) <= sha3(idx + sha3(mem[0]) + 5):
                    idx = idx + 6
                    continue 
                uint256(stor[sha3(idx + sha3(mem[0]) + 5)]) = 0
                s = sha3(s + sha3(mem[0]) + 5) + 1
                while sha3(s + sha3(mem[0]) + 5) + uint256(stor[s + sha3(mem[0]) + 5]) > s + sha3(mem[0]):
                    uint256(stor[s + sha3(mem[0])]) = 0
                    s = s + 1
                    continue 
                s = s + 6
                continue 
            if sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > sha3(idx + sha3(mem[0]) + 2):
                uint256(stor[sha3(idx + sha3(mem[0]) + 2)]) = 0
                s = sha3(idx + sha3(mem[0]) + 2) + 1
                while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            if sha3(idx + sha3(mem[0]) + 3) + uint256(stor[idx + sha3(mem[0]) + 3]) > sha3(idx + sha3(mem[0]) + 3):
                uint256(stor[sha3(idx + sha3(mem[0]) + 3)]) = 0
                s = sha3(idx + sha3(mem[0]) + 3) + 1
                while sha3(idx + sha3(mem[0]) + 3) + uint256(stor[idx + sha3(mem[0]) + 3]) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
            uint256(stor[idx + sha3(mem[0]) + 5]) = 0
            mem[0] = idx + sha3(mem[0]) + 5
            if sha3(idx + sha3(mem[0]) + 5) + uint256(stor[idx + sha3(mem[0]) + 5]) > sha3(idx + sha3(mem[0]) + 5):
                uint256(stor[sha3(idx + sha3(mem[0]) + 5)]) = 0
                s = sha3(idx + sha3(mem[0]) + 5) + 1
                while sha3(idx + sha3(mem[0]) + 5) + uint256(stor[idx + sha3(mem[0]) + 5]) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            idx = idx + 6
            continue 
    require withdrawals.length < withdrawals.length
    uint256(withdrawals[withdrawals.length].field_0) = arg1
    uint256(withdrawals[withdrawals.length].field_512) = (2 * arg2.length) + 1
    s = 0
    idx = arg2 + 36
    while arg2 + arg2.length + 36 > idx:
        uint256(stor[s + sha3((6 * withdrawals.length) + ('name', 'withdrawals', 16) + 2)].field_0) = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if stor[(6 * withdrawals.length) + ('name', 'withdrawals', 16) + 2].length + 31 / 32 > Mask(251, 0, arg2.length + 31) >> 5:
        uint256(stor[sha3((6 * withdrawals.length) + ('name', 'withdrawals', 16) + 2) + (Mask(251, 0, arg2.length + 31) >> 5)].field_0) = 0
        idx = (Mask(251, 0, arg2.length + 31) >> 5) + 1
        while stor[(6 * withdrawals.length) + ('name', 'withdrawals', 16) + 2].length + 31 / 32 > idx:
            uint256(stor[idx + sha3((6 * withdrawals.length) + ('name', 'withdrawals', 16) + 2)].field_0) = 0
            idx = idx + 1
            continue 
    require withdrawals.length < withdrawals.length
    uint256(withdrawals[withdrawals.length].field_1280) = arg3.length
    if not arg3.length:
        idx = 0
        while uint256(withdrawals[withdrawals.length].field_1280) > idx:
            address(stor[idx + sha3((6 * withdrawals.length) + ('name', 'withdrawals', 16) + 5)].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = arg3 + 36
        while arg3 + (32 * arg3.length) + 36 > idx:
            address(stor[s + sha3((6 * withdrawals.length) + ('name', 'withdrawals', 16) + 5)].field_0) = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
        while uint256(withdrawals[withdrawals.length].field_1280) > idx:
            address(stor[idx + sha3((6 * withdrawals.length) + ('name', 'withdrawals', 16) + 5)].field_0) = 0
            idx = idx + 1
            continue 
    require withdrawals.length < withdrawals.length
    uint8(withdrawals[withdrawals.length].field_256) = 0
    Mask(248, 0, withdrawals[withdrawals.length].field_264) = 0
    emit WithdrawalCreatedEvent(withdrawals.length, arg1, Array(len=arg2.length, data=arg2[all]));
}

function redeem(uint256 arg1, address arg2) {
    if 1 == bool(stor15[address(arg2)]):
        return 0
    idx = 0
    s = 0
    while idx < uint256(backers[address(arg2)].field_0):
        require idx < uint256(backers[address(arg2)].field_0)
        if not uint8(backers[address(arg2)][idx].field_776):
            return 0
        require idx < uint256(backers[address(arg2)].field_0)
        mem[0] = arg2
        mem[32] = 14
        idx = idx + 1
        s = s + uint256(backers[address(arg2)][idx].field_256)
        continue 
    if s * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) != arg1:
        return 0
    stor15[address(arg2)] = 1
    emit RedeemEvent(address(arg2), s * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0) * uint256(backers[address(arg2)].field_0));
    return 1
}

function approveWithdraw(uint256 arg1) {
    require uint256(backers[address(msg.sender)].field_0)
    require arg1 < withdrawals.length
    require bool(uint8(withdrawals[arg1].field_264)) != 1
    require bool(stor17[address(msg.sender)][arg1]) != 1
    stor17[address(msg.sender)][arg1] = 1
    idx = 0
    s = 0
    while idx < uint256(backers[address(msg.sender)].field_0):
        require idx < uint256(backers[address(msg.sender)].field_0)
        mem[0] = msg.sender
        mem[32] = 14
        idx = idx + 1
        s = s + uint256(backers[address(msg.sender)][idx].field_256)
        continue 
    require arg1 < withdrawals.length
    uint256(withdrawals[arg1].field_768)++
    address(stor[uint256(withdrawals[arg1].field_768) + sha3((6 * arg1) + ('name', 'withdrawals', 16) + 3)].field_0) = msg.sender
    require arg1 < withdrawals.length
    uint256(withdrawals[arg1].field_1024) += s * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0)
    emit WithdrawalVotedEvent(arg1, msg.sender, s * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0) * uint256(backers[address(msg.sender)].field_0), uint256(withdrawals[arg1].field_1024));
    if not uint256(withdrawals[arg1].field_768) > uint256(withdrawals[arg1].field_768) + 1:
        if uint256(withdrawals[arg1].field_1024) >= claimedUnits + claimedPrepaidUnits / 3:
            require arg1 < withdrawals.length
            require arg1 < withdrawals.length
            if uint256(withdrawals[arg1].field_1280) <= 1:
                uint8(withdrawals[arg1].field_256) = 1
                Mask(248, 0, withdrawals[arg1].field_264) = 1
                require arg1 < withdrawals.length
                idx = var46004
                while idx < uint256(withdrawals[arg1].field_1280):
                    require arg1 < withdrawals.length
                    require idx < uint256(withdrawals[arg1].field_1280)
                    call address(stor[idx + sha3((6 * arg1) + ('name', 'withdrawals', 16) + 5)].field_0) with:
                       value uint256(withdrawals[arg1].field_0) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require arg1 < withdrawals.length
                    mem[0] = 16
                    idx = idx + 1
                    continue 
            else:
                require uint256(withdrawals[arg1].field_1280)
                require arg1 < withdrawals.length
                uint8(withdrawals[arg1].field_256) = 1
                Mask(248, 0, withdrawals[arg1].field_264) = 1
                require arg1 < withdrawals.length
                idx = var49004
                while idx < uint256(withdrawals[arg1].field_1280):
                    require arg1 < withdrawals.length
                    require idx < uint256(withdrawals[arg1].field_1280)
                    call address(stor[idx + sha3((6 * arg1) + ('name', 'withdrawals', 16) + 5)].field_0) with:
                       value uint256(withdrawals[arg1].field_0) / uint256(withdrawals[arg1].field_1280) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require arg1 < withdrawals.length
                    mem[0] = 16
                    idx = idx + 1
                    continue 
            require arg1 < withdrawals.length
            mem[288] = uint256(stor[sha3((6 * arg1) + ('name', 'withdrawals', 16) + 2)].field_0)
            idx = 288
            s = 0
            while stor[(6 * arg1) + ('name', 'withdrawals', 16) + 2].length + 288 > idx + 32:
                mem[idx + 32] = uint256(stor[s + sha3((6 * arg1) + ('name', 'withdrawals', 16) + 2)].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            emit WithdrawalApproved(arg1, uint256(withdrawals[arg1].field_1024), uint256(withdrawals[arg1].field_1280) > 1, uint256(withdrawals[arg1].field_0), Array(len=stor[(6 * arg1) + ('name', 'withdrawals', 16) + 2].length, data=mem[288 len stor[(6 * arg1) + ('name', 'withdrawals', 16) + 2].length + (floor32(stor[(6 * arg1) + ('name', 'withdrawals', 16) + 2].length - 1) + -stor[(6 * arg1) + ('name', 'withdrawals', 16) + 2].length + 32 % 32)]));
    else:
        if uint256(withdrawals[arg1].field_1024) >= claimedUnits + claimedPrepaidUnits / 3:
            require arg1 < withdrawals.length
            require arg1 < withdrawals.length
            if uint256(withdrawals[arg1].field_1280) <= 1:
                uint8(withdrawals[arg1].field_256) = 1
                Mask(248, 0, withdrawals[arg1].field_264) = 1
                require arg1 < withdrawals.length
                idx = var49004
                while idx < uint256(withdrawals[arg1].field_1280):
                    require arg1 < withdrawals.length
                    require idx < uint256(withdrawals[arg1].field_1280)
                    call address(stor[idx + sha3((6 * arg1) + ('name', 'withdrawals', 16) + 5)].field_0) with:
                       value uint256(withdrawals[arg1].field_0) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require arg1 < withdrawals.length
                    mem[0] = 16
                    idx = idx + 1
                    continue 
            else:
                require uint256(withdrawals[arg1].field_1280)
                require arg1 < withdrawals.length
                uint8(withdrawals[arg1].field_256) = 1
                Mask(248, 0, withdrawals[arg1].field_264) = 1
                require arg1 < withdrawals.length
                idx = var52004
                while idx < uint256(withdrawals[arg1].field_1280):
                    require arg1 < withdrawals.length
                    require idx < uint256(withdrawals[arg1].field_1280)
                    call address(stor[idx + sha3((6 * arg1) + ('name', 'withdrawals', 16) + 5)].field_0) with:
                       value uint256(withdrawals[arg1].field_0) / uint256(withdrawals[arg1].field_1280) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require arg1 < withdrawals.length
                    mem[0] = 16
                    idx = idx + 1
                    continue 
            require arg1 < withdrawals.length
            mem[288] = uint256(stor[sha3((6 * arg1) + ('name', 'withdrawals', 16) + 2)].field_0)
            idx = 288
            s = 0
            while stor[(6 * arg1) + ('name', 'withdrawals', 16) + 2].length + 288 > idx + 32:
                mem[idx + 32] = uint256(stor[s + sha3((6 * arg1) + ('name', 'withdrawals', 16) + 2)].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            emit WithdrawalApproved(arg1, uint256(withdrawals[arg1].field_1024), uint256(withdrawals[arg1].field_1280) > 1, uint256(withdrawals[arg1].field_0), Array(len=stor[(6 * arg1) + ('name', 'withdrawals', 16) + 2].length, data=mem[288 len stor[(6 * arg1) + ('name', 'withdrawals', 16) + 2].length + (floor32(stor[(6 * arg1) + ('name', 'withdrawals', 16) + 2].length - 1) + -stor[(6 * arg1) + ('name', 'withdrawals', 16) + 2].length + 32 % 32)]));
}



}
