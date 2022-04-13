contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint8 stor15;
uint256 stor15; offset 8

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 23
    stor1.length.field_8 = 'openZen Project Pre ICO' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor9 = 0
    stor10 = 0
    stor11 = 0
    stor12 = 0
    uint8(stor15.field_0) = 0
    Mask(248, 0, stor15.field_8) = 0
    stor0 = msg.sender
    return code.data[421 len 5419]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
array of uint256 name;
address tokenAddress;
address beneficiaryAddress;
uint256 hardCap;
uint256 softCap;
uint256 collected;
uint256 price;
uint256 purchaseLimit;
uint256 tokensSold;
uint256 weiRaised;
uint256 investorCount;
uint256 weiRefunded;
uint256 startTime;
uint256 endTime;
uint8 softCapReached;
uint8 crowdsaleFinished; offset 8
uint256 stor15; offset 8
mapping of uint8 stor16;

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

function collected() {
    return collected
}

function owner() {
    return owner
}

function softCap() {
    return softCap
}

function price() {
    return price
}

function halted() {
    return bool(uint8(stor0.field_160))
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

function halt() {
    require msg.sender == owner
    Mask(96, 0, stor0.field_160) = 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function unhalt() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
}

function sub_ed856029(?) {
    hardCap = 5000000 * 10^18
    softCap = 300000 * 10^18
    price = 1000 * 10^18
    purchaseLimit = 10000000 * 10^18
    tokenAddress = arg1
    beneficiaryAddress = arg2
    startTime = arg3
    endTime = arg3 + (3600 * arg4)
}

function withdraw() {
    require msg.sender == owner
    require softCapReached
    call beneficiaryAddress with:
       value collected wei
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
    stor15 = 1
}

function refund() {
    require block.timestamp >= endTime
    require not softCapReached
    require not stor16[address(msg.sender)]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    require price
    if ext_call.return_data[0] / price <= eth.balance(this.address):
        call msg.sender with:
           value ext_call.return_data[0] / price wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        stor16[address(msg.sender)] = 1
        require weiRefunded + (ext_call.return_data[0] / price) >= weiRefunded
        weiRefunded += ext_call.return_data[0] / price
        emit Refunded((ext_call.return_data[0] / price), msg.sender);
    else:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        stor16[address(msg.sender)] = 1
        require weiRefunded + eth.balance(this.address) >= weiRefunded
        weiRefunded += eth.balance(this.address)
        emit Refunded(eth.balance(this.address), msg.sender);
}

function _fallback() payable {
    require not uint8(stor0.field_160)
    require msg.value >= 10^16
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require not crowdsaleFinished
    require collected + msg.value >= collected
    require collected + msg.value <= hardCap
    if not softCapReached:
        if collected < softCap:
            require collected + msg.value >= collected
            if collected + msg.value >= softCap:
                softCapReached = 1
                emit SoftCapReached(softCap);
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] + (msg.value * price) <= purchaseLimit
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        investorCount++
    require collected + msg.value >= collected
    collected += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * price
    require ext_call.success
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require tokensSold + (msg.value * price) >= tokensSold
    tokensSold += msg.value * price
    emit NewContribution(msg.value * price, msg.value, msg.sender);
    if collected == hardCap:
        emit GoalReached(hardCap);
}



}
