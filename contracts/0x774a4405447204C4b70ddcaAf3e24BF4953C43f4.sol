contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
address stor2;
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint16 stor14;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 28
    stor1.length.field_8 = 'Votes Platform Token PreSale' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor8 = 0
    stor9 = 0
    stor10 = 0
    stor11 = 0
    stor14 = 0
    require not msg.value
    stor0 = msg.sender
    require code.data[3995 len 32]
    stor4 = 10^18 * code.data[3835 len 32] / code.data[3995 len 32]
    stor5 = 10^18 * code.data[3867 len 32] / code.data[3995 len 32]
    require code.data[3963 len 32]
    stor6 = stor4 / code.data[3963 len 32]
    require code.data[3995 len 32]
    require stor4 / code.data[3963 len 32]
    stor7 = 10^18 * code.data[4027 len 32] / code.data[3995 len 32] / stor4 / code.data[3963 len 32]
    stor2 = code.data[3911 len 20]
    stor3 = code.data[3943 len 20]
    stor12 = code.data[4059 len 32]
    stor13 = code.data[4059 len 32] + (3600 * code.data[4091 len 32])
    return code.data[587 len 3248]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
address tokenAddress;
address beneficiaryAddress;
uint256 hardCap;
uint256 softCap;
uint256 tokenPrice;
uint256 purchaseLimit;
uint256 tokensSold;
uint256 weiRaised;
uint256 investorCount;
uint256 weiRefunded;
uint256 startTime;
uint256 endTime;
uint8 softCapReached;
uint8 crowdsaleFinished; offset 8
mapping of uint256 stor15;

function name() {
    return name[0 len name.length]
}

function purchaseLimit() {
    return purchaseLimit
}

function softCapReached() {
    return bool(softCapReached)
}

function endTime() {
    return endTime
}

function beneficiary() {
    return beneficiaryAddress
}

function weiRaised() {
    return weiRaised
}

function tokensSold() {
    return tokensSold
}

function weiRefunded() {
    return weiRefunded
}

function startTime() {
    return startTime
}

function tokenPrice() {
    return tokenPrice
}

function owner() {
    return owner
}

function softCap() {
    return softCap
}

function investorCount() {
    return investorCount
}

function crowdsaleFinished() {
    return bool(crowdsaleFinished)
}

function hardCap() {
    return hardCap
}

function token() {
    return tokenAddress
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function withdrawTokens() {
    require owner == msg.sender
    require block.timestamp >= endTime
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args beneficiaryAddress, ext_call.return_data[0]
    require ext_call.success
}

function withdraw() {
    require owner == msg.sender
    require softCapReached
    call beneficiaryAddress with:
       value weiRaised wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args beneficiaryAddress, ext_call.return_data[0]
    require ext_call.success
    crowdsaleFinished = 1
}

function refund() {
    require block.timestamp >= endTime
    require not softCapReached
    require stor15[address(msg.sender)] > 0
    call msg.sender with:
       value stor15[address(msg.sender)] * tokenPrice wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor15[address(msg.sender)] = 0
    require (stor15[address(msg.sender)] * tokenPrice) + weiRefunded >= weiRefunded
    weiRefunded += stor15[address(msg.sender)] * tokenPrice
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa521ebfa with:
         gas gas_remaining - 710 wei
        args msg.sender, stor15[address(msg.sender)]
    require ext_call.success
    emit Refunded((stor15[address(msg.sender)] * tokenPrice), msg.sender);
}

function _fallback() payable {
    require tokenPrice
    require msg.value / tokenPrice > 0
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require not crowdsaleFinished
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= hardCap
    if not softCapReached:
        if weiRaised < softCap:
            require msg.value + weiRaised >= weiRaised
            if msg.value + weiRaised >= softCap:
                softCapReached = 1
                emit SoftCapReached(softCap);
    require tokenPrice
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] + (msg.value / tokenPrice) <= purchaseLimit
    if not stor15[address(msg.sender)]:
        investorCount++
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value / tokenPrice
    require ext_call.success
    stor15[address(msg.sender)] += msg.value / tokenPrice
    require (msg.value / tokenPrice) + tokensSold >= tokensSold
    tokensSold += msg.value / tokenPrice
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    emit NewContribution(msg.value / tokenPrice, msg.value, msg.sender);
    if weiRaised == hardCap:
        emit GoalReached(hardCap);
}



}
