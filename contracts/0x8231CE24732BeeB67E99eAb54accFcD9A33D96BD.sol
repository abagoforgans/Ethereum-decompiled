contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor1; offset 160
address stor1;
uint256 stor2;

function _fallback() payable {
    uint8(stor1.field_160) = 0
    stor2 = 0
    require not msg.value
    stor0 = msg.sender
    require code.data[1981 len 20]
    address(stor1.field_0) = code.data[1981 len 20]
    return code.data[153 len 1816]
}



// =====================  Runtime code  =====================


const initialTokens = (27775 * 10^14 * 3600)

const RATE = 99

const START = 1510398671

const DAYS = 11

const CAP = 101


address owner;
uint8 stor1; offset 160
address tokenAddress;
uint256 raisedAmount;

function initialized() {
    return bool(stor1)
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
    require owner == msg.sender
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
    return raisedAmount >= 101 * 10^18
}

function transferOwnership(address arg1) {
    require owner == msg.sender
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
    if bool(stor1) != 1:
        return (bool(stor1) == 1)
    if block.timestamp < 1510398671:
        return block.timestamp >= 1510398671
    if block.timestamp > 1511349071:
        return block.timestamp <= 1511349071
    return (raisedAmount < 101 * 10^18)
}

function initialize() {
    require owner == msg.sender
    require not stor1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] == 27775 * 10^14 * 3600
    stor1 = 1
}

function buyTokens() payable {
    require bool(stor1) == 1
    require block.timestamp >= 1510398671
    require block.timestamp <= 1511349071
    require raisedAmount < 101 * 10^18
    if msg.value:
        require msg.value
        require 99 * msg.value / msg.value == 99
    emit BoughtTokens((99 * msg.value), msg.sender);
    require msg.value + raisedAmount >= raisedAmount
    raisedAmount += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, 99 * msg.value
    require ext_call.success
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require bool(stor1) == 1
    require block.timestamp >= 1510398671
    require block.timestamp <= 1511349071
    require raisedAmount < 101 * 10^18
    if msg.value:
        require msg.value
        require 99 * msg.value / msg.value == 99
    emit BoughtTokens((99 * msg.value), msg.sender);
    require msg.value + raisedAmount >= raisedAmount
    raisedAmount += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, 99 * msg.value
    require ext_call.success
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
