contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint8 stor6;

function _fallback() payable {
    stor6 = 0
    require not msg.value
    stor0 = code.data[3623 len 20]
    stor1 = code.data[3655 len 20]
    stor2 = code.data[3687 len 20]
    stor3 = code.data[3707 len 32]
    stor4 = code.data[3739 len 32]
    stor5 = code.data[3771 len 32]
    return code.data[351 len 3260]
}



// =====================  Runtime code  =====================


address owner;
address walletAddress;
address tokenRewardAddress;
uint256 price;
uint256 startBlock;
uint256 freezeBlock;
uint8 stor6;
uint256 stor6;

function freezeBlock() {
    return freezeBlock
}

function startBlock() {
    return startBlock
}

function wallet() {
    return walletAddress
}

function tokenReward() {
    return tokenRewardAddress
}

function owner() {
    return owner
}

function price() {
    return price
}

function emergencyFlag() {
    return bool(uint8(stor6))
}

function changeOwner(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function emergencyToggle() {
    require msg.sender == owner
    uint256(stor6) = not bool(uint8(stor6)) or Mask(248, 8, uint256(stor6))
}

function changePrice(uint256 arg1) {
    require msg.sender == owner
    require block.number < freezeBlock
    require arg1
    price = arg1
}

function changeWallet(address arg1) {
    require msg.sender == owner
    require block.number < freezeBlock
    require arg1
    walletAddress = arg1
}

function changeStartBlock(uint256 arg1) {
    require msg.sender == owner
    require block.number < freezeBlock
    require arg1
    freezeBlock = arg1 - startBlock + freezeBlock
    startBlock = arg1
}

function extractTokens() {
    require msg.sender == owner
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0]
    require ext_call.success
}

function _fallback() payable {
    require block.number >= startBlock
    require not uint8(stor6)
    require price
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require msg.value - (msg.value % price) / price <= ext_call.return_data[0]
    if msg.value % price <= 0:
        call walletAddress with:
           value msg.value - (msg.value % price) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        call msg.sender with:
           value msg.value % price wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call walletAddress with:
           value msg.value - (msg.value % price) wei
             gas 2300 * is_zero(value) wei
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value - (msg.value % price) / price
    require ext_call.success
    emit PurchasedTokens((msg.value - (msg.value % price) / price), msg.sender);
}

function purchaseTokens() payable {
    require block.number >= startBlock
    require not uint8(stor6)
    require price
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require msg.value - (msg.value % price) / price <= ext_call.return_data[0]
    if msg.value % price <= 0:
        call walletAddress with:
           value msg.value - (msg.value % price) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        call msg.sender with:
           value msg.value % price wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call walletAddress with:
           value msg.value - (msg.value % price) wei
             gas 2300 * is_zero(value) wei
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value - (msg.value % price) / price
    require ext_call.success
    emit PurchasedTokens((msg.value - (msg.value % price) / price), msg.sender);
}



}
