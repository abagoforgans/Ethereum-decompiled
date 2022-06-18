contract main {




// =====================  Runtime code  =====================


address sub_ac7f9253Address;
address stor1;

function sub_ac7f9253(?) {
    return sub_ac7f9253Address
}

function sub_f6587991(?) {
    require calldata.size - 4 >= 32
    sub_ac7f9253Address = arg1
}

function _fallback() payable {
    if msg.value > 0:
        call stor1 with:
           value 10^17 wei
             gas 0 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call sub_ac7f9253Address with:
           value msg.value - 10^17 wei
             gas 2300 * is_zero(value) wei
}



}
