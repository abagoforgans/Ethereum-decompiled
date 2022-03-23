contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 2388]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
array of struct stor1;
mapping of uint256 beneficiary;
uint256 numProposals;
mapping of uint256 memberId;
array of struct stor5;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699761;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944778999;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944779000;

function memberId(address arg1) payable {
    return memberId[arg1]
}

function numProposals() payable {
    return numProposals
}

function beneficiary(address arg1) payable {
    return beneficiary[arg1]
}

function owner() payable {
    return address(owner)
}

function kill() payable {
    if address(owner) != msg.sender:
    selfdestruct(address(owner))
}

function _fallback() payable {
  stop
}

function proposals(uint256 arg1) payable {
    require arg1 < stor1.length
    return address(stor1[arg1].field_0), storB10E[arg1], storB10E[arg1]
}

function transferOwnership(address arg1) payable {
    require address(owner) == msg.sender
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function members(uint256 arg1) payable {
    require arg1 < stor5.length
    return address(stor[(2 * arg1) + code.data[2356 len 32]].field_0), 
           uint8(stor[(2 * arg1) + code.data[2356 len 32]].field_0),
           stor36B6[arg1]
}

function sub_15b431f2(?) payable {
    stor5.length++
    if not stor5.length <= stor5.length + 1:
        idx = 2 * stor5.length + 1
        while 2 * stor5.length > idx:
            Mask(168, 0, stor5[idx].field_0) = 0
            uint256(stor5[idx].field_256) = 0
            idx = idx + 1
            continue 
    require 0 < stor5.length
    Mask(168, 0, stor[code.data[2356 len 32]].field_0) = 0
    stor[code.data[2356 len 32]].field_256 % 1 = 0
    stor[code.data[2356 len 32]].field_256 % 1 = 0
    stor[code.data[2356 len 32]].field_256 % 1 = 0
    uint256(stor1[code.data[2356 len 32]].field_0) = block.timestamp
    if arg1 != 0:
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function vote(uint256 arg1, bool arg2, string arg3) payable {
    require memberId[address(msg.sender)] != 0
    require memberId[address(msg.sender)] < stor5.length
    require uint8(stor[code.data[2356 len 32] + (2 * stor4[address(msg.sender)])].field_160)
    require arg1 < stor1.length
    require uint8(stor[(5 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f306][address(msg.sender)].field_0) != 1
    uint8(stor[(5 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f306][address(msg.sender)].field_0) = 1
    storB10E[arg1]++
    if not arg2:
        storB10E[arg1]--
    else:
        storB10E[arg1]++
    emit Voted(arg1, arg2, msg.sender, Array(len=arg3.length, data=arg3[all]));
    return 0
}

function join() payable {
    if memberId[address(msg.sender)] != 0:
        require memberId[address(msg.sender)] < stor5.length
        uint8(stor[code.data[2356 len 32] + (2 * stor4[address(msg.sender)])].field_160) = 1
    else:
        memberId[address(msg.sender)] = stor5.length
        stor5.length++
        if not stor5.length <= stor5.length + 1:
            idx = 2 * stor5.length + 1
            while 2 * stor5.length > idx:
                Mask(168, 0, stor5[idx].field_0) = 0
                uint256(stor5[idx].field_256) = 0
                idx = idx + 1
                continue 
        require stor5.length < stor5.length
        address(stor[code.data[2356 len 32] + (2 * stor5.length)].field_0) = msg.sender
        uint8(stor[code.data[2356 len 32] + (2 * stor5.length)].field_160) = 1
        Mask(88, 0, stor[code.data[2356 len 32] + (2 * stor5.length)].field_168) = Mask(88, 168, msg.sender) >> 168
        uint256(stor[code.data[2356 len 32] + (2 * stor5.length) + 1].field_0) = block.timestamp
    emit MembershipChanged(msg.sender, 1);
}

function sub_2fd5fe50(?) payable {
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        mem[0] = 1
        idx = (5 * stor1.length) + 5
        while sha3(1) + (5 * stor1.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 2].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 3].field_0) = 0
            mem[0] = idx + sha3(mem[0]) + 3
            s = sha3(mem[0])
            while sha3(idx + sha3(mem[0]) + 3) + (2 * uint256(stor[idx + sha3(mem[0]) + 3].field_0)) > s:
                Mask(168, 0, stor[s].field_0) = 0
                uint256(stor1[s].field_0) = 0
                if 31 < stor[s + 1].length:
                    mem[0] = s + 1
                    t = sha3(s + 1)
                    while sha3(s + 1) + (stor[s + 1].length + 31 / 32) > t:
                        uint256(stor[t].field_0) = 0
                        t = t + 1
                        continue 
                s = s + 1
                continue 
            idx = idx + 1
            continue 
    require stor1.length < stor1.length
    uint256(stor1[stor1.length].field_0) = arg1 or Mask(96, 160, uint256(stor1[stor1.length].field_0))
    uint256(stor1[stor1.length].field_256) = 0
    emit ProposalAdded(stor1.length, address(arg1));
    numProposals = stor1.length + 1
    return stor1.length
}



}
