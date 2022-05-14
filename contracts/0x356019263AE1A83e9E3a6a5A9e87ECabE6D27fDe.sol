contract main {




// =====================  Runtime code  =====================


array of uint256 description;

function description() {
    return description[0 len description.length]
}

function sub_1c50e41f(?) {
    require arg1 <= 3
    require ext_code.size(0x73f58f90c67b0e818155e60cd166bf56bd10511e)
    delegate 0x73f58f90c67b0e818155e60cd166bf56bd10511e.0x9d4cc6b4 with:
         gas gas_remaining wei
        args 0, 0, arg1 << 248, address(arg2), msg.sender
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if msg.value > 0:
        require ext_code.size(0x73f58f90c67b0e818155e60cd166bf56bd10511e)
        delegate 0x73f58f90c67b0e818155e60cd166bf56bd10511e.0xfb565ba5 with:
             gas gas_remaining wei
            args 0, msg.value, msg.sender
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_bb66f9f6(?) {
    mem[96] = 0xc1d9b06a00000000000000000000000000000000000000000000000000000000
    mem[100] = 0
    require arg1 <= 1
    mem[132] = arg1
    mem[164] = arg2
    mem[196] = msg.sender
    require ext_code.size(0x73f58f90c67b0e818155e60cd166bf56bd10511e)
    delegate 0x73f58f90c67b0e818155e60cd166bf56bd10511e.0xc1d9b06a with:
         gas gas_remaining wei
        args 0, 0, arg1 << 248, arg2, msg.sender
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], 0
    require mem[96 len 4], 0 <= 4294967296
    require mem[96 len 4], 0 + 32 <= return_data.size
    require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_4 + 96]
    _8 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 160 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    return 32, mem[ceil32(return_data.size) + 128 len (32 * _8) + 32]
}



}
