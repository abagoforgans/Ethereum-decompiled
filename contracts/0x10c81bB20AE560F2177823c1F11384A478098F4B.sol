contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor4;
mapping of uint256 stor5;
array of uint256 stor6;

function _fallback() payable {
    stor0 = 21 * 10^6
    require not msg.value
    stor4 = msg.sender
    stor5[stor4] = 1
    uint8(stor6.length) = code.data[3005 len 1]
    stor6.length.field_8 = 0
    if not stor6.length <= code.data[3005 len 1]:
        idx = code.data[3005 len 1]
        while stor6.length > idx:
            stor6[idx].field_0 = 0
            idx = idx + 1
            continue 
    return code.data[344 len 2630]
}



// =====================  Runtime code  =====================


#
#  - delegate(address arg1)
#
const name = 'Bitcoin Red'

const decimals = 8

const symbol = 'BTCR'


address owner;
mapping of uint256 stor2;
address stor4;
mapping of struct stor5;
array of uint256 stor6;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function BitcoinRed() {
    owner = msg.sender
    stor2[stor1] = 21 * 10^14
}

function giveRightToVote(address arg1) {
    if msg.sender == stor4:
        if not stor5[address(arg1)].field_256:
            stor5[address(arg1)].field_0 = 1
}

function vote(uint8 arg1) {
    if not stor5[address(msg.sender)].field_256:
        if arg1 < stor6.length:
            stor5[address(msg.sender)].field_256 = 1
            stor5[address(msg.sender)].field_264 = arg1
            stor6[arg1] += stor5[address(msg.sender)].field_0
}

function winningProposal() {
    idx = 0
    s = 0
    while uint8(idx) < stor6.length:
        mem[0] = 6
        if stor6[uint8(idx)] <= s:
            idx = idx + 1
            s = s
            continue 
        require uint8(idx) < stor6.length
        mem[0] = 6
        idx = idx + 1
        s = stor6[uint8(idx)]
        continue 
    return 0
}



}
