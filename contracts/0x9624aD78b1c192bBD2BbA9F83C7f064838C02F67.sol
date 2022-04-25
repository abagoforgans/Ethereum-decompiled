contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor8;

function _fallback() payable {
    stor5 = 266 * 10^12
    stor6 = 266 * 10^12
    stor7 = 3333 * 10^18
    require not msg.value
    stor0 = msg.sender
    stor1 = code.data[7524 len 20]
    stor8 = msg.sender
    return code.data[141 len 7371]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
address crowdsaleAddress;
address foundersAddress;
uint8 stor4; offset 160
uint8 stor4; offset 168
address teamAddress;
uint256 price;
uint256 priceWithBonus;
uint256 softCap;
address coldWalletAddress;

function isStoped() {
    return bool(uint8(stor4.field_168))
}

function getPriceWithBonus() {
    return priceWithBonus
}

function founders() {
    return foundersAddress
}

function getSoftCap() {
    return softCap
}

function isStarted() {
    return bool(uint8(stor4.field_160))
}

function coldWallet() {
    return coldWalletAddress
}

function team() {
    return teamAddress
}

function owner() {
    return owner
}

function getPrice() {
    return price
}

function crowdsale() {
    return crowdsaleAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
  stop
}

function setSoftCap(uint256 arg1) {
    require owner == msg.sender
    softCap = 10^12 * arg1
}

function setColdWallet(address arg1) {
    require owner == msg.sender
    coldWalletAddress = arg1
}

function setPrice(uint256 arg1) {
    require owner == msg.sender
    require arg1 > 0
    price = 10^12 * arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setPriceWithBonus(uint256 arg1) {
    require owner == msg.sender
    require arg1 > 0
    require 10^12 * arg1 <= price
    priceWithBonus = 10^12 * arg1
}

function setTransferable(bool arg1) {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x9cd23707 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function thisContactsTokens() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function sendTokens(address arg1, uint256 arg2) {
    require owner == msg.sender
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.sendTokens(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), 10^12 * arg2
    require ext_call.success
}

function withdraw() {
    require owner == msg.sender
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.0x3ccfd60b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    call coldWalletAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    return bool(ext_call.success)
}

function SaleStart() {
    require owner == msg.sender
    require not uint8(stor4.field_160)
    require not uint8(stor4.field_168)
    create contract with 0 wei
                    code: code.data[3671 len 2238], address(this.address), tokenAddress
    require create.new_address
    crowdsaleAddress = address(create.new_address)
    require ext_code.size(tokenAddress)
    call tokenAddress.0x483a20b2 with:
         gas gas_remaining - 710 wei
        args address(create.new_address)
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args crowdsaleAddress, 500000000 * 10^18
    require ext_call.success
    uint8(stor4.field_160) = 1
}

function SaleStop() {
    require owner == msg.sender
    require uint8(stor4.field_160)
    require not uint8(stor4.field_168)
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x9cd23707 with:
         gas gas_remaining - 710 wei
        args 1
    require ext_call.success
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.burnUnsold() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x42966c68 with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] / 5 <= ext_call.return_data[0]
    require ext_call.return_data[0] / 2 <= ext_call.return_data[0] - (ext_call.return_data[0] / 5)
    create contract with 0 wei
                    code: code.data[5909 len 1419], tokenAddress, 8640 * 24 * 3600, 50000, 0xc041cb562e4c398710df38eaed539b943641f7b1
    require create.new_address
    foundersAddress = address(create.new_address)
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(create.new_address), ext_call.return_data[0] / 5
    require ext_call.success
    require ext_code.size(foundersAddress)
    call foundersAddress.0xbe9a6555 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    create contract with 0 wei
                    code: code.data[5909 len 1419], tokenAddress, 4320 * 24 * 3600, 16667, 0x2abfe4e1809659ab60eb0053cc799b316afcc556
    require create.new_address
    teamAddress = address(create.new_address)
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(create.new_address), ext_call.return_data[0] - (ext_call.return_data[0] / 5) - (ext_call.return_data[0] / 2)
    require ext_call.success
    require ext_code.size(teamAddress)
    call teamAddress.0xbe9a6555 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args 0xd6496bbd13ae8c4bdeea68799f678a1456b62f23, ext_call.return_data[0] / 2
    require ext_call.success
    uint8(stor4.field_160) = 0
    uint8(stor4.field_168) = 1
}



}
