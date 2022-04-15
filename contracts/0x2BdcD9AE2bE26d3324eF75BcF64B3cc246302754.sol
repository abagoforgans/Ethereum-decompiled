contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
address stor2;
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint8 stor15;
uint256 stor15; offset 8

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 20
    stor1.length.field_8 = 'Etalon Token Presale' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor8 = 0
    stor9 = 0
    stor10 = 0
    stor11 = 0
    uint8(stor15.field_0) = 0
    Mask(248, 0, stor15.field_8) = 0
    require not msg.value
    stor0 = msg.sender
    stor4 = 0
    stor5 = 0
    stor7 = 0
    stor2 = code.data[6959 len 20]
    stor3 = code.data[6991 len 20]
    stor12 = 0
    stor13 = 0
    return code.data[643 len 6304]
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
uint256 tokensSold;
uint256 weiRaised;
uint256 investorCount;
uint256 weiRefunded;
uint256 startTime;
uint256 endTime;
uint256 duration;
uint8 stor15;
uint8 stor15; offset 8
uint256 stor15; offset 8
mapping of uint8 stor16;

function name() {
    return name[0 len name.length]
}

function duration() {
    return duration
}

function softCapReached() {
    return bool(uint8(stor15.field_0))
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
    return bool(uint8(stor15.field_8))
}

function hardCap() {
    return hardCap
}

function token() {
    return tokenAddress
}

function burn() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    selfdestruct(owner)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function halt() {
    require msg.sender == owner
    Mask(96, 0, stor0.field_160) = 1
    emit Halted(block.timestamp);
}

function unhalt() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unhalted(block.timestamp);
}

function finish() {
    require msg.sender == owner
    require block.timestamp >= endTime
    Mask(248, 0, stor15.field_8) = 1
    emit CrowdsaleFinished(block.timestamp);
}

function extend(uint256 arg1) {
    require msg.sender == owner
    endTime += 3600 * arg1
    duration += arg1
    require startTime + (4500 * 3600) >= endTime
    emit CrowdsaleExtended(endTime);
}

function start(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require msg.sender == owner
    require startTime <= 0
    hardCap = 10^18 * arg1
    softCap = 10^18 * arg2
    price = arg4
    startTime = block.timestamp
    endTime = startTime + (3600 * arg3)
    duration = arg3
    emit CrowdsaleStarted(block.timestamp, softCap, hardCap, price);
}

function withdraw() {
    require msg.sender == owner
    require uint8(stor15.field_0)
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
    Mask(248, 0, stor15.field_8) = 1
}

function refund() {
    require block.timestamp >= endTime
    require not uint8(stor0.field_160)
    require uint8(stor15.field_8)
    require not uint8(stor15.field_0)
    require not stor16[address(msg.sender)]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    require ext_call.return_data[0]
    require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
    require price
    require 10^18 * ext_call.return_data[0] == (price * 10^18 * ext_call.return_data[0] / price) + (10^18 * ext_call.return_data[0] % price)
    if 10^18 * ext_call.return_data[0] / price <= eth.balance(this.address):
        call msg.sender with:
           value 10^18 * ext_call.return_data[0] / price wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        stor16[address(msg.sender)] = 1
        require weiRefunded + (10^18 * ext_call.return_data[0] / price) >= weiRefunded
        weiRefunded += 10^18 * ext_call.return_data[0] / price
        emit Refunded((10^18 * ext_call.return_data[0] / price), msg.sender);
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
    require price
    require 10^18 == (price * 10^18 / price) + (10^18 % price)
    require msg.value >= 10^18 / price
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require not uint8(stor0.field_160)
    require not uint8(stor15.field_8)
    require collected + msg.value >= collected
    require collected + msg.value <= hardCap
    if not uint8(stor15.field_0):
        if collected < softCap:
            require collected + msg.value >= collected
            if collected + msg.value >= softCap:
                uint8(stor15.field_0) = 1
                emit SoftCapReached(softCap);
    if msg.value:
        require msg.value
        require msg.value * price / msg.value == price
    require msg.value * price == (10^18 * msg.value * price / 10^18) + (msg.value * price % 10^18)
    require msg.value * price / 10^18
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
        args msg.sender, msg.value * price / 10^18
    require ext_call.success
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require tokensSold + (msg.value * price / 10^18) >= tokensSold
    tokensSold += msg.value * price / 10^18
    emit NewContribution(msg.value * price / 10^18, msg.value, msg.sender);
    if collected == hardCap:
        emit GoalReached(hardCap);
}



}
