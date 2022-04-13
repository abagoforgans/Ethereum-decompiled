contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 527]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function safeToSub(uint256 arg1, uint256 arg2) payable {
    return arg1 >= arg2
}

function safeToAdd(uint256 arg1, uint256 arg2) payable {
    return arg1 + arg2 >= arg1
}

function sub(uint256 arg1, uint256 arg2) payable {
    require arg1 >= arg2
    return (arg1 - arg2)
}

function add(uint256 arg1, uint256 arg2) payable {
    require arg1 + arg2 >= arg1
    return (arg2 + arg1)
}

function mul(uint256 arg1, uint256 arg2) payable {
    if arg2:
        require arg2
        require arg1 * arg2 / arg2 == arg1
    return (arg2 * arg1)
}

function safeToMul(uint256 arg1, uint256 arg2) payable {
    if not arg2:
        return not bool(arg2)
    require arg2
    return (arg1 * arg2 / arg2 == arg1)
}



}
