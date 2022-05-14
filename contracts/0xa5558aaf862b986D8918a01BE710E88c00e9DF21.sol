contract main {




// =====================  Runtime code  =====================


const initialTokens = 7800000 * 10^18

const RATE = 3900

const START = (424704 * 24 * 3600)

const DAYS = 32

const CAP = 2000


address owner;
uint8 stor1; offset 160
address stor1;
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

function destroy() {
    require msg.sender == owner
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    selfdestruct(owner)
}

function goalReached() {
    return 2000 * 10^18 <= raisedAmount
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function tokensAvailable() {
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function isActive() {
    if bool(uint8(stor1.field_160)) != 1:
        return (bool(uint8(stor1.field_160)) == 1)
    if block.timestamp < 424704 * 24 * 3600:
        return block.timestamp >= 424704 * 24 * 3600
    if block.timestamp > 425472 * 24 * 3600:
        return block.timestamp <= 425472 * 24 * 3600
    return (2000 * 10^18 > raisedAmount)
}

function initialize() {
    require msg.sender == owner
    require not uint8(stor1.field_160)
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == 7800000 * 10^18
    uint8(stor1.field_160) = 1
}

function buyTokens() payable {
    require bool(uint8(stor1.field_160)) == 1
    require block.timestamp >= 424704 * 24 * 3600
    require block.timestamp <= 425472 * 24 * 3600
    require 2000 * 10^18 > raisedAmount
    if msg.value:
        require msg.value
        require 3900 * msg.value / msg.value == 3900
    emit BoughtTokens((3900 * msg.value), msg.sender);
    require msg.value + raisedAmount >= raisedAmount
    raisedAmount += msg.value
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 3900 * msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require bool(uint8(stor1.field_160)) == 1
    require block.timestamp >= 424704 * 24 * 3600
    require block.timestamp <= 425472 * 24 * 3600
    require 2000 * 10^18 > raisedAmount
    if msg.value:
        require msg.value
        require 3900 * msg.value / msg.value == 3900
    emit BoughtTokens((3900 * msg.value), msg.sender);
    require msg.value + raisedAmount >= raisedAmount
    raisedAmount += msg.value
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 3900 * msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
