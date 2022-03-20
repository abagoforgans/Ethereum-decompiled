contract main {


// =======================  Init code  ======================


uint256 stor2;
uint256 stor10;

function _fallback() payable {
    stor2 = 0
    stor10 = 2
    return code.data[29 len 5646]
}



// =====================  Runtime code  =====================


#
#  - suicide(address arg1)
#
address stor0;
uint256 stor0;
array of struct stor1;
array of uint256 stor2;
uint256 minimumQuorum;
uint256 debatingPeriodInMinutes;
uint256 majorityMargin;
array of struct proposals;
uint256 numProposals;
mapping of uint256 memberId;
array of struct stor9;
uint256 version;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278001;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986688;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986690;
array of struct stor111414077815863400510004064629973595961579173665589224203503662149373724986691;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986692;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986693;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986694;

function proposals(uint256 arg1) payable {
    require arg1 < proposals.length
    mem[416] = uint256(stor[sha3((10 * arg1) + ('name', 'proposals', 6) + 2)].field_0)
    idx = 416
    s = 0
    while stor[(10 * arg1) + ('name', 'proposals', 6) + 2].length + 416 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((10 * arg1) + ('name', 'proposals', 6) + 2)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(proposals[arg1].field_0), 
           uint256(proposals[arg1].field_256),
           Array(len=stor[(10 * arg1) + ('name', 'proposals', 6) + 2].length, data=mem[416 len stor[(10 * arg1) + ('name', 'proposals', 6) + 2].length + (floor32(stor[(10 * arg1) + ('name', 'proposals', 6) + 2].length - 1) + -stor[(10 * arg1) + ('name', 'proposals', 6) + 2].length + 32 % 32)]),
           uint256(proposals[arg1].field_768),
           uint8(proposals[arg1].field_1024),
           uint8(proposals[arg1].field_1024),
           uint256(proposals[arg1].field_1280),
           uint256(proposals[arg1].field_1536),
           uint256(proposals[arg1].field_1792)
}

function memberId(address arg1) payable {
    return memberId[arg1]
}

function numProposals() payable {
    return numProposals
}

function version() payable {
    return version
}

function debatingPeriodInMinutes() payable {
    return debatingPeriodInMinutes
}

function minimumQuorum() payable {
    return minimumQuorum
}

function majorityMargin() payable {
    return majorityMargin
}

function sharesAddress() payable {
    return address(stor1.length)
}

function _fallback() payable {
    if msg.value > 0:
        stor2.length += msg.value
    emit Deposit(msg.sender, msg.value);
}

function sub_420b3240(?) payable {
    require msg.sender == address(stor0)
    stor1.length = arg1 or Mask(96, 160, stor1.length)
}

function sub_80d8c98f(?) payable {
    if msg.value <= 0:
        return 0
    stor2.length += msg.value
    emit Deposit(msg.sender, msg.value);
    return 1
}

function checkProposalCode(uint256 arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require arg1 < proposals.length
    return (storF652[arg1] == sha3(arg2, arg3, arg4[all]))
}

function sub_d0d2911a(?) payable {
    require msg.sender == address(stor0)
    call arg1.0x71ccd728 with:
         gas gas_remaining - 25050 wei
        args arg2
    require ext_call.success
}

function changeVotingRules(uint256 arg1, uint256 arg2, int256 arg3) payable {
    require msg.sender == address(stor0)
    minimumQuorum = arg1
    debatingPeriodInMinutes = arg2
    majorityMargin = arg3
    emit ChangeOfRules(arg1, arg2, arg3);
}

function withdraw(address arg1, uint256 arg2) payable {
    require msg.sender == address(stor0)
    if stor2.length >= arg2:
        call arg1 with:
           value arg2 wei
             gas 0 wei
    else:
        call arg1 with:
           value stor2.length wei
             gas 0 wei
}

function vote(uint256 arg1, bool arg2, string arg3) payable {
    require memberId[address(msg.sender)] != 0
    require memberId[address(msg.sender)] < stor9.length
    require uint8(stor[code.data[5614 len 32] + (3 * stor8[address(msg.sender)])].field_160)
    require arg1 < proposals.length
    require uint8(stor[(10 * arg1) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b8][address(msg.sender)].field_0) != 1
    uint8(stor[(10 * arg1) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2b8][address(msg.sender)].field_0) = 1
    storF652[arg1]++
    if not arg2:
        storF652[arg1]--
    else:
        storF652[arg1]++
    emit Voted(arg1, arg2, msg.sender, Array(len=arg3.length, data=arg3[all]));
    return 0
}

function members(uint256 arg1) payable {
    require arg1 < stor9.length
    mem[256] = uint256(stor[sha3((3 * arg1) + 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7b0)].field_0)
    idx = 256
    s = 0
    while stor[(3 * arg1) + 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7b0].length + 256 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((3 * arg1) + 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7b0) + 1].field_0)
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor[(3 * arg1) + code.data[5614 len 32]].field_0), 
           uint8(stor[(3 * arg1) + code.data[5614 len 32]].field_0),
           Array(len=stor[(3 * arg1) + 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7b0].length, data=mem[256 len stor[(3 * arg1) + 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7b0].length + (floor32(stor[(3 * arg1) + 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7b0].length - 1) + -stor[(3 * arg1) + 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7b0].length + 32 % 32)]),
           stor6E15[arg1]
}

