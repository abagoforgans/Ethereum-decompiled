contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 353]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert 
}

function checkSig(bytes32 arg1, bytes arg2) {
    mem[128 len arg2.length] = arg2[all]
    if mem[192 len 1] >= 27:
        signer = erecover(arg1, mem[161] << 248, mem[128], mem[160]) 
    else:
        signer = erecover(arg1, mem[192 len 1] + 27 << 248, mem[128], mem[160]) 
    require erecover.result
    return address(signer)
}



}
