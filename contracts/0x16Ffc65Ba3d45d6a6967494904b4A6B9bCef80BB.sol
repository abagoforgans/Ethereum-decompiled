contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_d3c0ca20(?) {
    create contract with 0 wei
                    code: code.data[455 len 3407], arg1, arg2, arg3, arg4, arg5, msg.sender
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor0)
    call stor0.0xb11ce2db with:
         gas gas_remaining wei
        args address(create.new_address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x1a0f921c: address(create.new_address)
}



}
