contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
mapping of uint8 stor6;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = code.data[3558 len 32]
    stor2 = 5
    stor3 = code.data[3622 len 32]
    stor6[address(msg.sender)] = 1
    return code.data[111 len 3447]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
array of struct proposals;
array of uint256 stor5;
mapping of uint8 isMember;
array of uint256 stor7;
array of uint256 stor8;
mapping of uint8 stor99;
array of address stor39143100329280468107556231533410151018419134684842411016866935372961967991761;
array of uint256 stor39143100329280468107556231533410151018419134684842411016866935372961967991762;
array of struct stor39143100329280468107556231533410151018419134684842411016866935372961967991765;
array of uint256 stor39143100329280468107556231533410151018419134684842411016866935372961967991766;
array of uint256 stor39143100329280468107556231533410151018419134684842411016866935372961967991767;
array of uint256 stor39143100329280468107556231533410151018419134684842411016866935372961967991768;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856478;

function proposals(uint256 arg1) payable {
    require arg1 < proposals.length
    mem[416] = uint256(stor[sha3((10 * arg1) + ('name', 'proposals', 4) + 2)].field_0)
    idx = 416
    s = 0
    while stor[(10 * arg1) + ('name', 'proposals', 4) + 2].length + 416 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((10 * arg1) + ('name', 'proposals', 4) + 2)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(proposals[arg1].field_0), 
           uint256(proposals[arg1].field_256),
           Array(len=stor[(10 * arg1) + ('name', 'proposals', 4) + 2].length, data=mem[416 len stor[(10 * arg1) + ('name', 'proposals', 4) + 2].length + (floor32(stor[(10 * arg1) + ('name', 'proposals', 4) + 2].length - 1) + -stor[(10 * arg1) + ('name', 'proposals', 4) + 2].length + 32 % 32)]),
           uint256(proposals[arg1].field_768),
           uint8(proposals[arg1].field_1024),
           uint8(proposals[arg1].field_1024),
           uint256(proposals[arg1].field_1280),
           uint256(proposals[arg1].field_1536),
           uint256(proposals[arg1].field_1792)
}

function numProposals() payable {
    return stor5.length
}

function debatingPeriodInMinutes() payable {
    return stor2.length
}

function minimumQuorum() payable {
    return stor1.length
}

function owner() payable {
    return address(owner)
}

function isMember(address arg1) payable {
    return uint8(isMember[arg1])
}

function majorityMargin() payable {
    return stor3.length
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) payable {
    require msg.sender == address(owner)
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function checkProposalCode(uint256 arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require arg1 < proposals.length
    return (stor568A[arg1] == sha3(arg2, arg3, arg4[all]))
}

function sub_615705c0(?) payable {
    require msg.sender == address(owner)
    uint256(isMember[address(arg1)]) = arg2 or Mask(248, 8, uint256(isMember[address(arg1)]))
    emit MembershipChanged(address(arg1), arg2);
}

function changeVotingRules(uint256 arg1, uint256 arg2, int256 arg3) payable {
    require msg.sender == address(owner)
    stor1.length = arg1
    stor2.length = arg2
    stor3.length = arg3
    emit ChangeOfRules(arg1, arg2, arg3);
}

function vote(uint256 arg1, bool arg2, string arg3) payable {
    require uint8(isMember[address(msg.sender)])
    require arg1 < proposals.length
    require uint8(stor[(10 * arg1) + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bda][address(msg.sender)]) != 1
    uint8(stor[(10 * arg1) + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bda][address(msg.sender)]) = 1
    stor568A[arg1]++
    if not arg2:
        stor568A[arg1]--
    else:
        stor568A[arg1]++
    emit Voted(arg1, arg2, msg.sender, Array(len=arg3.length, data=arg3[all]));
    return 0
}

function executeProposal(uint256 arg1, bytes arg2) payable {
    mem[128 len arg2.length] = arg2[all]
    require arg1 < proposals.length
    require block.timestamp >= stor8A35[arg1]
    require not uint8(stor568A[arg1].field_0)
    mem[ceil32(arg2.length) + 128] = stor568A[arg1]
    mem[ceil32(arg2.length) + 148] = stor568A[arg1]
    mem[ceil32(arg2.length) + 180 len arg2.length] = arg2[all]
    require stor568A[arg1] == sha3(stor568A[arg1], stor568A[arg1], arg2[all])
    require stor568A[arg1] > stor1.length
    if stor568A[arg1] <= stor3.length:
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
    emit ProposalTallied(arg1, stor568A[arg1], stor568A[arg1], uint8(stor568A[arg1].field_8));
    return 0
}

function newProposal(address arg1, uint256 arg2, string arg3, bytes arg4) payable {
    require uint8(isMember[address(msg.sender)])
    proposals.length++
    if not proposals.length <= proposals.length + 1:
        mem[0] = 4
        idx = (10 * proposals.length) + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bdb
        while (10 * proposals.length) + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1 > idx:
            address(stor[idx]) = 0
            stor1[idx] = 0
            stor2[idx] = 0
            if 31 < stor[idx + 2].length:
                s = sha3(idx + 2)
                while sha3(idx + 2) + (stor[idx + 2].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            stor3[idx] = 0
            uint16(proposals[idx].field_0) = 0
            stor5[idx] = 0
            uint256(isMember[idx]) = 0
            stor7[idx] = 0
            stor8[idx] = 0
            mem[0] = idx + 8
            s = sha3(mem[0])
            while sha3(idx + 8) + (2 * stor8[idx]) > s:
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
    require proposals.length < proposals.length
    uint256(proposals[proposals.length].field_0) = arg1 or Mask(96, 160, uint256(proposals[proposals.length].field_0))
    uint256(proposals[proposals.length].field_256) = arg2
    uint256(stor[sha3((10 * proposals.length) + ('name', 'proposals', 4) + 2)][].field_0) = Array(len=arg3.length, data=arg3[all])
    uint256(proposals[proposals.length].field_1792) = sha3(arg1, arg2, arg4[all])
    uint256(proposals[proposals.length].field_768) = block.timestamp + (60 * stor2.length)
    uint8(proposals[proposals.length].field_1024) = 0
    uint8(proposals[proposals.length].field_1032) = 0
    uint256(proposals[proposals.length].field_1280) = 0
    emit ProposalAdded(proposals.length, address(arg1), arg2, Array(len=arg3.length, data=arg3[all]));
    stor5.length = proposals.length + 1
    return proposals.length
}



}
