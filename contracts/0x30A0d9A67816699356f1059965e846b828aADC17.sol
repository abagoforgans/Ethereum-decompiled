contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
uint16 stor5;
address stor5; offset 16
mapping of uint8 stor6;

function _fallback() payable {
    stor1 = 420018 * 3600
    stor2 = 421488 * 24 * 3600
    stor4 = 0
    uint16(stor5.field_0) = 0
    require not msg.value
    stor0 = msg.sender
    address(stor5.field_16) = code.data[2585 len 20]
    stor3 = code.data[2617 len 20]
    require stor0 == msg.sender
    stor6[code.data[2617 len 20]] = 1
    emit Whitelisted(code.data[2617 len 20], 1);
    if stor3:
        stor0 = stor3
    return code.data[448 len 2125]
}



// =====================  Runtime code  =====================


const getRate = 10

const minInvestment = 10^17


address owner;
uint256 startTime;
uint256 endTime;
address aCFWalletAddress;
uint256 totalCollected;
uint8 stor5;
uint8 stor5; offset 8
address tokenAddress; offset 16
uint256 stor5; offset 8
mapping of uint8 stor6;

function endTime() {
    return endTime
}

function saleStopped() {
    return bool(uint8(stor5.field_0))
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function whitelist(address arg1) {
    return bool(stor6[arg1])
}

function saleFinalized() {
    return bool(uint8(stor5.field_8))
}

function totalCollected() {
    return totalCollected
}

function ACFWallet() {
    return aCFWalletAddress
}

function token() {
    return tokenAddress
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function emergencyStopSale() {
    require not uint8(stor5.field_0)
    require owner == msg.sender
    uint8(stor5.field_0) = 1
}

function setWhitelistStatus(address arg1, bool arg2) {
    require owner == msg.sender
    stor6[address(arg1)] = uint8(arg2)
    emit Whitelisted(address(arg1), arg2);
}

function restartSale() {
    require block.timestamp >= startTime
    require block.timestamp < endTime
    require uint8(stor5.field_0)
    require owner == msg.sender
    uint8(stor5.field_0) = 0
}

function getTokensLeft() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function finalizeSale() {
    require block.timestamp >= endTime
    require owner == msg.sender
    call aCFWalletAddress with:
       value eth.balance(this.address) wei
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
        args aCFWalletAddress, ext_call.return_data[0]
    require ext_call.success
    uint8(stor5.field_0) = 1
    uint8(stor5.field_8) = 1
    Mask(248, 0, stor5.field_8) = 0
}

function _fallback() payable {
    if block.timestamp < startTime:
        require stor6[address(msg.sender)]
    require block.timestamp < endTime
    require not uint8(stor5.field_0)
    require msg.sender
    require msg.value >= 10^17
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    if msg.value:
        require msg.value
        require 10 * msg.value / msg.value == 10
    require 10 * msg.value <= ext_call.return_data[0]
    call aCFWalletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, 10 * msg.value
    require ext_call.success
    require msg.value + totalCollected >= totalCollected
    totalCollected += msg.value
    emit NewBuyer(10 * msg.value, msg.value, msg.sender);
}



}
