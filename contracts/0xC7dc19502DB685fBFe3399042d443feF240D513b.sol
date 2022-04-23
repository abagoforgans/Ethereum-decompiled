contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 294]




// =====================  Runtime code  =====================


function div(uint256 arg1, uint256 arg2) payable {
    require arg2
    return (arg1 / arg2)
}

function sub(uint256 arg1, uint256 arg2) payable {
    require arg2 <= arg1
    return (arg1 - arg2)
}

function add(uint256 arg1, uint256 arg2) payable {
    require arg2 + arg1 >= arg1
    return (arg2 + arg1)
}

function mul(uint256 arg1, uint256 arg2) payable {
    if arg1:
        require arg1
        require arg2 * arg1 / arg1 == arg2
    return (arg2 * arg1)
}

function _fallback() payable {
    if uint32(call.func_hash) == unknown_0x771602f7(?????):
        require arg2 + arg1 >= arg1
        return (arg2 + arg1)
    if unknown_0xa391c15b(?????) == uint32(call.func_hash):
        require arg2
        return (arg1 / arg2)
    if unknown_0xb67d77c5(?????) == uint32(call.func_hash):
        require arg2 <= arg1
        return (arg1 - arg2)
    require unknown_0xc8a4ac9c(?????) == uint32(call.func_hash)
    if arg1:
        require arg1
        require arg2 * arg1 / arg1 == arg2
    return (arg2 * arg1)
}



}
