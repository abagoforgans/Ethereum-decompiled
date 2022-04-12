contract main {


// =======================  Init code  ======================


address stor0;
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
uint256 stor14;
uint16 stor15;

function _fallback() payable {
    stor9 = 0
    stor10 = 0
    stor11 = 0
    stor12 = 0
    stor15 = 0
    require not msg.value
    stor0 = msg.sender
    require code.data[3953 len 32]
    stor4 = 10^18 * code.data[3793 len 32] / code.data[3953 len 32]
    stor5 = 10^18 * code.data[3825 len 32] / code.data[3953 len 32]
    require stor4
    stor7 = 10^18 * code.data[3921 len 32] / stor4
    require code.data[3953 len 32]
    stor8 = 10^18 * code.data[3985 len 32] / code.data[3953 len 32] * 10^18 * code.data[3921 len 32] / stor4
    stor2 = code.data[3869 len 20]
    stor3 = code.data[3901 len 20]
    stor13 = code.data[4017 len 32]
    stor14 = code.data[4017 len 32] + (3600 * code.data[4049 len 32])
    return code.data[349 len 3444]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
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
    return bool(stor0)
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
    require owner == msg.sender
    stor0 = 1
}

function unhalt() {
    require owner == msg.sender
    require stor0
    stor0 = 0
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function withdraw() {
    require owner == msg.sender
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
    crowdsaleFinished = 1
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
        require (ext_call.return_data[0] / price) + weiRefunded >= weiRefunded
        weiRefunded += ext_call.return_data[0] / price
        emit Refunded((ext_call.return_data[0] / price), msg.sender);
    else:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        stor16[address(msg.sender)] = 1
        require eth.balance(this.address) + weiRefunded >= weiRefunded
        weiRefunded += eth.balance(this.address)
        emit Refunded(eth.balance(this.address), msg.sender);
}

function _fallback() payable {
    require not stor0
    require msg.value >= 10^16
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require not crowdsaleFinished
    require msg.value + collected >= collected
    require msg.value + collected <= hardCap
    if not softCapReached:
        if collected < softCap:
            require msg.value + collected >= collected
            if msg.value + collected >= softCap:
                softCapReached = 1
                emit SoftCapReached(softCap);
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] + (price * msg.value) <= purchaseLimit
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        investorCount++
    require msg.value + collected >= collected
    collected += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, price * msg.value
    require ext_call.success
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require (price * msg.value) + tokensSold >= tokensSold
    tokensSold += price * msg.value
    emit NewContribution(price * msg.value, msg.value, msg.sender);
    if collected == hardCap:
        emit GoalReached(hardCap);
}



}
