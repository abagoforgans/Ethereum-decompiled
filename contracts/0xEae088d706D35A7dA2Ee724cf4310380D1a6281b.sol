contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    require not calldata.size
    emit 0xa0786e10: msg.sender
}

function sub_6ff3d9f4(?) {
    require ext_code.size(stor1)
    call stor1.0x9f1a156c with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if not arg1:
        call stor0 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args stor0, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_eea29e3e(?) {
    emit 0xa0786e10: stor0
    mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 484 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
    mem[(64 * arg5.length) + (32 * arg7.length) + (32 * arg6.length) + 484] = arg6.length
    mem[(64 * arg5.length) + (32 * arg7.length) + (32 * arg6.length) + 516 len floor32(arg6.length)] = call.data[arg6 + 36 len floor32(arg6.length)]
    mem[(64 * arg6.length) + (64 * arg5.length) + (32 * arg7.length) + 516] = arg7.length
    mem[(64 * arg6.length) + (64 * arg5.length) + (32 * arg7.length) + 548 len floor32(arg7.length)] = call.data[arg7 + 36 len floor32(arg7.length)]
    require ext_code.size(stor1)
    call stor1.0xeea29e3e with:
         gas gas_remaining wei
        args address(arg1), arg2, address(arg3), arg4, Array(len=arg5.length, data=call.data[arg5 + 36 len floor32(arg5.length)], mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + floor32(arg5.length) + 484 len (32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + -floor32(arg5.length) + 64]), (32 * arg5.length) + 288, (32 * arg6.length) + (32 * arg5.length) + 320, address(arg8)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
