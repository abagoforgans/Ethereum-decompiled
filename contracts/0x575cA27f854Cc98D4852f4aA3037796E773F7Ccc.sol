contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    if code.data[1531 len 20]:
        stor0 = code.data[1519 len 32]
    return code.data[100 len 1419]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
array of struct stor1;
mapping of uint256 sub_149725c6;
uint256 stor3;
mapping of uint8 stor99;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944778999;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944779000;

function sub_149725c6(?) payable {
    return sub_149725c6[arg1]
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

function sub_076b934d(?) payable {
    require arg1 < stor1.length
    return address(stor1[arg1].field_0), storB10E[arg1], storB10E[arg1]
}

function transferOwnership(address arg1) payable {
    require address(owner) == msg.sender
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function sub_c84d9327(?) payable {
    require arg1 < stor1.length
    require uint8(stor[(5 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f306][address(msg.sender)]) != 1
    require msg.value < 10^15
    uint8(stor[(5 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f306][address(msg.sender)]) = 1
    storB10E[arg1]++
    if not arg2:
        storB10E[arg1]--
    else:
        storB10E[arg1]++
    emit Voted(arg1, arg2, msg.sender, Array(len=arg3.length, data=arg3[all]));
    return 0
}

function add(address arg1) payable {
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        mem[0] = 1
        idx = (5 * stor1.length) + 5
        while sha3(1) + (5 * stor1.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            mem[0] = idx + sha3(mem[0]) + 3
            s = sha3(mem[0])
            while sha3(idx + sha3(mem[0]) + 3) + (2 * uint256(stor[idx + sha3(mem[0]) + 3])) > s:
                Mask(168, 0, stor[s]) = 0
                uint256(stor1[s].field_0) = 0
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
    uint256(stor1[stor1.length].field_0) = arg1 or Mask(96, 160, uint256(stor1[stor1.length].field_0))
    uint256(stor1[stor1.length].field_256) = 0
    emit ProposalAdded(stor1.length, arg1);
    stor3 = stor1.length + 1
    return stor1.length
}



}
