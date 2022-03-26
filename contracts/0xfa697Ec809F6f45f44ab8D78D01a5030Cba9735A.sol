contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint256 stor1;
array of uint256 stor2;

function _fallback() {
    stor0 = msg.sender
    stor1[stor0] = 1
    uint8(stor2.length) = code.data[1914 len 1]
    stor2.length.field_8 = 0
    if not stor2.length <= code.data[1914 len 1]:
        idx = code.data[1914 len 1]
        while stor2.length > idx:
            stor2[idx].field_0 = 0
            idx = idx + 1
            continue 
    return code.data[277 len 1606]
}



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
            stor2[arg1] += stor1[address(msg.sender)].field_0
}

function winningProposal() {
    idx = 0
    s = 0
    while uint8(idx) < stor2.length:
        mem[0] = 2
        if stor2[uint8(idx)] <= s:
            idx = idx + 1
            s = s
            continue 
        require uint8(idx) < stor2.length
        mem[0] = 2
        idx = idx + 1
        s = stor2[uint8(idx)]
        continue 
    return 0
}



}
