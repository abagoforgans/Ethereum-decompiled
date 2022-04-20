contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 530]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function minus(uint256 arg1, uint256 arg2) payable {
    require arg2 <= arg1
    return (arg1 - arg2)
}

function plus(uint256 arg1, uint256 arg2) payable {
    require arg1 + arg2 >= arg1
    return (arg1 + arg2)
}

function divides(uint256 arg1, uint256 arg2) payable {
    require arg2 > 0
    require arg2
    require arg1 == (arg2 * arg1 / arg2) + (arg1 % arg2)
    return (arg1 / arg2)
}

function times(uint256 arg1, uint256 arg2) payable {
    if not arg1:
        return (arg1 * arg2)
    require arg1
    require arg1 * arg2 / arg1 == arg2
    return (arg1 * arg2)
}



}
