contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;

function _fallback() {
    stor0[address(msg.sender)] = 10^6
    return code.data[60 len 288]
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
    if arg2 > balanceOf[address(msg.sender)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    return 1
}



}
