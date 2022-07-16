contract main {




// =====================  Runtime code  =====================


#
#  - sub_ada278d6(?)
#
mapping of uint256 winner;
mapping of uint256 checkWinner;

function checkWinner(uint256 arg1) {
    return checkWinner[arg1]
}

function winner(uint256 arg1) {
    return winner[arg1]
}

function _fallback() payable {
    revert
}



}
