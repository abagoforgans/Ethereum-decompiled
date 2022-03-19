contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor6;

function _fallback() payable {
    mem[96 len -3862] = code.data[4159 len -3862]
    mem[64] = -3766
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor6 = mem[128]
    if mem[160] != 0:
        stor2 = mem[160]
    else:
        stor2 = 1
    stor3 = mem[192]
    return code.data[297 len 3862]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
array of uint256 name;
uint256 minimumQuorum;
uint256 debatingPeriodInMinutes;
array of struct stor4;
uint256 numProposals;
address sharesTokenAddress;
uint256 stor6;
array of address stor39143100329280468107556231533410151018419134684842411016866935372961967991761;
array of uint256 stor39143100329280468107556231533410151018419134684842411016866935372961967991762;
array of uint256 stor39143100329280468107556231533410151018419134684842411016866935372961967991764;
array of struct stor39143100329280468107556231533410151018419134684842411016866935372961967991765;
array of uint256 stor39143100329280468107556231533410151018419134684842411016866935372961967991766;
array of uint256 stor39143100329280468107556231533410151018419134684842411016866935372961967991767;
array of uint256 stor39143100329280468107556231533410151018419134684842411016866935372961967991768;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856476;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856478;
array of uint8 stor62514009886607029107290561805838585334079798074568712924583230797734656856479;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856480;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856481;

function name() payable {
    return name[0 len name.length]
}

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
    require arg1 < stor4.length
    return (stor568A[arg1] == sha3(arg2, arg3, arg4[all]))
}

function changeVotingRules(address arg1, uint256 arg2, uint256 arg3) payable {
    require msg.sender == address(owner)
    uint256(stor6) = arg1 or Mask(96, 160, uint256(stor6))
    minimumQuorum = arg2
    debatingPeriodInMinutes = arg3
    emit ChangeOfRules(arg2, arg3, arg1);
}

