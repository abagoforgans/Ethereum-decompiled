contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 642]




// =====================  Runtime code  =====================


mapping of uint256 votes;
mapping of uint8 stor1;

function hasVoted(address arg1) {
    return bool(stor1[arg1])
}

function votes(uint256 arg1) {
    return votes[arg1]
}

function _fallback() payable {
    revert
}

function vote(uint256 arg1) {
    require not stor1[address(msg.sender)]
    votes[arg1]++
    stor1[address(msg.sender)] = 1
    emit Voted(msg.sender, arg1);
}



}
