contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    require not msg.value
    return code.data[94 len 1624]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_0b9cb098(?) {
    require stor0 == msg.sender
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819 with:
       funct Mask(32, 224, sha3('testTrade(address, uint, address', ', uint, uint, uint, address, uin', 't8, bytes32, bytes32, uint, addr', 'ess)')) >> 224
         gas gas_remaining - 25710 wei
        args address(arg1), arg2, address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10, arg11, stor0
    if not ext_call.success:
        return 0
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819 with:
       funct Mask(32, 224, sha3('trade(address, uint, address, ui', 'nt, uint, uint, address, uint8, ', 'bytes32, bytes32, uint)')) >> 224
         gas gas_remaining - 25710 wei
        args address(arg1), arg2, address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10, arg11
    return bool(ext_call.success)
}



}
