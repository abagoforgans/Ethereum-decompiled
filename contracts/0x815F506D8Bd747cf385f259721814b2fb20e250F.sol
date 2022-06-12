contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
mapping of uint8 votes;
uint8 m;
uint8 n; offset 8
uint8 stor2; offset 80
uint64 stor2; offset 16
address stor2; offset 88
uint256 finalValue; offset 16

function votes(bytes8 arg1) {
    return votes[Mask(64, 192, arg1)]
}

function n() {
    return n
}

function m() {
    return m
}

function finalValue() {
    return (finalValue << 192)
}

function _fallback() payable {
    revert
}

function addVoter(address arg1, string arg2) {
    require msg.sender == address(stor2.field_88)
    require uint8(stor2.field_80) < n
    require not stor0[address(arg1)].field_0
    stor0[address(arg1)].field_0 = 1
    stor0[address(arg1)][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    uint8(stor2.field_80) = uint8(uint8(stor2.field_80) + 1)
    emit VoterAdded(arg1);
}

function voters(address arg1) {
    mem[128] = stor0[arg1][1].field_0
    idx = 128
    s = 0
    while stor0[arg1][1].length + 96 > idx:
        mem[idx + 32] = stor0[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return bool(stor0[arg1].field_0), 
           bool(stor0[arg1].field_8),
           Array(len=stor0[arg1][1].length, data=mem[128 len stor0[arg1][1].length])
}

function submitValue(bytes8 arg1) {
    require stor0[address(msg.sender)].field_0
    require not stor0[address(msg.sender)].field_8
    stor0[address(msg.sender)].field_8 = 1
    votes[Mask(64, 192, arg1)] = uint8(votes[Mask(64, 192, arg1)] + 1)
    emit VoteSubmitted(msg.sender, Mask(64, 192, arg1));
    if votes[Mask(64, 192, arg1)] == m:
        uint64(stor2.field_16) = arg1
        emit ValueFinalized(Mask(64, 192, arg1));
}



}
