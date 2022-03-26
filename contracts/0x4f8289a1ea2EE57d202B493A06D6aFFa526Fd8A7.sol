contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor0;
uint256 stor1;
uint256 stor2;
address stor5;
uint256 stor5;

function _fallback() payable {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    require msg.sender == address(stor0)
    uint256(stor5) = code.data[4453 len 32]
    if code.data[4485 len 32]:
        stor1 = code.data[4485 len 32]
        stor2 = code.data[4517 len 32]
        emit ChangeOfRules(code.data[4485 len 32], code.data[4517 len 32], address(stor5));
    else:
        stor1 = 1
        stor2 = code.data[4517 len 32]
        emit ChangeOfRules(1, code.data[4517 len 32], address(stor5));
    return code.data[217 len 4236]
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
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037084;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037086;
array of struct stor87903029871075914254377627908054574944891091886930582284385770809450030037087;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037088;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037089;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037090;

function sharesTokenAddress() {
    return address(sharesTokenAddress)
}

function numProposals() {
    return numProposals
}

function debatingPeriodInMinutes() {
    return debatingPeriodInMinutes
}

function minimumQuorum() {
    return minimumQuorum
}

function owner() {
    return address(owner)
}

function _fallback() payable {
    emit receivedEther(msg.sender, msg.value);
}

function transferOwnership(address arg1) {
    require msg.sender == address(owner)
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function checkProposalCode(uint256 arg1, address arg2, uint256 arg3, bytes arg4) {
    require arg1 < stor3.length
    return (uint256(stor3[arg1].field_1536) == sha3(arg2, arg3, arg4[all]))
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) {
    require ext_code.size(arg3)
    call arg3.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 50 wei
        args address(arg1), address(this.address), arg2
    require ext_call.success
    require ext_call.return_data[0]
    emit receivedTokens(address(arg1), arg2, address(arg3), Array(len=arg4.length, data=arg4[all]));
}

function changeVotingRules(address arg1, uint256 arg2, uint256 arg3) {
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

function proposals(uint256 arg1) {
    require arg1 < stor3.length
    mem[384] = uint256(stor[sha3((9 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3)].field_0)
    idx = 384
    s = 0
    while stor[(9 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3].length + 384 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((9 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3) + 1].field_0)
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor3[arg1].field_0), 
           storC257[arg1],
           Array(len=stor[(9 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3].length, data=mem[384 len stor[(9 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3].length + (floor32(stor[(9 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3].length - 1) + -stor[(9 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a3].length + 32 % 32)]),
           storC257[arg1],
           bool(uint8(storC257[arg1].field_0)),
           bool(uint8(storC257[arg1].field_8)),
           storC257[arg1],
           storC257[arg1]
}

function vote(uint256 arg1, bool arg2) {
    require ext_code.size(address(sharesTokenAddress))
    call address(sharesTokenAddress).balanceOf(address rg1) with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] != 0
    require arg1 < stor3.length
    require bool(uint8(stor[(9 * arg1) + ('name', 'stor3', 3) + 8][address(msg.sender)].field_0)) != 1
    uint256(stor3[arg1].field_1792)++
    if not uint256(stor3[arg1].field_1792) <= uint256(stor3[arg1].field_1792) + 1:
        idx = uint256(stor3[arg1].field_1792) + 1
        while uint256(stor3[arg1].field_1792) > idx:
            Mask(168, 0, stor[idx + sha3((9 * arg1) + ('name', 'stor3', 3) + 7)].field_0) = 0
            idx = idx + 1
            continue 
    require uint256(stor3[arg1].field_1792) < uint256(stor3[arg1].field_1792)
    uint8(stor[uint256(stor3[arg1].field_1792) + sha3((9 * arg1) + ('name', 'stor3', 3) + 7)].field_0) = uint8(arg2)
    Mask(248, 0, stor[uint256(stor3[arg1].field_1792) + sha3((9 * arg1) + ('name', 'stor3', 3) + 7)].field_8) = Mask(248, 0, msg.sender)
    Mask(88, 0, stor[uint256(stor3[arg1].field_1792) + sha3((9 * arg1) + ('name', 'stor3', 3) + 7)].field_168) = Mask(88, 168, arg2) >> 168
    uint8(stor[(9 * arg1) + ('name', 'stor3', 3) + 8][address(msg.sender)].field_0) = 1
    uint256(stor3[arg1].field_1280) = uint256(stor3[arg1].field_1792) + 1
    emit Voted(arg1, arg2, msg.sender);
    return uint256(stor3[arg1].field_1792)
}

function executeProposal(uint256 arg1, bytes arg2) {
    mem[128 len arg2.length] = arg2[all]
    require arg1 < stor3.length
    require block.timestamp >= storC257[arg1]
    require not uint8(storC257[arg1].field_0)
    mem[ceil32(arg2.length) + 128] = address(stor3[arg1].field_0)
    mem[ceil32(arg2.length) + 148] = storC257[arg1]
    mem[ceil32(arg2.length) + 180 len arg2.length] = arg2[all]
    require storC257[arg1] == sha3(address(stor3[arg1].field_0), storC257[arg1], arg2[all])
    s = 0
    s = 0
    idx = 0
    s = 0
    t = 0
    while idx < storC257[arg1]:
        mem[0] = (9 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e079e
        mem[ceil32(arg2.length) + 160] = 0
        mem[ceil32(arg2.length) + 132] = address(stor[idx + sha3((9 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e079e)].field_8)
        require ext_code.size(address(sharesTokenAddress))
        call address(sharesTokenAddress).balanceOf(address rg1) with:
             gas gas_remaining - 50 wei
            args address(stor[idx + sha3((9 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e079e)].field_8)
        mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        if not uint8(stor[idx + sha3((9 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e079e)].field_0):
            s = ext_call.return_data[0]
            s = idx + sha3((9 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e079e)
            idx = idx + 1
            s = s
            t = ext_call.return_data[0] + t
            continue 
        s = ext_call.return_data[0]
        s = idx + sha3((9 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e079e)
        idx = idx + 1
        s = ext_call.return_data[0] + s
        t = ext_call.return_data[0] + t
        continue 
    require t > minimumQuorum
    if s <= 0:
        uint8(storC257[arg1].field_8) = 0
    else:
        uint8(storC257[arg1].field_0) = 1
        mem[ceil32(arg2.length) + 128 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            call address(stor3[arg1].field_0) with:
               value 10^18 * storC257[arg1] wei
                 gas gas_remaining - 34050 wei
                args arg2[all]
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
            call address(stor3[arg1].field_0).mem[ceil32(arg2.length) + 128 len 4] with:
               value 10^18 * storC257[arg1] wei
                 gas gas_remaining - 34050 wei
                args mem[ceil32(arg2.length) + 132 len floor32(arg2.length) + 28]
        require ext_call.success
        uint8(storC257[arg1].field_8) = 1
    emit ProposalTallied(arg1, 0, t, bool(uint8(storC257[arg1].field_8)));
    return 0
}

function newProposal(address arg1, uint256 arg2, string arg3, bytes arg4) {
    require ext_code.size(address(sharesTokenAddress))
    call address(sharesTokenAddress).balanceOf(address rg1) with:
         gas gas_remaining - 50 wei
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
                s = s + 9
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
            idx = idx + 9
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
