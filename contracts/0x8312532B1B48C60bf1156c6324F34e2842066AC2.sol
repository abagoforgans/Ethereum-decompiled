contract main {


// =======================  Init code  ======================


uint256 stor3;
uint256 stor11;

function _fallback() payable {
    stor3 = 0
    stor11 = 2
    return code.data[34 len 5797]
}



// =====================  Runtime code  =====================


#
#  - suicide(address arg1)
#
address stor0;
uint256 stor0;
array of uint256 stor1;
address sharesAddress;
uint256 stor3;
uint256 minimumQuorum;
uint256 debatingPeriodInMinutes;
uint256 majorityMargin;
array of struct stor7;
uint256 numProposals;
mapping of uint256 memberId;
array of struct stor10;
uint256 version;
array of struct stor39249365189697262212649556357205408732595607600233223271220075824908968655314;
array of uint256 stor39249365189697262212649556357205408732595607600233223271220075824908968655315;
uint256 stor56C6;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432777;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432779;
array of uint8 stor75276140696391174450305814049576319106646922510300487059720162673006384432780;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432781;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432782;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432783;
array of uint256 stor89717814153306320011181716697424560163256864414616650038987186496166826726058;

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
    return sharesAddress
}

function _fallback() payable {
    if msg.value > 0:
        stor3 += msg.value
    emit Deposit(msg.sender, msg.value);
}

function sub_80d8c98f(?) payable {
    if msg.value <= 0:
        return 0
    stor3 += msg.value
    emit Deposit(msg.sender, msg.value);
    return 1
}

function sub_738260aa(?) payable {
    call address(stor1.length).0x71ccd728 with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
}

function checkProposalCode(uint256 arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require arg1 < stor7.length
    return (uint256(stor[code.data[5765 len 32] + (10 * arg1) + 7].field_0) == sha3(arg2, arg3, arg4[all]))
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
    if stor3 >= arg2:
        call arg1 with:
           value arg2 wei
             gas 0 wei
    else:
        call arg1 with:
           value stor3 wei
             gas 0 wei
}

function vote(uint256 arg1, bool arg2, string arg3) payable {
    require memberId[address(msg.sender)] != 0
    require memberId[address(msg.sender)] < stor10.length
    require uint8(stor56C6[stor9[address(msg.sender)]].field_160)
    require arg1 < stor7.length
    require uint8(stor[code.data[5765 len 32] + (10 * arg1) + 9][address(msg.sender)].field_0) != 1
    uint8(stor[code.data[5765 len 32] + (10 * arg1) + 9][address(msg.sender)].field_0) = 1
    uint256(stor[code.data[5765 len 32] + (10 * arg1) + 5].field_0)++
    if not arg2:
        uint256(stor[code.data[5765 len 32] + (10 * arg1) + 6].field_0)--
    else:
        uint256(stor[code.data[5765 len 32] + (10 * arg1) + 6].field_0)++
    emit Voted(arg1, arg2, msg.sender, Array(len=arg3.length, data=arg3[all]));
    return 0
}

function members(uint256 arg1) payable {
    require arg1 < stor10.length
    mem[256] = uint256(stor[sha3((3 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57)].field_0)
    idx = 256
    s = 0
    while stor[(3 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57].length + 256 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((3 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57) + 1].field_0)
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor56C6[arg1].field_0), 
           uint8(stor56C6[arg1].field_0),
           Array(len=stor[(3 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57].length, data=mem[256 len stor[(3 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57].length + (floor32(stor[(3 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57].length - 1) + -stor[(3 * arg1) - 0x39a5844729cae3e308f36a5ce933956d7c6367997d26743ca06a70b77c062d57].length + 32 % 32)]),
           storC65A[arg1]
}

function proposals(uint256 arg1) payable {
    require arg1 < stor7.length
    mem[416] = uint256(stor[sha3((10 * arg1) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93976)].field_0)
    idx = 416
    s = 0
    while stor[(10 * arg1) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93976].length + 416 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((10 * arg1) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93976) + 1].field_0)
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor[(10 * arg1) + code.data[5765 len 32]].field_0), 
           storA66C[arg1],
           Array(len=stor[(10 * arg1) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93976].length, data=mem[416 len stor[(10 * arg1) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93976].length + (floor32(stor[(10 * arg1) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93976].length - 1) + -stor[(10 * arg1) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93976].length + 32 % 32)]),
           storA66C[arg1],
           storA66C[arg1],
           storA66C[arg1],
           storA66C[arg1],
           storA66C[arg1],
           storA66C[arg1]
}

function changeMembership(address arg1, bool arg2, string arg3) payable {
    require msg.sender == address(stor0)
    if memberId[address(arg1)]:
        require memberId[address(arg1)] < stor10.length
        Mask(96, 0, stor56C6[stor9[address(arg1)]].field_160) = Mask(96, 0, arg2)
    else:
        memberId[address(arg1)] = stor10.length
        stor10.length++
        if not stor10.length <= stor10.length + 1:
            mem[0] = 10
            idx = (3 * stor10.length) + 3
            while sha3(10) + (3 * stor10.length) > idx + sha3(mem[0]):
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
        require stor10.length < stor10.length
        address(stor10[stor10.length].field_0) = arg1
        Mask(96, 0, stor10[stor10.length].field_160) = Mask(96, 0, arg2)
        Mask(88, 0, stor10[stor10.length].field_168) = Mask(88, 168, arg1) >> 168
        uint256(stor[sha3((3 * stor10.length) + ('name', 'stor10', 10) + 1)][].field_0) = Array(len=arg3.length, data=arg3[all])
        uint256(stor10[stor10.length].field_512) = block.timestamp
    emit MembershipChanged(address(arg1), arg2);
}

