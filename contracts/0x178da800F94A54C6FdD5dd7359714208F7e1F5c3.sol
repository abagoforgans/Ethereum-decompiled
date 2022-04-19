contract main {


// =======================  Init code  ======================


array of uint256 stor1;

function _fallback() {
    mem[96 len -790] = code.data[997 len -790]
    mem[64] = -694
    stor1.length = mem[mem[96] + 96]
    if not mem[mem[96] + 96]:
        idx = 0
        while stor1.length > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[96] + 128
        while mem[96] + (32 * mem[mem[96] + 96]) + 128 > idx:
            stor1[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[96] + 96]) + 31) >> 5
        while stor1.length > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
    return code.data[207 len 790]
}



// =====================  Runtime code  =====================


mapping of uint8 votesReceived;
array of uint256 candidateList;

function totalVotesFor(bytes32 arg1) {
    idx = 0
    while idx < candidateList.length:
        mem[0] = 1
        if candidateList[idx] != arg1:
            idx = idx + 1
            continue 
        return votesReceived[arg1]
    revert
}

function votesReceived(bytes32 arg1) {
    return votesReceived[arg1]
}

function candidateList(uint256 arg1) {
    require arg1 < candidateList.length
    return candidateList[arg1]
}

function _fallback() payable {
    revert
}

function validCandidate(bytes32 arg1) {
    idx = 0
    while idx < candidateList.length:
        mem[0] = 1
        if candidateList[idx] != arg1:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function voteForCandidate(bytes32 arg1) {
    idx = 0
    while idx < candidateList.length:
        mem[0] = 1
        if candidateList[idx] != arg1:
            idx = idx + 1
            continue 
        votesReceived[arg1] = uint8(votesReceived[arg1] + 1)
    revert
}



}
