contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
uint128 stor0; offset 168
address stor0;

function _fallback() payable {
    address(stor0.field_0) = msg.sender
    uint8(stor0.field_160) = 31
    Mask(88, 0, stor0.field_168) = Mask(88, 168, msg.sender) >> 168
    return code.data[73 len 1208]
}



// =====================  Runtime code  =====================


#
#  - delegate(address arg1)
#
uint8 numProposals; offset 160
address chairpersonAddress;
mapping of uint256 sub_861b7d75;
mapping of uint8 voted;
mapping of uint8 votes;
mapping of address sub_bffe3486;
mapping of uint256 sub_bdeba8bc;

function chairperson() payable {
    return chairpersonAddress
}

function numProposals() payable {
    return numProposals
}

function sub_861b7d75(?) payable {
    return sub_861b7d75[arg1]
}

function voted(address arg1) payable {
    return voted[arg1]
}

function sub_bdeba8bc(?) payable {
    return sub_bdeba8bc[arg1]
}

function sub_bffe3486(?) payable {
    return sub_bffe3486[arg1]
}

function votes(address arg1) payable {
    return uint8(votes[arg1])
}

function _fallback() payable {
  stop
}

function giveRightToVote(address arg1) payable {
    if msg.sender == chairpersonAddress:
        if not voted[address(arg1)]:
            sub_861b7d75[address(arg1)] = 1
}

function vote(uint8 arg1) payable {
    if not voted[address(msg.sender)]:
        if arg1 < numProposals:
            voted[address(msg.sender)] = 1
            uint256(votes[address(msg.sender)]) = arg1 or Mask(248, 8, uint256(votes[address(msg.sender)]))
            sub_bdeba8bc[arg1 << 248] += sub_861b7d75[address(msg.sender)]
}

function winningProposal() payable {
    idx = 0
    s = 0
    while uint8(idx) < numProposals:
        mem[0] = uint8(idx)
        mem[32] = 5
        if sub_bdeba8bc[idx << 248] <= s:
            idx = idx + 1
            s = s
            continue 
        mem[0] = uint8(idx)
        mem[32] = 5
        idx = idx + 1
        s = sub_bdeba8bc[idx << 248]
        continue 
    return 0
}



}
