contract main {


// =======================  Init code  ======================


address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor6;
uint8 stor15;

function _fallback() {
    require code.data[6131 len 20]
    stor2 = code.data[6131 len 20]
    stor1 = msg.sender
    stor15 = 0
    require stor15 <= 4
    if stor15:
        require stor15 <= 4
        require stor15 == 1
    require code.data[6151 len 32] > 0
    require code.data[6183 len 32] > 0
    require code.data[6215 len 32] > block.timestamp
    stor6 = code.data[6215 len 32]
    stor3 = code.data[6151 len 32]
    stor4 = code.data[6183 len 32]
    emit Deployed(code.data[6151 len 32], code.data[6183 len 32]);
    return code.data[562 len 5557]
}



// =====================  Runtime code  =====================


const TOKEN_CLAIM_WAITING_PERIOD = (168 * 24 * 3600)


address tokenAddress;
address ownerAddress;
address walletAddress;
uint256 startPrice;
uint256 priceDecreaseRate;
uint256 startTime;
uint256 endTimeOfBids;
uint256 finalizedTime;
uint256 startBlock;
uint256 receivedWei;
uint256 fundsClaimed;
uint256 tokenMultiplier;
uint256 tokensAuctioned;
uint256 finalPrice;
mapping of uint256 bids;
uint8 stage;

function receivedWei() {
    return receivedWei
}

function startBlock() {
    return startBlock
}

function endTimeOfBids() {
    return endTimeOfBids
}

function fundsClaimed() {
    return fundsClaimed
}

function bids(address arg1) {
    return bids[arg1]
}

function tokensAuctioned() {
    return tokensAuctioned
}

function walletAddress() {
    return walletAddress
}

function startTime() {
    return startTime
}

function ownerAddress() {
    return ownerAddress
}

function finalPrice() {
    return finalPrice
}

function tokenMultiplier() {
    return tokenMultiplier
}

function stage() {
    require stage <= 4
    return stage
}

function priceDecreaseRate() {
    return priceDecreaseRate
}

function startPrice() {
    return startPrice
}

function token() {
    return tokenAddress
}

function finalizedTime() {
    return finalizedTime
}

function startAuction() {
    require msg.sender == ownerAddress
    require stage <= 4
    require stage == 1
    stage = 2
    startTime = block.timestamp
    startBlock = block.number
    emit AuctionStarted(startTime, startBlock);
}

function price() {
    require stage <= 4
    if stage == 3:
        return finalPrice
    require stage <= 4
    if stage == 4:
        return finalPrice
    require stage <= 4
    if stage != 2:
        return startPrice
    return (startPrice - (block.number * priceDecreaseRate) + (startBlock * priceDecreaseRate))
}

function setup(address arg1) {
    require msg.sender == ownerAddress
    require stage <= 4
    require not stage
    require arg1
    tokenAddress = arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    tokensAuctioned = ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    tokenMultiplier = 10^ext_call.return_data[31 len 1]
    stage = 1
    emit Setup()
}

function missingFundsToEndAuction() {
    require stage <= 4
    if stage == 3:
        require tokenMultiplier
        if tokensAuctioned * finalPrice / tokenMultiplier > receivedWei:
            return ((tokensAuctioned * finalPrice / tokenMultiplier) - receivedWei)
    else:
        require stage <= 4
        if stage == 4:
            require tokenMultiplier
            if tokensAuctioned * finalPrice / tokenMultiplier > receivedWei:
                return ((tokensAuctioned * finalPrice / tokenMultiplier) - receivedWei)
        else:
            require stage <= 4
            require tokenMultiplier
            if stage != 2:
                if tokensAuctioned * startPrice / tokenMultiplier > receivedWei:
                    return ((tokensAuctioned * startPrice / tokenMultiplier) - receivedWei)
            else:
                if (startPrice * tokensAuctioned) - (block.number * priceDecreaseRate * tokensAuctioned) + (startBlock * priceDecreaseRate * tokensAuctioned) / tokenMultiplier > receivedWei:
                    return (((startPrice * tokensAuctioned) - (block.number * priceDecreaseRate * tokensAuctioned) + (startBlock * priceDecreaseRate * tokensAuctioned) / tokenMultiplier) - receivedWei)
    return 0
}

function proxyClaimTokens(address arg1) {
    require stage <= 4
    require stage == 3
    require block.timestamp > finalizedTime + (168 * 24 * 3600)
    require arg1
    if not bids[address(arg1)]:
        return 0
    require finalPrice
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    fundsClaimed += bids[address(arg1)]
    bids[address(arg1)] = 0
    require ext_code.size(tokenAddress)
    if tokenMultiplier * bids[address(arg1)] / finalPrice <= ext_call.return_data[0]:
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg1), tokenMultiplier * bids[address(arg1)] / finalPrice
        require ext_call.success
        require ext_call.return_data[0]
        emit ClaimedTokens((tokenMultiplier * bids[address(arg1)] / finalPrice), arg1);
        if fundsClaimed == receivedWei:
            stage = 4
            emit TokensDistributed()
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        if ext_call.return_data[0] >= tokenMultiplier * bids[address(arg1)] / finalPrice:
            if not bids[address(arg1)]:
                return 1
    else:
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg1), ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        emit ClaimedTokens(ext_call.return_data[0], arg1);
        if fundsClaimed == receivedWei:
            stage = 4
            emit TokensDistributed()
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        if ext_call.return_data[0] >= ext_call.return_data[0]:
            if not bids[address(arg1)]:
                return 1
    revert
}

