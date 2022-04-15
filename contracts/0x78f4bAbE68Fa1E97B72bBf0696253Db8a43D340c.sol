contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
address stor4;
uint256 stor5;

function _fallback() {
    stor0 = msg.sender
    require code.data[3594 len 32] >= code.data[3562 len 32]
    require code.data[3626 len 32] > 0
    require code.data[3670 len 20]
    stor1 = code.data[3542 len 20]
    stor2 = code.data[3562 len 32]
    stor3 = code.data[3594 len 32]
    stor5 = code.data[3626 len 32]
    stor4 = code.data[3670 len 20]
    return code.data[387 len 3143]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 startBlock;
uint256 endBlock;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 tokensSold;

function endBlock() {
    return endBlock
}

function rate() {
    return rate
}

function weiRaised() {
    return weiRaised
}

function startBlock() {
    return startBlock
}

function tokensSold() {
    return tokensSold
}

function wallet() {
    return walletAddress
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function hasEnded() {
    return (block.number > endBlock)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function setNewTokenOwner(address arg1) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function tokenResend() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
}

function _fallback() payable {
    require msg.sender
    require block.number >= startBlock
    require block.number <= endBlock
    require msg.value
    require weiRaised + msg.value >= weiRaised
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require msg.value * rate <= ext_call.return_data[0]
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * rate
    require ext_call.success
    require tokensSold + (msg.value * rate) >= tokensSold
    tokensSold += msg.value * rate
    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function buyTokens(address arg1) payable {
    require arg1
    require block.number >= startBlock
    require block.number <= endBlock
    require msg.value
    require weiRaised + msg.value >= weiRaised
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require msg.value * rate <= ext_call.return_data[0]
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), msg.value * rate
    require ext_call.success
    require tokensSold + (msg.value * rate) >= tokensSold
    tokensSold += msg.value * rate
    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
