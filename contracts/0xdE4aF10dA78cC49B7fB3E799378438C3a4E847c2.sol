contract main {


// =======================  Init code  ======================


address stor0;
uint128 stor1; offset 160
address stor1;
uint256 stor2;

function _fallback() payable {
    Mask(96, 0, stor1.field_160) = 0
    stor2 = 0
    require not msg.value
    stor0 = msg.sender
    address(stor1.field_0) = 0xffab58ea5a71cc3ca40217706c3c401407fa4a8
    return code.data[211 len 3115]
}



// =====================  Runtime code  =====================


const initialTokens = 730000000 * 10^18

const RATE = 12500

const START = (419184 * 24 * 3600)

const DAYS = 11

const CAP = 58400


address owner;
uint8 stor1; offset 160
uint128 stor1; offset 160
address tokenAddress;
uint256 raisedAmount;

function initialized() {
    return bool(uint8(stor1.field_160))
}

function owner() {
    return owner
}

function raisedAmount() {
    return raisedAmount
}

function token() {
    return tokenAddress
}

function destroy() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
    selfdestruct(owner)
}

function goalReached() {
    return raisedAmount >= 58400 * 10^18
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function tokensAvailable() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function isActive() {
    if bool(uint8(stor1.field_160)) != 1:
        return (bool(uint8(stor1.field_160)) == 1)
    if block.timestamp < 419184 * 24 * 3600:
        return block.timestamp >= 419184 * 24 * 3600
    if block.timestamp > 419448 * 24 * 3600:
        return block.timestamp <= 419448 * 24 * 3600
    return not raisedAmount >= 58400 * 10^18
}

function initialize() {
    require msg.sender == owner
    require not uint8(stor1.field_160)
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] == 730000000 * 10^18
    Mask(96, 0, stor1.field_160) = 1
}

function buyTokens() payable {
    require bool(uint8(stor1.field_160)) == 1
    require block.timestamp >= 419184 * 24 * 3600
    require block.timestamp <= 419448 * 24 * 3600
    require raisedAmount < 58400 * 10^18
    if msg.value:
        require msg.value
        require 12500 * msg.value / msg.value == 12500
    emit BoughtTokens((12500 * msg.value), msg.sender);
    require raisedAmount + msg.value >= raisedAmount
    raisedAmount += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, 12500 * msg.value
    require ext_call.success
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require bool(uint8(stor1.field_160)) == 1
    require block.timestamp >= 419184 * 24 * 3600
    require block.timestamp <= 419448 * 24 * 3600
    require raisedAmount < 58400 * 10^18
    if msg.value:
        require msg.value
        require 12500 * msg.value / msg.value == 12500
    emit BoughtTokens((12500 * msg.value), msg.sender);
    require raisedAmount + msg.value >= raisedAmount
    raisedAmount += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, 12500 * msg.value
    require ext_call.success
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
