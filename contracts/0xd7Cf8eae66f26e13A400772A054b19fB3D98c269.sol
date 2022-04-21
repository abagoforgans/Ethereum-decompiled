contract main {


// =======================  Init code  ======================


address stor2;
uint256 stor20;
uint256 stor21;

function _fallback() payable {
    stor20 = 4
    stor21 = 100000
    require not msg.value
    stor2 = msg.sender
    return code.data[74 len 5315]
}



// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor1;
uint8 stor1;
uint256 stateMask;
address owner;
address developersAddress;
address underwriterAddress;
address tokenAddress;
uint256 proceeds;
uint256 strikePrice;
uint256 strikePricePctX10;
uint256 developerReserve;
uint256 developerPctX10;
uint256 purchasedCount;
uint256 secretBidCount;
uint256 executedCount;
uint256 expiredCount;
uint256 saleDuration;
uint256 auctionStart;
uint256 auctionEnd;
uint256 saleEnd;
mapping of struct secretBids;
uint256 stor20;
uint256 stor21;

function purchasedCount() {
    return purchasedCount
}

function stateMask() {
    return uint256(stateMask)
}

function auctionEnd() {
    return auctionEnd
}

function developers() {
    return developersAddress
}

function saleDuration() {
    return saleDuration
}

function auctionStart() {
    return auctionStart
}

function proceeds() {
    return proceeds
}

function strikePricePctX10() {
    return strikePricePctX10
}

function owner() {
    return owner
}

function developerPctX10() {
    return developerPctX10
}

function isLocked() {
    return bool(stor0)
}

function executedCount() {
    return executedCount
}

function saleEnd() {
    return saleEnd
}

function strikePrice() {
    return strikePrice
}

function secretBids(address arg1) {
    return bool(secretBids[arg1].field_0), 
           secretBids[arg1].field_256,
           secretBids[arg1].field_512,
           secretBids[arg1].field_768,
           secretBids[arg1].field_1024
}

function secretBidCount() {
    return secretBidCount
}

function expiredCount() {
    return expiredCount
}

function underwriter() {
    return underwriterAddress
}

function developerReserve() {
    return developerReserve
}

function token() {
    return tokenAddress
}

function haraKiri() {
    require owner == msg.sender
    require not stor0
    selfdestruct(owner)
}

function lock() {
    require owner == msg.sender
    stor0 = 1
}

function tune(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    stor20 = arg1
    stor21 = arg2
}

function disqualifyBid(address arg1) {
    require owner == msg.sender
    require stor1 % 4 == 1
    secretBids[address(arg1)].field_0 = 1
}

function _fallback() payable {
    require msg.value + proceeds >= proceeds
    proceeds += msg.value
    emit BizarreEvent(Array(len=15, data='bizarre payment'), msg.value, msg.sender);
}

function withdrawRefund() {
    secretBids[address(msg.sender)].field_512 = 0
    call msg.sender with:
       value secretBids[address(msg.sender)].field_512 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function payUnderwriter() {
    if owner != msg.sender:
        require underwriterAddress == msg.sender
    proceeds = 0
    call underwriterAddress with:
       value proceeds wei
         gas stor21 wei
    require ext_call.success
}

function reserveDeveloperTokens(address arg1, uint256 arg2) {
    require owner == msg.sender
    require not stor0
    developersAddress = arg1
    developerPctX10 = arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_call.return_data[0]
        require developerPctX10 * ext_call.return_data[0] / ext_call.return_data[0] == developerPctX10
    developerReserve = developerPctX10 * ext_call.return_data[0] / 1000
}

function depositSecretBid(bytes32 arg1, bytes arg2) payable {
    require stor1 % 4 == 1
    if owner != msg.sender:
        require arg1
        require not secretBids[address(msg.sender)].field_1024
    else:
        if stor0:
            require arg1
            require not secretBids[address(msg.sender)].field_1024
    secretBids[address(msg.sender)].field_1024 = arg1
    secretBids[address(msg.sender)].field_256 = msg.value
    secretBidCount++
    require stor20
    emit SecretBidEvent(msg.value, arg1, Array(len=arg2.length, data=arg2[all]), secretBidCount + 1 / stor20, msg.sender);
}

function houseKeep() {
    if block.timestamp < auctionStart:
        if uint256(stateMask) != uint256(stateMask):
            emit StateChangeEvent(uint256(stateMask));
    else:
        uint8(stor1) = 1
        if block.timestamp < auctionEnd:
            if uint256(stateMask) != uint256(stateMask):
                emit StateChangeEvent(uint256(stateMask));
        else:
            uint8(stor1) = 2
            if strikePrice <= 0:
                if uint256(stateMask) != uint256(stateMask):
                    emit StateChangeEvent(uint256(stateMask));
            else:
                uint8(stor1) = 4
                if block.timestamp >= saleEnd:
                    uint8(stor1) = 8
                if uint256(stateMask) != uint256(stateMask):
                    emit StateChangeEvent(uint256(stateMask));
}

function expireBid(address arg1) {
    require owner == msg.sender
    require Mask(1, 3, uint256(stateMask))
    if secretBids[address(arg1)].field_256 > 0:
        require secretBids[address(arg1)].field_257 + proceeds >= proceeds
        proceeds += secretBids[address(arg1)].field_257
        require secretBids[address(arg1)].field_256 >= secretBids[address(arg1)].field_257
        secretBids[address(msg.sender)].field_512 = secretBids[address(arg1)].field_256 - secretBids[address(arg1)].field_257 + secretBids[address(msg.sender)].field_512
        secretBids[arg1].field_256 = 0
        expiredCount++
        require stor20
        emit ExpireEvent(2 * Mask(256, -1, secretBids[address(arg1)].field_257), secretBids[address(arg1)].field_256 - secretBids[address(arg1)].field_257, expiredCount + 1 / stor20, arg1);
}

function setStrikePrice(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    require Mask(1, 1, uint256(stateMask))
    require not executedCount
    strikePrice = arg1
    strikePricePctX10 = arg2
    require saleDuration + block.timestamp >= block.timestamp
    saleEnd = saleDuration + block.timestamp
    if block.timestamp < auctionStart:
        if uint256(stateMask) != uint256(stateMask):
            emit StateChangeEvent(uint256(stateMask));
    else:
        uint8(stor1) = 1
        if block.timestamp < auctionEnd:
            if uint256(stateMask) != uint256(stateMask):
                emit StateChangeEvent(uint256(stateMask));
        else:
            uint8(stor1) = 2
            if strikePrice <= 0:
                if uint256(stateMask) != uint256(stateMask):
                    emit StateChangeEvent(uint256(stateMask));
            else:
                uint8(stor1) = 4
                if block.timestamp >= saleEnd:
                    uint8(stor1) = 8
                if uint256(stateMask) != uint256(stateMask):
                    emit StateChangeEvent(uint256(stateMask));
}

function setAuctionParms(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require owner == msg.sender
    require not stor0
    tokenAddress = arg1
    underwriterAddress = arg2
    auctionStart = arg3
    require arg4 + arg3 >= arg3
    auctionEnd = arg4 + arg3
    saleDuration = arg5
    if uint256(stateMask):
        uint256(stateMask) = 0
        strikePrice = 0
        purchasedCount = 0
        if block.timestamp < auctionStart:
            if uint256(stateMask) != uint256(stateMask):
                emit StateChangeEvent(uint256(stateMask));
        else:
            uint8(stor1) = 1
            if block.timestamp < auctionEnd:
                if uint256(stateMask) != uint256(stateMask):
                    emit StateChangeEvent(uint256(stateMask));
            else:
                uint8(stor1) = 2
                if strikePrice <= 0:
                    if uint256(stateMask) != uint256(stateMask):
                        emit StateChangeEvent(uint256(stateMask));
                else:
                    uint8(stor1) = 4
                    if block.timestamp >= saleEnd:
                        uint8(stor1) = 8
                    if uint256(stateMask) != uint256(stateMask):
                        emit StateChangeEvent(uint256(stateMask));
}

function doDeveloperGrant() {
    require Mask(1, 3, uint256(stateMask))
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenAddress)
    if developerPctX10 * purchasedCount / 1000 <= ext_call.return_data[0]:
        if developerPctX10 * purchasedCount / 1000 <= 0:
            call tokenAddress.unPaidBurnTokens(uint256 rg1) with:
                 gas gas_remaining - 710 wei
                args ext_call.return_data[0]
        else:
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args developersAddress, developerPctX10 * purchasedCount / 1000
            require ext_call.success
            require ext_call.return_data[0]
            require ext_code.size(tokenAddress)
            call tokenAddress.unPaidBurnTokens(uint256 rg1) with:
                 gas gas_remaining - 710 wei
                args (ext_call.return_data[0] - (developerPctX10 * purchasedCount / 1000))
    else:
        if ext_call.return_data[0] <= 0:
            call tokenAddress.unPaidBurnTokens(uint256 rg1) with:
                 gas gas_remaining - 710 wei
                args ext_call.return_data[0]
        else:
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args developersAddress, ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            require ext_code.size(tokenAddress)
            call tokenAddress.unPaidBurnTokens(uint256 rg1) with:
                 gas gas_remaining - 710 wei
                args 0
    require ext_call.success
}

function executeBidFor(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require Mask(2, 2, uint256(stateMask)) == 4
    require sha3(arg2, arg3, arg4) == secretBids[address(arg1)].field_1024
    if secretBids[address(arg1)].field_256 > 0:
        if arg3:
            require arg3
            require 10^12 * arg3 / arg3 == 10^12
        if 10^12 * arg3 < strikePrice:
            if secretBids[address(arg1)].field_256 <= 0:
                executedCount++
                require stor20
                emit ExecuteEvent(uint256 rg1, address rg2, uint256 rg3, uint256 rg4):
                                  0,
                                  executedCount + 1 / stor20,
                                  arg1,
            else:
                secretBids[address(arg1)].field_512 += secretBids[address(arg1)].field_256
                secretBids[address(arg1)].field_256 = 0
                executedCount++
                require stor20
                emit ExecuteEvent(0, secretBids[address(arg1)].field_256, executedCount + 1 / stor20, arg1);
        else:
            if secretBids[address(arg1)].field_0:
                if secretBids[address(arg1)].field_256 <= 0:
                    executedCount++
                    require stor20
                    emit ExecuteEvent(uint256 rg1, address rg2, uint256 rg3, uint256 rg4):
                                      0,
                                      executedCount + 1 / stor20,
                                      arg1,
                else:
                    secretBids[address(arg1)].field_512 += secretBids[address(arg1)].field_256
                    secretBids[address(arg1)].field_256 = 0
                    executedCount++
                    require stor20
                    emit ExecuteEvent(0, secretBids[address(arg1)].field_256, executedCount + 1 / stor20, arg1);
            else:
                if 10^12 * arg3 > strikePrice:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args this.address
                    require ext_call.success
                    if arg4 <= ext_call.return_data[0] - developerReserve:
                        if arg4:
                            require arg4
                            require strikePrice * arg4 / arg4 == strikePrice
                        if secretBids[address(arg1)].field_256 >= strikePrice * arg4:
                            secretBids[address(arg1)].field_256 += -1 * strikePrice * arg4
                            require (strikePrice * arg4) + proceeds >= proceeds
                            proceeds += strikePrice * arg4
                            secretBids[address(arg1)].field_768 += arg4
                            purchasedCount += arg4
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), arg4
                            require ext_call.success
                            require ext_call.return_data[0]
                        if secretBids[address(arg1)].field_256 <= 0:
                            executedCount++
                            require stor20
                            emit ExecuteEvent(strikePrice * arg4, 0, executedCount + 1 / stor20, arg1);
                        else:
                            secretBids[address(arg1)].field_512 += secretBids[address(arg1)].field_256
                            secretBids[address(arg1)].field_256 = 0
                            executedCount++
                            require stor20
                            emit ExecuteEvent(strikePrice * arg4, secretBids[address(arg1)].field_256, executedCount + 1 / stor20, arg1);
                    else:
                        if ext_call.return_data[0] - developerReserve:
                            require ext_call.return_data[0] - developerReserve
                            require (ext_call.return_data[0] * strikePrice) - (developerReserve * strikePrice) / ext_call.return_data[0] - developerReserve == strikePrice
                        if secretBids[address(arg1)].field_256 >= (ext_call.return_data[0] * strikePrice) - (developerReserve * strikePrice):
                            secretBids[address(arg1)].field_256 = secretBids[address(arg1)].field_256 - (ext_call.return_data[0] * strikePrice) + (developerReserve * strikePrice)
                            require (ext_call.return_data[0] * strikePrice) - (developerReserve * strikePrice) + proceeds >= proceeds
                            proceeds = (ext_call.return_data[0] * strikePrice) - (developerReserve * strikePrice) + proceeds
                            secretBids[address(arg1)].field_768 = ext_call.return_data[0] - developerReserve + secretBids[address(arg1)].field_768
                            purchasedCount = ext_call.return_data[0] - developerReserve + purchasedCount
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), ext_call.return_data[0] - developerReserve
                            require ext_call.success
                            require ext_call.return_data[0]
                        if secretBids[address(arg1)].field_256 <= 0:
                            executedCount++
                            require stor20
                            emit ExecuteEvent((ext_call.return_data[0] * strikePrice) - (developerReserve * strikePrice), 0, executedCount + 1 / stor20, arg1);
                        else:
                            secretBids[address(arg1)].field_512 += secretBids[address(arg1)].field_256
                            secretBids[address(arg1)].field_256 = 0
                            executedCount++
                            require stor20
                            emit ExecuteEvent((ext_call.return_data[0] * strikePrice) - (developerReserve * strikePrice), secretBids[address(arg1)].field_256, executedCount + 1 / stor20, arg1);
                else:
                    if strikePricePctX10:
                        require strikePricePctX10
                        require arg4 * strikePricePctX10 / strikePricePctX10 == arg4
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args this.address
                    require ext_call.success
                    if arg4 * strikePricePctX10 / 1000 <= ext_call.return_data[0] - developerReserve:
                        if arg4 * strikePricePctX10 / 1000:
                            require arg4 * strikePricePctX10 / 1000
                            require strikePrice * arg4 * strikePricePctX10 / 1000 / arg4 * strikePricePctX10 / 1000 == strikePrice
                        if secretBids[address(arg1)].field_256 >= strikePrice * arg4 * strikePricePctX10 / 1000:
                            secretBids[address(arg1)].field_256 += -1 * strikePrice * arg4 * strikePricePctX10 / 1000
                            require (strikePrice * arg4 * strikePricePctX10 / 1000) + proceeds >= proceeds
                            proceeds += strikePrice * arg4 * strikePricePctX10 / 1000
                            secretBids[address(arg1)].field_768 += arg4 * strikePricePctX10 / 1000
                            purchasedCount += arg4 * strikePricePctX10 / 1000
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), arg4 * strikePricePctX10 / 1000
                            require ext_call.success
                            require ext_call.return_data[0]
                        if secretBids[address(arg1)].field_256 <= 0:
                            executedCount++
                            require stor20
                            emit ExecuteEvent(strikePrice * arg4 * strikePricePctX10 / 1000, 0, executedCount + 1 / stor20, arg1);
                        else:
                            secretBids[address(arg1)].field_512 += secretBids[address(arg1)].field_256
                            secretBids[address(arg1)].field_256 = 0
                            executedCount++
                            require stor20
                            emit ExecuteEvent(strikePrice * arg4 * strikePricePctX10 / 1000, secretBids[address(arg1)].field_256, executedCount + 1 / stor20, arg1);
                    else:
                        if ext_call.return_data[0] - developerReserve:
                            require ext_call.return_data[0] - developerReserve
                            require (ext_call.return_data[0] * strikePrice) - (developerReserve * strikePrice) / ext_call.return_data[0] - developerReserve == strikePrice
                        if secretBids[address(arg1)].field_256 >= (ext_call.return_data[0] * strikePrice) - (developerReserve * strikePrice):
                            secretBids[address(arg1)].field_256 = secretBids[address(arg1)].field_256 - (ext_call.return_data[0] * strikePrice) + (developerReserve * strikePrice)
                            require (ext_call.return_data[0] * strikePrice) - (developerReserve * strikePrice) + proceeds >= proceeds
                            proceeds = (ext_call.return_data[0] * strikePrice) - (developerReserve * strikePrice) + proceeds
                            secretBids[address(arg1)].field_768 = ext_call.return_data[0] - developerReserve + secretBids[address(arg1)].field_768
                            purchasedCount = ext_call.return_data[0] - developerReserve + purchasedCount
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), ext_call.return_data[0] - developerReserve
                            require ext_call.success
                            require ext_call.return_data[0]
                        if secretBids[address(arg1)].field_256 <= 0:
                            executedCount++
                            require stor20
                            emit ExecuteEvent((ext_call.return_data[0] * strikePrice) - (developerReserve * strikePrice), 0, executedCount + 1 / stor20, arg1);
                        else:
                            secretBids[address(arg1)].field_512 += secretBids[address(arg1)].field_256
                            secretBids[address(arg1)].field_256 = 0
                            executedCount++
                            require stor20
                            emit ExecuteEvent((ext_call.return_data[0] * strikePrice) - (developerReserve * strikePrice), secretBids[address(arg1)].field_256, executedCount + 1 / stor20, arg1);
}

