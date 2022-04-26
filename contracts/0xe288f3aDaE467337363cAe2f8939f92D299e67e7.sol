contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[94 len 3117]
}



// =====================  Runtime code  =====================


address stor0;
address sub_30cdfeb3Address;

function sub_30cdfeb3(?) {
    return sub_30cdfeb3Address
}

function _fallback() payable {
    revert
}

function sub_c8086f25(?) {
    require stor0 == msg.sender
    return 'Shit'
}

function sub_189bd4b9(?) {
    require ext_code.size(arg1)
    call arg1.0xed40a8c8 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_43d11202(?) {
    require ext_code.size(arg1)
    call arg1.0xed40a8c8 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_176e9ccc(?) {
    require ext_code.size(arg1)
    call arg1.amountFilled(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
         gas gas_remaining - 710 wei
        args 0, 0, arg2, address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_f235a194(?) {
    require ext_code.size(arg1)
    call arg1.availableVolume(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
         gas gas_remaining - 710 wei
        args 0, 0, arg2, address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_26d7a034(?) {
    require ext_code.size(arg1)
    call arg1.testTrade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11, address rg12) with:
         gas gas_remaining - 710 wei
        args 0, 0, arg2, address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10, arg11, arg12
    require ext_call.success
    return bool(ext_call.return_data[0])
}



}
