contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor0;
array of struct stor1;
array of uint256 stor2;
uint256 stor3;
uint256 stor7;

function _fallback() payable {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    require msg.sender == address(stor0)
    stor1.length = code.data[4075 len 32]
    stor2.length = code.data[4107 len 32]
    stor3 = code.data[4139 len 32]
    emit ChangeOfRules(code.data[4075 len 32], code.data[4107 len 32], code.data[4139 len 32]);
    stor1.length = code.data[4075 len 32]
    stor2.length = code.data[4107 len 32]
    stor3 = code.data[4139 len 32]
    stor7++
    if not stor7 <= stor7 + 1:
        idx = (3 * stor7) + code.data[4043 len 32] + 3
        while code.data[4043 len 32] + (3 * stor7) > idx:
            address(stor[idx]) = 0
            uint256(stor1[idx].field_0) = 0
            if 31 < stor[idx + 1].length:
                mem[0] = idx + 1
                s = sha3(idx + 1)
                while sha3(idx + 1) + (stor[idx + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            stor2[idx] = 0
            idx = idx + 1
            continue 
    require 0 < stor7
    address(stor[code.data[4043 len 32]]) = 0
    bool(stor1[code.data[4043 len 32]].field_0) = 0
    uint255(stor1[code.data[4043 len 32]].field_1) = 0
    Mask(248, 0, stor1[code.data[4043 len 32]].field_8) = mem[320 len 31]
    idx = 0
    while stor[code.data[4043 len 32] + 1].length + 31 / 32 > idx:
        uint256(stor[idx + sha3(code.data[4043 len 32] + 1)]) = 0
        idx = idx + 1
        continue 
    stor2[code.data[4043 len 32]] = block.timestamp
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    return code.data[661 len 3382]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
uint256 minimumQuorum;
uint256 debatingPeriodInMinutes;
uint256 majorityMargin;
array of struct stor4;
uint256 numProposals;
mapping of uint256 sub_76af702e;
array of struct stor7;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856476;
array of struct stor62514009886607029107290561805838585334079798074568712924583230797734656856477;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856478;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856479;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432778;

function numProposals() payable {
    return numProposals
}

function debatingPeriodInMinutes() payable {
    return debatingPeriodInMinutes
}

function sub_76af702e(?) payable {
    return sub_76af702e[arg1]
}

function minimumQuorum() payable {
    return minimumQuorum
}

function owner() payable {
    return address(owner)
}

function majorityMargin() payable {
    return majorityMargin
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) payable {
    require address(owner) == msg.sender
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function changeVotingRules(uint256 arg1, uint256 arg2, int256 arg3) payable {
    require msg.sender == address(owner)
    minimumQuorum = arg1
    debatingPeriodInMinutes = arg2
    majorityMargin = arg3
    emit ChangeOfRules(arg1, arg2, arg3);
}

function vote(uint256 arg1, bool arg2, string arg3) payable {
    require sub_76af702e[address(msg.sender)] != 0
    require arg1 < stor4.length
    require uint8(stor[(6 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e60][address(msg.sender)]) != 1
    uint8(stor[(6 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e60][address(msg.sender)]) = 1
    stor8A35[arg1]++
    if not arg2:
        stor8A35[arg1]--
    else:
        stor8A35[arg1]++
    emit Voted(arg1, arg2, msg.sender, Array(len=arg3.length, data=arg3[all]));
    return 0
}

function proposals(uint256 arg1) payable {
    require arg1 < stor4.length
    mem[320] = uint256(stor4[arg1].field_0)
    idx = 320
    s = 0
    while stor4[arg1].length + 320 > idx + 32:
        mem[idx + 32] = uint256(stor4[(6 * arg1) + s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor4[arg1].length, data=mem[320 len stor4[arg1].length + (floor32(stor4[arg1].length - 1) + -stor4[arg1].length + 32 % 32)]), 
           stor8A35[arg1],
           uint8(stor8A35[arg1].field_0),
           uint8(stor8A35[arg1].field_0),
           stor8A35[arg1],
           stor8A35[arg1]
}

function executeProposal(uint256 arg1, bytes arg2) payable {
    require arg1 < stor4.length
    require block.timestamp >= stor8A35[arg1]
    require not uint8(stor8A35[arg1].field_0)
    require stor8A35[arg1] >= minimumQuorum
    if stor8A35[arg1] <= majorityMargin:
        uint8(stor8A35[arg1].field_8) = 0
    else:
        uint8(stor8A35[arg1].field_8) = 1
    uint8(stor8A35[arg1].field_0) = 1
    emit ProposalTallied(uint256 rg1, int256 rg2, uint256 rg3, bool rg4):
                         arg1,
                         stor8A35[arg1],
                         stor8A35[arg1],
                         0,
                         uint8(stor8A35[arg1].field_8),
    return 0
}

function members(uint256 arg1) payable {
    require arg1 < stor7.length
    mem[224] = uint256(stor[sha3((3 * arg1) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93977)])
    idx = 224
    s = 0
    while stor[(3 * arg1) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93977].length + 224 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((3 * arg1) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93977) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor7[arg1].field_0), 
           Array(len=stor[(3 * arg1) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93977].length, data=mem[224 len stor[(3 * arg1) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93977].length + (floor32(stor[(3 * arg1) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93977].length - 1) + -stor[(3 * arg1) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93977].length + 32 % 32)]),
           storA66C[arg1]
}

function addVoter(address arg1, string arg2) payable {
    require msg.sender == address(owner)
    if not sub_76af702e[address(arg1)]:
        sub_76af702e[address(arg1)] = stor7.length
        stor7.length++
        if not stor7.length <= stor7.length + 1:
            mem[0] = 7
            idx = (3 * stor7.length) + 3
            while sha3(7) + (3 * stor7.length) > idx + sha3(mem[0]):
                address(stor[idx + sha3(mem[0])]) = 0
                uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                if 31 < stor[idx + sha3(mem[0]) + 1].length:
                    mem[0] = idx + sha3(mem[0]) + 1
                    s = sha3(idx + sha3(mem[0]) + 1)
                    while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                idx = idx + 1
                continue 
        require stor7.length < stor7.length
        uint256(stor7[stor7.length].field_0) = Mask(96, 0, stor7[stor7.length].field_160)
        uint256(stor[sha3((3 * stor7.length) + ('name', 'stor7', 7) + 1)][].field_0) = Array(len=arg2.length, data=arg2[all])
        uint256(stor7[stor7.length].field_512) = block.timestamp
}

function newProposal(string arg1, bytes arg2) payable {
    require sub_76af702e[address(msg.sender)] != 0
    stor4.length++
    if not stor4.length <= stor4.length + 1:
        mem[0] = 4
        idx = (6 * stor4.length) + 6
        while sha3(4) + (6 * stor4.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            uint16(stor[idx + sha3(mem[0]) + 2]) = 0
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
            idx = idx + 1
            continue 
    require stor4.length < stor4.length
    uint256(stor4[stor4.length][].field_0) = Array(len=arg1.length, data=arg1[all])
    uint256(stor4[stor4.length].field_256) = block.timestamp + (60 * debatingPeriodInMinutes)
    uint16(stor4[stor4.length].field_512) = 0
    uint256(stor4[stor4.length].field_768) = 0
    emit ProposalAdded(stor4.length, Array(len=arg1.length, data=arg1[all]));
    numProposals = stor4.length + 1
    return stor4.length
}



}