function executeBid(uint256 arg1, uint256 arg2, uint256 arg3) {
    require 4 == Mask(2, 2, uint256(stateMask))
    require Mask(2, 2, uint256(stateMask)) == 4
    require sha3(arg1, arg2, arg3) == secretBids[address(msg.sender)].field_1024
    if secretBids[address(msg.sender)].field_256 > 0:
        if arg2:
            require arg2
            require 10^12 * arg2 / arg2 == 10^12
        if 10^12 * arg2 < strikePrice:
            if secretBids[address(msg.sender)].field_256 <= 0:
                executedCount++
                require stor20
                emit ExecuteEvent(uint256 rg1, address rg2, uint256 rg3, uint256 rg4):
                                  0,
                                  executedCount + 1 / stor20,
                                  msg.sender,
            else:
                secretBids[address(msg.sender)].field_512 += secretBids[address(msg.sender)].field_256
                secretBids[address(msg.sender)].field_256 = 0
                executedCount++
                require stor20
                emit ExecuteEvent(0, secretBids[address(msg.sender)].field_256, executedCount + 1 / stor20, msg.sender);
        else:
            if secretBids[address(msg.sender)].field_0:
                if secretBids[address(msg.sender)].field_256 <= 0:
                    executedCount++
                    require stor20
                    emit ExecuteEvent(uint256 rg1, address rg2, uint256 rg3, uint256 rg4):
                                      0,
                                      executedCount + 1 / stor20,
                                      msg.sender,
                else:
                    secretBids[address(msg.sender)].field_512 += secretBids[address(msg.sender)].field_256
                    secretBids[address(msg.sender)].field_256 = 0
                    executedCount++
                    require stor20
                    emit ExecuteEvent(0, secretBids[address(msg.sender)].field_256, executedCount + 1 / stor20, msg.sender);
            else:
                if 10^12 * arg2 > strikePrice:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args this.address
                    require ext_call.success
                    if arg3 <= ext_call.return_data[0] - developerReserve:
                        if arg3:
                            require arg3
                            require strikePrice * arg3 / arg3 == strikePrice
                        if secretBids[address(msg.sender)].field_256 >= strikePrice * arg3:
                            secretBids[address(msg.sender)].field_256 += -1 * strikePrice * arg3
                            require (strikePrice * arg3) + proceeds >= proceeds
                            proceeds += strikePrice * arg3
                            secretBids[address(msg.sender)].field_768 += arg3
                            purchasedCount += arg3
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, arg3
                            require ext_call.success
                            require ext_call.return_data[0]
                        if secretBids[address(msg.sender)].field_256 <= 0:
                            executedCount++
                            require stor20
                            emit ExecuteEvent(strikePrice * arg3, 0, executedCount + 1 / stor20, msg.sender);
                        else:
                            secretBids[address(msg.sender)].field_512 += secretBids[address(msg.sender)].field_256
                            secretBids[address(msg.sender)].field_256 = 0
                            executedCount++
                            require stor20
                            emit ExecuteEvent(strikePrice * arg3, secretBids[address(msg.sender)].field_256, executedCount + 1 / stor20, msg.sender);
                    else:
                        if ext_call.return_data[0] - developerReserve:
                            require ext_call.return_data[0] - developerReserve
                            require (ext_call.return_data[0] * strikePrice) - (developerReserve * strikePrice) / ext_call.return_data[0] - developerReserve == strikePrice
                        if secretBids[address(msg.sender)].field_256 >= (ext_call.return_data[0] * strikePrice) - (developerReserve * strikePrice):
                            secretBids[address(msg.sender)].field_256 = secretBids[address(msg.sender)].field_256 - (ext_call.return_data[0] * strikePrice) + (developerReserve * strikePrice)
                            require (ext_call.return_data[0] * strikePrice) - (developerReserve * strikePrice) + proceeds >= proceeds
                            proceeds = (ext_call.return_data[0] * strikePrice) - (developerReserve * strikePrice) + proceeds
                            secretBids[address(msg.sender)].field_768 = ext_call.return_data[0] - developerReserve + secretBids[address(msg.sender)].field_768
                            purchasedCount = ext_call.return_data[0] - developerReserve + purchasedCount
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0] - developerReserve
                            require ext_call.success
                            require ext_call.return_data[0]
                        if secretBids[address(msg.sender)].field_256 <= 0:
                            executedCount++
                            require stor20
                            emit ExecuteEvent((ext_call.return_data[0] * strikePrice) - (developerReserve * strikePrice), 0, executedCount + 1 / stor20, msg.sender);
                        else:
                            secretBids[address(msg.sender)].field_512 += secretBids[address(msg.sender)].field_256
                            secretBids[address(msg.sender)].field_256 = 0
                            executedCount++
                            require stor20
                            emit ExecuteEvent((ext_call.return_data[0] * strikePrice) - (developerReserve * strikePrice), secretBids[address(msg.sender)].field_256, executedCount + 1 / stor20, msg.sender);
                else:
                    if strikePricePctX10:
                        require strikePricePctX10
                        require arg3 * strikePricePctX10 / strikePricePctX10 == arg3
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args this.address
                    require ext_call.success
                    if arg3 * strikePricePctX10 / 1000 <= ext_call.return_data[0] - developerReserve:
                        if arg3 * strikePricePctX10 / 1000:
                            require arg3 * strikePricePctX10 / 1000
                            require strikePrice * arg3 * strikePricePctX10 / 1000 / arg3 * strikePricePctX10 / 1000 == strikePrice
                        if secretBids[address(msg.sender)].field_256 >= strikePrice * arg3 * strikePricePctX10 / 1000:
                            secretBids[address(msg.sender)].field_256 += -1 * strikePrice * arg3 * strikePricePctX10 / 1000
                            require (strikePrice * arg3 * strikePricePctX10 / 1000) + proceeds >= proceeds
                            proceeds += strikePrice * arg3 * strikePricePctX10 / 1000
                            secretBids[address(msg.sender)].field_768 += arg3 * strikePricePctX10 / 1000
                            purchasedCount += arg3 * strikePricePctX10 / 1000
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, arg3 * strikePricePctX10 / 1000
                            require ext_call.success
                            require ext_call.return_data[0]
                        if secretBids[address(msg.sender)].field_256 <= 0:
                            executedCount++
                            require stor20
                            emit ExecuteEvent(strikePrice * arg3 * strikePricePctX10 / 1000, 0, executedCount + 1 / stor20, msg.sender);
                        else:
                            secretBids[address(msg.sender)].field_512 += secretBids[address(msg.sender)].field_256
                            secretBids[address(msg.sender)].field_256 = 0
                            executedCount++
                            require stor20
                            emit ExecuteEvent(strikePrice * arg3 * strikePricePctX10 / 1000, secretBids[address(msg.sender)].field_256, executedCount + 1 / stor20, msg.sender);
                    else:
                        if ext_call.return_data[0] - developerReserve:
                            require ext_call.return_data[0] - developerReserve
                            require (ext_call.return_data[0] * strikePrice) - (developerReserve * strikePrice) / ext_call.return_data[0] - developerReserve == strikePrice
                        if secretBids[address(msg.sender)].field_256 >= (ext_call.return_data[0] * strikePrice) - (developerReserve * strikePrice):
                            secretBids[address(msg.sender)].field_256 = secretBids[address(msg.sender)].field_256 - (ext_call.return_data[0] * strikePrice) + (developerReserve * strikePrice)
                            require (ext_call.return_data[0] * strikePrice) - (developerReserve * strikePrice) + proceeds >= proceeds
                            proceeds = (ext_call.return_data[0] * strikePrice) - (developerReserve * strikePrice) + proceeds
                            secretBids[address(msg.sender)].field_768 = ext_call.return_data[0] - developerReserve + secretBids[address(msg.sender)].field_768
                            purchasedCount = ext_call.return_data[0] - developerReserve + purchasedCount
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0] - developerReserve
                            require ext_call.success
                            require ext_call.return_data[0]
                        if secretBids[address(msg.sender)].field_256 <= 0:
                            executedCount++
                            require stor20
                            emit ExecuteEvent((ext_call.return_data[0] * strikePrice) - (developerReserve * strikePrice), 0, executedCount + 1 / stor20, msg.sender);
                        else:
                            secretBids[address(msg.sender)].field_512 += secretBids[address(msg.sender)].field_256
                            secretBids[address(msg.sender)].field_256 = 0
                            executedCount++
                            require stor20
                            emit ExecuteEvent((ext_call.return_data[0] * strikePrice) - (developerReserve * strikePrice), secretBids[address(msg.sender)].field_256, executedCount + 1 / stor20, msg.sender);
}



}
