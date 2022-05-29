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



}
