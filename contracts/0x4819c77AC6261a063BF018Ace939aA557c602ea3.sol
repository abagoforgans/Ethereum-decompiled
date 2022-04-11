contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
address stor14;
uint256 stor15;
address stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
mapping of uint256 stor21;

function _fallback() {
    stor0 = msg.sender
    stor6 = code.data[3068 len 32]
    emit 0x41aabbee: block.timestamp, stor15, stor17, stor18, stor19, stor20, stor3, stor14, stor16
    stor3++
    stor4 = block.timestamp
    stor5 = block.number
    stor21[stor3 + 1] = block.number
    return code.data[271 len 2797]
}



// =====================  Runtime code  =====================


address owner;
address beneficiaryAddress;
uint256 sub_b894f3f1;
uint256 sub_6255ca28;
uint256 auctionStartTime;
uint256 auctionStartBlock;
uint256 biddingTime;
address stor7;
uint256 stor8;
address stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
address stor14;
uint256 stor15;
address stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
mapping of uint256 history;
mapping of uint256 pendingReturns;

function pendingReturns(address arg1) {
    return pendingReturns[arg1]
}

function beneficiary() {
    return beneficiaryAddress
}

function sub_6255ca28(?) {
    return sub_6255ca28
}

function owner() {
    return owner
}

function history(uint256 arg1) {
    return history[arg1]
}

function sub_b894f3f1(?) {
    return sub_b894f3f1
}

function biddingTime() {
    return biddingTime
}

function auctionStartBlock() {
    return auctionStartBlock
}

function auctionStartTime() {
    return auctionStartTime
}

function setOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function winning() {
    return stor14, stor15, stor16, stor17, stor18, stor19, stor20
}

function sub_b668e05d(?) {
    return stor7, stor8, stor9, stor10, stor11, stor12, stor13
}

function setBeneficiary(address arg1) {
    require owner == msg.sender
    require not beneficiaryAddress
    beneficiaryAddress = arg1
}

function _fallback() payable {
    require msg.value + sub_b894f3f1 >= sub_b894f3f1
    require msg.value + sub_b894f3f1 >= msg.value
    sub_b894f3f1 += msg.value
}

function auctionEndTime() {
    require biddingTime + auctionStartTime >= auctionStartTime
    require biddingTime + auctionStartTime >= biddingTime
    return (biddingTime + auctionStartTime)
}

function sub_f283511f(?) {
    require biddingTime + auctionStartTime >= auctionStartTime
    require biddingTime + auctionStartTime >= biddingTime
    return (block.timestamp > biddingTime + auctionStartTime)
}

function beneficiaryWithdraw() {
    if sub_b894f3f1 > 0:
        sub_b894f3f1 = 0
        call beneficiaryAddress with:
           value sub_b894f3f1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            return 0
        emit Withdrawal(sub_b894f3f1, beneficiaryAddress);
    return 1
}

