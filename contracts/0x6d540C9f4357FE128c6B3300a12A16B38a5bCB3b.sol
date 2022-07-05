contract main {




// =====================  Runtime code  =====================


address daiContractAddress;
address devFeeAddress;
array of struct sub_e12f1746;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403023;

function sub_0b3504e6(?) payable {
    return sub_e12f1746.length
}

function daiContract() payable {
    return daiContractAddress
}

function devFeeAddress() payable {
    return devFeeAddress
}

function sub_e12f1746(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_e12f1746.length
    return sub_e12f1746[arg1].field_0, sub_e12f1746[arg1].field_256
}

function _fallback() payable {
    revert
}

function sub_ce57be06(?) payable {
    require calldata.size - 4 >= 32
    return (arg1 / 3)
}

function getDevFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return (arg1 / 100)
}

function sub_6ff26483(?) payable {
    require calldata.size - 4 >= 32
    return arg1 / 3, arg1 / 100
}

function sub_46eb584c(?) payable {
    require calldata.size - 4 >= 320
    require arg8 <= 4294967296
    require arg8 + 36 <= calldata.size
    require arg8.length <= 4294967296 and arg8 + arg8.length + 36 <= calldata.size
    require arg9 <= 4294967296
    require arg9 + 36 <= calldata.size
    require arg9.length <= 4294967296 and arg9 + arg9.length + 36 <= calldata.size
    require arg10 <= 4294967296
    require arg10 + 36 <= calldata.size
    require arg10.length <= 4294967296 and arg10 + arg10.length + 36 <= calldata.size
    mem[480 len 11219] = code.data[2000 len 11219]
    mem[11699] = daiContractAddress
    mem[11731] = devFeeAddress
    create contract with 0 wei
                    code: code.data[2000 len 11219], daiContractAddress, devFeeAddress
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_e12f1746.length++
    sub_e12f1746[sub_e12f1746.length].field_0 = address(create.new_address)
    stor4057[stor2.length] = block.number
    emit NewTrade(sub_e12f1746.length - 1, address(create.new_address), arg2);
    require ext_code.size(daiContractAddress)
    if not arg2:
        call daiContractAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(create.new_address), arg4 + arg3 + (arg3 / 100)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 32, 66, code.data[13219 len 66], code.data[2198 len 30]
        mem[ceil32(arg8.length) + 932] = arg9.length
        mem[ceil32(arg8.length) + 964 len arg9.length] = arg9[all]
        mem[arg9.length + ceil32(arg8.length) + 964] = 0
        mem[ceil32(arg8.length) + ceil32(arg9.length) + 964] = arg10.length
        mem[ceil32(arg8.length) + ceil32(arg9.length) + 996 len arg10.length] = arg10[all]
        mem[ceil32(arg8.length) + ceil32(arg9.length) + arg10.length + 996] = 0
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0xadcf4599 with:
             gas gas_remaining wei
            args address(arg1), arg2, arg3 / 3, arg4, arg3 / 100, arg5, arg6, arg7 >> 1280, 352, ceil32(arg8.length) + 384, ceil32(arg8.length) + ceil32(arg9.length) + 416, arg8.length, arg8[all], 0, mem[arg8.length + 964 len ceil32(arg8.length) + ceil32(arg9.length) + -arg8.length + 32], arg10[all], mem[ceil32(arg8.length) + ceil32(arg9.length) + arg10.length + 996 len ceil32(arg10.length) - arg10.length]
    else:
        call daiContractAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(create.new_address), (arg3 / 3) + arg4 + (arg3 / 100)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 32, 66, code.data[13219 len 66], code.data[2198 len 30]
        mem[ceil32(arg8.length) + 932] = arg9.length
        mem[ceil32(arg8.length) + 964 len arg9.length] = arg9[all]
        mem[arg9.length + ceil32(arg8.length) + 964] = 0
        mem[ceil32(arg8.length) + ceil32(arg9.length) + 964] = arg10.length
        mem[ceil32(arg8.length) + ceil32(arg9.length) + 996 len arg10.length] = arg10[all]
        mem[ceil32(arg8.length) + ceil32(arg9.length) + arg10.length + 996] = 0
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0xadcf4599 with:
             gas gas_remaining wei
            args address(arg1), arg2, arg3, arg4, arg3 / 100, arg5, arg6, arg7 >> 1280, 352, ceil32(arg8.length) + 384, ceil32(arg8.length) + ceil32(arg9.length) + 416, arg8.length, arg8[all], 0, mem[arg8.length + 964 len ceil32(arg8.length) + ceil32(arg9.length) + -arg8.length + 32], arg10[all], mem[ceil32(arg8.length) + ceil32(arg9.length) + arg10.length + 996 len ceil32(arg10.length) - arg10.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        return 0
}



}
