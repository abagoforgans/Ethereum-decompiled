contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function _fallback() payable {
    revert
}

function MyToken(uint256 arg1) {
    balanceOf[msg.sender] = arg1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[msg.sender]
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[msg.sender] -= arg2
    balanceOf[arg1] += arg2
    return 1
}



}
