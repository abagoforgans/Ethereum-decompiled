contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
address stor1;

function _fallback() {
    stor1 = msg.sender
    stor0[address(msg.sender)] = 1000
    return code.data[76 len 390]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
address owner;

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function _fallback() payable {
    revert 
}

function send(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require arg2 >= 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
}



}
