contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor16;
uint256 stor17;
uint256 stor18;

function _fallback() payable {
    stor16 = 4
    stor17 = 35000
    stor18 = 100000
    require not msg.value
    stor0 = msg.sender
    return code.data[117 len 5669]
}



// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
uint256 proceeds;
uint256 strikePrice;
uint256 strikePricePctX10;
uint256 secretBidCount;
uint256 bidderCount;
uint256 executedCount;
uint256 expiredCount;
uint256 saleDuration;
uint256 auctionStart;
uint256 auctionEnd;
uint256 saleEnd;
uint8 lockState;
mapping of struct secretBids;
uint256 stor16;
uint256 stor17;
uint256 stor18;

function auctionEnd() {
    return auctionEnd
}

function saleDuration() {
    return saleDuration
}

function lockState() {
    require lockState <= 1
    return lockState
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

function bidderCount() {
    return bidderCount
}

function owner() {
    return owner
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
    return bool(secretBids[arg1].field_0), bool(secretBids[arg1].field_8), secretBids[arg1].field_256, secretBids[arg1].field_512
}

function secretBidCount() {
    return secretBidCount
}

function expiredCount() {
    return expiredCount
}

function haraKiri() {
    require msg.sender == owner
    require lockState <= 1
    require not lockState
    selfdestruct(owner)
}

function _fallback() payable {
    proceeds += msg.value
    emit BizarreEvent(Array(len=15, data='bizarre payment'), msg.value, msg.sender);
}

function payUnderwriter() {
    if owner != msg.sender:
        require msg.sender == stor1
    proceeds = 0
    call stor1 with:
       value proceeds wei
         gas stor18 wei
    require ext_call.success
    return proceeds
}

function sub_a1d8d78a(?) {
    require msg.sender == owner
    require lockState <= 1
    require not lockState
    stor2 = arg1
    stor1 = arg2
    auctionStart = arg3
    require arg3 + arg4 >= arg3
    auctionEnd = arg3 + arg4
    saleDuration = arg5
}

function setStrikePrice(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    require block.timestamp > auctionEnd
    require not executedCount
    strikePrice = arg1
    strikePricePctX10 = arg2
    require block.timestamp + saleDuration >= block.timestamp
    auctionEnd = block.timestamp + saleDuration
}

function depositSecretBid(bytes32 arg1, bytes arg2) payable {
    require auctionStart <= block.timestamp
    require block.timestamp <= auctionEnd
    secretBids[address(msg.sender)].field_0 = 1
    secretBids[address(msg.sender)].field_512 = arg1
    secretBids[address(msg.sender)].field_256 = msg.value
    secretBidCount++
    require stor16
    emit SecretBidEvent(msg.value, arg1, Array(len=arg2.length, data=arg2[all]), secretBidCount / stor16, msg.sender);
}

function expireBid(address arg1) {
    require msg.sender == owner
    require block.timestamp > saleEnd
    if secretBids[address(arg1)].field_256 > 0:
        proceeds += secretBids[address(arg1)].field_257
        require secretBids[address(arg1)].field_256 >= secretBids[address(arg1)].field_257
        secretBids[address(arg1)].field_256 = 0
        call arg1 with:
           value secretBids[address(arg1)].field_256 - secretBids[address(arg1)].field_257 wei
             gas stor17 wei
        require ext_call.success
        expiredCount++
        require stor16
        emit ExpireEvent(2 * Mask(256, -1, secretBids[address(arg1)].field_257), secretBids[address(arg1)].field_256 - secretBids[address(arg1)].field_257, expiredCount / stor16, arg1);
}

function sub_4ff85855(?) {
    require block.timestamp > auctionEnd
    require strikePrice > 0
    require block.timestamp <= saleEnd
    signer = erecover(sha3(arg1, arg2, arg3), arg4 << 248, arg5, arg6) 
    require erecover.result
    require address(signer) == msg.sender
    require secretBids[address(msg.sender)].field_512 == sha3(arg1, arg2, arg3)
    if secretBids[address(msg.sender)].field_256 > 0:
        if arg2 < strikePrice:
            if secretBids[address(msg.sender)].field_256 <= 0:
                executedCount++
                require stor16
                emit ExecuteEvent(uint256 rg1, address rg2, uint256 rg3, uint256 rg4):
                                  0,
                                  executedCount / stor16,
                                  msg.sender,
            else:
                secretBids[address(msg.sender)].field_256 = 0
                call msg.sender with:
                   value secretBids[address(msg.sender)].field_256 wei
                     gas stor17 wei
                require ext_call.success
                executedCount++
                require stor16
                emit ExecuteEvent(0, secretBids[address(msg.sender)].field_256, executedCount / stor16, msg.sender);
        else:
            if arg2 > strikePrice:
                require ext_code.size(stor2)
                call stor2.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                if arg3 <= ext_call.return_data[0]:
                    if arg3:
                        require arg3
                        require arg3 * strikePrice / arg3 == strikePrice
                    if secretBids[address(msg.sender)].field_256 >= arg3 * strikePrice:
                        secretBids[address(msg.sender)].field_256 += -1 * arg3 * strikePrice
                        proceeds += arg3 * strikePrice
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, arg3
                        require ext_call.success
                        require ext_call.return_data[0]
                    if secretBids[address(msg.sender)].field_256 <= 0:
                        executedCount++
                        require stor16
                        emit ExecuteEvent(arg3 * strikePrice, 0, executedCount / stor16, msg.sender);
                    else:
                        secretBids[address(msg.sender)].field_256 = 0
                        call msg.sender with:
                           value secretBids[address(msg.sender)].field_256 wei
                             gas stor17 wei
                        require ext_call.success
                        executedCount++
                        require stor16
                        emit ExecuteEvent(arg3 * strikePrice, secretBids[address(msg.sender)].field_256, executedCount / stor16, msg.sender);
                else:
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0]
                        require ext_call.return_data[0] * strikePrice / ext_call.return_data[0] == strikePrice
                    if secretBids[address(msg.sender)].field_256 >= ext_call.return_data[0] * strikePrice:
                        secretBids[address(msg.sender)].field_256 += -1 * ext_call.return_data[0] * strikePrice
                        proceeds += ext_call.return_data[0] * strikePrice
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        require ext_call.return_data[0]
                    if secretBids[address(msg.sender)].field_256 <= 0:
                        executedCount++
                        require stor16
                        emit ExecuteEvent(ext_call.return_data[0] * strikePrice, 0, executedCount / stor16, msg.sender);
                    else:
                        secretBids[address(msg.sender)].field_256 = 0
                        call msg.sender with:
                           value secretBids[address(msg.sender)].field_256 wei
                             gas stor17 wei
                        require ext_call.success
                        executedCount++
                        require stor16
                        emit ExecuteEvent(ext_call.return_data[0] * strikePrice, secretBids[address(msg.sender)].field_256, executedCount / stor16, msg.sender);
            else:
                if strikePricePctX10:
                    require strikePricePctX10
                    require strikePricePctX10 * arg3 / strikePricePctX10 == arg3
                require ext_code.size(stor2)
                call stor2.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                if strikePricePctX10 * arg3 / 1000 <= ext_call.return_data[0]:
                    if strikePricePctX10 * arg3 / 1000:
                        require strikePricePctX10 * arg3 / 1000
                        require strikePricePctX10 * arg3 / 1000 * strikePrice / strikePricePctX10 * arg3 / 1000 == strikePrice
                    if secretBids[address(msg.sender)].field_256 >= strikePricePctX10 * arg3 / 1000 * strikePrice:
                        secretBids[address(msg.sender)].field_256 += -1 * strikePricePctX10 * arg3 / 1000 * strikePrice
                        proceeds += strikePricePctX10 * arg3 / 1000 * strikePrice
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, strikePricePctX10 * arg3 / 1000
                        require ext_call.success
                        require ext_call.return_data[0]
                    if secretBids[address(msg.sender)].field_256 <= 0:
                        executedCount++
                        require stor16
                        emit ExecuteEvent(strikePricePctX10 * arg3 / 1000 * strikePrice, 0, executedCount / stor16, msg.sender);
                    else:
                        secretBids[address(msg.sender)].field_256 = 0
                        call msg.sender with:
                           value secretBids[address(msg.sender)].field_256 wei
                             gas stor17 wei
                        require ext_call.success
                        executedCount++
                        require stor16
                        emit ExecuteEvent(strikePricePctX10 * arg3 / 1000 * strikePrice, secretBids[address(msg.sender)].field_256, executedCount / stor16, msg.sender);
                else:
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0]
                        require ext_call.return_data[0] * strikePrice / ext_call.return_data[0] == strikePrice
                    if secretBids[address(msg.sender)].field_256 >= ext_call.return_data[0] * strikePrice:
                        secretBids[address(msg.sender)].field_256 += -1 * ext_call.return_data[0] * strikePrice
                        proceeds += ext_call.return_data[0] * strikePrice
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        require ext_call.return_data[0]
                    if secretBids[address(msg.sender)].field_256 <= 0:
                        executedCount++
                        require stor16
                        emit ExecuteEvent(ext_call.return_data[0] * strikePrice, 0, executedCount / stor16, msg.sender);
                    else:
                        secretBids[address(msg.sender)].field_256 = 0
                        call msg.sender with:
                           value secretBids[address(msg.sender)].field_256 wei
                             gas stor17 wei
                        require ext_call.success
                        executedCount++
                        require stor16
                        emit ExecuteEvent(ext_call.return_data[0] * strikePrice, secretBids[address(msg.sender)].field_256, executedCount / stor16, msg.sender);
}



}