function sub_b5636e16(?) payable {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    stor1.length = arg5 or Mask(96, 160, stor1.length)
    require msg.sender == address(stor0)
    minimumQuorum = arg1
    debatingPeriodInMinutes = arg2
    majorityMargin = arg3
    emit ChangeOfRules(arg1, arg2, arg3);
    stor10.length++
    if not stor10.length <= stor10.length + 1:
        mem[0] = 10
        idx = (3 * stor10.length) + 3
        while sha3(10) + (3 * stor10.length) > idx + sha3(mem[0]):
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
    require 0 < stor10.length
    Mask(168, 0, stor56C6.length) = 0
    stor56C6.length.field_256 % 1 = 0
    stor56C6.length.field_256 % 1 = 0
    stor56C6.length.field_256 % 1 = 0
    bool(stor56C6.length) = 0
    uint255(stor56C6.length.field_1) = 0
    Mask(248, 0, stor56C6.length.field_8) = mem[256 len 31]
    idx = sha3(0x56c65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d3)
    while sha3(0x56c65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d3) + (stor56C6.length + 31 / 32) > idx:
        uint256(stor[idx].field_0) = 0
        idx = idx + 1
        continue 
    stor56C6 = block.timestamp
    if arg4 != 0:
        uint256(stor0) = arg4 or Mask(96, 160, uint256(stor0))
}

function executeProposal(uint256 arg1, bytes arg2) payable {
    mem[128 len arg2.length] = arg2[all]
    require arg1 < stor7.length
    require block.timestamp >= storA66C[arg1]
    require not uint8(stor[(10 * arg1) + code.data[5765 len 32] + 4].field_0)
    mem[ceil32(arg2.length) + 128] = address(stor[(10 * arg1) + code.data[5765 len 32]].field_0)
    mem[ceil32(arg2.length) + 148] = uint256(stor[(10 * arg1) + code.data[5765 len 32] + 1].field_0)
    mem[ceil32(arg2.length) + 180 len arg2.length] = arg2[all]
    require uint256(stor[(10 * arg1) + code.data[5765 len 32] + 7].field_0) == sha3(address(stor[(10 * arg1) + code.data[5765 len 32]].field_0), uint256(stor[(10 * arg1) + code.data[5765 len 32] + 1].field_0), arg2[all])
    require uint256(stor[(10 * arg1) + code.data[5765 len 32] + 5].field_0) >= minimumQuorum
    if uint256(stor[(10 * arg1) + code.data[5765 len 32] + 6].field_0) <= majorityMargin:
        uint8(stor[(10 * arg1) + code.data[5765 len 32] + 4].field_0) = 1
        uint8(stor[(10 * arg1) + code.data[5765 len 32] + 4].field_8) = 0
    else:
        mem[ceil32(arg2.length) + 128 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            call address(stor[(10 * arg1) + code.data[5765 len 32]].field_0) with:
               value 10^18 * uint256(stor[(10 * arg1) + code.data[5765 len 32] + 1].field_0) wei
                 gas gas_remaining - 34050 wei
                args arg2[all]
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
            call address(stor[(10 * arg1) + code.data[5765 len 32]].field_0).mem[ceil32(arg2.length) + 128 len 4] with:
               value 10^18 * uint256(stor[(10 * arg1) + code.data[5765 len 32] + 1].field_0) wei
                 gas gas_remaining - 34050 wei
                args mem[ceil32(arg2.length) + 132 len floor32(arg2.length) + 28]
        uint8(stor[(10 * arg1) + code.data[5765 len 32] + 4].field_0) = 1
        uint8(stor[(10 * arg1) + code.data[5765 len 32] + 4].field_8) = 1
    stor[(10 * arg1) + code.data[5765 len 32] + 4].field_256 % 1 = 0
    emit ProposalTallied(arg1, uint256(stor[(10 * arg1) + code.data[5765 len 32] + 6].field_0), uint256(stor[(10 * arg1) + code.data[5765 len 32] + 5].field_0), uint8(stor[(10 * arg1) + code.data[5765 len 32] + 4].field_8));
    return 0
}

function newProposal(address arg1, uint256 arg2, string arg3, bytes arg4) payable {
    require memberId[address(msg.sender)] != 0
    require memberId[address(msg.sender)] < stor10.length
    require uint8(stor56C6[stor9[address(msg.sender)]].field_160)
    stor7.length++
    if not stor7.length <= stor7.length + 1:
        mem[0] = 7
        idx = (10 * stor7.length) + 10
        while sha3(7) + (10 * stor7.length) > idx + sha3(mem[0]):
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
                uint256(stor1[s]) = 0
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
    require stor7.length < stor7.length
    uint256(stor7[stor7.length].field_0) = arg1 or Mask(96, 160, uint256(stor7[stor7.length].field_0))
    uint256(stor7[stor7.length].field_256) = arg2
    uint256(stor[sha3((10 * stor7.length) + ('name', 'stor7', 7) + 2)][].field_0) = Array(len=arg3.length, data=arg3[all])
    uint256(stor7[stor7.length].field_1792) = sha3(arg1, arg2, arg4[all])
    uint256(stor7[stor7.length].field_768) = block.timestamp + (60 * debatingPeriodInMinutes)
    uint8(stor7[stor7.length].field_1024) = 0
    uint8(stor7[stor7.length].field_1032) = 0
    uint256(stor7[stor7.length].field_1280) = 0
    emit ProposalAdded(stor7.length, address(arg1), arg2, Array(len=arg3.length, data=arg3[all]));
    numProposals = stor7.length + 1
    return stor7.length
}



}
