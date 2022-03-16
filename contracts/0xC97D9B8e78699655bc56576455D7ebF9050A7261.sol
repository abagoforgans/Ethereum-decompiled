contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
uint256 stor0;

function _fallback() payable {
    uint256(stor0.field_0) = msg.sender or Mask(96, 160, uint256(stor0.field_0))
    Mask(96, 0, stor0.field_160) = Mask(96, 0, code.data[1855 len 32])
    return code.data[119 len 1736]
}



// =====================  Runtime code  =====================


#
#  - delegate(address arg1)
#
uint8 stor0; offset 160
mapping of uint256 stor1;
mapping of uint8 stor2;
mapping of uint256 stor3;
mapping of uint256 stor5;

function _fallback() payable {
  stop
}

function giveRightToVote(address arg1) payable {
    if not stor2[address(arg1)]:
        stor1[address(arg1)] = 1
}

function vote(uint8 arg1) payable {
    if not stor2[address(msg.sender)]:
        if arg1 < stor0:
            stor2[address(msg.sender)] = 1
            stor3[address(msg.sender)] = arg1 or Mask(248, 8, stor3[address(msg.sender)])
            stor5[arg1 << 248] += stor1[address(msg.sender)]
}

function winningProposal() payable {
    idx = 0
    s = 0
    while uint8(idx) < stor0:
        mem[0] = uint8(idx)
        mem[32] = 5
        if stor5[idx << 248] <= s:
            idx = idx + 1
            s = s
            continue 
        mem[0] = uint8(idx)
        mem[32] = 5
        idx = idx + 1
        s = stor5[idx << 248]
        continue 
    return 0
}



}
