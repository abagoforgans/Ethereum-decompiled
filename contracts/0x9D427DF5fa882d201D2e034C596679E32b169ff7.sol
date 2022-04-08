contract main {


// =======================  Init code  ======================


uint256 stor1;

function _fallback() {
    mem[96 len -529] = code.data[713 len -529]
    mem[64] = -433
    stor1 = mem[mem[96] + 96]
    if not mem[mem[96] + 96]:
        idx = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6
        while stor1 - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6
        idx = mem[96] + 128
        while mem[96] + (32 * mem[mem[96] + 96]) + 128 > idx:
            stor[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = (Mask(251, 0, (32 * mem[mem[96] + 96]) + 31) >> 5) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a
        while stor1 - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    return code.data[184 len 529]
}



// =====================  Runtime code  =====================


mapping of uint8 votesReceived;
array of uint256 candidateList;

function totalVotesFor(bytes32 arg1) {
    require 0 < candidateList.length
    idx = 0
    while candidateList[idx] != arg1:
        require idx + 1 < candidateList.length
        mem[0] = 1
        idx = idx + 1
        continue 
    return votesReceived[arg1]
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
    require 0 < candidateList.length
    idx = 0
    while candidateList[idx] != arg1:
        require idx + 1 < candidateList.length
        mem[0] = 1
        idx = idx + 1
        continue 
    votesReceived[arg1] = uint8(votesReceived[arg1] + 1)
}



}
