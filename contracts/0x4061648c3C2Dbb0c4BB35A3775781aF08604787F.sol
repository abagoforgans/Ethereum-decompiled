contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 319]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

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
    if not arg1:
        return (arg2 * arg1)
    require arg1
    require arg2 * arg1 / arg1 == arg2
    return (arg2 * arg1)
}



}