function executeProposal(uint256 arg1, bytes arg2) payable {
    mem[128 len arg2.length] = arg2[all]
    require arg1 < proposals.length
    require block.timestamp >= storF652[arg1]
    require not uint8(storF652[arg1].field_0)
    mem[ceil32(arg2.length) + 128] = address(proposals[arg1].field_0)
    mem[ceil32(arg2.length) + 148] = storF652[arg1]
    mem[ceil32(arg2.length) + 180 len arg2.length] = arg2[all]
    require storF652[arg1] == sha3(address(proposals[arg1].field_0), storF652[arg1], arg2[all])
    require storF652[arg1] >= minimumQuorum
    if storF652[arg1] <= majorityMargin:
        uint8(storF652[arg1].field_0) = 1
        uint8(storF652[arg1].field_8) = 0
    else:
        mem[ceil32(arg2.length) + 128 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            call address(proposals[arg1].field_0) with:
               value 10^18 * storF652[arg1] wei
                 gas gas_remaining - 34050 wei
                args arg2[all]
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
            call address(proposals[arg1].field_0).mem[ceil32(arg2.length) + 128 len 4] with:
               value 10^18 * storF652[arg1] wei
                 gas gas_remaining - 34050 wei
                args mem[ceil32(arg2.length) + 132 len floor32(arg2.length) + 28]
        uint8(storF652[arg1].field_0) = 1
        uint8(storF652[arg1].field_8) = 1
    storF652[arg1].field_256 % 1 = 0
    emit ProposalTallied(arg1, storF652[arg1], storF652[arg1], uint8(storF652[arg1].field_8));
    return 0
}

function changeMembership(address arg1, bool arg2, string arg3) payable {
    require msg.sender == address(stor0)
    if memberId[address(arg1)]:
        require memberId[address(arg1)] < stor9.length
        Mask(96, 0, stor[code.data[5614 len 32] + (3 * stor8[address(arg1)])].field_160) = Mask(96, 0, arg2)
    else:
        memberId[address(arg1)] = stor9.length
        stor9.length++
        if not stor9.length <= stor9.length + 1:
            mem[0] = 9
            idx = (3 * stor9.length) + 3
            while sha3(9) + (3 * stor9.length) > idx + sha3(mem[0]):
                Mask(168, 0, stor[idx + sha3(mem[0])].field_0) = 0
                uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
                if 31 < stor[idx + sha3(mem[0]) + 1].length:
                    mem[0] = idx + sha3(mem[0]) + 1
                    s = sha3(idx + sha3(mem[0]) + 1)
                    while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
                uint256(stor[idx + sha3(mem[0]) + 2].field_0) = 0
                idx = idx + 1
                continue 
        require stor9.length < stor9.length
        address(stor9[stor9.length].field_0) = arg1
        Mask(96, 0, stor9[stor9.length].field_160) = Mask(96, 0, arg2)
        Mask(88, 0, stor9[stor9.length].field_168) = Mask(88, 168, arg1) >> 168
        uint256(stor[sha3((3 * stor9.length) + ('name', 'stor9', 9) + 1)][].field_0) = Array(len=arg3.length, data=arg3[all])
        uint256(stor9[stor9.length].field_512) = block.timestamp
    emit MembershipChanged(address(arg1), arg2);
}

function Congress(uint256 arg1, uint256 arg2, int256 arg3, address arg4) payable {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    require msg.sender == address(stor0)
    minimumQuorum = arg1
    debatingPeriodInMinutes = arg2
    majorityMargin = arg3
    emit ChangeOfRules(arg1, arg2, arg3);
    stor9.length++
    if not stor9.length <= stor9.length + 1:
        mem[0] = 9
        idx = (3 * stor9.length) + 3
        while sha3(9) + (3 * stor9.length) > idx + sha3(mem[0]):
            Mask(168, 0, stor[idx + sha3(mem[0])].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    uint256(stor[s].field_0) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 2].field_0) = 0
            idx = idx + 1
            continue 
    require 0 < stor9.length
    Mask(168, 0, stor[code.data[5614 len 32]].field_0) = 0
    stor[code.data[5614 len 32]].field_256 % 1 = 0
    stor[code.data[5614 len 32]].field_256 % 1 = 0
    stor[code.data[5614 len 32]].field_256 % 1 = 0
    bool(stor1[code.data[5614 len 32]].field_0) = 0
    uint255(stor1[code.data[5614 len 32]].field_1) = 0
    Mask(248, 0, stor1[code.data[5614 len 32]].field_8) = mem[256 len 31]
    idx = 0
    while stor[code.data[5614 len 32] + 1].length + 31 / 32 > idx:
        uint256(stor[idx + sha3(code.data[5614 len 32] + 1)].field_0) = 0
        idx = idx + 1
        continue 
    stor2[code.data[5614 len 32]] = block.timestamp
    if arg4 != 0:
        uint256(stor0) = arg4 or Mask(96, 160, uint256(stor0))
}

