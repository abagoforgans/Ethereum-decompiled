contract main {


// =======================  Init code  ======================


const _fallback = code.data[29 len 248]




// =====================  Runtime code  =====================


function minus(uint256 arg1, uint256 arg2) payable {
    require arg2 <= arg1
    return (arg1 - arg2)
}

function plus(uint256 arg1, uint256 arg2) payable {
    require arg2 + arg1 >= arg1
    return (arg2 + arg1)
}

function times(uint256 arg1, uint256 arg2) payable {
    if not arg1:
        return (arg2 * arg1)
    require arg1
    require arg2 * arg1 / arg1 == arg2
    return (arg2 * arg1)
}

function _fallback() payable {
    if uint32(call.func_hash) == unknown_0x1d3b9edf(?????):
        if not arg1:
            return (arg2 * arg1)
        if arg1:
            if arg2 * arg1 / arg1 == arg2:
                return (arg2 * arg1)
    else:
        if unknown_0x66098d4f(?????) == uint32(call.func_hash):
            if arg2 + arg1 >= arg1:
                return (arg2 + arg1)
        else:
            require unknown_0xf4f3bdc1(?????) == uint32(call.func_hash)
            if arg2 <= arg1:
                return (arg1 - arg2)
    revert
}



}
