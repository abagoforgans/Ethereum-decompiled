contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
address stor2;

function _fallback() payable {
    stor0 = 15000
    require not msg.value
    stor2 = msg.sender
    stor1 = 0xfac71410c457b8c918a62a85b2ea2ed026139b43
    return code.data[189 len 1645]
}



// =====================  Runtime code  =====================


uint256 exchangeRate;
address stor1;
address owner;

function exchangeRate() {
    return exchangeRate
}

function owner() {
    return owner
}

function kill() {
    if owner != msg.sender:
    selfdestruct(owner)
}

function stop() {
    require msg.sender == owner
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0]
    require ext_call.success
}

function _fallback() payable {
    if msg.value > 0:
        require ext_code.size(stor1)
        call stor1.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_call.return_data[0] >= msg.value * exchangeRate
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value * exchangeRate
        require ext_call.success
}



}
