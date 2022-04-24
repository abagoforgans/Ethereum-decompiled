contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor3;

function _fallback() {
    stor0 = msg.sender
    emit Admined(stor0);
    stor3 = code.data[2666 len 32]
    stor1 = code.data[2646 len 20]
    return code.data[337 len 2297]
}



// =====================  Runtime code  =====================


address adminAddress;
address eRC20TokenAddress;
mapping of uint8 stor2;
uint256 price;

function ERC20Token() {
    return eRC20TokenAddress
}

function price() {
    return price
}

function flag(address arg1) {
    return bool(stor2[arg1])
}

function admin() {
    return adminAddress
}

function updatePrice(uint256 arg1) {
    require msg.sender == adminAddress
    price = arg1
}

function transferAdminship(address arg1) {
    require msg.sender == adminAddress
    require arg1
    adminAddress = arg1
    emit TransferAdminship(adminAddress);
}

function _fallback() payable {
    require not stor2[address(msg.sender)]
    stor2[address(msg.sender)] = 1
    require ext_code.size(eRC20TokenAddress)
    call eRC20TokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, price
    require ext_call.success
}

function contribute() payable {
    require not stor2[address(msg.sender)]
    stor2[address(msg.sender)] = 1
    require ext_code.size(eRC20TokenAddress)
    call eRC20TokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, price
    require ext_call.success
}

function withdraw() {
    require msg.sender == adminAddress
    call adminAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(eRC20TokenAddress)
    call eRC20TokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(eRC20TokenAddress)
    call eRC20TokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args adminAddress, ext_call.return_data[0]
    require ext_call.success
}



}
