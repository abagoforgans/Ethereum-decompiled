contract main {


// =======================  Init code  ======================


uint8 stor2;
uint8 stor2; offset 8
uint128 stor2; offset 16
address stor2; offset 88
uint256 stor2; offset 16

function _fallback() {
    uint8(stor2.field_0) = code.data[1259 len 1]
    uint8(stor2.field_8) = code.data[1291 len 1]
    Mask(240, 0, stor2.field_16) = Mask(72, 0, stor2.field_16)
    address(stor2.field_88) = msg.sender
    return code.data[126 len 1102]
}



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

function voters(address arg1) {
    return bool(stor0[arg1].field_0), bool(stor0[arg1].field_8)
}

function addVoter(address arg1) {
    require address(stor2.field_88) == msg.sender
    require n != uint8(stor2.field_80)
    require not stor0[address(arg1)].field_0
    stor0[address(arg1)].field_0 = 1
    uint8(stor2.field_80) = uint8(uint8(stor2.field_80) + 1)
    emit VoterAdded(arg1);
}

function submitValue(bytes8 arg1) {
    require stor0[address(msg.sender)].field_0
    require not stor0[address(msg.sender)].field_8
    stor0[address(msg.sender)].field_8 = 1
    votes[Mask(64, 192, arg1)] = uint8(votes[Mask(64, 192, arg1)] + 1)
    emit VoteSubmitted(msg.sender, Mask(64, 192, arg1));
    if m == votes[Mask(64, 192, arg1)]:
        uint64(stor2.field_16) = arg1
        emit ValueFinalized(Mask(64, 192, arg1));
}



}
