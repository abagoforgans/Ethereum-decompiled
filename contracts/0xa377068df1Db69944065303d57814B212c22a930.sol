contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 246]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function foo(int256 arg1) {
    emit ReturnValue(arg1, msg.sender);
    return arg1
}



}
