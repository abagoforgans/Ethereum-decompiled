contract main {


// =======================  Init code  ======================


mapping of uint8 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
address stor9;
address stor9; offset 8
address stor10;
address stor11;
uint256 stor12;
uint256 stor13;

function _fallback() payable {
    address(stor9.field_8) = 0xb7cf43651d8f370218cf92b00261ca3e1b02fda0
    stor10 = 0x60ce2769e5d330303bd9df88f7b843a40510f173
    stor11 = 0x7422b53eb5f57adaea0ddfff82ef765cfbc4dbf0
    stor12 = 1800
    stor13 = 10^6
    require not msg.value
    require address(stor9.field_8)
    require stor10
    require stor11
    stor0[address(stor9.field_0)] = 1
    stor0[stor10] = 1
    stor0[stor11] = 1
    stor1 = block.timestamp
    require stor12 <= stor13
    stor2 = stor12
    stor3 = stor13
    return code.data[910 len 4643]
}



// =====================  Runtime code  =====================


const WITHDRAWAL_TRIGGER_AMOUNT = 10^14

const REQUIRED_SIGNATURES = 2


mapping of uint8 stor0;
uint256 auctionStart;
uint256 biddingPeriod;
uint256 recoveryAfterPeriod;
mapping of struct proposals;
uint256 numProposals;
address highestBidderAddress;
uint256 highestBid;
mapping of uint256 stor8;
uint8 stor9;

function proposals(uint256 arg1) {
    require arg1 < proposals.length
    return proposals[arg1].field_0, proposals[arg1].field_256, bool(proposals[arg1].field_768)
}

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
        return stor8[address(arg1)]
    return highestBid
}

