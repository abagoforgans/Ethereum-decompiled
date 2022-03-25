contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 481]




// =====================  Runtime code  =====================


mapping of uint256 stor0;

function _fallback() payable {
    revert 
}

function lock(bytes32 arg1) payable {
    stor0[arg1] += msg.value
}

function release(string arg1) {
    hash = sha256hash(arg1[all]) 
    require sha256hash.result
    require stor0[hash]
    stor0[hash] = 0
    call msg.sender with:
       value stor0[hash] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
