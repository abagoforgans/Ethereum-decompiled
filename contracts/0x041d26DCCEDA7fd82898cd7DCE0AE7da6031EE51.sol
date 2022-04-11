contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;

function _fallback() {
    stor0 = 0xc2752751e6b91736d5a2e8e31336dc7c7220e8fc
    stor1 = block.timestamp
    stor2 = 600
    return code.data[133 len 1731]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 auctionStart;
uint256 biddingTime;
address highestBidderAddress;
uint256 highestBid;
mapping of uint256 stor5;
uint8 stor6;

function beneficiary() {
    return beneficiaryAddress
}

function auctionStart() {
    return auctionStart
}

function highestBidder() {
    return highestBidderAddress
}

function biddingTime() {
    return biddingTime
}

function highestBid() {
    return highestBid
}

function _fallback() payable {
    revert
}

function auctionEndTime() {
    return (auctionStart + biddingTime)
}

function withdraw() {
    if stor5[address(msg.sender)] <= 0:
        return 1
    stor5[address(msg.sender)] = 0
    call msg.sender with:
       value stor5[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        return 1
    else:
        return 0
}

function bid() payable {
    require block.timestamp <= auctionStart + biddingTime
    require msg.value > highestBid
    if highestBidderAddress:
        stor5[stor3] += highestBid
    highestBidderAddress = msg.sender
    highestBid = msg.value
    emit HighestBidIncreased(msg.sender, msg.value);
}

function auctionEnd() {
    require block.timestamp >= auctionStart + biddingTime
    require not stor6
    stor6 = 1
    emit AuctionEnded(highestBidderAddress, highestBid);
    call beneficiaryAddress with:
       value highestBid wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
