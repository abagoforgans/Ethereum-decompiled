contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
array of uint256 stor2;

function _fallback() {
    mem[96 len -621] = code.data[1002 len -621]
    mem[64] = -525
    stor0 = msg.sender
    stor1 = msg.sender
    stor2[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    return code.data[381 len 621]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 objective;

function getObjective() {
    return objective[0 len objective.length]
}

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}



}
