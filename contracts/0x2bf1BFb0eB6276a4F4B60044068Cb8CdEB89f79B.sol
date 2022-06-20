contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_fd024dc7(?) {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg3.length) + 128 len 17133] = code.data[1269 len 17133]
    mem[(32 * arg3.length) + 17261] = arg1
    mem[(32 * arg3.length) + 17293] = arg2
    mem[(32 * arg3.length) + 17357] = arg4
    mem[(32 * arg3.length) + 17389] = arg5
    mem[(32 * arg3.length) + 17421] = msg.sender
    mem[(32 * arg3.length) + 17325] = 192
    mem[(32 * arg3.length) + 17453] = arg3.length
    mem[(32 * arg3.length) + 17485 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    create contract with 0 wei
                    code: code.data[1269 len 17133], address(arg1), address(arg2), Array(len=msg.sender, data=arg3.length, call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 17485 len (32 * arg3.length) - floor32(arg3.length)]), arg4 << 192, arg5
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg3.length) + 352 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    emit 0x6867cd3d: address(create.new_address), address(arg1), address(arg2), Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 352 len (32 * arg3.length) - floor32(arg3.length)]), arg4 << 192, arg5, msg.sender
    return address(create.new_address)
}



}