function claimTokens() {
    require stage <= 4
    require stage == 3
    require stage <= 4
    require stage == 3
    require block.timestamp > finalizedTime + (168 * 24 * 3600)
    require msg.sender
    if not bids[address(msg.sender)]:
        return 0
    require finalPrice
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    fundsClaimed += bids[address(msg.sender)]
    bids[address(msg.sender)] = 0
    require ext_code.size(tokenAddress)
    if tokenMultiplier * bids[address(msg.sender)] / finalPrice <= ext_call.return_data[0]:
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, tokenMultiplier * bids[address(msg.sender)] / finalPrice
        require ext_call.success
        require ext_call.return_data[0]
        emit ClaimedTokens((tokenMultiplier * bids[address(msg.sender)] / finalPrice), msg.sender);
        if fundsClaimed == receivedWei:
            stage = 4
            emit TokensDistributed()
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
        if ext_call.return_data[0] >= tokenMultiplier * bids[address(msg.sender)] / finalPrice:
            if not bids[address(msg.sender)]:
                return 1
    else:
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        emit ClaimedTokens(ext_call.return_data[0], msg.sender);
        if fundsClaimed == receivedWei:
            stage = 4
            emit TokensDistributed()
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
        if ext_call.return_data[0] >= ext_call.return_data[0]:
            if not bids[address(msg.sender)]:
                return 1
    revert
}

function finalizeAuction() {
    require msg.sender == ownerAddress
    require stage <= 4
    require stage == 2
    require stage <= 4
    if stage == 3:
        if tokenMultiplier:
            if tokensAuctioned * finalPrice / tokenMultiplier > receivedWei:
                if (tokensAuctioned * finalPrice / tokenMultiplier) - receivedWei:
                    require block.timestamp > endTimeOfBids
            if tokensAuctioned:
                finalPrice = tokenMultiplier * receivedWei / tokensAuctioned
                finalizedTime = block.timestamp
                stage = 3
                emit AuctionEnded(finalPrice);
                if finalPrice > 0:
    else:
        if stage <= 4:
            if stage == 4:
                if tokenMultiplier:
                    if tokensAuctioned * finalPrice / tokenMultiplier > receivedWei:
                        if (tokensAuctioned * finalPrice / tokenMultiplier) - receivedWei:
                            require block.timestamp > endTimeOfBids
                    if tokensAuctioned:
                        finalPrice = tokenMultiplier * receivedWei / tokensAuctioned
                        finalizedTime = block.timestamp
                        stage = 3
                        emit AuctionEnded(finalPrice);
                        if finalPrice > 0:
            else:
                if stage <= 4:
                    if stage != 2:
                        if tokenMultiplier:
                            if tokensAuctioned * startPrice / tokenMultiplier > receivedWei:
                                if (tokensAuctioned * startPrice / tokenMultiplier) - receivedWei:
                                    require block.timestamp > endTimeOfBids
                            if tokensAuctioned:
                                finalPrice = tokenMultiplier * receivedWei / tokensAuctioned
                                finalizedTime = block.timestamp
                                stage = 3
                                emit AuctionEnded(finalPrice);
                                if finalPrice > 0:
                    else:
                        if tokenMultiplier:
                            if (startPrice * tokensAuctioned) - (block.number * priceDecreaseRate * tokensAuctioned) + (startBlock * priceDecreaseRate * tokensAuctioned) / tokenMultiplier > receivedWei:
                                if ((startPrice * tokensAuctioned) - (block.number * priceDecreaseRate * tokensAuctioned) + (startBlock * priceDecreaseRate * tokensAuctioned) / tokenMultiplier) - receivedWei:
                                    require block.timestamp > endTimeOfBids
                            if tokensAuctioned:
                                finalPrice = tokenMultiplier * receivedWei / tokensAuctioned
                                finalizedTime = block.timestamp
                                stage = 3
                                emit AuctionEnded(finalPrice);
                                if finalPrice > 0:
    revert
}

