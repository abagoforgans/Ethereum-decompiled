contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint128 stor3; offset 160
address stor3;
array of struct stor5;

function _fallback() {
    mem[96 len -2053] = code.data[2650 len -2053]
    mem[64] = -1957
    _2 = mem[96]
    address(stor3.field_0) = msg.sender
    stor0 = mem[172 len 20]
    address(stor1.length) = mem[204 len 20]
    stor2.length = mem[128]
    Mask(96, 0, stor3.field_160) = 0
    _22 = mem[mem[96] + 96]
    idx = 0
    while idx < _22:
        stor5.length++
        if not stor5.length > stor5.length + 1:
            mem[0] = 5
            _25 = mem[64]
            mem[64] = mem[64] + 96
            require idx < mem[_2 + 96]
            mem[_25] = mem[(32 * idx) + _2 + 128]
            mem[_25 + 32] = 0
            mem[_25 + 64] = 0
            stor5[stor5.length].field_0 = mem[_25]
        else:
            s = sha3(5) + (3 * stor5.length) + 3
            while sha3(5) + (3 * stor5.length) > s:
                stor[s] = 0
                uint256(stor1[s]) = 0
                stor2[s] = 0
                s = s + 3
                continue 
            mem[0] = 5
            _39 = mem[64]
            mem[64] = mem[64] + 96
            require idx < mem[_2 + 96]
            mem[_39] = mem[(32 * idx) + _2 + 128]
            mem[_39 + 32] = 0
            mem[_39 + 64] = 0
            stor5[stor5.length].field_0 = mem[_39]
        stor5[stor5.length].field_256 = 0
        stor5[stor5.length].field_512 = 0
        idx = idx + 1
        continue 
    return code.data[597 len 2053]
}



// =====================  Runtime code  =====================


address tokenContractAddress;
address fundContractAddress;
uint256 sub_3513f8fb;
uint8 stor3; offset 160
uint128 stor3; offset 160
address chairpersonAddress;
mapping of struct voters;
array of struct proposals;

function proposals(uint256 arg1) {
    require arg1 < proposals.length
    return proposals[arg1].field_0, proposals[arg1].field_256, proposals[arg1].field_512
}

function chairperson() {
    return chairpersonAddress
}

function sub_3513f8fb(?) {
    return sub_3513f8fb
}

function tokenContract() {
    return tokenContractAddress
}

function closed() {
    return bool(uint8(stor3.field_160))
}

function voters(address arg1) {
    return bool(voters[arg1].field_0), voters[arg1].field_256, voters[arg1].field_512
}

function fundContract() {
    return fundContractAddress
}

function winnerName() {
    idx = 0
    s = 0
    while idx < proposals.length:
        mem[0] = 5
        if proposals[idx].field_512 <= s:
            idx = idx + 1
            s = s
            continue 
        require idx < proposals.length
        mem[0] = 5
        idx = idx + 1
        s = proposals[idx].field_512
        continue 
    if 0 < proposals.length:
        return uint256(proposals.field_0)
    revert
}

function _fallback() payable {
    revert
}

function close() {
    require msg.sender == chairpersonAddress
    Mask(96, 0, stor3.field_160) = 1
}

function winningProposal() {
    idx = 0
    s = 0
    while idx < proposals.length:
        mem[0] = 5
        if proposals[idx].field_512 <= s:
            idx = idx + 1
            s = s
            continue 
        require idx < proposals.length
        mem[0] = 5
        idx = idx + 1
        s = proposals[idx].field_512
        continue 
    return 0
}

function vote(uint256 arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    require not voters[address(msg.sender)].field_0
    require arg2 >= sub_3513f8fb
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, fundContractAddress, arg2
    require ext_call.success
    require ext_call.return_data[0]
    voters[address(msg.sender)].field_0 = 1
    voters[address(msg.sender)].field_256 = arg1
    voters[address(msg.sender)].field_512 = arg2
    require arg1 < proposals.length
    proposals[arg1].field_256++
    proposals[arg1].field_512 += arg2
}



}
