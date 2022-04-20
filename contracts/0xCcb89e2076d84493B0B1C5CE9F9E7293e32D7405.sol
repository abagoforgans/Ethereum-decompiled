contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[94 len 762]
}



// =====================  Runtime code  =====================


array of uint256 commitments;

function commitments(address arg1) {
    return commitments[arg1][0 len commitments[arg1].length]
}

function _fallback() payable {
    revert
}

function addGoal(string arg1) payable {
    commitments[address(msg.sender)] = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        commitments[address(msg.sender)][s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while commitments[address(msg.sender)].length + 31 / 32 > idx:
        commitments[address(msg.sender)][idx] = 0
        idx = idx + 1
        continue 
}



}
