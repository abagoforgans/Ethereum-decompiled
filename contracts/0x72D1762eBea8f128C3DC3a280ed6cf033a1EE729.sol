contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
array of uint256 stor7;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432777;
uint256 storA66C;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = code.data[5421 len 32]
    stor2 = code.data[5453 len 32]
    stor3 = code.data[5485 len 32]
    stor7.length++
    if not stor7.length <= stor7.length + 1:
        mem[0] = 7
        idx = (3 * stor7.length) + 3
        while sha3(7) + (3 * stor7.length) > idx + sha3(mem[0]):
            Mask(168, 0, stor[idx + sha3(mem[0])]) = 0
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
    require 0 < stor7.length
    Mask(168, 0, stor7.field_0) = 0
    stor7.field_256 % 1 = 0
    stor7.field_256 % 1 = 0
    stor7.field_256 % 1 = 0
    bool(storA66C.length) = 0
    uint255(storA66C.length.field_1) = 0
    Mask(248, 0, storA66C.length.field_8) = mem[384 len 31]
    idx = sha3(0xa66cc928b5edb82af9bd49922954155ab7b0942694bea4ce44661d9a8736c689)
    while sha3(0xa66cc928b5edb82af9bd49922954155ab7b0942694bea4ce44661d9a8736c689) + (storA66C.length + 31 / 32) > idx:
        uint256(stor[idx]) = 0
        idx = idx + 1
        continue 
    storA66C = block.timestamp
    if address(code.data[5517 len 32]) != 0:
        stor0 = code.data[5517 len 32] or Mask(96, 160, stor0)
    return code.data[622 len 4799]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
array of uint256 stor1;
uint256 debatingPeriodInMinutes;
uint256 majorityMargin;
array of struct stor4;
uint256 numProposals;
mapping of uint256 memberId;
array of struct stor7;
mapping of uint8 stor99;
array of struct stor39192952402756187425302384862487251540968225014669488259582314013099748177606;
array of address stor61758742758443787526222439542919508021010928564850333680823494749507501124561;
array of uint256 stor61758742758443787526222439542919508021010928564850333680823494749507501124562;
array of struct stor61758742758443787526222439542919508021010928564850333680823494749507501124565;
array of uint256 stor61758742758443787526222439542919508021010928564850333680823494749507501124566;
array of uint256 stor61758742758443787526222439542919508021010928564850333680823494749507501124567;
array of uint256 stor61758742758443787526222439542919508021010928564850333680823494749507501124568;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856476;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856478;
array of uint8 stor62514009886607029107290561805838585334079798074568712924583230797734656856479;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856480;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856481;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856482;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432778;

function memberId(address arg1) payable {
    return memberId[arg1]
}

function numProposals() payable {
    return numProposals
}

function debatingPeriodInMinutes() payable {
    return debatingPeriodInMinutes
}

function minimumQuorum() payable {
    return stor1.length
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

function checkProposalCode(uint256 arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require arg1 < stor4.length
    return (stor888A[arg1] == sha3(arg2, arg3, arg4[all]))
}

function changeVotingRules(uint256 arg1, uint256 arg2, int256 arg3) payable {
    require address(owner) == msg.sender
    stor1.length = arg1
    debatingPeriodInMinutes = arg2
    majorityMargin = arg3
    emit ChangeOfRules(arg1, arg2, arg3);
}

function vote(uint256 arg1, bool arg2, string arg3) payable {
    require memberId[address(msg.sender)] != 0
    require memberId[address(msg.sender)] < stor7.length
    require uint8(stor56A6[stor6[address(msg.sender)]].field_160)
    require arg1 < stor4.length
    require uint8(stor[(10 * arg1) - 0x7775ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c9426][address(msg.sender)]) != 1
    uint8(stor[(10 * arg1) - 0x7775ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c9426][address(msg.sender)]) = 1
    stor888A[arg1]++
    if not arg2:
        stor888A[arg1]--
    else:
        stor888A[arg1]++
    emit Voted(arg1, arg2, msg.sender, Array(len=arg3.length, data=arg3[all]));
    return 0
}

function members(uint256 arg1) payable {
    require arg1 < stor7.length
    mem[256] = uint256(stor[sha3((3 * arg1) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93977)])
    idx = 256
    s = 0
    while stor[(3 * arg1) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93977].length + 256 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((3 * arg1) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93977) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor56A6[arg1].field_0), 
           uint8(stor56A6[arg1].field_0),
           Array(len=stor[(3 * arg1) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93977].length, data=mem[256 len stor[(3 * arg1) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93977].length + (floor32(stor[(3 * arg1) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93977].length - 1) + -stor[(3 * arg1) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93977].length + 32 % 32)]),
           storA66C[arg1]
}

