contract main {


// =======================  Init code  ======================


uint256 stor0;
array of struct stor4;
uint256 stor8A35;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor4.length++
    if not stor4.length <= stor4.length + 1:
        idx = 2 * stor4.length + 1
        while 2 * stor4.length > idx:
            stor4[idx].field_0 = 0
            stor4[idx].field_256 = 0
            idx = idx + 1
            continue 
    require 0 < stor4.length
    address(stor4.field_0) = 0
    stor4.field_256 % 1 = 0
    uint8(stor4.field_160) = 0
    stor4.field_256 % 1 = 0
    stor8A35 = block.timestamp
    if code.data[3124 len 20] != 0:
        stor0 = code.data[3112 len 32] or Mask(96, 160, stor0)
    return code.data[353 len 2759]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
array of uint256 stor1;
uint256 numProposals;
mapping of uint256 memberId;
array of struct stor4;
mapping of uint8 stor99;
array of address stor39211734754957317787651514792503372559041001677350214350465551966328082397708;
array of uint256 stor39211734754957317787651514792503372559041001677350214350465551966328082397709;
array of uint256 stor39211734754957317787651514792503372559041001677350214350465551966328082397710;
array of uint256 stor39211734754957317787651514792503372559041001677350214350465551966328082397711;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856476;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944778999;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944779000;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944779001;
array of struct stor111513156102603090247288097163840093426712875100867763541527925377907674016721;
array of uint256 stor111513156102603090247288097163840093426712875100867763541527925377907674016722;

function memberId(address arg1) payable {
    return memberId[arg1]
}

function numProposals() payable {
    return numProposals
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

function transferOwnership(address arg1) payable {
    require address(owner) == msg.sender
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function proposals(uint256 arg1) payable {
    require arg1 < stor1.length
    return address(stor56B1[arg1]), storB10E[arg1], storB10E[arg1], storB10E[arg1]
}

function members(uint256 arg1) payable {
    require arg1 < stor4.length
    return address(storF68A[arg1].field_0), uint8(storF68A[arg1].field_0), stor8A35[arg1]
}

function checkProposalCode(uint256 arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require arg1 < stor1.length
    return (stor56B1[arg1] == sha3(arg2, arg3, arg4[all]))
}

function vote(uint256 arg1, bool arg2, string arg3) payable {
    require memberId[address(msg.sender)] != 0
    require memberId[address(msg.sender)] < stor4.length
    require uint8(storF68A[stor3[address(msg.sender)]].field_160)
    require arg1 < stor1.length
    require uint8(stor[(6 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f305][address(msg.sender)]) != 1
    uint8(stor[(6 * arg1) + 0x56b10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa11][address(msg.sender)]) = 1
    stor56B1[arg1]++
    if not arg2:
        stor56B1[arg1]--
    else:
        stor56B1[arg1]++
    emit Voted(arg1, arg2, msg.sender, Array(len=arg3.length, data=arg3[all]));
    return 0
}

function sub_1b0e618f(?) payable {
    if memberId[address(msg.sender)] != 0:
        require memberId[address(msg.sender)] < stor4.length
        Mask(96, 0, storF68A[stor3[address(msg.sender)]].field_160) = Mask(96, 0, arg1)
    else:
        memberId[address(msg.sender)] = stor4.length
        stor4.length++
        if not stor4.length <= stor4.length + 1:
            idx = 2 * stor4.length + 1
            while 2 * stor4.length > idx:
                Mask(168, 0, stor4[idx].field_0) = 0
                uint256(stor4[idx].field_256) = 0
                idx = idx + 1
                continue 
        require stor4.length < stor4.length
        address(storF68A[stor4.length].field_0) = msg.sender
        Mask(96, 0, storF68A[stor4.length].field_160) = Mask(96, 0, arg1)
        Mask(88, 0, storF68A[stor4.length].field_168) = Mask(88, 168, msg.sender) >> 168
        storF68A[stor4.length] = block.timestamp
    emit MembershipChanged(msg.sender, arg1);
}

function sub_1a3fd122(?) payable {
    require memberId[address(msg.sender)] != 0
    require memberId[address(msg.sender)] < stor4.length
    require uint8(storF68A[stor3[address(msg.sender)]].field_160)
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        mem[0] = 1
        idx = (6 * stor1.length) + 6
        while sha3(1) + (6 * stor1.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
            mem[0] = idx + sha3(mem[0]) + 4
            s = sha3(mem[0])
            while sha3(idx + sha3(mem[0]) + 4) + (2 * uint256(stor[idx + sha3(mem[0]) + 4])) > s:
                Mask(168, 0, stor[s]) = 0
                stor1[s] = 0
                if 31 < stor[s + 1].length:
                    mem[0] = s + 1
                    t = sha3(s + 1)
                    while sha3(s + 1) + (stor[s + 1].length + 31 / 32) > t:
                        uint256(stor[t]) = 0
                        t = t + 1
                        continue 
                s = s + 1
                continue 
            idx = idx + 1
            continue 
    require stor1.length < stor1.length
    uint256(stor56B1[stor1.length]) = arg1 or Mask(96, 160, uint256(stor56B1[stor1.length]))
    stor56B1[stor1.length] = sha3(address(arg1), arg2[all])
    stor56B1[stor1.length] = 0
    emit ProposalAdded(stor1.length, address(arg1));
    numProposals = stor1.length + 1
    return stor1.length
}



}
