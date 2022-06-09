contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    call stor0.mem[96 len 4] with:
         gas gas_remaining wei
        args mem[100 len 28]
    require ext_call.success
}

function withdraw() {
    require msg.sender == stor1
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
