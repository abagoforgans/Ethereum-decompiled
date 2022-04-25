contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 1448]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_8df1b762(?) {
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819 with:
       funct Mask(32, 224, sha3('testTrade(address, uint, address', ', uint, uint, uint, address, uin', 't8, bytes32, bytes32, uint, addr', 'ess)')) >> 224
         gas gas_remaining - 25710 wei
        args address(arg1), arg2, address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg11, arg10
    if not ext_call.success:
        return 0
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819 with:
       funct Mask(32, 224, sha3('trade(address, uint, address, ui', 'nt, uint, uint, address, uint8, ', 'bytes32, bytes32, uint, address)')) >> 224
         gas gas_remaining - 25710 wei
        args address(arg1), arg2, address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg11, arg10
    return bool(ext_call.success)
}



}
