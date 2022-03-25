contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = code.data[369 len 32]
    return code.data[55 len 314]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
  stop
}

function verify(bytes32 arg1, uint8 arg2, bytes32 arg3, bytes32 arg4) payable {
    signer = erecover(arg1, arg2 << 248, arg3, arg4) 
    require erecover.result
    call stor0.0x97a993aa with:
         gas gas_remaining - 25050 wei
        args address(signer)
    require ext_call.success
    if ext_call.return_data[12 len 20] != 0:
        return (arg1 == sha3(address(ext_call.return_data[0])))
    else:
        return 0
}



}
