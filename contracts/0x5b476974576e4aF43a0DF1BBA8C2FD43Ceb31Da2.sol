contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 3186]




// =====================  Runtime code  =====================


address owner;
address executorAddress;
mapping of uint256 voteRewardPerUnit;
mapping of uint256 voteWeightUnit;
mapping of uint256 voteStart;
mapping of uint256 voteEnd;
mapping of uint256 maxCandidateId;
mapping of uint8 stor7;
mapping of uint256 results;

function voteRewardPerUnit(uint256 arg1) {
    return voteRewardPerUnit[arg1]
}

function voted(uint256 arg1, address arg2) {
    return bool(stor7[arg1][arg2])
}

function voteWeightUnit(uint256 arg1) {
    return voteWeightUnit[arg1]
}

function owner() {
    return owner
}

function executor() {
    return executorAddress
}

function maxCandidateId(uint256 arg1) {
    return maxCandidateId[arg1]
}

function results(uint256 arg1, uint256 arg2) {
    return results[arg1][arg2]
}

function voteEnd(uint256 arg1) {
    return voteEnd[arg1]
}

function voteStart(uint256 arg1) {
    return voteStart[arg1]
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    if owner:
        require owner == msg.sender
    owner = arg1
}

function setExecutor(address arg1) {
    if executorAddress:
        if owner != msg.sender:
            require executorAddress == msg.sender
    executorAddress = arg1
}

function voteInitiate(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require msg.sender == owner
    require not voteEnd[arg1]
    require arg5
    voteRewardPerUnit[arg1] = arg2
    voteWeightUnit[arg1] = arg3
    voteStart[arg1] = arg4
    voteEnd[arg1] = arg5
    maxCandidateId[arg1] = arg6
    emit LogVoteInitiate(arg1, arg2, arg3, arg4, arg5, arg6);
}

function vote(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require msg.sender == owner
    require block.timestamp > voteStart[arg3]
    require block.timestamp <= voteEnd[arg3]
    require maxCandidateId[arg3] >= arg4
    require arg2 >= voteRewardPerUnit[arg3]
    require not stor7[arg3][address(arg1)]
    require voteWeightUnit[arg3]
    require results[arg3][arg4] + (arg2 / voteWeightUnit[arg3]) >= results[arg3][arg4]
    results[arg3][arg4] += arg2 / voteWeightUnit[arg3]
    stor7[arg3][address(arg1)] = 1
    emit LogVote(address(arg1), arg2 / voteWeightUnit[arg3], arg3, arg4, results[arg3][arg4]);
    return arg2 / voteWeightUnit[arg3] * voteWeightUnit[arg3] * voteRewardPerUnit[arg3] / 100 / 100, voteEnd[arg3]
}



}
