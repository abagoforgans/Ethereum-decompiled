contract main {


// =======================  Init code  ======================


uint256 stor1;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[36 len 450]
}



// =====================  Runtime code  =====================


const getAddress = address(this.address)


mapping of uint256 balanceOf;
address stor1;

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function getBalance(address arg1) {
    return balanceOf[address(arg1)]
}

function kill() {
    if stor1 != msg.sender:
    selfdestruct(stor1)
}

function _fallback() payable {
    revert 
}

function incrementBalance(address arg1, uint256 arg2) {
    balanceOf[address(arg1)] += arg2
}

function decrementBalance(address arg1, uint256 arg2) {
    require balanceOf[address(arg1)]
    if balanceOf[address(arg1)] >= arg2:
        balanceOf[address(arg1)] -= arg2
    else:
        balanceOf[address(arg1)] = 0
}



}
