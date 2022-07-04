contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address factoryAddress;

function factory() payable {
    return factoryAddress
}

function _fallback() payable {
    revert
}

function sub_20582e13(?) payable {
    require calldata.size - 4 >= 64
    if not ext_code.size(sha3(0, factoryAddress, address(arg1), stor0)):
        return 0
    require ext_code.size(address(sha3(0, factoryAddress, address(arg1), stor0)))
    staticcall address(sha3(0, factoryAddress, address(arg1), stor0)).0x1dd3dd0b with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return not not ext_call.return_data[12 len 20]
}

function sub_1242a1ff(?) payable {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if not ext_code.size(sha3(0, factoryAddress, address(arg1), stor0)):
        require ext_code.size(factoryAddress)
        call factoryAddress.0xc392cf41 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg3.length) + 345] = arg4.length
    mem[ceil32(arg3.length) + 377 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + arg4.length + 377] = 0
    require ext_code.size(address(sha3(0, factoryAddress, address(arg1), stor0)))
    call address(sha3(0, factoryAddress, address(arg1), stor0)).0xed3d9e17 with:
         gas gas_remaining wei
        args address(arg2), 96, ceil32(arg3.length) + 128, arg3.length, arg3[all], 0, mem[arg3.length + 377 len ceil32(arg3.length) + ceil32(arg4.length) - arg3.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
