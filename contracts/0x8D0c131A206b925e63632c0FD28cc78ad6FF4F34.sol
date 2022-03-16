contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor2 = msg.sender or Mask(96, 160, stor2)
    stor1 = 1
    stor0 = 60 * code.data[2311 len 32]
    return code.data[67 len 2244]
}



// =====================  Runtime code  =====================


uint256 debatingPeriod;
array of address stor1;
array of uint256 stor2;
array of address stor3;
array of uint256 stor4;
array of uint8 stor5;
array of uint256 stor6;
array of uint256 stor343371210433890290056162609015838183378480827683322587048381917224414179836;
array of uint8 stor343371210433890290056162609015838183378480827683322587048381917224414179837;
array of uint256 stor343371210433890290056162609015838183378480827683322587048381917224414179838;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037084;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037085;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037086;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037087;
array of uint8 stor87903029871075914254377627908054574944891091886930582284385770809450030037088;

function debatingPeriod() payable {
    return debatingPeriod
}

function numProposals() payable {
    return stor4.length
}

function founder() payable {
    return address(stor2.length)
}

function sub_fd46146a(?) payable {
    return stor1.length
}

function kill() payable {
    if address(stor2.length) != msg.sender:
    selfdestruct(address(stor2.length))
}

function _fallback() payable {
  stop
}

function proposals(uint256 arg1) payable {
    require arg1 < stor3.length
    if not storC257[arg1]:
        return address(stor3[arg1]), storC257[arg1], storC257[arg1], 192, storC257[arg1], storC257[arg1], storC257[arg1]
    mem[320] = uint256(stor[sha3((8 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2)])
    idx = 320
    s = 0
    while storC257[arg1] + 320 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((8 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor3[arg1]), 
           storC257[arg1],
           storC257[arg1],
           Array(len=storC257[arg1], data=mem[320 len storC257[arg1] + (floor32(storC257[arg1] - 1) + -storC257[arg1] + 32 % 32)]),
           storC257[arg1],
           storC257[arg1]
}

function vote(uint256 arg1, int256 arg2) payable {
    if arg2 < -1:
        if arg2 > 1:
            return 0
    require arg1 < stor3.length
    if 1 == uint8(stor[(8 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e079e][address(msg.sender)]):
        return 0
    storC257[arg1]++
    if not storC257[arg1] <= storC257[arg1] + 1:
        idx = 2 * storC257[arg1] + 1
        while 2 * storC257[arg1] > idx:
            uint256(stor[idx + sha3((8 * arg1) + 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71fe)]) = 0
            address(stor[idx + sha3((8 * arg1) + 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71fe) + 1]) = 0
            idx = idx + 1
            continue 
    require storC257[arg1] < storC257[arg1]
    uint256(stor[(2 * storC257[arg1]) + sha3((8 * arg1) + 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71fe)]) = arg2
    uint256(stor[(2 * storC257[arg1]) + sha3((8 * arg1) + 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71fe) + 1]) = msg.sender or Mask(96, 160, uint256(stor[(2 * storC257[arg1]) + sha3((8 * arg1) + 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71fe) + 1]))
    uint8(stor[(8 * arg1) + 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71ff][address(msg.sender)]) = 1
    emit Voted(arg1, arg2, msg.sender);
    return storC257[arg1]
}

function executeProposal(uint256 arg1) payable {
    require arg1 < stor3.length
    if block.timestamp <= storC257[arg1] + debatingPeriod:
        return 0
    if not storC257[arg1]:
        return 0
    s = 0
    s = 0
    idx = 0
    s = 0
    t = 0
    while idx < storC257[arg1]:
        mem[0] = (8 * arg1) + 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71fe
        s = stor1.length
        s = (2 * idx) + sha3((8 * arg1) + 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71fe)
        idx = idx + 1
        s = stor1.length + s
        t = t + (stor1.length * uint256(stor[(2 * idx) + sha3((8 * arg1) + 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71fe)]))
        continue 
    storC257[arg1] = 0
    emit ProposalTallied(arg1, t * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1], stor1.length * storC257[arg1], 0);
    return (t * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1] * storC257[arg1])
}

function newProposal(address arg1, uint256 arg2, bytes32 arg3, string arg4) payable {
    mem[128 len arg4.length] = arg4[all]
    stor3.length++
    if not stor3.length > stor3.length + 1:
        require stor3.length < stor3.length
        uint256(stor3[stor3.length]) = arg1 or Mask(96, 160, uint256(stor3[stor3.length]))
        storC257[stor3.length] = arg2
        storC257[stor3.length] = arg3
        storC257[stor3.length] = arg4.length
        if not arg4.length:
            idx = 0
            while storC257[stor3.length] + 31 / 32 > idx:
                uint256(stor[idx + sha3((8 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2)]) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 128
            while arg4.length + 128 > idx:
                uint256(stor[s + sha3((8 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2)]) = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg4.length + 31) >> 5
            while storC257[stor3.length] + 31 / 32 > idx:
                uint256(stor[idx + sha3((8 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2)]) = 0
                idx = idx + 1
                continue 
    else:
        idx = (8 * stor3.length + 1) + 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f8
        while (8 * stor3.length) + 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f8 > idx:
            address(stor[idx]) = 0
            uint256(stor1[idx]) = 0
            uint256(stor2[idx]) = 0
            uint256(stor3[idx]) = 0
            s = sha3(idx + 3)
            while sha3(idx + 3) + (uint256(stor3[idx]) + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            stor4[idx] = 0
            stor5[idx] = 0
            stor6[idx] = 0
            mem[0] = idx + 6
            s = sha3(idx + 6)
            while sha3(idx + 6) + (2 * stor6[idx]) > s:
                uint256(stor[s]) = 0
                address(stor1[s]) = 0
                s = s + 1
                continue 
            idx = idx + 1
            continue 
        require stor3.length < stor3.length
        uint256(stor3[stor3.length]) = arg1 or Mask(96, 160, uint256(stor3[stor3.length]))
        storC257[stor3.length] = arg2
        storC257[stor3.length] = arg3
        storC257[stor3.length] = arg4.length
        if not arg4.length:
            s = 0
            while storC257[stor3.length] + 31 / 32 > s:
                uint256(stor[s + sha3((8 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2)]) = 0
                s = s + 1
                continue 
        else:
            s = 0
            idx = 128
            while arg4.length + 128 > idx:
                uint256(stor[s + sha3((8 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2)]) = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg4.length + 31) >> 5
            while storC257[stor3.length] + 31 / 32 > idx:
                uint256(stor[idx + sha3((8 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2)]) = 0
                idx = idx + 1
                continue 
    storC257[stor3.length] = block.timestamp
    storC257[stor3.length] = 1
    emit ProposalAdded(stor3.length, address(arg1), arg2, arg3, Array(len=arg4.length, data=arg4[all]));
    stor4.length = stor3.length + 1
    return stor3.length
}



}
