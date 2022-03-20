contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;

function _fallback() payable {
    stor0[address(msg.sender)] = 10
    return code.data[44 len 147]
}



// =====================  Runtime code  =====================


mapping of uint256 stor0;

function _fallback() payable {
  stop
}

function sendCoin(address arg1, uint256 arg2) payable {
    if stor0[address(msg.sender)] < arg2:
        return 0
    stor0[address(msg.sender)] -= arg2
    stor0[arg1] += arg2
    return 1
}



}