function proposals(uint256 arg1) payable {
    require arg1 < stor4.length
    mem[384] = uint256(stor[sha3((9 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e63)].field_0)
    idx = 384
    s = 0
    while stor[(9 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e63].length + 384 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((9 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e63) + 1].field_0)
        idx = idx + 32
        s = s + 1
        continue 
    return stor568A[arg1], 
           stor8A35[arg1],
           Array(len=stor[(9 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e63].length, data=mem[384 len stor[(9 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e63].length + (floor32(stor[(9 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e63].length - 1) + -stor[(9 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e63].length + 32 % 32)]),
           stor8A35[arg1],
           stor8A35[arg1],
           stor8A35[arg1],
           stor8A35[arg1],
           stor8A35[arg1]
}

function vote(uint256 arg1, bool arg2) payable {
    call address(sharesTokenAddress).0x70a08231 with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] != 0
    require arg1 < stor4.length
    require uint8(stor[(9 * arg1) + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd9][address(msg.sender)].field_0) != 1
    stor568A[arg1]++
    if not stor568A[arg1] <= stor568A[arg1] + 1:
        idx = stor568A[arg1] + 1
        while stor568A[arg1] > idx:
            Mask(168, 0, stor[idx + sha3((9 * arg1) + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd8)].field_0) = 0
            idx = idx + 1
            continue 
    require stor568A[arg1] < stor568A[arg1]
    uint8(stor[stor568A[arg1] + sha3((9 * arg1) + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd8)].field_0) = uint8(arg2)
    Mask(248, 0, stor[stor568A[arg1] + sha3((9 * arg1) + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd8)].field_8) = Mask(248, 0, msg.sender)
    Mask(88, 0, stor[stor568A[arg1] + sha3((9 * arg1) + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd8)].field_168) = Mask(88, 168, arg2) >> 168
    uint8(stor[(9 * arg1) + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd9][address(msg.sender)].field_0) = 1
    stor568A[arg1] = stor568A[arg1] + 1
    emit Voted(arg1, arg2, msg.sender);
    return stor568A[arg1]
}

function executeProposal(uint256 arg1, bytes arg2) payable {
    mem[128 len arg2.length] = arg2[all]
    require arg1 < stor4.length
    require block.timestamp >= stor568A[arg1]
    require not uint8(stor568A[arg1].field_0)
    mem[ceil32(arg2.length) + 128] = stor568A[arg1]
    mem[ceil32(arg2.length) + 148] = stor568A[arg1]
    mem[ceil32(arg2.length) + 180 len arg2.length] = arg2[all]
    require stor568A[arg1] == sha3(stor568A[arg1], stor568A[arg1], arg2[all])
    s = 0
    s = 0
    idx = 0
    s = 0
    t = 0
    while idx < stor568A[arg1]:
        mem[0] = (9 * arg1) + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd8
        mem[ceil32(arg2.length) + 132] = address(stor[idx + sha3((9 * arg1) + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd8)].field_8)
        call address(sharesTokenAddress).0x70a08231 with:
             gas gas_remaining - 25050 wei
            args address(stor[idx + sha3((9 * arg1) + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd8)].field_8)
        mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        if not uint8(stor[idx + sha3((9 * arg1) + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd8)].field_0):
            s = ext_call.return_data[0]
            s = idx + sha3((9 * arg1) + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd8)
            idx = idx + 1
            s = s
            t = ext_call.return_data[0] + t
            continue 
        s = ext_call.return_data[0]
        s = idx + sha3((9 * arg1) + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd8)
        idx = idx + 1
        s = ext_call.return_data[0] + s
        t = ext_call.return_data[0] + t
        continue 
    require t > minimumQuorum
    if s <= 0:
        uint8(stor568A[arg1].field_0) = 1
        uint8(stor568A[arg1].field_8) = 0
    else:
        mem[ceil32(arg2.length) + 128 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            call stor568A[arg1] with:
               value 10^18 * stor568A[arg1] wei
                 gas gas_remaining - 34050 wei
                args arg2[all]
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
            call stor568A[arg1].mem[ceil32(arg2.length) + 128 len 4] with:
               value 10^18 * stor568A[arg1] wei
                 gas gas_remaining - 34050 wei
                args mem[ceil32(arg2.length) + 132 len floor32(arg2.length) + 28]
        uint8(stor568A[arg1].field_0) = 1
        uint8(stor568A[arg1].field_8) = 1
    stor568A[arg1].field_256 % 1 = 0
    emit ProposalTallied(arg1, 0, t, uint8(stor568A[arg1].field_8));
    return 0
}

function newProposal(address arg1, uint256 arg2, string arg3, bytes arg4) payable {
    call address(sharesTokenAddress).0x70a08231 with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] != 0
    stor4.length++
    if not stor4.length <= stor4.length + 1:
        mem[0] = 4
        idx = (9 * stor4.length) + 9
        while sha3(4) + (9 * stor4.length) > idx + sha3(mem[0]):
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
    require stor4.length < stor4.length
    uint256(stor4[stor4.length].field_0) = arg1 or Mask(96, 160, uint256(stor4[stor4.length].field_0))
    uint256(stor4[stor4.length].field_256) = arg2
    uint256(stor[sha3((9 * stor4.length) + ('name', 'stor4', 4) + 2)][].field_0) = Array(len=arg3.length, data=arg3[all])
    uint256(stor4[stor4.length].field_1536) = sha3(arg1, arg2, arg4[all])
    uint256(stor4[stor4.length].field_768) = block.timestamp + (60 * debatingPeriodInMinutes)
    uint8(stor4[stor4.length].field_1024) = 0
    uint8(stor4[stor4.length].field_1032) = 0
    uint256(stor4[stor4.length].field_1280) = 0
    emit ProposalAdded(stor4.length, address(arg1), arg2, Array(len=arg3.length, data=arg3[all]));
    numProposals = stor4.length + 1
    return stor4.length
}



}
