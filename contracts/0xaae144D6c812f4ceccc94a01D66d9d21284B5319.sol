contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor2;
address stor2; offset 8
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    uint8(stor2.field_0) = 0
    stor3 = 6 * 10^16
    stor4 = 10
    require not msg.value
    stor0 = msg.sender
    address(stor2.field_8) = code.data[3893 len 20]
    return code.data[231 len 3650]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 contactInformation;
uint8 stor2;
address ticketAddress; offset 8
uint256 ticketPrice;
uint256 availableTickets;

function ticketPrice() {
    return ticketPrice
}

function contactInformation() {
    return contactInformation[0 len contactInformation.length]
}

function availableTickets() {
    return availableTickets
}

function paused() {
    return bool(stor2)
}

function ticket() {
    return ticketAddress
}

function owner() {
    return owner
}

function sub_ea2d484e(?) {
    require msg.sender == owner
    availableTickets = arg1
}

function setTicketPrice(uint256 arg1) {
    require msg.sender == owner
    ticketPrice = arg1
}

function unpause() {
    require msg.sender == owner
    require stor2
    stor2 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor2
    stor2 = 1
    emit Pause()
}

function setContactInformation(string arg1) {
    require msg.sender == owner
    contactInformation[] = Array(len=arg1.length, data=arg1[all])
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawFunds(address arg1) {
    require msg.sender == owner
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function getTicketsCount(address arg1) {
    require ext_code.size(ticketAddress)
    call ticketAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function _fallback() payable {
    require not stor2
    require msg.sender
    require msg.value > 0
    require ticketPrice
    require msg.value / ticketPrice > 0
    require msg.value / ticketPrice <= availableTickets
    availableTickets -= msg.value / ticketPrice
    require ext_code.size(ticketAddress)
    call ticketAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value / ticketPrice
    require ext_call.success
    call msg.sender with:
       value msg.value % ticketPrice wei
         gas 2300 * is_zero(value) wei
    emit 0xe69cabfd: msg.value, msg.value / ticketPrice, msg.value % ticketPrice, msg.sender, msg.sender
}

function buyTickets(address arg1) payable {
    require not stor2
    require arg1
    require msg.value > 0
    require ticketPrice
    require msg.value / ticketPrice > 0
    require msg.value / ticketPrice <= availableTickets
    availableTickets -= msg.value / ticketPrice
    require ext_code.size(ticketAddress)
    call ticketAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), msg.value / ticketPrice
    require ext_call.success
    call msg.sender with:
       value msg.value % ticketPrice wei
         gas 2300 * is_zero(value) wei
    emit 0xe69cabfd: msg.value, msg.value / ticketPrice, msg.value % ticketPrice, msg.sender, arg1
}



}
