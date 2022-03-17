contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
array of struct stor2;

function _fallback() payable {
    mem[96 len -1126] = code.data[1436 len -1126]
    mem[64] = -1030
    _2 = mem[96]
    stor0 = msg.sender or Mask(96, 160, stor0)
    mem[0] = msg.sender
    mem[32] = 1
    stor1[address(msg.sender)] = 1
    _17 = mem[mem[96] + 96]
    idx = 0
    while idx < _17:
        stor2.length++
        if not stor2.length > stor2.length + 1:
            mem[0] = 2
            _19 = mem[64]
            mem[64] = mem[64] + 64
            require idx < mem[_2 + 96]
            mem[_19] = mem[(32 * idx) + _2 + 128]
            mem[_19 + 32] = 0
            stor2[stor2.length].field_0 = mem[_19]
        else:
            s = (2 * stor2.length + 1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
            while (2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace > s:
                stor[s] = 0
                stor1[s] = 0
                s = s + 1
                continue 
            mem[0] = 2
            _31 = mem[64]
            mem[64] = mem[64] + 64
            require idx < mem[_2 + 96]
            mem[_31] = mem[(32 * idx) + _2 + 128]
            mem[_31 + 32] = 0
            stor2[stor2.length].field_0 = mem[_31]
        stor2[stor2.length].field_256 = 0
        idx = idx + 1
        continue 
    return code.data[310 len 1126]
}



// =====================  Runtime code  =====================


#
#  - delegate(address arg1)
#
address chairpersonAddress;
mapping of struct voters;
array of uint256 stor2;
array of uint256 stor39012587308167444720038037897580552815671242007440487229414614828470849747802;

function chairperson() payable {
    return chairpersonAddress
}

function voters(address arg1) payable {
    return voters[arg1].field_0, voters[arg1].field_256, voters[arg1].field_256, voters[arg1].field_512
}

function _fallback() payable {
  stop
}

function proposals(uint256 arg1) payable {
    require arg1 < stor2.length
    return stor2[arg1], stor5640[arg1]
}

function giveRightToVote(address arg1) payable {
    require chairpersonAddress == msg.sender
    require not voters[address(arg1)].field_256
    voters[address(arg1)].field_0 = 1
}

function vote(uint256 arg1) payable {
    require not voters[address(msg.sender)].field_256
    voters[address(msg.sender)].field_256 = 1
    voters[address(msg.sender)].field_512 = arg1
    require arg1 < stor2.length
    stor5640[arg1] += voters[address(msg.sender)].field_0
}

function winningProposal() payable {
    idx = 0
    s = 0
    while idx < stor2.length:
        mem[0] = 2
        if stor5640[idx] <= s:
            idx = idx + 1
            s = s
            continue 
        require idx < stor2.length
        mem[0] = 2
        idx = idx + 1
        s = stor5640[idx]
        continue 
    return 0
}



}
