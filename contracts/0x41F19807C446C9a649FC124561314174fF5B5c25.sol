contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function withdraw() {
    require msg.sender == stor0
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function snipe() payable {
    require ext_code.size(stor1)
    call stor1.0x624ae5c0 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == 2
    require ext_code.size(stor1)
    call stor1.0x76d097c2 with:
       value msg.value wei
         gas gas_remaining wei
        args 0x8537aa2911b193e5b377938a723d805bb0865670, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
