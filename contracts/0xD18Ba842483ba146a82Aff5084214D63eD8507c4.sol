contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1021]




// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
mapping of struct stor1;
array of uint256 stor2;

function _fallback() payable {
  stop
}

function giveRightToVote(address arg1) payable {
    if msg.sender == address(stor0):
        if not stor1[address(arg1)].field_256:
            stor1[address(arg1)].field_0 = 1
}

function vote(uint8 arg1) payable {
    if not stor1[address(msg.sender)].field_256:
        if arg1 < stor2.length:
            stor1[address(msg.sender)].field_256 = 1
            stor1[address(msg.sender)].field_264 = Mask(248, 0, arg1)
            require arg1 < stor2.length
            stor2[arg1].field_0 += stor1[address(msg.sender)].field_0
}

function Ballot(uint8 arg1) payable {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    stor1[address(stor0)].field_0 = 1
    uint8(stor2.length) = arg1
    stor2.length.field_8 = 0
    if not stor2.length <= arg1:
        idx = arg1
        while stor2.length > idx:
            stor2[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function winningProposal() payable {
    idx = 0
    s = 0
    while uint8(idx) < stor2.length:
        require idx < stor2.length
        mem[0] = 2
        if stor2[idx].field_0 <= s:
            idx = idx + 2
            s = s
            continue 
        require idx < stor2.length
        mem[0] = 2
        idx = idx + 2
        s = stor2[idx].field_0
        continue 
    return 0
}



}
