contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
address stor2;
uint256 stor3;
address stor4;

function _fallback() {
    stor0 = msg.sender
    require code.data[3600 len 20]
    stor2 = code.data[3664 len 20]
    stor3 = block.timestamp + (60 * code.data[3684 len 32])
    stor1 = code.data[3620 len 32]
    stor4 = code.data[3600 len 20]
    return code.data[347 len 3241]
}



// =====================  Runtime code  =====================


address owner;
uint256 price;
address tokenAddress;
uint256 deadline;
address walletAddress;
uint256 weiRaised;
uint256 tokenSold;
mapping of uint256 balanceOf;

function deadline() {
    return deadline
}

function weiRaised() {
    return weiRaised
}

function tokenSold() {
    return tokenSold
}

function wallet() {
    return walletAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function price() {
    return price
}

function token() {
    return tokenAddress
}

function hasEnded() {
    return (block.timestamp > deadline)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
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
    require block.timestamp <= deadline
    require msg.value
    require price
    require weiRaised + msg.value >= weiRaised
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require msg.value / price <= ext_call.return_data[0]
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value / price
    require ext_call.success
    require tokenSold + (msg.value / price) >= tokenSold
    tokenSold += msg.value / price
    emit TokenPurchase(msg.value, msg.value / price, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function buyTokens(address arg1) payable {
    require arg1
    require block.timestamp <= deadline
    require msg.value
    require price
    require weiRaised + msg.value >= weiRaised
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require msg.value / price <= ext_call.return_data[0]
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), msg.value / price
    require ext_call.success
    require tokenSold + (msg.value / price) >= tokenSold
    tokenSold += msg.value / price
    emit TokenPurchase(msg.value, msg.value / price, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
