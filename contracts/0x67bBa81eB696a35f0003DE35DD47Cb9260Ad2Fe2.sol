contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;

function _fallback() payable {
    stor0 = 66666
    require not msg.value
    stor1[address(msg.sender)] = stor0
    return code.data[107 len 574]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
}



}
