contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;

function _fallback() {
    stor0[address(msg.sender)] = 10000
    return code.data[102 len 440]
}



// =====================  Runtime code  =====================


mapping of uint256 stor0;

function _fallback() payable {
    revert
}

function sendCoin(address arg1, uint256 arg2) {
    if stor0[address(msg.sender)] < arg2:
        return 0
    stor0[address(msg.sender)] -= arg2
    stor0[address(arg1)] += arg2
    return 1
}



}
