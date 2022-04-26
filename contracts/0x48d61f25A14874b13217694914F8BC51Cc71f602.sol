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
address stor8;

function _fallback() payable {
    uint8(stor7.field_160) = 0
    require not msg.value
    require code.data[2656 len 32] >= block.timestamp
    require code.data[2688 len 32] >= code.data[2656 len 32]
    require msg.sender
    stor0 = stor8
    stor1 = code.data[2656 len 32]
    stor2 = code.data[2688 len 32]
    stor4 = 4200
    stor3 = msg.sender
    stor6 = 35714285714285714285
    address(stor7.field_0) = msg.sender
    stor8 = code.data[2636 len 20]
    stor0 = code.data[2636 len 20]
    return code.data[343 len 2281]
}



// =====================  Runtime code  =====================


const PRESALE_RATE = 4200

const HARD_CAP = 35714285714285714285

const EARLY_FOUNDERS_CAP = 192857142857142857142

const SALE_RATE = 2100

const EARLY_FOUNDERS_USD = 135000


address tokenAddress;
uint256 startTime;
uint256 endTime;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 cap;
uint8 stor7; offset 160
address owner;
address coinAddress;

function coin() {
    return coinAddress
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

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function startTime() {
    return startTime
}

function isFinalized() {
    return bool(stor7)
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function hasEnded() {
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    return weiRaised >= cap
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function finalize() {
    require owner == msg.sender
    require not stor7
    require ext_code.size(coinAddress)
    call coinAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args owner, 404999999999999999998200
    require ext_call.success
    require ext_code.size(coinAddress)
    call coinAddress.0xaced1661 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(coinAddress)
    call coinAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0])
    require ext_call.success
    stor7 = 1
}

function buyTokens(address arg1) payable {
    require not stor7
    require msg.value >= 5 * 10^17
    require arg1
    require msg.value + weiRaised >= weiRaised
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require msg.value + weiRaised <= cap
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
    require 700 * msg.value / 700 == msg.value
    require ext_code.size(coinAddress)
    call coinAddress.0x8ce187fd with:
         gas gas_remaining - 710 wei
        args (700 * msg.value / 10^18)
    require ext_call.success
}

function _fallback() payable {
    require not stor7
    require msg.value >= 5 * 10^17
    require msg.sender
    require msg.value + weiRaised >= weiRaised
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require msg.value + weiRaised <= cap
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
    require 700 * msg.value / 700 == msg.value
    require ext_code.size(coinAddress)
    call coinAddress.0x8ce187fd with:
         gas gas_remaining - 710 wei
        args (700 * msg.value / 10^18)
    require ext_call.success
}



}
