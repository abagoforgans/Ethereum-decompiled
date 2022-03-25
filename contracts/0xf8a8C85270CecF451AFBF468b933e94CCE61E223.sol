contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = code.data[1575 len 32]
    return code.data[55 len 1520]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
  stop
}

function sub_b92587f1(?) payable {
    call stor0.0xec56a373 with:
         gas gas_remaining - 25050 wei
        args 0
    require ext_call.success
    call address(ext_call.return_data[0]).0x658cc1f6 with:
         gas gas_remaining - 25050 wei
        args 3, arg1
    return ext_call.return_data[0]
}

function sub_db5127b8(?) payable {
    mem[128 len arg5.length] = arg5[all]
    call stor0.0xec56a373 with:
         gas gas_remaining - 25050 wei
        args 0
    require ext_call.success
    call address(ext_call.return_data[0]).0x658cc1f6 with:
         gas gas_remaining - 25050 wei
        args 2, arg2
    require Mask(1, 1, ext_call.return_data[0]) != 2
    require arg2 != 0
    call stor0.0xec56a373 with:
         gas gas_remaining - 25050 wei
        args 0
    require ext_call.success
    call address(ext_call.return_data[0]).0x658cc1f6 with:
         gas gas_remaining - 25050 wei
        args 2, arg6
    require Mask(1, 1, ext_call.return_data[0]) != 2
    require arg6 != 0
    mem[ceil32(arg5.length) + 128] = arg1
    mem[ceil32(arg5.length) + 160] = address(arg2)
    mem[ceil32(arg5.length) + 180] = arg3
    require 65 == arg5.length
    if mem[192 len 1] >= 27:
        signer = erecover(sha3(arg1, arg2, arg3, arg4), mem[161] << 248, mem[128], mem[160]) 
    else:
        signer = erecover(sha3(arg1, arg2, arg3, arg4), mem[192 len 1] + 27 << 248, mem[128], mem[160]) 
    require erecover.result
    call stor0.0xec56a373 with:
         gas gas_remaining - 25050 wei
        args 0
    require ext_call.success
    call address(ext_call.return_data[0]).0x658cc1f6 with:
         gas gas_remaining - 25050 wei
        args 2, address(signer)
    require bool(ext_call.return_data[0]) == 1
    call stor0.0xec56a373 with:
         gas gas_remaining - 25050 wei
        args 0
    require ext_call.success
    call address(ext_call.return_data[0]).0x658cc1f6 with:
         gas gas_remaining - 25050 wei
        args 2, address(signer)
    require Mask(1, 2, ext_call.return_data[0]) != 4
    require address(signer) != 0
    call stor0.0xec56a373 with:
         gas gas_remaining - 25050 wei
        args 0
    require ext_call.success
    call address(ext_call.return_data[0]).0x658cc1f6 with:
         gas gas_remaining - 25050 wei
        args 3, address(signer)
    require ext_call.return_data[0] < arg1
    call stor0.0xec56a373 with:
         gas gas_remaining - 25050 wei
        args 0
    require ext_call.success
    call address(ext_call.return_data[0]).0xbb40a4a9 with:
         gas gas_remaining - 25050 wei
        args 3, address(signer), arg1
    call stor0.0xec56a373 with:
         gas gas_remaining - 25050 wei
        args 0
    call address(ext_call.return_data[0]).0x658cc1f6 with:
         gas gas_remaining - 25050 wei
        args 1, address(signer)
    require ext_call.return_data[0] >= arg3 + arg4
    call stor0.0xec56a373 with:
         gas gas_remaining - 25050 wei
        args 0
    require ext_call.success
    call address(ext_call.return_data[0]).0xbb40a4a9 with:
         gas gas_remaining - 25050 wei
        args 1, address(signer), ext_call.return_data[0] - arg3 - arg4
    call stor0.0xec56a373 with:
         gas gas_remaining - 25050 wei
        args 0
    call address(ext_call.return_data[0]).0x658cc1f6 with:
         gas gas_remaining - 25050 wei
        args 1, arg2
    require ext_call.return_data[0] + arg3 >= ext_call.return_data[0]
    call stor0.0xec56a373 with:
         gas gas_remaining - 25050 wei
        args 0
    require ext_call.success
    call address(ext_call.return_data[0]).0xbb40a4a9 with:
         gas gas_remaining - 25050 wei
        args 1, address(arg2), ext_call.return_data[0] + arg3
    emit Transfer(arg3, address(signer), arg2);
    if arg4 > 0:
        call stor0.0xec56a373 with:
             gas gas_remaining - 25050 wei
            args 0
        require ext_call.success
        call address(ext_call.return_data[0]).0x658cc1f6 with:
             gas gas_remaining - 25050 wei
            args 1, arg6
        require ext_call.return_data[0] + arg4 >= ext_call.return_data[0]
        call stor0.0xec56a373 with:
             gas gas_remaining - 25050 wei
            args 0
        require ext_call.success
        call address(ext_call.return_data[0]).0xbb40a4a9 with:
             gas gas_remaining - 25050 wei
            args 1, address(arg6), ext_call.return_data[0] + arg4
        emit Transfer(arg4, address(signer), arg6);
}



}
