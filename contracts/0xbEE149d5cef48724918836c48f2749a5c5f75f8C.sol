contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
address stor5; offset 8
address stor6;

function _fallback() payable {
    stor5 = 0xb23397f97715118532c8c1207f5678ed4fbaea6c
    require not msg.value
    stor6 = stor5
    stor0 = block.timestamp
    stor1 = 2587587
    return code.data[234 len 1599]
}



// =====================  Runtime code  =====================


uint256 auctionStart;
uint256 biddingTime;
address highestBidderAddress;
uint256 highestBid;
mapping of uint256 stor4;
uint8 stor5;
address stor6;

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

function auctionEnd() {
    require block.timestamp >= auctionStart + biddingTime
    require not stor5
    stor5 = 1
    emit AuctionEnded(highestBidderAddress, highestBid);
    call stor6 with:
       value highestBid wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdraw() {
    if stor4[address(msg.sender)] <= 0:
        return 1
    stor4[address(msg.sender)] = 0
    call msg.sender with:
       value stor4[address(msg.sender)] wei
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
        stor4[stor2] += highestBid
    highestBidderAddress = msg.sender
    highestBid = msg.value
    emit HighestBidIncreased(msg.sender, msg.value);
}



}
