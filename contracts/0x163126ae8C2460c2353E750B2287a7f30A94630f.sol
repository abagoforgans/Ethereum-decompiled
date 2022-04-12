contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;

function _fallback() {
    stor0[address(msg.sender)] = code.data[437 len 32]
    return code.data[83 len 354]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
            balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
}



}
