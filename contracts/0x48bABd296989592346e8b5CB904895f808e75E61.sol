contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    if calldata.size:
        delegate 0x2a006c2d76859a6e1cd84a4e5a26cb93eda13be3 with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    call stor0 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xfeaeb85a: address(msg.sender), msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size])
}



}
