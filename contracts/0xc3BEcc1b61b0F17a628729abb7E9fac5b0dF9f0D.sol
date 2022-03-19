contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
array of uint256 stor8;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020068;
uint256 storF3F7;

function _fallback() payable {
    mem[96 len -5061] = code.data[5842 len -5061]
    mem[64] = -4965
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor2 = mem[128]
    stor3 = mem[160]
    stor4 = mem[192]
    stor8.length++
    if not stor8.length <= stor8.length + 1:
        mem[0] = 8
        idx = (3 * stor8.length) + 3
        while sha3(8) + (3 * stor8.length) > idx + sha3(mem[0]):
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
    require 0 < stor8.length
    Mask(168, 0, stor8.field_0) = 0
    stor8.field_256 % 1 = 0
    stor8.field_256 % 1 = 0
    stor8.field_256 % 1 = 0
    bool(storF3F7.length) = 0
    uint255(storF3F7.length.field_1) = 0
    Mask(248, 0, storF3F7.length.field_8) = mem[-4805 len 31]
    idx = sha3(0xf3f7a9fe364faab93b216da50a3214154f22a0a2b415b23a84c8169e8b636ee4)
    while sha3(0xf3f7a9fe364faab93b216da50a3214154f22a0a2b415b23a84c8169e8b636ee4) + (storF3F7.length + 31 / 32) > idx:
        uint256(stor[idx]) = 0
        idx = idx + 1
        continue 
    storF3F7 = block.timestamp
    if mem[236 len 20] != 0:
        stor0 = mem[224]
    return code.data[781 len 5061]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
array of uint256 name;
uint256 minimumQuorum;
uint256 debatingPeriodInMinutes;
uint256 majorityMargin;
array of struct stor5;
uint256 numProposals;
mapping of uint256 memberId;
array of struct stor8;
mapping of uint8 stor99;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699761;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699763;
array of uint8 stor1546678032441257452667456735582814959992782782816731922691272282333561699764;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699765;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699766;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699767;
array of address stor38904946689225133062030360029229464415395357281359004841078294910011182463805;
array of uint256 stor38904946689225133062030360029229464415395357281359004841078294910011182463806;
array of struct stor38904946689225133062030360029229464415395357281359004841078294910011182463809;
array of uint256 stor38904946689225133062030360029229464415395357281359004841078294910011182463810;
array of uint256 stor38904946689225133062030360029229464415395357281359004841078294910011182463811;
array of uint256 stor38904946689225133062030360029229464415395357281359004841078294910011182463812;
array of struct stor80038114501746340178599418733666462236308205360939433327339441517073055572846;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020069;

function name() payable {
    return name[0 len name.length]
}

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

function checkProposalCode(uint256 arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require arg1 < stor5.length
    return (stor5603[arg1] == sha3(arg2, arg3, arg4[all]))
}

function changeVotingRules(uint256 arg1, uint256 arg2, int256 arg3) payable {
    require address(owner) == msg.sender
    minimumQuorum = arg1
    debatingPeriodInMinutes = arg2
    majorityMargin = arg3
    emit ChangeOfRules(arg1, arg2, arg3);
}

function vote(uint256 arg1, bool arg2, string arg3) payable {
    require memberId[address(msg.sender)] != 0
    require memberId[address(msg.sender)] < stor8.length
    require uint8(storB0F3[stor7[address(msg.sender)]].field_160)
    require arg1 < stor5.length
    require uint8(stor[(10 * arg1) + 0x56036b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb46][address(msg.sender)]) != 1
    uint8(stor[(10 * arg1) + 0x56036b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb46][address(msg.sender)]) = 1
    stor5603[arg1]++
    if not arg2:
        stor5603[arg1]--
    else:
        stor5603[arg1]++
    emit Voted(arg1, arg2, msg.sender, Array(len=arg3.length, data=arg3[all]));
    return 0
}

function members(uint256 arg1) payable {
    require arg1 < stor8.length
    mem[256] = uint256(stor[sha3((3 * arg1) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c)])
    idx = 256
    s = 0
    while stor[(3 * arg1) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c].length + 256 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((3 * arg1) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    return address(storB0F3[arg1].field_0), 
           uint8(storB0F3[arg1].field_0),
           Array(len=stor[(3 * arg1) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c].length, data=mem[256 len stor[(3 * arg1) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c].length + (floor32(stor[(3 * arg1) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c].length - 1) + -stor[(3 * arg1) - 0xc085601c9b05546c4de925af5cdebeab0dd5f5d4bea4dc57b37e961749c911c].length + 32 % 32)]),
           storF3F7[arg1]
}

function proposals(uint256 arg1) payable {
    require arg1 < stor5.length
    mem[416] = uint256(stor[sha3((10 * arg1) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db2)])
    idx = 416
    s = 0
    while stor[(10 * arg1) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db2].length + 416 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((10 * arg1) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db2) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    return stor5603[arg1], 
           stor36B6[arg1],
           Array(len=stor[(10 * arg1) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db2].length, data=mem[416 len stor[(10 * arg1) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db2].length + (floor32(stor[(10 * arg1) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db2].length - 1) + -stor[(10 * arg1) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db2].length + 32 % 32)]),
           stor36B6[arg1],
           stor36B6[arg1],
           stor36B6[arg1],
           stor36B6[arg1],
           stor36B6[arg1],
           stor36B6[arg1]
}

function executeProposal(uint256 arg1, bytes arg2) payable {
    mem[128 len arg2.length] = arg2[all]
    require arg1 < stor5.length
    require block.timestamp >= stor36B6[arg1]
    require not uint8(stor5603[arg1].field_0)
    mem[ceil32(arg2.length) + 128] = stor5603[arg1]
    mem[ceil32(arg2.length) + 148] = stor5603[arg1]
    mem[ceil32(arg2.length) + 180 len arg2.length] = arg2[all]
    require stor5603[arg1] == sha3(stor5603[arg1], stor5603[arg1], arg2[all])
    require stor5603[arg1] >= minimumQuorum
    if stor5603[arg1] <= majorityMargin:
        uint8(stor5603[arg1].field_0) = 1
        uint8(stor5603[arg1].field_8) = 0
    else:
        mem[ceil32(arg2.length) + 128 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            call stor5603[arg1] with:
               value 10^18 * stor5603[arg1] wei
                 gas gas_remaining - 34050 wei
                args arg2[all]
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
            call stor5603[arg1].mem[ceil32(arg2.length) + 128 len 4] with:
               value 10^18 * stor5603[arg1] wei
                 gas gas_remaining - 34050 wei
                args mem[ceil32(arg2.length) + 132 len floor32(arg2.length) + 28]
        uint8(stor5603[arg1].field_0) = 1
        uint8(stor5603[arg1].field_8) = 1
    stor5603[arg1].field_256 % 1 = 0
    emit ProposalTallied(arg1, stor5603[arg1], stor5603[arg1], uint8(stor5603[arg1].field_8));
    return 0
}

function changeMembership(address arg1, bool arg2, string arg3) payable {
    require msg.sender == address(owner)
    if memberId[address(arg1)]:
        require memberId[address(arg1)] < stor8.length
        Mask(96, 0, storB0F3[stor7[address(arg1)]].field_160) = Mask(96, 0, arg2)
    else:
        memberId[address(arg1)] = stor8.length
        stor8.length++
        if not stor8.length <= stor8.length + 1:
            mem[0] = 8
            idx = (3 * stor8.length) + 3
            while sha3(8) + (3 * stor8.length) > idx + sha3(mem[0]):
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
        require stor8.length < stor8.length
        address(stor8[stor8.length].field_0) = arg1
        Mask(96, 0, stor8[stor8.length].field_160) = Mask(96, 0, arg2)
        Mask(88, 0, stor8[stor8.length].field_168) = Mask(88, 168, arg1) >> 168
        uint256(stor[sha3((3 * stor8.length) + ('name', 'stor8', 8) + 1)][].field_0) = Array(len=arg3.length, data=arg3[all])
        uint256(stor8[stor8.length].field_512) = block.timestamp
    emit MembershipChanged(address(arg1), arg2);
}

function newProposal(address arg1, uint256 arg2, string arg3, bytes arg4) payable {
    require memberId[address(msg.sender)] != 0
    require memberId[address(msg.sender)] < stor8.length
    require uint8(storB0F3[stor7[address(msg.sender)]].field_160)
    stor5.length++
    if not stor5.length <= stor5.length + 1:
        mem[0] = 5
        idx = (10 * stor5.length) + 10
        while sha3(5) + (10 * stor5.length) > idx + sha3(mem[0]):
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
                name[s] = 0
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
    require stor5.length < stor5.length
    uint256(stor5[stor5.length].field_0) = arg1 or Mask(96, 160, uint256(stor5[stor5.length].field_0))
    uint256(stor5[stor5.length].field_256) = arg2
    uint256(stor[sha3((10 * stor5.length) + ('name', 'stor5', 5) + 2)][].field_0) = Array(len=arg3.length, data=arg3[all])
    uint256(stor5[stor5.length].field_1792) = sha3(arg1, arg2, arg4[all])
    uint256(stor5[stor5.length].field_768) = block.timestamp + (60 * debatingPeriodInMinutes)
    uint8(stor5[stor5.length].field_1024) = 0
    uint8(stor5[stor5.length].field_1032) = 0
    uint256(stor5[stor5.length].field_1280) = 0
    emit ProposalAdded(stor5.length, address(arg1), arg2, Array(len=arg3.length, data=arg3[all]));
    numProposals = stor5.length + 1
    return stor5.length
}



}
