contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
mapping of uint256 votesReceived;
array of struct candidateList;
uint256 totalTokens;
uint256 sub_e4494a0f;
uint256 tokenPrice;

function totalVotesFor(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return votesReceived[arg1]
}

function votesReceived(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return votesReceived[arg1]
}

function totalTokens() {
    return totalTokens
}

function tokenPrice() {
    return tokenPrice
}

function candidateList(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < candidateList.length
    return candidateList[arg1].field_0
}

function sub_e4494a0f(?) {
    return sub_e4494a0f
}

function _fallback() payable {
    revert
}

function tokensSold() {
    return (totalTokens - sub_e4494a0f)
}

function voterInfo(address arg1) {
    require calldata.size - 4 >= 32
    return stor0[arg1].field_0, stor0[arg1].field_256
}

function sub_ecd098b0(?) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < candidateList.length:
        mem[0] = 2
        if candidateList[idx].field_0 != arg1:
            idx = idx + 1
            continue 
        return idx
    return -1
}

function buy() payable {
    require tokenPrice
    require msg.value / tokenPrice <= sub_e4494a0f
    stor0[address(msg.sender)].field_0 = msg.sender
    stor0[address(msg.sender)].field_256 += msg.value / tokenPrice
    sub_e4494a0f -= msg.value / tokenPrice
    call 0xc7973a870a120d547a7d373c5343dff484117732 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5938750d(?) {
    require calldata.size - 4 >= 32
    if stor0[address(arg1)].field_512:
        mem[128] = stor0[address(arg1)][2].field_0
        idx = 128
        s = 0
        while (32 * stor0[address(arg1)].field_512) + 96 > idx:
            mem[idx + 32] = stor0[address(arg1)][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor0[address(arg1)].field_512) + 224 len floor32(stor0[address(arg1)].field_512)] = mem[128 len floor32(stor0[address(arg1)].field_512)]
    return stor0[address(arg1)].field_256, 
           Array(len=stor0[address(arg1)].field_512, data=mem[128 len floor32(stor0[address(arg1)].field_512)], mem[(32 * stor0[address(arg1)].field_512) + floor32(stor0[address(arg1)].field_512) + 224 len (32 * stor0[address(arg1)].field_512) - floor32(stor0[address(arg1)].field_512)])
}

function sub_81c40715(?) {
    if not candidateList.length:
        mem[(32 * candidateList.length) + 128] = 32
        mem[(32 * candidateList.length) + 160] = candidateList.length
        mem[(32 * candidateList.length) + 192 len floor32(candidateList.length)] = mem[128 len floor32(candidateList.length)]
        return memory
          from (32 * candidateList.length) + 128
           len (96 * candidateList.length) + 64
    mem[128] = uint256(candidateList.field_0)
    idx = 128
    s = 0
    while (32 * candidateList.length) + 96 > idx:
        mem[idx + 32] = candidateList[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * candidateList.length) + 192 len floor32(candidateList.length)] = mem[128 len floor32(candidateList.length)]
    return Array(len=candidateList.length, data=mem[128 len floor32(candidateList.length)], mem[(32 * candidateList.length) + floor32(candidateList.length) + 192 len (32 * candidateList.length) - floor32(candidateList.length)]), 
}

function sub_6b2dc6b5(?) {
    require calldata.size - 4 >= 64
    if stor0[address(msg.sender)].field_512:
        mem[128] = stor0[address(msg.sender)][2].field_0
        idx = 128
        s = 0
        while (32 * stor0[address(msg.sender)].field_512) + 96 > idx:
            mem[idx + 32] = stor0[address(msg.sender)][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    s = 0
    while idx < stor0[address(msg.sender)].field_512:
        require idx < stor0[address(msg.sender)].field_512
        idx = idx + 1
        s = s + mem[(32 * idx) + 128]
        continue 
    if arg2 > stor0[address(msg.sender)].field_256 - (s * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512 * stor0[address(msg.sender)].field_512):
        revert with 0, 'You don't have enough tokens'
    votesReceived[arg1] += arg2
    if not stor0[address(msg.sender)].field_512:
        idx = 0
        while idx < candidateList.length:
            mem[32] = 0
            stor0[address(msg.sender)].field_512++
            mem[0] = sha3(address(msg.sender), 0) + 2
            stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor0', 0))) + stor0[address(msg.sender)].field_512].field_0 = 0
            idx = idx + 1
            continue 
    idx = 0
    while idx < candidateList.length:
        mem[0] = 2
        if candidateList[idx].field_0 != arg1:
            idx = idx + 1
            continue 
        require idx < stor0[address(msg.sender)].field_512
        stor0[address(msg.sender)][idx + 2].field_0 += arg2
    require -1 < stor0[address(msg.sender)].field_512
    stor0[address(msg.sender)][2].field_0 += arg2
}



}
