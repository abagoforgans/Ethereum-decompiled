contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
address stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;

function _fallback() {
    require code.data[9168 len 32] >= block.number
    require code.data[9200 len 32] >= code.data[9168 len 32]
    require code.data[9232 len 32] > 0
    require code.data[9276 len 20]
    create contract with 0 wei
                    code: code.data[6299 len 2869]
    require create.new_address
    stor0 = address(create.new_address)
    stor1 = code.data[9168 len 32]
    stor2 = code.data[9200 len 32]
    stor4 = code.data[9232 len 32]
    stor3 = code.data[9276 len 20]
    stor6 = msg.sender
    stor7 = 5000000 * 10^18
    stor8 = 8000000 * 10^18
    stor9 = 11000000 * 10^18
    stor10 = 10500000 * 10^18
    stor11 = 500000 * 10^18
    return code.data[388 len 5911]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint256 startBlock;
uint256 endBlock;
address walletAddress;
uint256 rate;
uint256 weiRaised;
address owner;
uint256 icoSupply;
uint256 reserveSupply;
uint256 paymentSupply;
uint256 coreSupply;
uint256 reveralSupply;
uint256 usedIcoSupply;
uint256 usedReserveSupply;
uint256 usedPaymentSupply;
uint256 usedCoreSupply;
uint256 usedReveralSupply;
address stor17;

function getCoreSupply() {
    return coreSupply
}

function reserveSupply() {
    return reserveSupply
}

function endBlock() {
    return endBlock
}

function coreSupply() {
    return coreSupply
}

function rate() {
    return rate
}

function usedReveralSupply() {
    return usedReveralSupply
}

function weiRaised() {
    return weiRaised
}

function startBlock() {
    return startBlock
}

function icoSupply() {
    return icoSupply
}

function wallet() {
    return walletAddress
}

function usedPaymentSupply() {
    return usedPaymentSupply
}

function getPaymentSupply() {
    return paymentSupply
}

function paymentSupply() {
    return paymentSupply
}

function getReserveSupply() {
    return reserveSupply
}

function owner() {
    return owner
}

function reveralSupply() {
    return reveralSupply
}

function getIcoSupply() {
    return icoSupply
}

function getUsedCoreSupply() {
    return usedCoreSupply
}

function getUsedPaymentSupply() {
    return usedPaymentSupply
}

function getReveralSupply() {
    return reveralSupply
}

function getUsedReserveSupply() {
    return usedReserveSupply
}

function usedReserveSupply() {
    return usedReserveSupply
}

function usedCoreSupply() {
    return usedCoreSupply
}

function getUsedReveralSupply() {
    return usedReveralSupply
}

function token() {
    return tokenAddress
}

function usedIcoSupply() {
    return usedIcoSupply
}

function hasEnded() {
    return (block.number > endBlock)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function claimCoreTokens(address arg1, uint256 arg2) payable {
    require owner == msg.sender
    require arg2 <= coreSupply - usedCoreSupply
    require ext_code.size(stor17)
    call stor17.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    coreSupply += arg2
}

function claimReveralTokens(address arg1, uint256 arg2) payable {
    require owner == msg.sender
    require arg2 <= reveralSupply - usedReveralSupply
    require ext_code.size(stor17)
    call stor17.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    reveralSupply += arg2
}

function claimPaymentTokens(address arg1, uint256 arg2) payable {
    require owner == msg.sender
    require arg2 <= paymentSupply - usedPaymentSupply
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    paymentSupply += arg2
}

function claimReservedTokens(address arg1, uint256 arg2) payable {
    require owner == msg.sender
    require arg2 <= reserveSupply - usedReserveSupply
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    reserveSupply += arg2
}

function _fallback() payable {
    require msg.sender
    require block.number >= startBlock
    require block.number <= endBlock
    require msg.value
    require msg.value
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
}

function buyTokens(address arg1) payable {
    require arg1
    require block.number >= startBlock
    require block.number <= endBlock
    require msg.value
    require msg.value
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
}



}
