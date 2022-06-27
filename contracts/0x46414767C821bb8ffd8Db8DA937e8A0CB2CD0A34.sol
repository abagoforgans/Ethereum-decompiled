contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function recoverAddr(bytes32 arg1, uint8 arg2, bytes32 arg3, bytes32 arg4) {
    signer = erecover(arg1, arg2 << 248, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function isSigned(address arg1, bytes32 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) {
    signer = erecover(arg2, arg3 << 248, arg4, arg5) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return (address(signer) == arg1)
}



}
