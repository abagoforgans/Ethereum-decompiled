contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() {
    stor1 = code.data[746 len 20]
    return code.data[72 len 662]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert 
}

function sub_7d346c8c(?) {
    require stor1 == msg.sender
    stor1 = arg1
}

function sub_a5f77914(?) {
    require stor1 == msg.sender
    stor0 = arg1
    return 0
}

function tickRequiredLog(uint256 arg1, address arg2, uint256 arg3) {
    require stor0 == msg.sender
    emit GameNeedsTick(arg1, address(arg2), arg3);
}

function recordLog(uint256 arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, uint8 arg6) {
    require stor0 == msg.sender
    emit GameEnded(arg1, address(arg2), arg3, arg4, arg5, arg6 << 248);
}



}
