contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor0 = code.data[1609 len 32]
    stor1 = block.timestamp
    require code.data[1641 len 32] <= code.data[1673 len 32]
    stor2 = code.data[1641 len 32]
    stor3 = code.data[1673 len 32]
    return code.data[98 len 1511]
}



// =====================  Runtime code  =====================


const WITHDRAWAL_TRIGGER_AMOUNT = 10^14


address beneficiaryAddress;
uint256 auctionStart;
uint256 biddingPeriod;
uint256 recoveryAfterPeriod;
address highestBidderAddress;
uint256 stor4;
uint256 highestBid;
mapping of uint256 stor6;
uint8 stor7;

function recoveryAfterPeriod() {
    return recoveryAfterPeriod
}

function beneficiary() {
    return beneficiaryAddress
}

function auctionStart() {
    return auctionStart
}

function biddingPeriod() {
    return biddingPeriod
}

function highestBidder() {
    return address(highestBidderAddress)
}

function highestBid() {
    return highestBid
}

function auctionEndTime() {
    return (biddingPeriod + auctionStart)
}

function getBid(address arg1) {
    if address(highestBidderAddress) != arg1:
        return stor6[address(arg1)]
    return highestBid
}

function nonHighestBidderRefund() {
    if stor6[address(msg.sender)] <= 0:
    stor6[address(msg.sender)] = 0
    call msg.sender with:
       value stor6[address(msg.sender)] + msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_951504c5(?) {
    require msg.sender == beneficiaryAddress
    require block.timestamp >= auctionStart + recoveryAfterPeriod
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_5d7db95d(?) {
    require msg.sender == beneficiaryAddress
    require block.timestamp >= biddingPeriod + auctionStart
    require not stor7
    stor7 = 1
    emit AuctionClosed(address(highestBidderAddress), highestBid);
    call beneficiaryAddress with:
       value highestBid wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function bidderPlaceBid() payable {
    require block.timestamp >= auctionStart
    require block.timestamp <= biddingPeriod + auctionStart
    if stor6[address(msg.sender)] > 0:
        if msg.value <= 0:
            require msg.value > highestBid
            if address(highestBidderAddress) != 0:
                stor6[address(stor4)] += highestBid
            uint256(stor4) = msg.sender or Mask(96, 160, uint256(stor4))
            highestBid = msg.value
            emit HighestBidIncreased(msg.sender, msg.value);
        else:
            if msg.sender == address(highestBidderAddress):
                highestBid += msg.value
                emit HighestBidIncreased(msg.sender, msg.value + highestBid);
            else:
                require msg.value + stor6[address(msg.sender)] > highestBid
                stor6[address(msg.sender)] = 0
                stor6[address(stor4)] += highestBid
                highestBid = msg.value + stor6[address(msg.sender)]
                uint256(stor4) = msg.sender or Mask(96, 160, uint256(stor4))
                emit HighestBidIncreased(msg.sender, msg.value + stor6[address(msg.sender)]);
    else:
        if address(highestBidderAddress) != msg.sender:
            require msg.value > highestBid
            if address(highestBidderAddress) != 0:
                stor6[address(stor4)] += highestBid
            uint256(stor4) = msg.sender or Mask(96, 160, uint256(stor4))
            highestBid = msg.value
            emit HighestBidIncreased(msg.sender, msg.value);
        else:
            if msg.value <= 0:
                require msg.value > highestBid
                if address(highestBidderAddress) != 0:
                    stor6[address(stor4)] += highestBid
                uint256(stor4) = msg.sender or Mask(96, 160, uint256(stor4))
                highestBid = msg.value
                emit HighestBidIncreased(msg.sender, msg.value);
            else:
                if msg.sender == address(highestBidderAddress):
                    highestBid += msg.value
                    emit HighestBidIncreased(msg.sender, msg.value + highestBid);
                else:
                    require msg.value + stor6[address(msg.sender)] > highestBid
                    stor6[address(msg.sender)] = 0
                    stor6[address(stor4)] += highestBid
                    highestBid = msg.value + stor6[address(msg.sender)]
                    uint256(stor4) = msg.sender or Mask(96, 160, uint256(stor4))
                    emit HighestBidIncreased(msg.sender, msg.value + stor6[address(msg.sender)]);
}

function _fallback() payable {
    if msg.value == 10^14:
        if stor6[address(msg.sender)] <= 0:
        stor6[address(msg.sender)] = 0
        call msg.sender with:
           value stor6[address(msg.sender)] + msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    require block.timestamp >= auctionStart
    require block.timestamp <= biddingPeriod + auctionStart
    if stor6[address(msg.sender)] > 0:
        if msg.value <= 0:
            require msg.value > highestBid
            if address(highestBidderAddress) != 0:
                stor6[address(stor4)] += highestBid
            uint256(stor4) = msg.sender or Mask(96, 160, uint256(stor4))
            highestBid = msg.value
            emit HighestBidIncreased(msg.sender, msg.value);
        else:
            if msg.sender == address(highestBidderAddress):
                highestBid += msg.value
                emit HighestBidIncreased(msg.sender, msg.value + highestBid);
            else:
                require msg.value + stor6[address(msg.sender)] > highestBid
                stor6[address(msg.sender)] = 0
                stor6[address(stor4)] += highestBid
                highestBid = msg.value + stor6[address(msg.sender)]
                uint256(stor4) = msg.sender or Mask(96, 160, uint256(stor4))
                emit HighestBidIncreased(msg.sender, msg.value + stor6[address(msg.sender)]);
    else:
        if address(highestBidderAddress) != msg.sender:
            require msg.value > highestBid
            if address(highestBidderAddress) != 0:
                stor6[address(stor4)] += highestBid
            uint256(stor4) = msg.sender or Mask(96, 160, uint256(stor4))
            highestBid = msg.value
            emit HighestBidIncreased(msg.sender, msg.value);
        else:
            if msg.value <= 0:
                require msg.value > highestBid
                if address(highestBidderAddress) != 0:
                    stor6[address(stor4)] += highestBid
                uint256(stor4) = msg.sender or Mask(96, 160, uint256(stor4))
                highestBid = msg.value
                emit HighestBidIncreased(msg.sender, msg.value);
            else:
                if msg.sender == address(highestBidderAddress):
                    highestBid += msg.value
                    emit HighestBidIncreased(msg.sender, msg.value + highestBid);
                else:
                    require msg.value + stor6[address(msg.sender)] > highestBid
                    stor6[address(msg.sender)] = 0
                    stor6[address(stor4)] += highestBid
                    highestBid = msg.value + stor6[address(msg.sender)]
                    uint256(stor4) = msg.sender or Mask(96, 160, uint256(stor4))
                    emit HighestBidIncreased(msg.sender, msg.value + stor6[address(msg.sender)]);
}



}