function withdraw() {
    if pendingReturns[address(msg.sender)] > 0:
        pendingReturns[address(msg.sender)] = 0
        call msg.sender with:
           value pendingReturns[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            return 0
        emit Withdrawal(pendingReturns[address(msg.sender)], msg.sender);
    return 1
}

function sub_7d350453(?) {
    require biddingTime + auctionStartTime >= auctionStartTime
    require biddingTime + auctionStartTime >= biddingTime
    require block.timestamp > biddingTime + auctionStartTime
    stor14 = stor7
    stor15 = stor8
    stor16 = stor9
    stor17 = stor10
    stor18 = stor11
    stor19 = stor12
    stor20 = stor13
    stor7 = 0
    stor8 = 0
    stor9 = 0
    stor10 = 0
    stor11 = 0
    stor12 = 0
    stor13 = 0
    require stor8 + sub_b894f3f1 >= sub_b894f3f1
    require stor8 + sub_b894f3f1 >= stor8
    sub_b894f3f1 += stor8
    emit 0x41aabbee: block.timestamp, stor15, stor17, stor18, stor19, stor20, sub_6255ca28, stor14, stor16
    sub_6255ca28++
    auctionStartTime = block.timestamp
    auctionStartBlock = block.number
    history[stor3 + 1] = block.number
}

function sub_aa7a9e79(?) payable {
    require biddingTime + auctionStartTime >= auctionStartTime
    require biddingTime + auctionStartTime >= biddingTime
    if block.timestamp > biddingTime + auctionStartTime:
        require biddingTime + auctionStartTime >= auctionStartTime
        require biddingTime + auctionStartTime >= biddingTime
        require block.timestamp > biddingTime + auctionStartTime
        stor14 = stor7
        stor15 = stor8
        stor16 = stor9
        stor17 = stor10
        stor18 = stor11
        stor19 = stor12
        stor20 = stor13
        stor7 = 0
        stor8 = 0
        stor9 = 0
        stor10 = 0
        stor11 = 0
        stor12 = 0
        stor13 = 0
        require stor8 + sub_b894f3f1 >= sub_b894f3f1
        require stor8 + sub_b894f3f1 >= stor8
        sub_b894f3f1 += stor8
        emit 0x41aabbee: block.timestamp, stor15, stor17, stor18, stor19, stor20, sub_6255ca28, stor14, stor16
        sub_6255ca28++
        auctionStartTime = block.timestamp
        auctionStartBlock = block.number
        history[stor3 + 1] = block.number
    if not arg6:
        require msg.value > stor8
        if stor7:
            if stor8:
                require stor8
                require 99 * stor8 / stor8 == 99
            if 99 * stor8:
                require 99 * stor8
                require 275 * 10^15 * 3600 * stor8 / 99 * stor8 == 10 * 10^18
            require 275 * 10^15 * 3600 * stor8 == (100 * 275 * 10^15 * 3600 * stor8 / 100) + (275 * 10^15 * 3600 * stor8 % 100)
            require 275 * 10^15 * 3600 * stor8 / 100 == (10 * 10^18 * 275 * 10^15 * 3600 * stor8 / 100 / 10 * 10^18) + (275 * 10^15 * 3600 * stor8 / 100 % 10 * 10^18)
            require (275 * 10^15 * 3600 * stor8 / 100 / 10 * 10^18) + pendingReturns[stor7] >= pendingReturns[stor7]
            require (275 * 10^15 * 3600 * stor8 / 100 / 10 * 10^18) + pendingReturns[stor7] >= 275 * 10^15 * 3600 * stor8 / 100 / 10 * 10^18
            pendingReturns[stor7] += 275 * 10^15 * 3600 * stor8 / 100 / 10 * 10^18
        stor7 = msg.sender
        stor8 = msg.value
        stor9 = arg1
        stor10 = arg2
        stor11 = arg3
        stor12 = arg4
        stor13 = arg5
        emit 0xae7bf401: msg.value, arg2, arg3, arg4, arg5, sub_6255ca28, msg.sender, arg1
    else:
        require pendingReturns[address(msg.sender)] + msg.value >= msg.value
        require pendingReturns[address(msg.sender)] + msg.value >= pendingReturns[address(msg.sender)]
        pendingReturns[address(msg.sender)] = 0
        require pendingReturns[address(msg.sender)] + msg.value > stor8
        if stor7:
            if stor8:
                require stor8
                require 99 * stor8 / stor8 == 99
            if 99 * stor8:
                require 99 * stor8
                require 275 * 10^15 * 3600 * stor8 / 99 * stor8 == 10 * 10^18
            require 275 * 10^15 * 3600 * stor8 == (100 * 275 * 10^15 * 3600 * stor8 / 100) + (275 * 10^15 * 3600 * stor8 % 100)
            require 275 * 10^15 * 3600 * stor8 / 100 == (10 * 10^18 * 275 * 10^15 * 3600 * stor8 / 100 / 10 * 10^18) + (275 * 10^15 * 3600 * stor8 / 100 % 10 * 10^18)
            require (275 * 10^15 * 3600 * stor8 / 100 / 10 * 10^18) + pendingReturns[stor7] >= pendingReturns[stor7]
            require (275 * 10^15 * 3600 * stor8 / 100 / 10 * 10^18) + pendingReturns[stor7] >= 275 * 10^15 * 3600 * stor8 / 100 / 10 * 10^18
            pendingReturns[stor7] += 275 * 10^15 * 3600 * stor8 / 100 / 10 * 10^18
        stor7 = msg.sender
        stor8 = pendingReturns[address(msg.sender)] + msg.value
        stor9 = arg1
        stor10 = arg2
        stor11 = arg3
        stor12 = arg4
        stor13 = arg5
        emit 0xae7bf401: pendingReturns[address(msg.sender)] + msg.value, arg2, arg3, arg4, arg5, sub_6255ca28, msg.sender, arg1
}



}
