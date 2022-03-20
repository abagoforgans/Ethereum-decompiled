contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
address stor5;
uint256 stor5;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    require msg.sender == msg.sender
    uint256(stor5) = code.data[3890 len 32]
    if code.data[3922 len 32] != 0:
        stor1 = code.data[3922 len 32]
    else:
        stor1 = 1
    stor2 = code.data[3954 len 32]
    emit ChangeOfRules(stor1, stor2, address(stor5));
    return code.data[280 len 3610]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
uint256 minimumQuorum;
uint256 debatingPeriodInMinutes;
array of struct stor3;
uint256 numProposals;
address sharesTokenAddress;
uint256 stor5;
array of address stor39242276188594799690162040385371932227836366301296949569053664044882731168248;
array of uint256 stor39242276188594799690162040385371932227836366301296949569053664044882731168249;
array of uint256 stor39242276188594799690162040385371932227836366301296949569053664044882731168251;
array of struct stor39242276188594799690162040385371932227836366301296949569053664044882731168252;
array of uint256 stor39242276188594799690162040385371932227836366301296949569053664044882731168253;
array of uint256 stor39242276188594799690162040385371932227836366301296949569053664044882731168254;
array of uint256 stor39242276188594799690162040385371932227836366301296949569053664044882731168255;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037084;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037086;
array of uint8 stor87903029871075914254377627908054574944891091886930582284385770809450030037087;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037088;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037089;

function sharesTokenAddress() payable {
    return address(sharesTokenAddress)
}

function numProposals() payable {
    return numProposals
}

function debatingPeriodInMinutes() payable {
    return debatingPeriodInMinutes
}

function minimumQuorum() payable {
    return minimumQuorum
}

