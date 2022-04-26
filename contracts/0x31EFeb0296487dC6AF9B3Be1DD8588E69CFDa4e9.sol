contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[48 len 5438]
}



// =====================  Runtime code  =====================


#
#  - getPledge(address arg1, uint256 arg2)
#
address owner;
array of struct pledges;
array of struct companies;
array of struct participatingCompanies;

function companies(address arg1) {
    mem[256] = uint256(companies[arg1][1].field_0)
    idx = 256
    s = 0
    while companies[arg1][1].length + 256 > idx + 32:
        mem[idx + 32] = uint256(companies[arg1][s + 1].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[companies[arg1][1].length + (floor32(companies[arg1][1].length - 1) + -companies[arg1][1].length + 32 % 32) + 256] = companies[arg1][2].length
    mem[companies[arg1][1].length + (floor32(companies[arg1][1].length - 1) + -companies[arg1][1].length + 32 % 32) + 288] = uint256(companies[arg1][2].field_0)
    idx = companies[arg1][1].length + (floor32(companies[arg1][1].length - 1) + -companies[arg1][1].length + 32 % 32) + 288
    s = 0
    while companies[arg1][1].length + (floor32(companies[arg1][1].length - 1) + -companies[arg1][1].length + 32 % 32) + companies[arg1][2].length + 288 > idx + 32:
        mem[idx + 32] = uint256(companies[arg1][s + 2].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[companies[arg1][1].length + (floor32(companies[arg1][1].length - 1) + -companies[arg1][1].length + 32 % 32) + companies[arg1][2].length + (floor32(companies[arg1][2].length - 1) + -companies[arg1][2].length + 32 % 32) + 320] = uint256(companies[arg1][3].field_0)
    idx = companies[arg1][1].length + (floor32(companies[arg1][1].length - 1) + -companies[arg1][1].length + 32 % 32) + companies[arg1][2].length + (floor32(companies[arg1][2].length - 1) + -companies[arg1][2].length + 32 % 32) + 320
    s = 0
    while companies[arg1][1].length + (floor32(companies[arg1][1].length - 1) + -companies[arg1][1].length + 32 % 32) + companies[arg1][2].length + (floor32(companies[arg1][2].length - 1) + -companies[arg1][2].length + 32 % 32) + companies[arg1][3].length + 320 > idx + 32:
        mem[idx + 32] = uint256(companies[arg1][s + 3].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return bool(uint8(companies[arg1].field_0)), 
           Array(len=companies[arg1][1].length, data=mem[256 len companies[arg1][1].length + (floor32(companies[arg1][1].length - 1) + -companies[arg1][1].length + 32 % 32) + companies[arg1][2].length + (floor32(companies[arg1][2].length - 1) + -companies[arg1][2].length + 32 % 32) + 32], companies[arg1][3].length, mem[companies[arg1][1].length + (floor32(companies[arg1][1].length - 1) + -companies[arg1][1].length + 32 % 32) + companies[arg1][2].length + (floor32(companies[arg1][2].length - 1) + -companies[arg1][2].length + 32 % 32) + 320 len companies[arg1][3].length + (floor32(companies[arg1][3].length - 1) + -companies[arg1][3].length + 32 % 32)]),
           companies[arg1][1].length + (floor32(companies[arg1][1].length - 1) + -companies[arg1][1].length + 32 % 32) + 160,
           companies[arg1][1].length + (floor32(companies[arg1][1].length - 1) + -companies[arg1][1].length + 32 % 32) + companies[arg1][2].length + (floor32(companies[arg1][2].length - 1) + -companies[arg1][2].length + 32 % 32) + 192
}

function participatingCompanies(uint256 arg1) {
    require arg1 < participatingCompanies.length
    return address(participatingCompanies[arg1].field_0)
}

function owner() {
    return owner
}

function pledges(address arg1, uint256 arg2) {
    require arg2 < uint256(pledges[arg1].field_0)
    mem[320] = uint256(stor[sha3((6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 2)].field_0)
    idx = 320
    s = 0
    while stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 2].length + 320 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 2)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 2].length + (floor32(stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 2].length - 1) + -stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 2].length + 32 % 32) + 320] = stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 3].length
    mem[stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 2].length + (floor32(stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 2].length - 1) + -stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 2].length + 32 % 32) + 352] = uint256(stor[sha3((6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 3)].field_0)
    idx = stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 2].length + (floor32(stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 2].length - 1) + -stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 2].length + 32 % 32) + 352
    s = 0
    while stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 2].length + (floor32(stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 2].length - 1) + -stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 2].length + 32 % 32) + stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 3].length + 352 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 3)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 2].length + (floor32(stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 2].length - 1) + -stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 2].length + 32 % 32) + stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 3].length + (floor32(stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 3].length - 1) + -stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 3].length + 32 % 32) + 384] = uint256(stor[sha3((6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 4)].field_0)
    idx = stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 2].length + (floor32(stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 2].length - 1) + -stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 2].length + 32 % 32) + stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 3].length + (floor32(stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 3].length - 1) + -stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 3].length + 32 % 32) + 384
    s = 0
    while stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 2].length + (floor32(stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 2].length - 1) + -stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 2].length + 32 % 32) + stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 3].length + (floor32(stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 3].length - 1) + -stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 3].length + 32 % 32) + stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 4].length + 384 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 4)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return bool(uint8(pledges[arg1][arg2].field_0)), 
           uint256(pledges[arg1][arg2].field_256),
           Array(len=stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 2].length, data=mem[320 len stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 2].length + (floor32(stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 2].length - 1) + -stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 2].length + 32 % 32) + stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 3].length + (floor32(stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 3].length - 1) + -stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 3].length + 32 % 32) + 32], stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 4].length, mem[stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 2].length + (floor32(stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 2].length - 1) + -stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 2].length + 32 % 32) + stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 3].length + (floor32(stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 3].length - 1) + -stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 3].length + 32 % 32) + 384 len stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 4].length + (floor32(stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 4].length - 1) + -stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 4].length + 32 % 32)]),
           stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 2].length + (floor32(stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 2].length - 1) + -stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 2].length + 32 % 32) + 224,
           stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 2].length + (floor32(stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 2].length - 1) + -stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 2].length + 32 % 32) + stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 3].length + (floor32(stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 3].length - 1) + -stor[(6 * arg2) + ('map', ('param', 'arg1'), ('name', 'pledges', 1)) + 3].length + 32 % 32) + 256,
           bool(uint8(pledges[arg1][arg2].field_1280))
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function updatePledge(uint256 arg1, string arg2, string arg3, uint256 arg4) {
    require 1 == bool(uint8(companies[address(msg.sender)].field_0))
    require arg4 < uint256(pledges[address(msg.sender)].field_0)
    require 1 == bool(uint8(pledges[address(msg.sender)][arg4].field_0))
    require not uint8(pledges[address(msg.sender)][arg4].field_1280)
    uint256(stor[sha3((6 * arg4) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'pledges', 1)) + 3)][].field_0) = Array(len=arg3.length, data=arg3[all])
    uint256(pledges[address(msg.sender)][arg4].field_256) = arg1
    uint256(stor[sha3((6 * arg4) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'pledges', 1)) + 2)][].field_0) = Array(len=arg2.length, data=arg2[all])
    return 1
}

