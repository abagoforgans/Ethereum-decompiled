contract main {


// =======================  Init code  ======================


uint256 stor0;
uint128 stor1; offset 168
uint128 stor1; offset 160
address stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    address(stor1.field_0) = msg.sender
    Mask(96, 0, stor1.field_160) = code.data[1069 len 12]
    Mask(88, 0, stor1.field_168) = Mask(88, 168, msg.sender) >> 168
    return code.data[109 len 940]
}



// =====================  Runtime code  =====================


#
#  - delegate(address arg1)
#
address stor0;
uint8 stor1; offset 160
mapping of uint256 stor2;
mapping of uint8 stor3;
mapping of uint256 stor4;
mapping of uint256 stor6;

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function giveRightToVote(address arg1) payable {
    if not stor3[address(arg1)]:
        stor2[address(arg1)] = 1
}

function vote(uint8 arg1) payable {
    if not stor3[address(msg.sender)]:
        if arg1 < stor1:
            stor3[address(msg.sender)] = 1
            stor4[address(msg.sender)] = arg1 or Mask(248, 8, stor4[address(msg.sender)])
            stor6[arg1 << 248] += stor2[address(msg.sender)]
}

function winningProposal() payable {
    idx = 0
    s = 0
    while uint8(idx) < stor1:
        mem[0] = uint8(idx)
        mem[32] = 6
        if stor6[idx << 248] <= s:
            idx = idx + 1
            s = s
            continue 
        mem[0] = uint8(idx)
        mem[32] = 6
        idx = idx + 1
        s = stor6[idx << 248]
        continue 
    return 0
}



}
