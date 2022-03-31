contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
mapping of uint256 stor21;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[2950 len 20]
    stor6 = code.data[2906 len 32]
    stor3++
    stor4 = block.timestamp
    stor5 = block.number
    stor21[stor3 + 1] = block.number
    return code.data[182 len 2724]
}



// =====================  Runtime code  =====================


address owner;
address beneficiaryAddress;
uint256 sub_b894f3f1;
uint256 sub_6255ca28;
uint256 auctionStartTime;
uint256 auctionStartBlock;
uint256 biddingTime;
address highestBidderAddress;
uint256 highestBid;
address sub_956c288dAddress;
uint256 sub_cd90f3cd;
uint256 sub_9fab4607;
uint256 sub_1415c059;
uint256 sub_21a9acc5;
address sub_8890ed09Address;
uint256 winningBid;
address sub_8d2628a9Address;
uint256 sub_fe91124b;
uint256 sub_dc9848b6;
uint256 sub_2b0a1b03;
uint256 sub_e106940a;
mapping of uint256 history;
mapping of uint256 stor22;

function sub_1415c059(?) {
    return sub_1415c059
}

function sub_21a9acc5(?) {
    return sub_21a9acc5
}

function sub_2b0a1b03(?) {
    return sub_2b0a1b03
}

function beneficiary() {
    return beneficiaryAddress
}

function sub_6255ca28(?) {
    return sub_6255ca28
}

function sub_8890ed09(?) {
    return sub_8890ed09Address
}

function winningBid() {
    return winningBid
}

function sub_8d2628a9(?) {
    return sub_8d2628a9Address
}

function owner() {
    return owner
}

function highestBidder() {
    return highestBidderAddress
}

function sub_956c288d(?) {
    return sub_956c288dAddress
}

function sub_9fab4607(?) {
    return sub_9fab4607
}

function history(uint256 arg1) {
    return history[arg1]
}

function sub_b894f3f1(?) {
    return sub_b894f3f1
}

function sub_cd90f3cd(?) {
    return sub_cd90f3cd
}

function biddingTime() {
    return biddingTime
}

function highestBid() {
    return highestBid
}

function sub_dc9848b6(?) {
    return sub_dc9848b6
}

function sub_e106940a(?) {
    return sub_e106940a
}

function auctionStartBlock() {
    return auctionStartBlock
}

function auctionStartTime() {
    return auctionStartTime
}

function sub_fe91124b(?) {
    return sub_fe91124b
}

function selfDestruct(address arg1) {
    require owner == msg.sender
    selfdestruct(arg1)
}

function _fallback() payable {
    sub_b894f3f1 += msg.value
}

function setOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function sub_f283511f(?) {
    return (block.timestamp > auctionStartTime + biddingTime)
}

function setBeneficiary(address arg1) {
    require owner == msg.sender
    beneficiaryAddress = arg1
}

function beneficiaryWithdraw() {
    require beneficiaryAddress == msg.sender
    if sub_b894f3f1 > 0:
        sub_b894f3f1 = 0
        call msg.sender with:
           value sub_b894f3f1 wei
             gas 2300 * is_zero(value) wei
    return 1
}

function withdraw() {
    if stor22[address(msg.sender)] <= 0:
        return 1
    stor22[address(msg.sender)] = 0
    call msg.sender with:
       value stor22[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        return 1
    else:
        return 0
}

function sub_7d350453(?) {
    require block.timestamp > auctionStartTime + biddingTime
    sub_8890ed09Address = highestBidderAddress
    winningBid = highestBid
    sub_8d2628a9Address = sub_956c288dAddress
    sub_fe91124b = sub_cd90f3cd
    sub_dc9848b6 = sub_9fab4607
    sub_2b0a1b03 = sub_1415c059
    sub_e106940a = sub_21a9acc5
    sub_b894f3f1 += highestBid
    emit 0x45ec6f9e: highestBid, sub_cd90f3cd, sub_9fab4607, sub_1415c059, sub_21a9acc5, highestBidderAddress, sub_956c288dAddress
    sub_6255ca28++
    auctionStartTime = block.timestamp
    auctionStartBlock = block.number
    history[stor3 + 1] = block.number
    highestBidderAddress = 0
    highestBid = 0
    sub_956c288dAddress = 0
    sub_cd90f3cd = 0
    sub_9fab4607 = 0
    sub_1415c059 = 0
    sub_21a9acc5 = 0
    emit NewAuction(sub_6255ca28, auctionStartTime);
}

function sub_5d836b1a(?) payable {
    if block.timestamp > auctionStartTime + biddingTime:
        sub_8890ed09Address = highestBidderAddress
        winningBid = highestBid
        sub_8d2628a9Address = sub_956c288dAddress
        sub_fe91124b = sub_cd90f3cd
        sub_dc9848b6 = sub_9fab4607
        sub_2b0a1b03 = sub_1415c059
        sub_e106940a = sub_21a9acc5
        sub_b894f3f1 += highestBid
        emit 0x45ec6f9e: highestBid, sub_cd90f3cd, sub_9fab4607, sub_1415c059, sub_21a9acc5, highestBidderAddress, sub_956c288dAddress
        sub_6255ca28++
        auctionStartTime = block.timestamp
        auctionStartBlock = block.number
        history[stor3 + 1] = block.number
        highestBidderAddress = 0
        highestBid = 0
        sub_956c288dAddress = 0
        sub_cd90f3cd = 0
        sub_9fab4607 = 0
        sub_1415c059 = 0
        sub_21a9acc5 = 0
        emit NewAuction(sub_6255ca28, auctionStartTime);
    require msg.value > highestBid
    if highestBidderAddress:
        stor22[stor7] += highestBid
    highestBidderAddress = msg.sender
    highestBid = msg.value
    sub_956c288dAddress = arg1
    sub_cd90f3cd = arg2
    sub_9fab4607 = arg3
    sub_1415c059 = arg4
    sub_21a9acc5 = arg5
    emit 0x1bb28445: msg.value, arg2, arg3, arg4, arg5, msg.sender, arg1
}



}
