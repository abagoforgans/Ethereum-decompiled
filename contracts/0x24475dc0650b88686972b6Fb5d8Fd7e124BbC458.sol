contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 873]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert 
}

function safeToSubtract(uint256 arg1, uint256 arg2) payable {
    return arg2 <= arg1
}

function safeToAdd(uint256 arg1, uint256 arg2) payable {
    return arg1 + arg2 >= arg1
}

function subtract(uint256 arg1, uint256 arg2) payable {
    require arg2 <= arg1
    return (arg1 - arg2)
}

function add(uint256 arg1, uint256 arg2) payable {
    require arg1 + arg2 >= arg1
    return (arg2 + arg1)
}

function safeToMultiply(uint256 arg1, uint256 arg2) payable {
    if not arg1:
        return not bool(arg1)
    return (arg1 * arg2 / arg1 == arg2)
}

function add(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require arg1 + arg2 >= arg1
    require arg3 >= 0
    return (arg3 + arg1 + arg2)
}

function subtract(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require arg2 <= arg1
    require arg3 <= arg1 - arg2
    return (arg1 - arg2 - arg3)
}

function multiply(uint256 arg1, uint256 arg2) payable {
    if not arg1:
        return (arg2 * arg1)
    require arg1 * arg2 / arg1 == arg2
    return (arg2 * arg1)
}

function sub_b0144e49(?) payable {
    require arg2 <= arg1
    require arg3 <= arg1 - arg2
    require arg4 <= arg1 - arg2 - arg3
    return (arg1 - arg2 - arg3 - arg4)
}

function add(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require arg1 + arg2 >= arg1
    require arg3 >= 0
    require arg4 >= 0
    return (arg4 + arg1 + arg2 + arg3)
}



}