function bid() payable {
    require stage <= 4
    require stage == 2
    require msg.value > 0
    require bids[address(msg.sender)] + msg.value >= msg.value
    require stage <= 4
    if stage == 3:
        if tokenMultiplier:
            if tokensAuctioned * finalPrice / tokenMultiplier > receivedWei:
                require msg.value <= (tokensAuctioned * finalPrice / tokenMultiplier) - receivedWei
                bids[address(msg.sender)] += msg.value
                receivedWei += msg.value
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit BidSubmission(msg.value, (tokensAuctioned * finalPrice / tokenMultiplier) - receivedWei, block.timestamp, msg.sender);
            else:
                require msg.value <= 0
                bids[address(msg.sender)] += msg.value
                receivedWei += msg.value
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit BidSubmission(msg.value, 0, block.timestamp, msg.sender);
            if receivedWei >= msg.value:
    else:
        if stage <= 4:
            if stage == 4:
                if tokenMultiplier:
                    if tokensAuctioned * finalPrice / tokenMultiplier > receivedWei:
                        require msg.value <= (tokensAuctioned * finalPrice / tokenMultiplier) - receivedWei
                        bids[address(msg.sender)] += msg.value
                        receivedWei += msg.value
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit BidSubmission(msg.value, (tokensAuctioned * finalPrice / tokenMultiplier) - receivedWei, block.timestamp, msg.sender);
                    else:
                        require msg.value <= 0
                        bids[address(msg.sender)] += msg.value
                        receivedWei += msg.value
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit BidSubmission(msg.value, 0, block.timestamp, msg.sender);
                    if receivedWei >= msg.value:
            else:
                if stage <= 4:
                    if stage != 2:
                        if tokenMultiplier:
                            if tokensAuctioned * startPrice / tokenMultiplier > receivedWei:
                                require msg.value <= (tokensAuctioned * startPrice / tokenMultiplier) - receivedWei
                                bids[address(msg.sender)] += msg.value
                                receivedWei += msg.value
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit BidSubmission(msg.value, (tokensAuctioned * startPrice / tokenMultiplier) - receivedWei, block.timestamp, msg.sender);
                            else:
                                require msg.value <= 0
                                bids[address(msg.sender)] += msg.value
                                receivedWei += msg.value
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit BidSubmission(msg.value, 0, block.timestamp, msg.sender);
                            if receivedWei >= msg.value:
                    else:
                        if tokenMultiplier:
                            if (startPrice * tokensAuctioned) - (block.number * priceDecreaseRate * tokensAuctioned) + (startBlock * priceDecreaseRate * tokensAuctioned) / tokenMultiplier > receivedWei:
                                require msg.value <= ((startPrice * tokensAuctioned) - (block.number * priceDecreaseRate * tokensAuctioned) + (startBlock * priceDecreaseRate * tokensAuctioned) / tokenMultiplier) - receivedWei
                                bids[address(msg.sender)] += msg.value
                                receivedWei += msg.value
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit BidSubmission(msg.value, ((startPrice * tokensAuctioned) - (block.number * priceDecreaseRate * tokensAuctioned) + (startBlock * priceDecreaseRate * tokensAuctioned) / tokenMultiplier) - receivedWei, block.timestamp, msg.sender);
                            else:
                                require msg.value <= 0
                                bids[address(msg.sender)] += msg.value
                                receivedWei += msg.value
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit BidSubmission(msg.value, 0, block.timestamp, msg.sender);
                            if receivedWei >= msg.value:
    revert
}

