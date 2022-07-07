contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_9783fd39(?) payable {
    require calldata.size - 4 >= 384
    require arg12 <= 4294967296
    require arg12 + 36 <= calldata.size
    require arg12.length <= 4294967296 and arg12 + arg12.length + 36 <= calldata.size
    mem[128 len arg12.length] = arg12[all]
    mem[arg12.length + 128] = 0
    mem[ceil32(arg12.length) + 128] = 0
    create contract with 0 wei
                    code: code.data[1215 len 5244], msg.sender, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, 416, arg12.length, Mask(8 * arg12.length, -(8 * arg12.length) + 256, arg12[all], mem[arg12.length + 128 len ceil32(arg12.length) - arg12.length]) << (8 * arg12.length) - 256
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xf40431b1: address(create.new_address), arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, Array(len=arg12.length, data=arg12[all]), msg.sender
    return address(create.new_address)
}



}
