contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = 0x31a2feb9b5d3b5f4e76c71d6c92fc46ebb3cb1c1
    stor1 = 0x41e5560054824ea6b0732e656e3ad64e20e94e45
    return code.data[200 len 739]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() {
    require msg.sender == stor0
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args stor0, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
}

function sweep(address arg1) {
    require msg.sender == stor0
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args stor0, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
}



}