function whitelistCompany(address arg1, string arg2, string arg3, string arg4) {
    require owner == msg.sender
    uint8(companies[address(arg1)].field_0) = 1
    uint256(companies[address(arg1)][1][].field_0) = Array(len=arg2.length, data=arg2[all])
    uint256(companies[address(arg1)][2][].field_0) = Array(len=arg3.length, data=arg3[all])
    uint256(companies[address(arg1)][3][].field_0) = Array(len=arg4.length, data=arg4[all])
    participatingCompanies.length++
    if not participatingCompanies.length <= participatingCompanies.length + 1:
        idx = participatingCompanies.length + 1
        while participatingCompanies.length > idx:
            uint256(participatingCompanies[idx].field_0) = 0
            idx = idx + 1
            continue 
    address(participatingCompanies[participatingCompanies.length].field_0) = arg1
    return 1
}

function getAllCompanies() {
    if not participatingCompanies.length:
        mem[(32 * participatingCompanies.length) + 160] = 32
        mem[(32 * participatingCompanies.length) + 192] = participatingCompanies.length
        mem[(32 * participatingCompanies.length) + 224 len floor32(participatingCompanies.length)] = mem[160 len floor32(participatingCompanies.length)]
        return memory
          from (32 * participatingCompanies.length) + 160
           len (96 * participatingCompanies.length) + 64
    mem[160] = address(participatingCompanies.field_0)
    idx = 160
    s = 0
    while (32 * participatingCompanies.length) + 128 > idx:
        mem[idx + 32] = address(participatingCompanies[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * participatingCompanies.length) + 224 len floor32(participatingCompanies.length)] = mem[160 len floor32(participatingCompanies.length)]
    return Array(len=participatingCompanies.length, data=mem[160 len floor32(participatingCompanies.length)], mem[(32 * participatingCompanies.length) + floor32(participatingCompanies.length) + 224 len (32 * participatingCompanies.length) - floor32(participatingCompanies.length)]), 
}