function _fallback() payable {
    require stage <= 4
    require stage == 2
    require stage <= 4
    require stage == 2
    require msg.value > 0
    require bids[address(msg.sender)] + msg.value >= msg.value
    require stage <= 4
    if stage == 3:
        if tokenMultiplier:
            if tokensAuctioned * finalPrice / tokenMultiplier > receivedWei:
                require msg.value <= (tokensAuctioned * finalPrice / tokenMultiplier) - receivedWei
                bids[address(msg.sender)] += msg.value
                receivedWei += msg.value
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit BidSubmission(msg.value, (tokensAuctioned * finalPrice / tokenMultiplier) - receivedWei, block.timestamp, msg.sender);
            else:
                require msg.value <= 0
                bids[address(msg.sender)] += msg.value
                receivedWei += msg.value
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit BidSubmission(msg.value, 0, block.timestamp, msg.sender);
            if receivedWei >= msg.value:
    else:
        if stage <= 4:
            if stage == 4:
                if tokenMultiplier:
                    if tokensAuctioned * finalPrice / tokenMultiplier > receivedWei:
                        require msg.value <= (tokensAuctioned * finalPrice / tokenMultiplier) - receivedWei
                        bids[address(msg.sender)] += msg.value
                        receivedWei += msg.value
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit BidSubmission(msg.value, (tokensAuctioned * finalPrice / tokenMultiplier) - receivedWei, block.timestamp, msg.sender);
                    else:
                        require msg.value <= 0
                        bids[address(msg.sender)] += msg.value
                        receivedWei += msg.value
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit BidSubmission(msg.value, 0, block.timestamp, msg.sender);
                    if receivedWei >= msg.value:
            else:
                if stage <= 4:
                    if stage != 2:
                        if tokenMultiplier:
                            if tokensAuctioned * startPrice / tokenMultiplier > receivedWei:
                                require msg.value <= (tokensAuctioned * startPrice / tokenMultiplier) - receivedWei
                                bids[address(msg.sender)] += msg.value
                                receivedWei += msg.value
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit BidSubmission(msg.value, (tokensAuctioned * startPrice / tokenMultiplier) - receivedWei, block.timestamp, msg.sender);
                            else:
                                require msg.value <= 0
                                bids[address(msg.sender)] += msg.value
                                receivedWei += msg.value
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit BidSubmission(msg.value, 0, block.timestamp, msg.sender);
                            if receivedWei >= msg.value:
                    else:
                        if tokenMultiplier:
                            if (startPrice * tokensAuctioned) - (block.number * priceDecreaseRate * tokensAuctioned) + (startBlock * priceDecreaseRate * tokensAuctioned) / tokenMultiplier > receivedWei:
                                require msg.value <= ((startPrice * tokensAuctioned) - (block.number * priceDecreaseRate * tokensAuctioned) + (startBlock * priceDecreaseRate * tokensAuctioned) / tokenMultiplier) - receivedWei
                                bids[address(msg.sender)] += msg.value
                                receivedWei += msg.value
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit BidSubmission(msg.value, ((startPrice * tokensAuctioned) - (block.number * priceDecreaseRate * tokensAuctioned) + (startBlock * priceDecreaseRate * tokensAuctioned) / tokenMultiplier) - receivedWei, block.timestamp, msg.sender);
                            else:
                                require msg.value <= 0
                                bids[address(msg.sender)] += msg.value
                                receivedWei += msg.value
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit BidSubmission(msg.value, 0, block.timestamp, msg.sender);
                            if receivedWei >= msg.value:
    revert
}



}
