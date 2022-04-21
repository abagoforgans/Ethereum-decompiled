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
    require code.data[2096 len 32] >= block.timestamp
    require code.data[2128 len 32] >= code.data[2096 len 32]
    require code.data[2160 len 32] > 0
    require code.data[2204 len 20]
    stor1 = code.data[2076 len 20]
    stor2 = code.data[2096 len 32]
    stor3 = code.data[2128 len 32]
    stor5 = code.data[2160 len 32]
    stor4 = code.data[2204 len 20]
    return code.data[240 len 1824]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 startTime;
uint256 endTime;
address walletAddress;
uint256 rate;
uint256 stor6;
uint256 tokensSold;

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function tokensSold() {
    return tokensSold
}

function wallet() {
    return walletAddress
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function hasEnded() {
    return (block.timestamp > endTime)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function setNewTokenOwner(address arg1) {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function tokenResend() {
    require owner == msg.sender
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
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require msg.value + stor6 >= stor6
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require rate * msg.value <= ext_call.return_data[0]
    stor6 += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, rate * msg.value
    require ext_call.success
    require (rate * msg.value) + tokensSold >= tokensSold
    tokensSold += rate * msg.value
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function buyTokens(address arg1) payable {
    require arg1
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require msg.value + stor6 >= stor6
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require rate * msg.value <= ext_call.return_data[0]
    stor6 += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), rate * msg.value
    require ext_call.success
    require (rate * msg.value) + tokensSold >= tokensSold
    tokensSold += rate * msg.value
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