function proposals(uint256 arg1) payable {
    require arg1 < stor4.length
    mem[416] = uint256(stor[sha3((10 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e63)])
    idx = 416
    s = 0
    while stor[(10 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e63].length + 416 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((10 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e63) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    return stor888A[arg1], 
           stor8A35[arg1],
           Array(len=stor[(10 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e63].length, data=mem[416 len stor[(10 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e63].length + (floor32(stor[(10 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e63].length - 1) + -stor[(10 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e63].length + 32 % 32)]),
           stor8A35[arg1],
           stor8A35[arg1],
           stor8A35[arg1],
           stor8A35[arg1],
           stor8A35[arg1],
           stor8A35[arg1]
}

function executeProposal(uint256 arg1, bytes arg2) payable {
    mem[128 len arg2.length] = arg2[all]
    require arg1 < stor4.length
    require block.timestamp >= stor8A35[arg1]
    require not uint8(stor888A[arg1].field_0)
    mem[ceil32(arg2.length) + 128] = stor888A[arg1]
    mem[ceil32(arg2.length) + 148] = stor888A[arg1]
    mem[ceil32(arg2.length) + 180 len arg2.length] = arg2[all]
    require stor888A[arg1] == sha3(stor888A[arg1], stor888A[arg1], arg2[all])
    require stor888A[arg1] >= stor1.length
    if stor888A[arg1] <= majorityMargin:
        uint8(stor888A[arg1].field_0) = 1
        uint8(stor888A[arg1].field_8) = 0
    else:
        mem[ceil32(arg2.length) + 128 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            call stor888A[arg1] with:
               value 10^18 * stor888A[arg1] wei
                 gas gas_remaining - 34050 wei
                args arg2[all]
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
            call stor888A[arg1].mem[ceil32(arg2.length) + 128 len 4] with:
               value 10^18 * stor888A[arg1] wei
                 gas gas_remaining - 34050 wei
                args mem[ceil32(arg2.length) + 132 len floor32(arg2.length) + 28]
        uint8(stor888A[arg1].field_0) = 1
        uint8(stor888A[arg1].field_8) = 1
    stor888A[arg1].field_256 % 1 = 0
    emit ProposalTallied(arg1, stor888A[arg1], stor888A[arg1], uint8(stor888A[arg1].field_8));
    return 0
}

function changeMembership(address arg1, bool arg2, string arg3) payable {
    require msg.sender == address(owner)
    if memberId[address(arg1)]:
        require memberId[address(arg1)] < stor7.length
        Mask(96, 0, stor56A6[stor6[address(arg1)]].field_160) = Mask(96, 0, arg2)
    else:
        memberId[address(arg1)] = stor7.length
        stor7.length++
        if not stor7.length <= stor7.length + 1:
            mem[0] = 7
            idx = (3 * stor7.length) + 3
            while sha3(7) + (3 * stor7.length) > idx + sha3(mem[0]):
                Mask(168, 0, stor[idx + sha3(mem[0])]) = 0
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
        address(stor7[stor7.length].field_0) = arg1
        Mask(96, 0, stor7[stor7.length].field_160) = Mask(96, 0, arg2)
        Mask(88, 0, stor7[stor7.length].field_168) = Mask(88, 168, arg1) >> 168
        uint256(stor[sha3((3 * stor7.length) + ('name', 'stor7', 7) + 1)][].field_0) = Array(len=arg3.length, data=arg3[all])
        uint256(stor7[stor7.length].field_512) = block.timestamp
    emit MembershipChanged(address(arg1), arg2);
}

function newProposal(address arg1, uint256 arg2, string arg3, bytes arg4) payable {
    require memberId[address(msg.sender)] != 0
    require memberId[address(msg.sender)] < stor7.length
    require uint8(stor56A6[stor6[address(msg.sender)]].field_160)
    stor4.length++
    if not stor4.length <= stor4.length + 1:
        mem[0] = 4
        idx = (10 * stor4.length) + 10
        while sha3(4) + (10 * stor4.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 2].length:
                s = sha3(idx + sha3(mem[0]) + 2)
                while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            uint16(stor[idx + sha3(mem[0]) + 4]) = 0
            uint256(stor[idx + sha3(mem[0]) + 5]) = 0
            uint256(stor[idx + sha3(mem[0]) + 6]) = 0
            uint256(stor[idx + sha3(mem[0]) + 7]) = 0
            uint256(stor[idx + sha3(mem[0]) + 8]) = 0
            mem[0] = idx + sha3(mem[0]) + 8
            s = sha3(mem[0])
            while sha3(idx + sha3(mem[0]) + 8) + (2 * uint256(stor[idx + sha3(mem[0]) + 8])) > s:
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
    require stor4.length < stor4.length
    uint256(stor4[stor4.length].field_0) = arg1 or Mask(96, 160, uint256(stor4[stor4.length].field_0))
    uint256(stor4[stor4.length].field_256) = arg2
    uint256(stor[sha3((10 * stor4.length) + ('name', 'stor4', 4) + 2)][].field_0) = Array(len=arg3.length, data=arg3[all])
    uint256(stor4[stor4.length].field_1792) = sha3(arg1, arg2, arg4[all])
    uint256(stor4[stor4.length].field_768) = block.timestamp + (60 * debatingPeriodInMinutes)
    uint8(stor4[stor4.length].field_1024) = 0
    uint8(stor4[stor4.length].field_1032) = 0
    uint256(stor4[stor4.length].field_1280) = 0
    emit ProposalAdded(stor4.length, address(arg1), arg2, Array(len=arg3.length, data=arg3[all]));
    numProposals = stor4.length + 1
    return stor4.length
}



}
