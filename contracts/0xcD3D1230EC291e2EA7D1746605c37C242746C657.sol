contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
uint256 stor6;
uint8 stor7; offset 160
address stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
address stor12;
address stor13;
address stor14;
address stor15;
address stor16;
address stor17;
address stor18;
address stor19;

function _fallback() payable {
    uint8(stor7.field_160) = 0
    stor8 = 100
    stor9 = 10^18
    stor10 = 10^18
    stor11 = 10
    require not msg.value
    require code.data[19355 len 32] >= block.timestamp
    require code.data[19387 len 32] >= code.data[19355 len 32]
    require stor11 > 0
    require code.data[19463 len 20]
    create contract with 0 wei
                    code: code.data[13391 len 5233], 1000000000 * 10^18, 18, this.address
    require create.new_address
    stor0 = address(create.new_address)
    stor1 = code.data[19355 len 32]
    stor2 = code.data[19387 len 32]
    stor4 = stor11
    stor3 = code.data[19463 len 20]
    require stor10 > 0
    stor6 = stor10
    address(stor7.field_0) = msg.sender
    require code.data[19495 len 20]
    require code.data[19527 len 20]
    require code.data[19559 len 20]
    require code.data[19591 len 20]
    require code.data[19623 len 20]
    require code.data[19655 len 20]
    stor12 = code.data[19495 len 20]
    stor13 = code.data[19527 len 20]
    stor14 = code.data[19559 len 20]
    stor15 = code.data[19591 len 20]
    stor16 = code.data[19623 len 20]
    stor19 = code.data[19655 len 20]
    require address(stor7.field_0) == msg.sender
    require code.data[19419 len 32] > 0
    require block.timestamp < stor1
    stor8 = code.data[19419 len 32]
    require code.data[19419 len 32]
    stor9 = 100000 * 10^18 / code.data[19419 len 32]
    require stor8
    stor10 = 300000000 * 10^18 / stor8
    require 10 * stor8 / 10 == stor8
    stor11 = 10 * stor8 / 100
    stor6 = stor10
    stor4 = 10 * stor8 / 100
    create contract with 0 wei
                    code: code.data[18624 len 731], stor0, stor13, stor1 + (17520 * 24 * 3600)
    require create.new_address
    stor17 = address(create.new_address)
    create contract with 0 wei
                    code: code.data[18624 len 731], stor0, stor15, stor1 + (8760 * 24 * 3600)
    stor18 = address(create.new_address)
    require ext_code.size(stor0)
    call stor0.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args stor12, 300000000 * 10^18
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args stor17, 300000000 * 10^18
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args stor14, 200000000 * 10^18
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args stor18, 100000000 * 10^18
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args stor16, 70000000 * 10^18
    require ext_call.success
    return code.data[2252 len 11139]
}



// =====================  Runtime code  =====================


const tokenDecimals = 18

const tokenCap = 1000000000 * 10^18

const sub_f8b34a62(?) = 1000

const PRICE_MULTIPLIER = 100

const SALE_CAP_USD = 3 * 10^6

const TOKENS_PER_USD = 10


address tokenAddress;
uint256 startTime;
uint256 endTime;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 cap;
uint8 stor7; offset 160
address owner;
uint256 etherPrice;
uint256 sub_40863f87;
uint256 sub_6c889f90;
uint256 mintRate;
address preSaleBfPlatformAddress;
address companyAddress;
address rewardPoolAddress;
address shareholdersAddress;
address tokenSaleCostsAddress;
address companyHolding2yAddress;
address shareholdersHolding1yAddress;
address operatorAddress;
mapping of uint8 stor20;
mapping of uint8 stor21;

function companyHolding2y() {
    return companyHolding2yAddress
}

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function cap() {
    return cap
}

function shareholders() {
    return shareholdersAddress
}

function isWhitelisted(address arg1) {
    return bool(stor20[address(arg1)])
}

function weiRaised() {
    return weiRaised
}

function sub_40863f87(?) {
    return sub_40863f87
}

function wallet() {
    return walletAddress
}

function operator() {
    return operatorAddress
}

function paused() {
    return bool(stor7)
}

function rewardPool() {
    return rewardPoolAddress
}

function company() {
    return companyAddress
}

function sub_6b11308c(?) {
    return bool(stor21[address(arg1)])
}

function sub_6c889f90(?) {
    return sub_6c889f90
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function etherPrice() {
    return etherPrice
}

function tokenSaleCosts() {
    return tokenSaleCostsAddress
}

function mintRate() {
    return mintRate
}

function preSaleBfPlatform() {
    return preSaleBfPlatformAddress
}

function shareholdersHolding1y() {
    return shareholdersHolding1yAddress
}

function token() {
    return tokenAddress
}

function unpause() {
    require owner == msg.sender
    require stor7
    stor7 = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not stor7
    stor7 = 1
    emit Pause()
}

function hasEnded() {
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    return weiRaised >= cap
}

function changeOperator(address arg1) {
    require owner == msg.sender
    require not stor7
    operatorAddress = arg1
    emit 0x67d6804f: arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_f205bf4d(?) {
    require operatorAddress == msg.sender
    require not stor7
    stor20[address(arg1)] = 0
    emit 0x23f82367: address(arg1), msg.sender
}

function addWhitelist(address arg1) {
    require operatorAddress == msg.sender
    require not stor7
    stor20[address(arg1)] = 1
    emit 0x21761c56: address(arg1), msg.sender
}

function transferTokenOwnership(address arg1) {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function updateEtherPrice(uint256 arg1) {
    require owner == msg.sender
    require arg1 > 0
    require block.timestamp < startTime
    etherPrice = arg1
    require arg1
    sub_40863f87 = 100000 * 10^18 / arg1
    require etherPrice
    sub_6c889f90 = 300000000 * 10^18 / etherPrice
    require 10 * etherPrice / 10 == etherPrice
    mintRate = 10 * etherPrice / 100
    cap = sub_6c889f90
    rate = 10 * etherPrice / 100
}

function buyTokens(address arg1) payable {
    require not stor21[address(arg1)]
    require stor20[address(msg.sender)]
    require stor20[address(arg1)]
    require not stor7
    require arg1
    require not stor7
    require msg.value + weiRaised >= weiRaised
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require msg.value + weiRaised <= cap
    require msg.value <= sub_40863f87
    if not msg.value:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), 0
        require ext_call.success
        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
    else:
        require rate * msg.value / msg.value == rate
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), rate * msg.value
        require ext_call.success
        emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    stor21[address(arg1)] = 1
}

function _fallback() payable {
    require not stor21[address(msg.sender)]
    require stor20[address(msg.sender)]
    require stor20[address(msg.sender)]
    require not stor7
    require msg.sender
    require not stor7
    require msg.value + weiRaised >= weiRaised
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require msg.value + weiRaised <= cap
    require msg.value <= sub_40863f87
    if not msg.value:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, 0
        require ext_call.success
        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
    else:
        require rate * msg.value / msg.value == rate
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, rate * msg.value
        require ext_call.success
        emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    stor21[address(msg.sender)] = 1
}



}