function newProposal(address arg1, uint256 arg2, string arg3, bytes arg4) payable {
    require memberId[address(msg.sender)] != 0
    require memberId[address(msg.sender)] < stor9.length
    require uint8(stor[code.data[5614 len 32] + (3 * stor8[address(msg.sender)])].field_160)
    proposals.length++
    if not proposals.length <= proposals.length + 1:
        mem[0] = 6
        idx = (10 * proposals.length) + 10
        while sha3(6) + (10 * proposals.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 2].field_0) = 0
            if 31 < stor[idx + sha3(mem[0]) + 2].length:
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
            uint256(stor[idx + sha3(mem[0]) + 8].field_0) = 0
            mem[0] = idx + sha3(mem[0]) + 8
            s = sha3(mem[0])
            while sha3(idx + sha3(mem[0]) + 8) + (2 * uint256(stor[idx + sha3(mem[0]) + 8].field_0)) > s:
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
    require proposals.length < proposals.length
    uint256(proposals[proposals.length].field_0) = arg1 or Mask(96, 160, uint256(proposals[proposals.length].field_0))
    uint256(proposals[proposals.length].field_256) = arg2
    uint256(stor[sha3((10 * proposals.length) + ('name', 'proposals', 6) + 2)][].field_0) = Array(len=arg3.length, data=arg3[all])
    uint256(proposals[proposals.length].field_1792) = sha3(arg1, arg2, arg4[all])
    uint256(proposals[proposals.length].field_768) = block.timestamp + (60 * debatingPeriodInMinutes)
    uint8(proposals[proposals.length].field_1024) = 0
    uint8(proposals[proposals.length].field_1032) = 0
    uint256(proposals[proposals.length].field_1280) = 0
    emit ProposalAdded(proposals.length, address(arg1), arg2, Array(len=arg3.length, data=arg3[all]));
    numProposals = proposals.length + 1
    return proposals.length
}



}
