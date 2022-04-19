contract main {


// =======================  Init code  ======================


mapping of uint256 stor1;
uint256 stor2;
uint256 stor3;
address stor4;
uint256 stor5;

function _fallback() {
    stor2 = 5 * 10^9
    stor5 = 'ETH'
    stor4 = 0xf569c9cc15d538aa2ba540690df77b1595c1e301
    stor1[stor4] = stor2
    stor3 = 18
    return code.data[282 len 4745]
}



// =====================  Runtime code  =====================


#
#  - delegate(address arg1)
#
mapping of uint256 allowance;
mapping of uint256 balanceOf;
uint256 totalSupply;
uint256 decimals;
address owner;
uint256 symbol;
address stor6;
mapping of struct stor7;
array of uint256 stor8;

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() {
    revert
}

function giveRightToVote(address arg1) {
    if msg.sender == stor6:
        if not stor7[address(arg1)].field_256:
            stor7[address(arg1)].field_0 = 1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function vote(uint8 arg1) {
    if not stor7[address(msg.sender)].field_256:
        if arg1 < stor8.length:
            stor7[address(msg.sender)].field_256 = 1
            stor7[address(msg.sender)].field_264 = arg1
            stor8[arg1].field_0 += stor7[address(msg.sender)].field_0
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function Ballot(uint8 arg1) {
    stor6 = msg.sender
    stor7[stor6].field_0 = 1
    uint8(stor8.length) = arg1
    stor8.length.field_8 = 0
    if not stor8.length <= arg1:
        idx = arg1
        while stor8.length > idx:
            stor8[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function winningProposal() {
    idx = 0
    s = 0
    while uint8(idx) < stor8.length:
        mem[0] = 8
        if stor8[uint8(idx)].field_0 <= s:
            idx = idx + 1
            s = s
            continue 
        require uint8(idx) < stor8.length
        mem[0] = 8
        idx = idx + 1
        s = stor8[uint8(idx)].field_0
        continue 
    return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
