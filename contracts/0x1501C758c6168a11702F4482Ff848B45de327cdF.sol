contract main {


// =======================  Init code  ======================


mapping of uint8 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() {
    require code.data[2799 len 20]
    require code.data[2831 len 20]
    require code.data[2863 len 20]
    stor0[code.data[2799 len 20]] = 1
    stor0[code.data[2831 len 20]] = 1
    stor0[code.data[2863 len 20]] = 1
    stor1 = block.timestamp
    require code.data[2883 len 32] <= code.data[2915 len 32]
    stor2 = code.data[2883 len 32]
    stor3 = code.data[2915 len 32]
    return code.data[233 len 2554]
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
    if highestBidderAddress != arg1:
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
    if proposals[arg1].field_256 + 1 < 2:
    if proposals[arg1].field_768:
        if block.timestamp >= auctionStart + recoveryAfterPeriod:
            call proposals[arg1].field_0 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
    else:
        if not stor9:
            stor9 = 1
            emit AuctionClosed(highestBidderAddress, highestBid);
            call proposals[arg1].field_0 with:
               value highestBid wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
    revert 
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
            if highestBidderAddress == msg.sender:
                highestBid += msg.value
                emit HighestBidIncreased(msg.sender, msg.value + highestBid);
            else:
                require msg.value + stor8[address(msg.sender)] > highestBid
                stor8[address(msg.sender)] = 0
                stor8[stor6] = highestBid
                highestBid = msg.value + stor8[address(msg.sender)]
                highestBidderAddress = msg.sender
                emit HighestBidIncreased(msg.sender, msg.value + stor8[address(msg.sender)]);
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
                if highestBidderAddress == msg.sender:
                    highestBid += msg.value
                    emit HighestBidIncreased(msg.sender, msg.value + highestBid);
                else:
                    require msg.value + stor8[address(msg.sender)] > highestBid
                    stor8[address(msg.sender)] = 0
                    stor8[stor6] = highestBid
                    highestBid = msg.value + stor8[address(msg.sender)]
                    highestBidderAddress = msg.sender
                    emit HighestBidIncreased(msg.sender, msg.value + stor8[address(msg.sender)]);
}

function _fallback() payable {
    if msg.value == 10^14:
        require stor8[address(msg.sender)] > 0
        stor8[address(msg.sender)] = 0
        call msg.sender with:
           value stor8[address(msg.sender)] + msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
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
            if highestBidderAddress == msg.sender:
                highestBid += msg.value
                emit HighestBidIncreased(msg.sender, msg.value + highestBid);
            else:
                require msg.value + stor8[address(msg.sender)] > highestBid
                stor8[address(msg.sender)] = 0
                stor8[stor6] = highestBid
                highestBid = msg.value + stor8[address(msg.sender)]
                highestBidderAddress = msg.sender
                emit HighestBidIncreased(msg.sender, msg.value + stor8[address(msg.sender)]);
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
                if highestBidderAddress == msg.sender:
                    highestBid += msg.value
                    emit HighestBidIncreased(msg.sender, msg.value + highestBid);
                else:
                    require msg.value + stor8[address(msg.sender)] > highestBid
                    stor8[address(msg.sender)] = 0
                    stor8[stor6] = highestBid
                    highestBid = msg.value + stor8[address(msg.sender)]
                    highestBidderAddress = msg.sender
                    emit HighestBidIncreased(msg.sender, msg.value + stor8[address(msg.sender)]);
}



}