function confirmPledge(uint256 arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    require 1 == bool(uint8(companies[address(msg.sender)].field_0))
    require arg1 < uint256(pledges[address(msg.sender)].field_0)
    require 1 == bool(uint8(pledges[address(msg.sender)][arg1].field_0))
    require not uint8(pledges[address(msg.sender)][arg1].field_1280)
    uint256(stor[sha3((6 * arg1) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'pledges', 1)) + 4)][].field_0) = Array(len=arg2.length, data=arg2[all])
    uint8(pledges[address(msg.sender)][arg1].field_1280) = 1
    mem[ceil32(arg2.length) + 128] = uint256(pledges[address(msg.sender)][arg1].field_256)
    mem[ceil32(arg2.length) + 256] = uint256(companies[address(msg.sender)][1].field_0)
    idx = ceil32(arg2.length) + 256
    s = 0
    while ceil32(arg2.length) + companies[address(msg.sender)][1].length + 256 > idx + 32:
        mem[idx + 32] = uint256(companies[address(msg.sender)][s + 1].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg2.length) + companies[address(msg.sender)][1].length + (floor32(companies[address(msg.sender)][1].length - 1) + -companies[address(msg.sender)][1].length + 32 % 32) + 256] = arg2.length
    mem[ceil32(arg2.length) + companies[address(msg.sender)][1].length + (floor32(companies[address(msg.sender)][1].length - 1) + -companies[address(msg.sender)][1].length + 32 % 32) + 288 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit PledgeConfirmed(uint256(pledges[address(msg.sender)][arg1].field_256), Array(len=companies[address(msg.sender)][1].length, data=mem[ceil32(arg2.length) + 256 len companies[address(msg.sender)][1].length + (floor32(companies[address(msg.sender)][1].length - 1) + -companies[address(msg.sender)][1].length + 32 % 32) + 32], Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256), companies[address(msg.sender)][1].length + (floor32(companies[address(msg.sender)][1].length - 1) + -companies[address(msg.sender)][1].length + 32 % 32) + 128, msg.sender);
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + companies[address(msg.sender)][1].length + (floor32(companies[address(msg.sender)][1].length - 1) + -companies[address(msg.sender)][1].length + 32 % 32) + 288] = mem[floor32(arg2.length) + ceil32(arg2.length) + companies[address(msg.sender)][1].length + (floor32(companies[address(msg.sender)][1].length - 1) + -companies[address(msg.sender)][1].length + 32 % 32) + -(arg2.length % 32) + 320 len arg2.length % 32]
        emit PledgeConfirmed(uint256(pledges[address(msg.sender)][arg1].field_256), Array(len=companies[address(msg.sender)][1].length, data=mem[ceil32(arg2.length) + 256 len companies[address(msg.sender)][1].length + (floor32(companies[address(msg.sender)][1].length - 1) + -companies[address(msg.sender)][1].length + 32 % 32) + 32], Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + companies[address(msg.sender)][1].length + (floor32(companies[address(msg.sender)][1].length - 1) + -companies[address(msg.sender)][1].length + 32 % 32) + 288 len floor32(arg2.length) + -ceil32(arg2.length) + 32]), companies[address(msg.sender)][1].length + (floor32(companies[address(msg.sender)][1].length - 1) + -companies[address(msg.sender)][1].length + 32 % 32) + 128, msg.sender);
    return 1
}

