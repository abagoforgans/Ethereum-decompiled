contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address stor0;
address stor0; offset 8
uint256 stor0; offset 8
bool stor1; offset 256
address stor1;

function _fallback() payable {
    require not calldata.size
    emit 0xa0786e10: msg.sender
}

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    require not uint8(stor0.field_0)
    address(stor1.field_0) = arg1
    stor1.field_256 % 1 = 0
    uint8(stor0.field_0) = 1
    address(stor0.field_8) = arg1
    Mask(248, 0, stor0.field_8) = 0
}

function sub_6ff3d9f4(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(address(stor1.field_0))
    staticcall address(stor1.field_0).0x9f1a156c with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if not arg1:
        call address(stor0.field_8) with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(stor0.field_0), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_eea29e3e(?) {
    require calldata.size - 4 >= 256
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + (32 * arg6.length) + 36 <= calldata.size
    require arg7 <= 4294967296
    require arg7 + 36 <= calldata.size
    require arg7.length <= 4294967296 and arg7 + (32 * arg7.length) + 36 <= calldata.size
    emit 0xa0786e10: address(stor0.field_8)
    mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 484 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
    mem[(64 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 484] = arg6.length
    mem[(64 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 516 len floor32(arg6.length)] = call.data[arg6 + 36 len floor32(arg6.length)]
    mem[(64 * arg6.length) + (64 * arg5.length) + (32 * arg7.length) + 516] = arg7.length
    mem[(64 * arg6.length) + (64 * arg5.length) + (32 * arg7.length) + 548 len floor32(arg7.length)] = call.data[arg7 + 36 len floor32(arg7.length)]
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xeea29e3e with:
         gas gas_remaining wei
        args address(arg1), arg2, address(arg3), arg4, Array(len=arg5.length, data=call.data[arg5 + 36 len floor32(arg5.length)], mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + floor32(arg5.length) + 484 len (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + -floor32(arg5.length) + 64]), (32 * arg5.length) + 288, (32 * arg6.length) + (32 * arg5.length) + 320, address(arg8)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
