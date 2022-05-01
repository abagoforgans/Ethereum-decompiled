contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 2124]




// =====================  Runtime code  =====================


#
#  - delegate(address arg1)
#
address stor0;
mapping of struct stor1;
array of uint256 stor2;

function _fallback() payable {
    revert
}

function giveRightToVote(address arg1) {
    if msg.sender == stor0:
        if not stor1[address(arg1)].field_256:
            stor1[address(arg1)].field_0 = 1
}

function vote(uint8 arg1) {
    if not stor1[address(msg.sender)].field_256:
        if arg1 < stor2.length:
            stor1[address(msg.sender)].field_256 = 1
            stor1[address(msg.sender)].field_264 = arg1
            stor2[arg1].field_0 += stor1[address(msg.sender)].field_0
}

function Ballot(uint8 arg1) {
    stor0 = msg.sender
    stor1[stor0].field_0 = 1
    uint8(stor2.length) = arg1
    stor2.length.field_8 = 0
    if not stor2.length <= arg1:
        idx = arg1
        while stor2.length > idx:
            stor2[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function winningProposal() {
    idx = 0
    s = 0
    while uint8(idx) < stor2.length:
        mem[0] = 2
        if stor2[uint8(idx)].field_0 <= s:
            idx = idx + 1
            s = s
            continue 
        require uint8(idx) < stor2.length
        mem[0] = 2
        idx = idx + 1
        s = stor2[uint8(idx)].field_0
        continue 
    return 0
}



}