function nonHighestBidderRefund() payable {
    require stor8[address(msg.sender)] > 0
    stor8[address(msg.sender)] = 0
    call msg.sender with:
       value stor8[address(msg.sender)] + msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function createProposal(address arg1, bool arg2) {
    require stor0[address(msg.sender)]
    require block.timestamp >= auctionStart + biddingPeriod
    proposals.length++
    if not proposals.length <= proposals.length + 1:
        idx = 4 * proposals.length + 1
        while 4 * proposals.length > idx:
            proposals[idx].field_0 = 0
            proposals[idx].field_256 = 0
            proposals[idx].field_768 = 0
            idx = idx + 4
            continue 
    require proposals.length < proposals.length
    proposals[proposals.length].field_0 = arg1
    stor[(4 * proposals.length) + ('name', 'proposals', 4) + 2][address(msg.sender)].field_0 = 1
    proposals[proposals.length].field_256 = 1
    numProposals++
    emit Voted(proposals.length, msg.sender);
    emit ProposalAdded(proposals.length, arg1);
}

function voteProposal(uint256 arg1) {
    require stor0[address(msg.sender)]
    require block.timestamp >= auctionStart + biddingPeriod
    require arg1 < proposals.length
    require not stor[(4 * arg1) + ('name', 'proposals', 4) + 2][address(msg.sender)].field_0
    stor[(4 * arg1) + ('name', 'proposals', 4) + 2][address(msg.sender)].field_0 = 1
    proposals[arg1].field_256++
    if proposals[arg1].field_256 >= 2:
        if proposals[arg1].field_768:
            require block.timestamp >= auctionStart + recoveryAfterPeriod
            call proposals[arg1].field_0 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
        else:
            require not stor9
            stor9 = 1
            emit AuctionClosed(highestBidderAddress, highestBid);
            call proposals[arg1].field_0 with:
               value highestBid wei
                 gas 2300 * is_zero(value) wei
        require ext_call.success
}

function bidderPlaceBid() payable {
    require block.timestamp >= auctionStart
    require block.timestamp <= auctionStart + biddingPeriod
    if stor8[address(msg.sender)] > 0:
        if msg.value <= 0:
            require msg.value > highestBid
            if highestBidderAddress:
                stor8[stor6] = highestBid
            highestBidderAddress = msg.sender
            highestBid = msg.value
            emit HighestBidIncreased(msg.sender, msg.value);
        else:
            if msg.sender == highestBidderAddress:
                highestBid += msg.value
                emit HighestBidIncreased(msg.sender, highestBid);
            else:
                require stor8[address(msg.sender)] + msg.value > highestBid
                stor8[address(msg.sender)] = 0
                stor8[stor6] = highestBid
                highestBid = stor8[address(msg.sender)] + msg.value
                highestBidderAddress = msg.sender
                emit HighestBidIncreased(msg.sender, stor8[address(msg.sender)] + msg.value);
    else:
        if highestBidderAddress != msg.sender:
            require msg.value > highestBid
            if highestBidderAddress:
                stor8[stor6] = highestBid
            highestBidderAddress = msg.sender
            highestBid = msg.value
            emit HighestBidIncreased(msg.sender, msg.value);
        else:
            if msg.value <= 0:
                require msg.value > highestBid
                if highestBidderAddress:
                    stor8[stor6] = highestBid
                highestBidderAddress = msg.sender
                highestBid = msg.value
                emit HighestBidIncreased(msg.sender, msg.value);
            else:
                if msg.sender == highestBidderAddress:
                    highestBid += msg.value
                    emit HighestBidIncreased(msg.sender, highestBid);
                else:
                    require stor8[address(msg.sender)] + msg.value > highestBid
                    stor8[address(msg.sender)] = 0
                    stor8[stor6] = highestBid
                    highestBid = stor8[address(msg.sender)] + msg.value
                    highestBidderAddress = msg.sender
                    emit HighestBidIncreased(msg.sender, stor8[address(msg.sender)] + msg.value);
}

function _fallback() payable {
    if msg.value == 10^14:
        require stor8[address(msg.sender)] > 0
        stor8[address(msg.sender)] = 0
        call msg.sender with:
           value stor8[address(msg.sender)] + msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        require block.timestamp >= auctionStart
        require block.timestamp <= auctionStart + biddingPeriod
        if stor8[address(msg.sender)] > 0:
            if msg.value <= 0:
                require msg.value > highestBid
                if highestBidderAddress:
                    stor8[stor6] = highestBid
                highestBidderAddress = msg.sender
                highestBid = msg.value
                emit HighestBidIncreased(msg.sender, msg.value);
            else:
                if msg.sender == highestBidderAddress:
                    highestBid += msg.value
                    emit HighestBidIncreased(msg.sender, highestBid);
                else:
                    require stor8[address(msg.sender)] + msg.value > highestBid
                    stor8[address(msg.sender)] = 0
                    stor8[stor6] = highestBid
                    highestBid = stor8[address(msg.sender)] + msg.value
                    highestBidderAddress = msg.sender
                    emit HighestBidIncreased(msg.sender, stor8[address(msg.sender)] + msg.value);
        else:
            if highestBidderAddress != msg.sender:
                require msg.value > highestBid
                if highestBidderAddress:
                    stor8[stor6] = highestBid
                highestBidderAddress = msg.sender
                highestBid = msg.value
                emit HighestBidIncreased(msg.sender, msg.value);
            else:
                if msg.value <= 0:
                    require msg.value > highestBid
                    if highestBidderAddress:
                        stor8[stor6] = highestBid
                    highestBidderAddress = msg.sender
                    highestBid = msg.value
                    emit HighestBidIncreased(msg.sender, msg.value);
                else:
                    if msg.sender == highestBidderAddress:
                        highestBid += msg.value
                        emit HighestBidIncreased(msg.sender, highestBid);
                    else:
                        require stor8[address(msg.sender)] + msg.value > highestBid
                        stor8[address(msg.sender)] = 0
                        stor8[stor6] = highestBid
                        highestBid = stor8[address(msg.sender)] + msg.value
                        highestBidderAddress = msg.sender
                        emit HighestBidIncreased(msg.sender, stor8[address(msg.sender)] + msg.value);
}



}
