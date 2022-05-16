contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    if gas_remaining < 5000:
        if msg.value > 0:
            emit EtherDeposited(msg.sender, msg.value);
    require ext_code.size(0x1b3968e3f543bba37339953e8ae975a6f581f5e0)
    call 0x1b3968e3f543bba37339953e8ae975a6f581f5e0.0x19a9162d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    delegate ext_call.return_data[0] with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}



}
