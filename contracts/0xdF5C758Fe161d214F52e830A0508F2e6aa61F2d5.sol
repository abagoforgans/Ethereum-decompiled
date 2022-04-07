contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
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
    stor1 = code.data[2896 len 20]
    stor6 = code.data[2852 len 32]
    emit 0x41aabbee: block.timestamp, stor15, stor17, stor18, stor19, stor20, stor3, stor14, stor16
    stor3++
    stor4 = block.timestamp
    stor5 = block.number
    stor21[stor3 + 1] = block.number
    return code.data[306 len 2546]
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

function selfDestruct(address arg1) {
    require owner == msg.sender
    selfdestruct(arg1)
}

function _fallback() payable {
    sub_b894f3f1 += msg.value
}

function auctionEndTime() {
    return (auctionStartTime + biddingTime)
}

function setOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function winning() {
    return stor14, stor15, stor16, stor17, stor18, stor19, stor20
}

function sub_f283511f(?) {
    return (block.timestamp > auctionStartTime + biddingTime)
}

function sub_b668e05d(?) {
    return stor7, stor8, stor9, stor10, stor11, stor12, stor13
}

function setBeneficiary(address arg1) {
    require owner == msg.sender
    beneficiaryAddress = arg1
}

function sub_7d350453(?) {
    require block.timestamp > auctionStartTime + biddingTime
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
    sub_b894f3f1 += stor8
    emit 0x41aabbee: block.timestamp, stor15, stor17, stor18, stor19, stor20, sub_6255ca28, stor14, stor16
    sub_6255ca28++
    auctionStartTime = block.timestamp
    auctionStartBlock = block.number
    history[stor3 + 1] = block.number
}

function withdraw() {
    if beneficiaryAddress != msg.sender:
        if pendingReturns[address(msg.sender)] > 0:
            pendingReturns[address(msg.sender)] = 0
            call msg.sender with:
               value pendingReturns[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                return 0
            emit Withdrawal(pendingReturns[address(msg.sender)], msg.sender);
    else:
        if sub_b894f3f1 > 0:
            sub_b894f3f1 = 0
            call msg.sender with:
               value sub_b894f3f1 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                return 0
            emit Withdrawal(sub_b894f3f1, msg.sender);
    return 1
}

function sub_5d836b1a(?) payable {
    if block.timestamp > auctionStartTime + biddingTime:
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
        sub_b894f3f1 += stor8
        emit 0x41aabbee: block.timestamp, stor15, stor17, stor18, stor19, stor20, sub_6255ca28, stor14, stor16
        sub_6255ca28++
        auctionStartTime = block.timestamp
        auctionStartBlock = block.number
        history[stor3 + 1] = block.number
    require msg.value > stor8
    if stor7:
        pendingReturns[stor7] += stor8
    stor7 = msg.sender
    stor8 = msg.value
    stor9 = arg1
    stor10 = arg2
    stor11 = arg3
    stor12 = arg4
    stor13 = arg5
    emit 0xae7bf401: msg.value, arg2, arg3, arg4, arg5, sub_6255ca28, msg.sender, arg1
}



}
