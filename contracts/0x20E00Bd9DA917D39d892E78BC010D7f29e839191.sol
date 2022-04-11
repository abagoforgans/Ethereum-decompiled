contract main {


// =======================  Init code  ======================


mapping of uint8 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
address stor8;
address stor8; offset 8
address stor9;
address stor10;
uint256 stor11;
uint256 stor12;
address stor13;

function _fallback() payable {
    address(stor8.field_8) = 0xb7cf43651d8f370218cf92b00261ca3e1b02fda0
    stor9 = 0x60ce2769e5d330303bd9df88f7b843a40510f173
    stor10 = 0x7422b53eb5f57adaea0ddfff82ef765cfbc4dbf0
    stor11 = 1800
    stor12 = 10^6
    stor13 = 0xae520868090925aa3b4abc532eba042ff6bc63dd
    require not msg.value
    require address(stor8.field_8)
    require stor9
    require stor10
    stor0[address(stor8.field_0)] = 1
    stor0[stor9] = 1
    stor0[stor10] = 1
    stor1 = block.timestamp
    require stor11 <= stor12
    stor2 = stor11
    stor3 = stor12
    return code.data[995 len 3212]
}



// =====================  Runtime code  =====================


const WITHDRAWAL_TRIGGER_AMOUNT = 10^14

const REQUIRED_SIGNATURES = 2


mapping of uint8 stor0;
uint256 auctionStart;
uint256 biddingPeriod;
uint256 recoveryAfterPeriod;
uint256 numProposals;
address highestBidderAddress;
uint256 highestBid;
mapping of uint256 stor7;
uint8 stor8;
address stor13;

function recoveryAfterPeriod() {
    return recoveryAfterPeriod
}

function members(address arg1) {
    return bool(stor0[arg1])
}

function numProposals() {
    return numProposals
}

function auctionStart() {
    return auctionStart
}

function biddingPeriod() {
    return biddingPeriod
}

function highestBidder() {
    return highestBidderAddress
}

function highestBid() {
    return highestBid
}

function auctionEndTime() {
    return (auctionStart + biddingPeriod)
}

function getBid(address arg1) {
    if arg1 != highestBidderAddress:
        return stor7[address(arg1)]
    return highestBid
}

function nonHighestBidderRefund() payable {
    require stor7[address(msg.sender)] > 0
    stor7[address(msg.sender)] = 0
    call msg.sender with:
       value stor7[address(msg.sender)] + msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_92349fbe(?) {
    require block.timestamp >= auctionStart + biddingPeriod
    require block.timestamp >= auctionStart + recoveryAfterPeriod
    call stor13 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require not stor8
    stor8 = 1
    emit AuctionClosed(highestBidderAddress, highestBid);
    call stor13 with:
       value highestBid wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function bidderPlaceBid() payable {
    require block.timestamp >= auctionStart
    require block.timestamp <= auctionStart + biddingPeriod
    if stor7[address(msg.sender)] > 0:
        if msg.value <= 0:
            require msg.value > highestBid
            if highestBidderAddress:
                stor7[stor5] = highestBid
            highestBidderAddress = msg.sender
            highestBid = msg.value
            emit HighestBidIncreased(msg.sender, msg.value);
        else:
            if msg.sender == highestBidderAddress:
                highestBid += msg.value
                emit HighestBidIncreased(msg.sender, highestBid);
            else:
                require stor7[address(msg.sender)] + msg.value > highestBid
                stor7[address(msg.sender)] = 0
                stor7[stor5] = highestBid
                highestBid = stor7[address(msg.sender)] + msg.value
                highestBidderAddress = msg.sender
                emit HighestBidIncreased(msg.sender, stor7[address(msg.sender)] + msg.value);
    else:
        if highestBidderAddress != msg.sender:
            require msg.value > highestBid
            if highestBidderAddress:
                stor7[stor5] = highestBid
            highestBidderAddress = msg.sender
            highestBid = msg.value
            emit HighestBidIncreased(msg.sender, msg.value);
        else:
            if msg.value <= 0:
                require msg.value > highestBid
                if highestBidderAddress:
                    stor7[stor5] = highestBid
                highestBidderAddress = msg.sender
                highestBid = msg.value
                emit HighestBidIncreased(msg.sender, msg.value);
            else:
                if msg.sender == highestBidderAddress:
                    highestBid += msg.value
                    emit HighestBidIncreased(msg.sender, highestBid);
                else:
                    require stor7[address(msg.sender)] + msg.value > highestBid
                    stor7[address(msg.sender)] = 0
                    stor7[stor5] = highestBid
                    highestBid = stor7[address(msg.sender)] + msg.value
                    highestBidderAddress = msg.sender
                    emit HighestBidIncreased(msg.sender, stor7[address(msg.sender)] + msg.value);
}

function _fallback() payable {
    if msg.value == 10^14:
        require stor7[address(msg.sender)] > 0
        stor7[address(msg.sender)] = 0
        call msg.sender with:
           value stor7[address(msg.sender)] + msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        require block.timestamp >= auctionStart
        require block.timestamp <= auctionStart + biddingPeriod
        if stor7[address(msg.sender)] > 0:
            if msg.value <= 0:
                require msg.value > highestBid
                if highestBidderAddress:
                    stor7[stor5] = highestBid
                highestBidderAddress = msg.sender
                highestBid = msg.value
                emit HighestBidIncreased(msg.sender, msg.value);
            else:
                if msg.sender == highestBidderAddress:
                    highestBid += msg.value
                    emit HighestBidIncreased(msg.sender, highestBid);
                else:
                    require stor7[address(msg.sender)] + msg.value > highestBid
                    stor7[address(msg.sender)] = 0
                    stor7[stor5] = highestBid
                    highestBid = stor7[address(msg.sender)] + msg.value
                    highestBidderAddress = msg.sender
                    emit HighestBidIncreased(msg.sender, stor7[address(msg.sender)] + msg.value);
        else:
            if highestBidderAddress != msg.sender:
                require msg.value > highestBid
                if highestBidderAddress:
                    stor7[stor5] = highestBid
                highestBidderAddress = msg.sender
                highestBid = msg.value
                emit HighestBidIncreased(msg.sender, msg.value);
            else:
                if msg.value <= 0:
                    require msg.value > highestBid
                    if highestBidderAddress:
                        stor7[stor5] = highestBid
                    highestBidderAddress = msg.sender
                    highestBid = msg.value
                    emit HighestBidIncreased(msg.sender, msg.value);
                else:
                    if msg.sender == highestBidderAddress:
                        highestBid += msg.value
                        emit HighestBidIncreased(msg.sender, highestBid);
                    else:
                        require stor7[address(msg.sender)] + msg.value > highestBid
                        stor7[address(msg.sender)] = 0
                        stor7[stor5] = highestBid
                        highestBid = stor7[address(msg.sender)] + msg.value
                        highestBidderAddress = msg.sender
                        emit HighestBidIncreased(msg.sender, stor7[address(msg.sender)] + msg.value);
}



}
