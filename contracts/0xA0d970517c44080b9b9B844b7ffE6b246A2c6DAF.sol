contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function checkOwner(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < 4294967296
    require ext_code.size(stor0)
    staticcall stor0.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function sub_3fa9fecf(?) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg1 < 4294967296
    require ext_code.size(stor0)
    staticcall stor0.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg3.length) + 128] = arg1
    mem[ceil32(arg3.length) + 288 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        emit 0xf5bb9b39: 0, Mask(224, 0, arg1), arg2, 1, 128, arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 288] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 320 len arg3.length % 32]
        emit 0xf5bb9b39: 0, Mask(224, 0, arg1), arg2, 1, 128, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 288 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
}

function sub_cfb73edd(?) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg1 < 4294967296
    require ext_code.size(stor0)
    staticcall stor0.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg3.length) + 128] = arg1
    mem[ceil32(arg3.length) + 288 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        emit 0xf5bb9b39: 0, Mask(224, 0, arg1), arg2, 0, 128, arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 288] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 320 len arg3.length % 32]
        emit 0xf5bb9b39: 0, Mask(224, 0, arg1), arg2, 0, 128, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 288 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
}

function sub_fa90ca8d(?) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg1 < 4294967296
    require ext_code.size(stor0)
    staticcall stor0.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg3.length) + 128] = arg1
    mem[ceil32(arg3.length) + 288 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        emit 0xf5bb9b39: 0, Mask(224, 0, arg1), arg2, 2, 128, arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 288] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 320 len arg3.length % 32]
        emit 0xf5bb9b39: 0, Mask(224, 0, arg1), arg2, 2, 128, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 288 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
}



}
