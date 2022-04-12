contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 824]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function dividedBy(uint256 arg1, uint256 arg2) payable {
    if arg2:
        return mem[96], arg1 / arg2
    emit Err('tried to divide by zero');
    return 1, 0
}

function times(uint256 arg1, uint256 arg2) payable {
    if arg1 == arg2 * arg1 / arg2 or not arg2:
        return 0, arg2 * arg1
    emit Err('times func overflow');
    return 1, 0
}

function plus(uint256 arg1, uint256 arg2) payable {
    if arg2 == arg2 + arg1 or arg2 + arg1 > arg2 and arg1 == arg1:
        return 0, arg2 + arg1
    emit Err('plus func overflow');
    return 1, 0
}

function minus(uint256 arg1, uint256 arg2) payable {
    if 1 == arg1 == arg1 - arg2 or arg1 - arg2 < arg1 and arg1 == arg1:
        return 0, arg1 - arg2
    emit Err('minus func underflow');
    return 1, 0
}



}