function owner() payable {
    return address(owner)
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) payable {
    require address(owner) == msg.sender
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function checkProposalCode(uint256 arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require arg1 < stor3.length
    return (stor56C2[arg1] == sha3(arg2, arg3, arg4[all]))
}

function changeVotingRules(address arg1, uint256 arg2, uint256 arg3) payable {
    require msg.sender == address(owner)
    uint256(stor5) = arg1 or Mask(96, 160, uint256(stor5))
    if arg2:
        minimumQuorum = arg2
        debatingPeriodInMinutes = arg3
        emit ChangeOfRules(arg2, arg3, address(sharesTokenAddress));
    else:
        minimumQuorum = 1
        debatingPeriodInMinutes = arg3
        emit ChangeOfRules(1, arg3, address(sharesTokenAddress));
}

function proposals(uint256 arg1) payable {
    require arg1 < stor3.length
    mem[384] = uint256(stor[sha3((9 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3)].field_0)
    idx = 384
    s = 0
    while stor[(9 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3].length + 384 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((9 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3) + 1].field_0)
        idx = idx + 32
        s = s + 1
        continue 
    return stor56C2[arg1], 
           storC257[arg1],
           Array(len=stor[(9 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3].length, data=mem[384 len stor[(9 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3].length + (floor32(stor[(9 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3].length - 1) + -stor[(9 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3].length + 32 % 32)]),
           storC257[arg1],
           storC257[arg1],
           storC257[arg1],
           storC257[arg1],
           storC257[arg1]
}

function vote(uint256 arg1, bool arg2) payable {
    call address(sharesTokenAddress).0x70a08231 with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] != 0
    require arg1 < stor3.length
    require uint8(stor[(9 * arg1) + 0x56c2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f7200][address(msg.sender)].field_0) != 1
    stor56C2[arg1]++
    if not stor56C2[arg1] <= stor56C2[arg1] + 1:
        idx = stor56C2[arg1] + 1
        while stor56C2[arg1] > idx:
            Mask(168, 0, stor[idx + sha3((9 * arg1) + 0x56c2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71ff)].field_0) = 0
            idx = idx + 1
            continue 
    require stor56C2[arg1] < stor56C2[arg1]
    uint8(stor[stor56C2[arg1] + sha3((9 * arg1) + 0x56c2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71ff)].field_0) = uint8(arg2)
    Mask(248, 0, stor[stor56C2[arg1] + sha3((9 * arg1) + 0x56c2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71ff)].field_8) = Mask(248, 0, msg.sender)
    Mask(88, 0, stor[stor56C2[arg1] + sha3((9 * arg1) + 0x56c2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71ff)].field_168) = Mask(88, 168, arg2) >> 168
    uint8(stor[(9 * arg1) + 0x56c2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f7200][address(msg.sender)].field_0) = 1
    stor56C2[arg1] = stor56C2[arg1] + 1
    emit Voted(arg1, arg2, msg.sender);
    return stor56C2[arg1]
}

function executeProposal(uint256 arg1, bytes arg2) payable {
    mem[128 len arg2.length] = arg2[all]
    require arg1 < stor3.length
    require block.timestamp >= stor56C2[arg1]
    require not uint8(stor56C2[arg1].field_0)
    mem[ceil32(arg2.length) + 128] = stor56C2[arg1]
    mem[ceil32(arg2.length) + 148] = stor56C2[arg1]
    mem[ceil32(arg2.length) + 180 len arg2.length] = arg2[all]
    require stor56C2[arg1] == sha3(stor56C2[arg1], stor56C2[arg1], arg2[all])
    s = 0
    s = 0
    idx = 0
    s = 0
    t = 0
    while idx < stor56C2[arg1]:
        mem[0] = (9 * arg1) + 0x56c2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71ff
        mem[ceil32(arg2.length) + 132] = address(stor[idx + sha3((9 * arg1) + 0x56c2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71ff)].field_8)
        call address(sharesTokenAddress).0x70a08231 with:
             gas gas_remaining - 25050 wei
            args address(stor[idx + sha3((9 * arg1) + 0x56c2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71ff)].field_8)
        mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        if not uint8(stor[idx + sha3((9 * arg1) + 0x56c2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71ff)].field_0):
            s = ext_call.return_data[0]
            s = idx + sha3((9 * arg1) + 0x56c2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71ff)
            idx = idx + 1
            s = s
            t = ext_call.return_data[0] + t
            continue 
        s = ext_call.return_data[0]
        s = idx + sha3((9 * arg1) + 0x56c2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71ff)
        idx = idx + 1
        s = ext_call.return_data[0] + s
        t = ext_call.return_data[0] + t
        continue 
    require t > minimumQuorum
    if s <= 0:
        uint8(stor56C2[arg1].field_0) = 1
        uint8(stor56C2[arg1].field_8) = 0
    else:
        mem[ceil32(arg2.length) + 128 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            call stor56C2[arg1] with:
               value 10^18 * stor56C2[arg1] wei
                 gas gas_remaining - 34050 wei
                args arg2[all]
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
            call stor56C2[arg1].mem[ceil32(arg2.length) + 128 len 4] with:
               value 10^18 * stor56C2[arg1] wei
                 gas gas_remaining - 34050 wei
                args mem[ceil32(arg2.length) + 132 len floor32(arg2.length) + 28]
        uint8(stor56C2[arg1].field_0) = 1
        uint8(stor56C2[arg1].field_8) = 1
    stor56C2[arg1].field_256 % 1 = 0
    emit ProposalTallied(arg1, 0, t, uint8(stor56C2[arg1].field_8));
    return 0
}

function newProposal(address arg1, uint256 arg2, string arg3, bytes arg4) payable {
    call address(sharesTokenAddress).0x70a08231 with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] != 0
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        mem[0] = 3
        idx = (9 * stor3.length) + 9
        while sha3(3) + (9 * stor3.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 2].field_0) = 0
            if 31 >= stor[idx + sha3(mem[0]) + 2].length:
                uint256(stor[idx + sha3(mem[0]) + 3].field_0) = 0
                uint16(stor[idx + sha3(mem[0]) + 4].field_0) = 0
                uint256(stor[idx + sha3(mem[0]) + 5].field_0) = 0
                uint256(stor[idx + sha3(mem[0]) + 6].field_0) = 0
                uint256(stor[idx + sha3(mem[0]) + 7].field_0) = 0
                mem[0] = idx + sha3(mem[0]) + 7
                s = sha3(s + sha3(mem[0]) + 7)
                while sha3(s + sha3(mem[0]) + 7) + uint256(stor[s + sha3(mem[0]) + 7].field_0) > s + sha3(mem[0]):
                    Mask(168, 0, stor[s + sha3(mem[0])].field_0) = 0
                    s = s + 1
                    continue 
                s = s + 1
                continue 
            s = sha3(idx + sha3(mem[0]) + 2)
            while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                uint256(stor[s].field_0) = 0
                s = s + 1
                continue 
            uint256(stor[idx + sha3(mem[0]) + 3].field_0) = 0
            uint16(stor[idx + sha3(mem[0]) + 4].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 5].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 6].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 7].field_0) = 0
            mem[0] = idx + sha3(mem[0]) + 7
            s = sha3(idx + sha3(mem[0]) + 7)
            while sha3(idx + sha3(mem[0]) + 7) + uint256(stor[idx + sha3(mem[0]) + 7].field_0) > s:
                Mask(168, 0, stor[s].field_0) = 0
                s = s + 1
                continue 
            idx = idx + 1
            continue 
    require stor3.length < stor3.length
    uint256(stor3[stor3.length].field_0) = arg1 or Mask(96, 160, uint256(stor3[stor3.length].field_0))
    uint256(stor3[stor3.length].field_256) = arg2
    uint256(stor[sha3((9 * stor3.length) + ('name', 'stor3', 3) + 2)][].field_0) = Array(len=arg3.length, data=arg3[all])
    uint256(stor3[stor3.length].field_1536) = sha3(arg1, arg2, arg4[all])
    uint256(stor3[stor3.length].field_768) = block.timestamp + (60 * debatingPeriodInMinutes)
    uint8(stor3[stor3.length].field_1024) = 0
    uint8(stor3[stor3.length].field_1032) = 0
    uint256(stor3[stor3.length].field_1280) = 0
    emit ProposalAdded(stor3.length, address(arg1), arg2, Array(len=arg3.length, data=arg3[all]));
    numProposals = stor3.length + 1
    return stor3.length
}



}
