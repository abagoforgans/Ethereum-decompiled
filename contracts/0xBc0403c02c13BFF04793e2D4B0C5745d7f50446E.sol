contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 337]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function minus(uint256 arg1, uint256 arg2) payable {
    require arg2 <= arg1
    return (arg1 - arg2)
}

function plus(uint256 arg1, uint256 arg2) payable {
    require arg2 + arg1 >= arg1
    return (arg2 + arg1)
}

function times(uint256 arg1, uint256 arg2) payable {
    if arg1:
        require arg1
        require arg2 * arg1 / arg1 == arg2
    return (arg2 * arg1)
}



}
