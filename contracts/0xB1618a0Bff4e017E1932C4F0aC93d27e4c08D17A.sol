contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 1233]




// =====================  Runtime code  =====================


#
#  - getVoters(uint256 arg1, uint256 arg2)
#
mapping of uint256 votes;
array of address voters;

function votersCount() {
    return voters.length
}

function votes(address arg1) {
    return votes[arg1]
}

function voters(uint256 arg1) {
    require arg1 < voters.length
    return address(voters[arg1])
}

function _fallback() payable {
    revert
}

function vote(uint256 arg1) {
    require arg1
    if not votes[address(msg.sender)]:
        voters.length++
        if not voters.length <= voters.length + 1:
            idx = voters.length + 1
            while voters.length > idx:
                uint256(voters[idx]) = 0
                idx = idx + 1
                continue 
        address(voters[voters.length]) = msg.sender
    votes[address(msg.sender)] = arg1
    emit onVote(msg.sender, arg1);
}



}
