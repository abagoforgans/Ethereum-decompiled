contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = 21 * 10^14
    require not msg.value
    return code.data[41 len 2612]
}



// =====================  Runtime code  =====================


#
#  - delegate(address arg1)
#
const name = 'RDXcoin'

const decimals = 8

const symbol = 'RDX'


address stor1;
mapping of struct stor2;
array of uint256 stor3;

function _fallback() payable {
    revert
}

function giveRightToVote(address arg1) {
    if msg.sender == stor1:
        if not stor2[address(arg1)].field_256:
            stor2[address(arg1)].field_0 = 1
}

function vote(uint8 arg1) {
    if not stor2[address(msg.sender)].field_256:
        if arg1 < stor3.length:
            stor2[address(msg.sender)].field_256 = 1
            stor2[address(msg.sender)].field_264 = arg1
            stor3[arg1].field_0 += stor2[address(msg.sender)].field_0
}

function Ballot(uint8 arg1) {
    stor1 = msg.sender
    stor2[stor1].field_0 = 1
    uint8(stor3.length) = arg1
    stor3.length.field_8 = 0
    if not stor3.length <= arg1:
        idx = arg1
        while stor3.length > idx:
            stor3[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function winningProposal() {
    idx = 0
    s = 0
    while uint8(idx) < stor3.length:
        mem[0] = 3
        if stor3[uint8(idx)].field_0 <= s:
            idx = idx + 1
            s = s
            continue 
        require uint8(idx) < stor3.length
        mem[0] = 3
        idx = idx + 1
        s = stor3[uint8(idx)].field_0
        continue 
    return 0
}



}
