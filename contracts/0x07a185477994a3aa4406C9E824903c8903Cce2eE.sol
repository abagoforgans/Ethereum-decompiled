contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
array of struct candidates;
uint256 candidatesCount;

function candidatesCount() {
    return candidatesCount
}

function candidates(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[128] = candidates[arg1][1].field_0
    idx = 128
    s = 0
    while candidates[arg1][1].length + 96 > idx:
        mem[idx + 32] = candidates[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return candidates[arg1].field_0, 
           Array(len=candidates[arg1][1].length, data=mem[128 len candidates[arg1][1].length]),
           candidates[arg1].field_512
}

function voters(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[arg1])
}

function _fallback() payable {
    revert
}

function vote(uint256 arg1) {
    require calldata.size - 4 >= 32
    require not stor0[address(msg.sender)]
    require arg1 > 0
    require arg1 <= candidatesCount
    stor0[address(msg.sender)] = 1
    candidates[arg1].field_512++
    emit votedEvent(arg1);
}



}