function createPledge(uint256 arg1, string arg2, string arg3) {
    require 1 == bool(uint8(companies[address(msg.sender)].field_0))
    uint256(pledges[address(msg.sender)].field_0)++
    if not uint256(pledges[address(msg.sender)].field_0) <= uint256(pledges[address(msg.sender)].field_0) + 1:
        mem[0] = sha3(address(msg.sender), 1)
        idx = (6 * uint256(pledges[address(msg.sender)].field_0)) + 6
        while sha3(sha3(address(msg.sender), 1)) + (6 * uint256(pledges[address(msg.sender)].field_0)) > idx + sha3(mem[0]):
            uint8(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 2].length:
                mem[0] = idx + sha3(mem[0]) + 2
                s = sha3(idx + sha3(mem[0]) + 2)
                while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 3].length:
                mem[0] = idx + sha3(mem[0]) + 3
                s = sha3(idx + sha3(mem[0]) + 3)
                while sha3(idx + sha3(mem[0]) + 3) + (stor[idx + sha3(mem[0]) + 3].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 4].length:
                mem[0] = idx + sha3(mem[0]) + 4
                s = sha3(idx + sha3(mem[0]) + 4)
                while sha3(idx + sha3(mem[0]) + 4) + (stor[idx + sha3(mem[0]) + 4].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint8(stor[idx + sha3(mem[0]) + 5]) = 0
            idx = idx + 6
            continue 
    uint8(pledges[address(msg.sender)][uint256(pledges[address(msg.sender)].field_0)].field_0) = 1
    uint256(pledges[address(msg.sender)][uint256(pledges[address(msg.sender)].field_0)].field_256) = arg1
    uint256(stor[sha3((6 * uint256(pledges[address(msg.sender)].field_0)) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'pledges', 1)) + 2)][].field_0) = Array(len=arg2.length, data=arg2[all])
    uint256(stor[sha3((6 * uint256(pledges[address(msg.sender)].field_0)) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'pledges', 1)) + 3)][].field_0) = Array(len=arg3.length, data=arg3[all])
    bool(pledges[address(msg.sender)][uint256(pledges[address(msg.sender)].field_0)].field_1024) = 0
    uint255(pledges[address(msg.sender)][uint256(pledges[address(msg.sender)].field_0)].field_1025) = 0
    Mask(248, 0, pledges[address(msg.sender)][uint256(pledges[address(msg.sender)].field_0)].field_1032) = mem[ceil32(arg2.length) + ceil32(arg3.length) + 384 len 31]
    idx = 0
    while stor[(6 * uint256(pledges[address(msg.sender)].field_0)) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'pledges', 1)) + 4].length + 31 / 32 > idx:
        uint256(stor[idx + sha3((6 * uint256(pledges[address(msg.sender)].field_0)) + ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'pledges', 1)) + 4)].field_0) = 0
        idx = idx + 1
        continue 
    uint8(pledges[address(msg.sender)][uint256(pledges[address(msg.sender)].field_0)].field_1280) = 0
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 480] = uint256(companies[address(msg.sender)][1].field_0)
    idx = ceil32(arg2.length) + ceil32(arg3.length) + 480
    s = 0
    while ceil32(arg2.length) + ceil32(arg3.length) + companies[address(msg.sender)][1].length + 480 > idx + 32:
        mem[idx + 32] = uint256(companies[address(msg.sender)][s + 1].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    emit PledgeCreated(arg1, Array(len=companies[address(msg.sender)][1].length, data=mem[ceil32(arg2.length) + ceil32(arg3.length) + 480 len companies[address(msg.sender)][1].length + (floor32(companies[address(msg.sender)][1].length - 1) + -companies[address(msg.sender)][1].length + 32 % 32)]), msg.sender);
    return 1
}



}
