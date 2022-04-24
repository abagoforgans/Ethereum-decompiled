contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[3430 len 20]
    return code.data[188 len 3230]
}



// =====================  Runtime code  =====================


const proxyPayment(address arg1) = 0


uint8 stor0; offset 160
uint128 stor0; offset 160
address controllerAddress;
address stor1;

function onTransfer(address arg1, address arg2, uint256 arg3) {
    return bool(uint8(stor0.field_160))
}

function transferable() {
    return bool(uint8(stor0.field_160))
}

function onApprove(address arg1, address arg2, uint256 arg3) {
    return bool(uint8(stor0.field_160))
}

function controller() {
    return controllerAddress
}

function _fallback() payable {
    revert
}

function changeController(address arg1) {
    require msg.sender == controllerAddress
    controllerAddress = arg1
}

function allowTransfers(bool arg1) {
    require msg.sender == controllerAddress
    Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
}

function changeAPTController(address arg1) {
    require msg.sender == controllerAddress
    require ext_code.size(stor1)
    call stor1.0x3cebb823 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function generateTokens(address arg1, uint256 arg2) {
    require msg.sender == controllerAddress
    require ext_code.size(stor1)
    call stor1.0x827f32c0 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function claimTokens(address arg1) {
    require msg.sender == controllerAddress
    require ext_code.size(stor1)
    call stor1.0xf77c4791 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] == this.address:
        require ext_code.size(stor1)
        call stor1.0xdf8de3e7 with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
    if not arg1:
        call controllerAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args controllerAddress, ext_call.return_data[0]
        require ext_call.success
        emit ClaimedTokens(ext_call.return_data[0], arg1, controllerAddress);
}



}
