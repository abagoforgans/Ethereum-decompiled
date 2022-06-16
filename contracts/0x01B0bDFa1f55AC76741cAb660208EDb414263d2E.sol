contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_4e5d2939(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg2.length == 65
    if mem[192 len 1] >= 27:
        signer = erecover(arg1, mem[161] << 248, mem[128], mem[160]) 
    else:
        signer = erecover(arg1, mem[192 len 1] + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function sub_06477346(?) payable {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    mem[ceil32(arg3.length) + 160] = 'ETHER'
    mem[ceil32(arg3.length) + 165] = address(arg1)
    mem[ceil32(arg3.length) + 185] = arg2
    mem[ceil32(arg3.length) + 217 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 249 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
    mem[arg3.length + ceil32(arg3.length) + 217] = arg4
    mem[arg3.length + ceil32(arg3.length) + 249] = arg5
    mem[ceil32(arg3.length) + 128] = arg3.length + 121
    mem[arg3.length + ceil32(arg3.length) + 281] = sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]])
    return memory
      from arg3.length + ceil32(arg3.length) + 281
       len 32
}



}
