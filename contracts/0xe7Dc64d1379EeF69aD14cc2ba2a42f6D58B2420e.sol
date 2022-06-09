contract main {




// =====================  Runtime code  =====================


uint256 winningCandidate;

function winningCandidate() {
    return winningCandidate
}

function _fallback() payable {
    revert
}



}
