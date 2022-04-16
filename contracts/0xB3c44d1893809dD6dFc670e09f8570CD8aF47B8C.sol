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
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint8 stor16;
uint256 stor16; offset 8

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 23
    stor1.length.field_8 = 'Graphgrailai Token Sale' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor12 = 0
    stor13 = 0
    uint8(stor16.field_0) = 0
    Mask(248, 0, stor16.field_8) = 0
    require not msg.value
    stor0 = msg.sender
    stor11 = code.data[7042 len 32]
    stor7 = code.data[6882 len 32]
    stor8 = code.data[6914 len 32]
    stor9 = code.data[6946 len 32]
    require stor11
    stor4 = 10^18 * stor7 / stor11
    stor5 = 10^18 * stor8 / stor11
    stor6 = 10^18 * stor9 / stor11
    stor2 = code.data[6990 len 20]
    stor3 = code.data[7022 len 20]
    stor14 = code.data[7074 len 32]
    stor15 = code.data[7074 len 32] + (3600 * code.data[7106 len 32])
    return code.data[834 len 6048]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
array of uint256 name;
address tokenAddress;
address beneficiaryAddress;
uint256 hardCapLow;
uint256 hardCapHigh;
uint256 softCap;
uint256 hardCapLowUsd;
uint256 hardCapHighUsd;
uint256 softCapUsd;
uint256 collected;
uint256 priceETH;
uint256 investorCount;
uint256 weiRefunded;
uint256 startTime;
uint256 endTime;
uint8 stor16;
uint8 stor16; offset 8
uint256 stor16; offset 8
mapping of uint8 stor17;
mapping of uint256 saleBalanceOf;
mapping of uint8 stor19;

function hardCapHighUsd() {
    return hardCapHighUsd
}

function name() {
    return name[0 len name.length]
}

function softCapReached() {
    return bool(uint8(stor16.field_0))
}

function endTime() {
    return endTime
}

function beneficiary() {
    return beneficiaryAddress
}

function hardCapLow() {
    return hardCapLow
}

function weiRefunded() {
    return weiRefunded
}

function softCapUsd() {
    return softCapUsd
}

function hardCapLowUsd() {
    return hardCapLowUsd
}

function startTime() {
    return startTime
}

function saleBalanceOf(address arg1) {
    return saleBalanceOf[address(arg1)]
}

function collected() {
    return collected
}

function owner() {
    return owner
}

function softCap() {
    return softCap
}

function hardCapHigh() {
    return hardCapHigh
}

function halted() {
    return bool(uint8(stor0.field_160))
}

function claimedOf(address arg1) {
    return bool(stor19[address(arg1)])
}

function priceETH() {
    return priceETH
}

function investorCount() {
    return investorCount
}

function crowdsaleFinished() {
    return bool(uint8(stor16.field_8))
}

function token() {
    return tokenAddress
}

function halt() {
    require msg.sender == owner
    Mask(96, 0, stor0.field_160) = 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function unhalt() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
}

function withdraw() {
    require msg.sender == owner
    require uint8(stor16.field_0)
    call beneficiaryAddress with:
       value collected wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    Mask(248, 0, stor16.field_8) = 1
}

function setEthPrice(uint256 arg1) {
    require block.timestamp < startTime
    require msg.sender == owner
    priceETH = arg1
    require priceETH
    hardCapLow = 10^18 * hardCapLowUsd / priceETH
    hardCapHigh = 10^18 * hardCapHighUsd / priceETH
    softCap = 10^18 * softCapUsd / priceETH
}

function refund() {
    require block.timestamp > endTime
    require not uint8(stor16.field_0)
    require not stor17[address(msg.sender)]
    require saleBalanceOf[address(msg.sender)]
    call msg.sender with:
       value saleBalanceOf[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor17[address(msg.sender)] = 1
    require weiRefunded + saleBalanceOf[address(msg.sender)] >= weiRefunded
    weiRefunded += saleBalanceOf[address(msg.sender)]
    emit Refunded(saleBalanceOf[address(msg.sender)], msg.sender);
}

function returnTokens() {
    require msg.sender == owner
    require uint8(stor16.field_8)
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if collected >= hardCapLow:
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args beneficiaryAddress, ext_call.return_data[0]
    else:
        require hardCapLow
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args beneficiaryAddress, (100 * 10^18 * hardCapLow) - (100 * 10^18 * collected) / hardCapLow
    require ext_call.success
    require ext_call.return_data[0]
}

function claim() {
    require uint8(stor16.field_8)
    require not stor19[address(msg.sender)]
    require hardCapLow
    if collected <= hardCapLow:
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, saleBalanceOf[address(msg.sender)] * 100 * 10^18 / hardCapLow
        require ext_call.success
        require ext_call.return_data[0]
        stor19[address(msg.sender)] = 1
        emit LogClaim(saleBalanceOf[address(msg.sender)] * 100 * 10^18 / hardCapLow, 100 * 10^18 / hardCapLow, msg.sender);
    else:
        require collected
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, saleBalanceOf[address(msg.sender)] * 100 * 10^18 / collected
        require ext_call.success
        require ext_call.return_data[0]
        stor19[address(msg.sender)] = 1
        emit LogClaim(saleBalanceOf[address(msg.sender)] * 100 * 10^18 / collected, 100 * 10^18 / collected, msg.sender);
}

function _fallback() payable {
    require not uint8(stor0.field_160)
    if msg.value > 10^16:
        require block.timestamp > startTime
        require block.timestamp < endTime
        require not uint8(stor16.field_8)
        require collected + msg.value >= collected
        require collected + msg.value <= hardCapHigh
        if not uint8(stor16.field_0):
            if collected < softCap:
                require collected + msg.value >= collected
                if collected + msg.value >= softCap:
                    uint8(stor16.field_0) = 1
                    emit SoftCapReached(softCap);
        if not saleBalanceOf[address(msg.sender)]:
            investorCount++
        require collected + msg.value >= collected
        collected += msg.value
        require saleBalanceOf[address(msg.sender)] + msg.value >= saleBalanceOf[address(msg.sender)]
        saleBalanceOf[address(msg.sender)] += msg.value
        emit NewContribution(msg.value, msg.sender);
        if collected == hardCapHigh:
            emit GoalReached(hardCapHigh);
    else:
        require not msg.value
        if msg.value > 10^16:
            require block.timestamp > startTime
            require block.timestamp < endTime
            require not uint8(stor16.field_8)
            require collected + msg.value >= collected
            require collected + msg.value <= hardCapHigh
            if not uint8(stor16.field_0):
                if collected < softCap:
                    require collected + msg.value >= collected
                    if collected + msg.value >= softCap:
                        uint8(stor16.field_0) = 1
                        emit SoftCapReached(softCap);
            if not saleBalanceOf[address(msg.sender)]:
                investorCount++
            require collected + msg.value >= collected
            collected += msg.value
            require saleBalanceOf[address(msg.sender)] + msg.value >= saleBalanceOf[address(msg.sender)]
            saleBalanceOf[address(msg.sender)] += msg.value
            emit NewContribution(msg.value, msg.sender);
            if collected == hardCapHigh:
                emit GoalReached(hardCapHigh);
}



}
