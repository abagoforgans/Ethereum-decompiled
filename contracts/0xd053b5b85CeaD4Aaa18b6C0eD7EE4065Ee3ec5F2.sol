contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address sub_5515f7f6Address;

function sub_5515f7f6(?) payable {
    return sub_5515f7f6Address
}

function _fallback() payable {
    revert
}

function sub_20582e13(?) payable {
    require calldata.size - 4 >= 64
    if not ext_code.size(sha3(0, sub_5515f7f6Address, address(arg1), stor0)):
        return 0
    require ext_code.size(address(sha3(0, sub_5515f7f6Address, address(arg1), stor0)))
    staticcall address(sha3(0, sub_5515f7f6Address, address(arg1), stor0)).relayedBy(bytes32 arg1) with:
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
    if not ext_code.size(sha3(0, sub_5515f7f6Address, address(arg1), stor0)):
        require ext_code.size(sub_5515f7f6Address)
        call sub_5515f7f6Address.reveal(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg3.length) + 345] = arg4.length
    mem[ceil32(arg3.length) + 377 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + arg4.length + 377] = 0
    require ext_code.size(address(sha3(0, sub_5515f7f6Address, address(arg1), stor0)))
    call address(sha3(0, sub_5515f7f6Address, address(arg1), stor0)).0xed3d9e17 with:
         gas gas_remaining wei
        args address(arg2), 96, ceil32(arg3.length) + 128, arg3.length, arg3[all], 0, mem[arg3.length + 377 len ceil32(arg3.length) + ceil32(arg4.length) - arg3.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_36777cb2(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + ('cd', 4).length + 36 <= calldata.size
    require ('cd', 4).length >= 32
    require ('cd', 4)[0] <= 4294967296
    require ('cd', 4)[0] + 68 <= ('cd', 4).length + 36
    require cd[(cd[4] + ('cd', 4)[0] + 36)] <= 4294967296 and ('cd', 4)[0] + cd[(cd[4] + ('cd', 4)[0] + 36)] + 68 <= ('cd', 4).length + 36
    mem[128 len cd[(cd[4] + ('cd', 4)[0] + 36)]] = call.data[cd[4] + ('cd', 4)[0] + 68 len cd[(cd[4] + ('cd', 4)[0] + 36)]]
    mem[cd[(cd[4] + ('cd', 4)[0] + 36)] + 128] = 0
    if 0 == cd[(cd[4] + ('cd', 4)[0] + 36)]:
        mem[ceil32(cd[(cd[4] + ('cd', 4)[0] + 36)]) + 128] = 1
    else:
        staticcall Mask(96, 0, cd[(cd[4] + ('cd', 4)[0] + 36)]), mem[128 len 20].mem[148 len 4] with:
                gas gas_remaining wei
               args mem[152 len cd[(cd[4] + ('cd', 4)[0] + 36)] - 24]
        mem[ceil32(cd[(cd[4] + ('cd', 4)[0] + 36)]) + 128] = ext_call.return_data[0]
        mem[ceil32(cd[(cd[4] + ('cd', 4)[0] + 36)]) + 128] = bool(ext_call.success and Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[0] + 36)]) + cd[(cd[4] + ('cd', 4)[0] + 36)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[0] + 36)] + 160 len -cd[(cd[4] + ('cd', 4)[0] + 36)] + ceil32(cd[(cd[4] + ('cd', 4)[0] + 36)])])
    return Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[0] + 36)]) + cd[(cd[4] + ('cd', 4)[0] + 36)] + 32, 0, 0), 
           mem[cd[(cd[4] + ('cd', 4)[0] + 36)] + 160 len -cd[(cd[4] + ('cd', 4)[0] + 36)] + ceil32(cd[(cd[4] + ('cd', 4)[0] + 36)])]
}



}
