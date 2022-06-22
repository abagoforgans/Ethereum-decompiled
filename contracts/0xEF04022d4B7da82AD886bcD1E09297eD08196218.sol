contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 1030]




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function _fallback() payable {
    revert
}

function mint(address arg1, uint256 arg2) {
    balanceOf[address(arg1)] += 2 * arg2
    emit Transfer(0, address(arg1), arg2);
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(msg.sender, address(arg1), arg2);
}



}
