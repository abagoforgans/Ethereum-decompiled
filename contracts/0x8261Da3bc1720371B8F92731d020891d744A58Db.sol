contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor4;
uint256 stor5;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[2684 len 20]
    stor4 = block.timestamp
    stor5 = code.data[2640 len 32]
    return code.data[121 len 2519]
}



// =====================  Runtime code  =====================


address owner;
address beneficiaryAddress;
uint256 stor2;
uint256 sub_6255ca28;
uint256 auctionStart;
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
mapping of uint256 stor20;

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

function auctionStart() {
    return auctionStart
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

function sub_fe91124b(?) {
    return sub_fe91124b
}

function selfDestruct(address arg1) {
    require owner == msg.sender
    selfdestruct(arg1)
}

function _fallback() payable {
    stor2 += msg.value
}

function setOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function sub_f283511f(?) {
    return (block.timestamp > auctionStart + biddingTime)
}

function setBeneficiary(address arg1) {
    require owner == msg.sender
    beneficiaryAddress = arg1
}

function beneficiaryWithdraw() {
    require beneficiaryAddress == msg.sender
    if stor2 > 0:
        stor2 = 0
        call msg.sender with:
           value stor2 wei
             gas 2300 * is_zero(value) wei
    return 1
}

function withdraw() {
    if stor20[address(msg.sender)] <= 0:
        return 1
    stor20[address(msg.sender)] = 0
    call msg.sender with:
       value stor20[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        return 1
    else:
        return 0
}

function sub_7d350453(?) {
    require block.timestamp > auctionStart + biddingTime
    sub_8890ed09Address = highestBidderAddress
    winningBid = highestBid
    sub_8d2628a9Address = sub_956c288dAddress
    sub_fe91124b = sub_cd90f3cd
    sub_dc9848b6 = sub_9fab4607
    sub_2b0a1b03 = sub_1415c059
    sub_e106940a = sub_21a9acc5
    stor2 += highestBid
    emit 0x45ec6f9e: highestBid, sub_cd90f3cd, sub_9fab4607, sub_1415c059, sub_21a9acc5, highestBidderAddress, sub_956c288dAddress
    sub_6255ca28++
    auctionStart = block.timestamp
    highestBidderAddress = 0
    highestBid = 0
    sub_956c288dAddress = 0
    sub_cd90f3cd = 0
    sub_9fab4607 = 0
    sub_1415c059 = 0
    sub_21a9acc5 = 0
    emit NewAuction(sub_6255ca28 + 1, block.timestamp);
}

function sub_5d836b1a(?) payable {
    if block.timestamp > auctionStart + biddingTime:
        sub_8890ed09Address = highestBidderAddress
        winningBid = highestBid
        sub_8d2628a9Address = sub_956c288dAddress
        sub_fe91124b = sub_cd90f3cd
        sub_dc9848b6 = sub_9fab4607
        sub_2b0a1b03 = sub_1415c059
        sub_e106940a = sub_21a9acc5
        stor2 += highestBid
        emit 0x45ec6f9e: highestBid, sub_cd90f3cd, sub_9fab4607, sub_1415c059, sub_21a9acc5, highestBidderAddress, sub_956c288dAddress
        sub_6255ca28++
        auctionStart = block.timestamp
        highestBidderAddress = 0
        highestBid = 0
        sub_956c288dAddress = 0
        sub_cd90f3cd = 0
        sub_9fab4607 = 0
        sub_1415c059 = 0
        sub_21a9acc5 = 0
        emit NewAuction(sub_6255ca28 + 1, block.timestamp);
    require msg.value > highestBid
    if highestBidderAddress:
        stor20[stor6] += highestBid
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
