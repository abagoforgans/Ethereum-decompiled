contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor9;
uint256 stor11;

function _fallback() payable {
    stor5 = 0
    stor6 = 0
    stor7 = 0
    stor11 = 100
    require not msg.value
    stor0 = msg.sender
    require code.data[3692 len 20]
    require code.data[3712 len 32] >= block.timestamp
    require code.data[3744 len 32] > 0
    stor2 = code.data[3660 len 20]
    stor3 = code.data[3692 len 20]
    stor4 = code.data[3712 len 32]
    require ext_code.size(code.data[3660 len 20])
    call code.data[3660 len 20].0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor9 = 10^ext_call.return_data[0] * code.data[3744 len 32]
    return code.data[345 len 3303]
}



// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 160
address newOwner;
address tokenAddress;
address multisigWalletAddress;
uint256 startsAt;
uint256 tokensSold;
uint256 weiRaised;
uint256 investorCount;
uint8 finalized;
uint256 CAP;
uint256 exchangeRate;
uint256 PRICE;
mapping of uint256 investedAmountOf;
mapping of uint256 tokenAmountOf;

function investedAmountOf(address arg1) {
    return investedAmountOf[arg1]
}

function exchangeRate() {
    return exchangeRate
}

function weiRaised() {
    return weiRaised
}

function tokensSold() {
    return tokensSold
}

function PRICE() {
    return PRICE
}

function owner() {
    return owner
}

function multisigWallet() {
    return multisigWalletAddress
}

function tokenAmountOf(address arg1) {
    return tokenAmountOf[arg1]
}

function startsAt() {
    return startsAt
}

function finalized() {
    return bool(finalized)
}

function halted() {
    return bool(stor1)
}

function newOwner() {
    return newOwner
}

function investorCount() {
    return investorCount
}

function CAP() {
    return CAP
}

function token() {
    return tokenAddress
}

function kill() {
    require owner == msg.sender
    selfdestruct(owner)
}

function halt() {
    require owner == msg.sender
    stor1 = 1
}

function unhalt() {
    require owner == msg.sender
    require stor1
    stor1 = 0
}

function isCrowdsaleFull() {
    if tokensSold < CAP:
        return 0
    return 1
}

function setToken(address arg1) {
    require owner == msg.sender
    require arg1
    tokenAddress = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    newOwner = arg1
}

function setPrice(uint256 arg1) {
    require owner == msg.sender
    PRICE = arg1
    emit priceChanged(PRICE, arg1);
}

function setMultisig(address arg1) {
    require owner == msg.sender
    require arg1
    multisigWalletAddress = arg1
}

function acceptOwnership() {
    if newOwner == msg.sender:
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner
}

function setExchangeRate(uint256 arg1) {
    require owner == msg.sender
    exchangeRate = arg1
    emit ExchangeRateChanged(exchangeRate, arg1);
}

function isBreakingCap(uint256 arg1, uint256 arg2) {
    require arg2 + arg1 >= arg1
    if arg2 + arg1 > CAP:
        return 1
    else:
        return 0
}

function getState() {
    if finalized:
        return 5
    if not tokenAddress:
        return 1
    if not multisigWalletAddress:
        return 1
    if block.timestamp < startsAt:
        return 1
    if tokensSold < CAP:
        return 2
    if tokensSold < CAP:
        return 4
    return 3
}

function finalize() {
    require not finalized
    require tokenAddress
    require multisigWalletAddress
    require block.timestamp >= startsAt
    require tokensSold >= CAP
    require tokensSold >= CAP
    require owner == msg.sender
    require not stor1
    require not finalized
    require ext_code.size(tokenAddress)
    call tokenAddress.0x5f412d4f with:
         gas gas_remaining - 710 wei
    require ext_call.success
    finalized = 1
}

function _fallback() payable {
    require not stor1
    require msg.value > 0
    require not finalized
    require tokenAddress
    require multisigWalletAddress
    require block.timestamp >= startsAt
    require tokensSold < CAP
    require ext_code.size(tokenAddress)
    call tokenAddress.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if msg.value:
        require msg.value
        require exchangeRate * msg.value / msg.value == exchangeRate
    require exchangeRate * msg.value / 10^18 >= PRICE
    require PRICE
    if exchangeRate * msg.value / 10^18:
        require exchangeRate * msg.value / 10^18
        require 10^ext_call.return_data[0] / PRICE * exchangeRate * msg.value / 10^18 / exchangeRate * msg.value / 10^18 == 10^ext_call.return_data[0] / PRICE
    require 10^ext_call.return_data[0] / PRICE * exchangeRate * msg.value / 10^18 > 0
    require tokensSold + (10^ext_call.return_data[0] / PRICE * exchangeRate * msg.value / 10^18) >= 10^ext_call.return_data[0] / PRICE * exchangeRate * msg.value / 10^18
    require tokensSold + (10^ext_call.return_data[0] / PRICE * exchangeRate * msg.value / 10^18) <= CAP
    if not investedAmountOf[address(msg.sender)]:
        investorCount++
    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
    investedAmountOf[address(msg.sender)] += msg.value
    require (10^ext_call.return_data[0] / PRICE * exchangeRate * msg.value / 10^18) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
    tokenAmountOf[address(msg.sender)] += 10^ext_call.return_data[0] / PRICE * exchangeRate * msg.value / 10^18
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require (10^ext_call.return_data[0] / PRICE * exchangeRate * msg.value / 10^18) + tokensSold >= tokensSold
    tokensSold += 10^ext_call.return_data[0] / PRICE * exchangeRate * msg.value / 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, 10^ext_call.return_data[0] / PRICE * exchangeRate * msg.value / 10^18
    require ext_call.success
    call multisigWalletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    emit Invested(msg.sender, msg.value, 10^ext_call.return_data[0] / PRICE * exchangeRate * msg.value / 10^18);
}



}
