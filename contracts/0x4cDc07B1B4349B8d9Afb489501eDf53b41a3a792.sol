contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = 0x209c4784ab1e8183cf58ca33cb740efbf3fc18ef
    return code.data[68 len 623]
}



// =====================  Runtime code  =====================


address stor0;

function setDepositAddress(address arg1) {
    require 0x32be343b94f860124dc4fee278fdcbd38c102d88 == msg.sender
    stor0 = arg1
}

function _fallback() payable {
    require msg.value > 0
    call stor0 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sweep(address arg1, address arg2) {
    require msg.sender == 0x32be343b94f860124dc4fee278fdcbd38c102d88
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args address(arg2), ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
}



}
