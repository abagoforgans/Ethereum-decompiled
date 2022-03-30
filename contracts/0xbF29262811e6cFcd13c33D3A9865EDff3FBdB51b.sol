contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of struct stor2;

function _fallback() {
    mem[96 len -1262] = code.data[1543 len -1262]
    mem[64] = -1166
    _2 = mem[96]
    stor0 = msg.sender
    mem[0] = msg.sender
    mem[32] = 1
    stor1[address(msg.sender)] = 1
    _18 = mem[mem[96] + 96]
    idx = 0
    while idx < _18:
        stor2.length++
        if not stor2.length > stor2.length + 1:
            mem[0] = 2
            _21 = mem[64]
            mem[64] = mem[64] + 64
            require idx < mem[_2 + 96]
            mem[_21] = mem[_2 + (32 * idx) + 128]
            mem[_21 + 32] = 0
            stor2[stor2.length].field_0 = mem[_21]
        else:
            s = sha3(2) + (2 * stor2.length + 1)
            while sha3(2) + (2 * stor2.length) > s:
                stor[s] = 0
                stor1[s] = 0
                s = s + 2
                continue 
            mem[0] = 2
            _33 = mem[64]
            mem[64] = mem[64] + 64
            require idx < mem[_2 + 96]
            mem[_33] = mem[_2 + (32 * idx) + 128]
            mem[_33 + 32] = 0
            stor2[stor2.length].field_0 = mem[_33]
        stor2[stor2.length].field_256 = 0
        idx = idx + 1
        continue 
    return code.data[281 len 1262]
}



// =====================  Runtime code  =====================


address chairpersonAddress;
mapping of struct voters;
array of struct proposals;

function proposals(uint256 arg1) {
    require arg1 < proposals.length
    return proposals[arg1].field_0, proposals[arg1].field_256
}

function chairperson() {
    return chairpersonAddress
}

function voters(address arg1) {
    return voters[arg1].field_0, bool(voters[arg1].field_256), voters[arg1].field_256, voters[arg1].field_512
}

function winnerName() {
    idx = 0
    s = 0
    while idx < proposals.length:
        mem[0] = 2
        if proposals[idx].field_256 <= s:
            idx = idx + 1
            s = s
            continue 
        require idx < proposals.length
        mem[0] = 2
        idx = idx + 1
        s = proposals[idx].field_256
        continue 
    require 0 < proposals.length
    return uint256(proposals.field_0)
}

function _fallback() payable {
    revert 
}

function giveRightToVote(address arg1) {
    require chairpersonAddress == msg.sender
    require not voters[address(arg1)].field_256
    voters[address(arg1)].field_0 = 1
}

function vote(uint256 arg1) {
    require not voters[address(msg.sender)].field_256
    voters[address(msg.sender)].field_256 = 1
    voters[address(msg.sender)].field_512 = arg1
    require arg1 < proposals.length
    proposals[arg1].field_256 += voters[address(msg.sender)].field_0
}

function winningProposal() {
    idx = 0
    s = 0
    while idx < proposals.length:
        mem[0] = 2
        if proposals[idx].field_256 <= s:
            idx = idx + 1
            s = s
            continue 
        require idx < proposals.length
        mem[0] = 2
        idx = idx + 1
        s = proposals[idx].field_256
        continue 
    return 0
}

function delegate(address arg1) {
    require not voters[address(msg.sender)].field_256
    require arg1 != msg.sender
    s = arg1
    while voters[address(arg1)].field_264:
        require voters[address(s)].field_264 != msg.sender
        mem[0] = voters[address(s)].field_264
        mem[32] = 1
        s = voters[address(s)].field_264
        continue 
    voters[address(msg.sender)].field_256 = 1
    voters[address(msg.sender)].field_264 = address(s)
    voters[address(msg.sender)].field_512 = 0
    if not voters[address(s)].field_256:
        voters[address(s)].field_0 += voters[address(msg.sender)].field_0
    else:
        require voters[address(s)].field_512 < proposals.length
        proposals[stor1[address(s)].field_512].field_256 += voters[address(msg.sender)].field_0
}



}
