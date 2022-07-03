contract main {




// =====================  Runtime code  =====================


#
#  - getVotes()
#  - sub_245ab01d(?)
#  - sub_8271453b(?)
#  - isVoted(address arg1, uint256 arg2)
#  - vote(uint256 arg1, bool arg2)
#
const contractName = 'VotingContract'

const contractVersion = '2.0'


address developerAddress;
address stor1;
uint256 stor3;
address stor4;
uint8 stor5; offset 160

function developer() {
    return developerAddress
}

function destroyContract() {
    if developerAddress != msg.sender:
        revert with 0, 'Only an Developer required'
    selfdestruct(developerAddress)
}

function _fallback() payable {
    revert
}

function transferDeveloper(address arg1) {
    if developerAddress != msg.sender:
        revert with 0, 'Only an Developer required'
    if not arg1:
        revert with 0, 'This address is 0!'
    emit 0xd734ca01: developerAddress, arg1
    developerAddress = arg1
}

function register() {
    if developerAddress != msg.sender:
        revert with 0, 'Only an Developer required'
    require ext_code.size(stor1)
    call stor1.register(bytes32 arg1, string arg2, string arg3) with:
         gas gas_remaining wei
        args stor3, 96, 160, 13, 0, 3, '2.0' % 16777216
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_83823557(?) {
    mem[192 len 0] = None
    mem[192 len 0] = 0
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(Mask(104, 0, mem[192 len 13], 0)), mem[333 len 14])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_73da75f9(?) {
    mem[192 len 0] = None
    mem[192 len 0] = 0
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(Mask(104, 0, mem[192 len 13], 0)), 95036694425191), mem[403 len 13])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_76e07094(?) {
    require ext_code.size(stor1)
    call stor1.0x1289c178 with:
         gas gas_remaining wei
        args ''
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) != msg.sender:
        revert with 0, 'Only a TokenFeature address is allowed'
    mem[397 len 0] = None
    require ext_code.size(stor4)
    call stor4.setUint(bytes32 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sha3(sha3(Mask(104, 0, 0x566f74696e67466561747572, 0)), mem[397 len 14]), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getVote(uint256 arg1) {
    require ext_code.size(stor1)
    call stor1.0x1289c178 with:
         gas gas_remaining wei
        args ''
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xe5f93e97 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    mem[369] = sha3(sha3(Mask(104, 0, 0x566f74696e67466561747572, 0)), mem[369 len 4])
    mem[561 len 0] = None
    mem[561 len 0] = 0
    require ext_code.size(stor4)
    call stor4.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(mem[369], arg1), mem[561 len 5])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(mem[369], arg1), mem[694 len 6])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    call stor4.getInt(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(mem[369], arg1), mem[828 len 12])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(mem[369], arg1), mem[968 len 11])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return address(ext_call.return_data[0]), ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
}

function sub_4cb98f59(?) {
    require not stor5
    stor5 = 1
    mem[307] = sha3(sha3(Mask(104, 0, 0x566f74696e67466561747572, 0)), mem[307 len 6])
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(mem[307], arg1), mem[499 len 12])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(mem[307], arg1), mem[639 len 12])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= block.timestamp
    require not ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.0x1289c178 with:
         gas gas_remaining wei
        args ''
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x41272317 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[811 len 0] = None
    mem[811 len 19] = 0, mem[815 len 15]
    mem[811 len 0] = 0
    mem[926] = sha3(sha3(Mask(104, 0, mem[811 len 13], 0)), mem[926 len 6])
    require ext_code.size(stor4)
    call stor4.getInt(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(mem[926], arg1), mem[1118 len 7])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[1221 len 0] = None
    mem[1221 len 0] = 0
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(Mask(104, 0, mem[1221 len 13], 0)), mem[1362 len 14])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= ext_call.return_data[0]
    mem[1504 len 0] = None
    mem[1504 len 0] = 0
    require ext_code.size(stor4)
    call stor4.setUint(bytes32 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sha3(sha3(mem[307], arg1), mem[1504 len 12]), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[1644 len 0] = None
    require ext_code.size(stor4)
    if ext_call.return_data[0] > (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 100:
        call stor4.setBool(bytes32 arg1, bool arg2) with:
             gas gas_remaining wei
            args sha3(sha3(mem[307], arg1), mem[1644 len 6]), 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        # nil
    else:
        call stor4.setBool(bytes32 arg1, bool arg2) with:
             gas gas_remaining wei
            args sha3(sha3(mem[307], arg1), mem[1644 len 6]), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        # nil
}

function sub_8039f028(?) {
    require ext_code.size(stor1)
    call stor1.0x1289c178 with:
         gas gas_remaining wei
        args 'MemberFeature'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.0x1289c178 with:
         gas gas_remaining wei
        args ''
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa230c524 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    mem[640 len 0] = None
    mem[640 len 19] = 0, mem[644 len 15]
    mem[640 len 0] = 0
    mem[896 len 13] = mem[851 len 13]
    mem[868] = sha3(sha3(sha3(Mask(104, 0, mem[640 len 13], 0)), 95036694425191), mem[851 len 13])
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(Mask(104, 0, mem[640 len 13], 0)), 95036694425191), mem[851 len 13])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[896 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 896] = arg2.length
    mem[ceil32(arg1.length) + 928 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 928] = 13
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 1024 len 0] = None
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 1024 len 0] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 1139] = sha3(sha3(Mask(104, 0, mem[ceil32(arg1.length) + ceil32(arg2.length) + 1024 len 13], 0)), mem[ceil32(arg1.length) + ceil32(arg2.length) + 1139 len 6])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 1331 len 0] = None
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 1438 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 896 len ceil32(arg1.length) - arg1.length]
    require ext_code.size(stor4)
    call stor4.setString(bytes32 arg1, string arg2) with:
         gas gas_remaining wei
        args sha3(sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 1139], ext_call.return_data[0]), mem[ceil32(arg1.length) + ceil32(arg2.length) + 1331 len 7]), Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 1466 len 0] = None
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 1577 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 928 len ceil32(arg2.length) - arg2.length]
    require ext_code.size(stor4)
    call stor4.setString(bytes32 arg1, string arg2) with:
         gas gas_remaining wei
        args sha3(sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 1139], ext_call.return_data[0]), mem[ceil32(arg1.length) + ceil32(arg2.length) + 1466 len 11]), Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 1605 len 0] = None
    require ext_code.size(stor4)
    call stor4.setAddress(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args sha3(sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 1139], ext_call.return_data[0]), mem[ceil32(arg1.length) + ceil32(arg2.length) + 1605 len 7]), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    # nil
}

function getVoting(uint256 arg1) {
    mem[96] = 12
    mem[128] = 0x4f776e65724665617475726500000000000000000000000000000000000000
    require ext_code.size(stor1)
    call stor1.0x1289c178 with:
         gas gas_remaining wei
        args ''
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xe5f93e97 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    mem[160] = 13
    mem[192] = 0x566f74696e6746656174757265000000000000000000000000000000000000
    mem[256 len 13] = 0x566f74696e67466561747572
    mem[224] = 13
    mem[269 len 0] = None
    mem[301] = sha3(Mask(104, 0, 0x566f74696e67466561747572, 0))
    mem[333] = 0x566f74696e670000000000000000000000000000000000000000000000000000
    mem[269] = 38
    mem[371] = sha3(sha3(Mask(104, 0, 0x566f74696e67466561747572, 0)), mem[371 len 6])
    mem[403] = arg1
    mem[339] = 64
    mem[435] = 7
    mem[467] = 'subject'
    mem[531] = sha3(mem[371], arg1)
    mem[563 len 0] = None
    mem[499] = 39
    mem[602 len 7] = mem[563 len 7]
    mem[570] = 0x986e791a00000000000000000000000000000000000000000000000000000000
    mem[574] = sha3(sha3(mem[371], arg1), mem[563 len 7])
    require ext_code.size(stor4)
    call stor4.getString(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(mem[371], arg1), mem[563 len 7])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[570 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 570
    require return_data.size >= 32
    _26016 = mem[570 len 4], Mask(224, 32, sha3(sha3(mem[371], arg1), mem[563 len 7])) >> 32
    require mem[570 len 4], Mask(224, 32, sha3(sha3(mem[371], arg1), mem[563 len 7])) >> 32 <= 4294967296
    require mem[570 len 4], Mask(224, 32, sha3(sha3(mem[371], arg1), mem[563 len 7])) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[mem[570 len 4], Mask(224, 32, sha3(sha3(mem[371], arg1), mem[563 len 7])) >> 32 + 570] + mem[570 len 4], Mask(224, 32, sha3(sha3(mem[371], arg1), mem[563 len 7])) >> 32 + 32 and mem[mem[570 len 4], Mask(224, 32, sha3(sha3(mem[371], arg1), mem[563 len 7])) >> 32 + 570] <= 4294967296
    mem[ceil32(return_data.size) + 570] = 11
    mem[ceil32(return_data.size) + 602] = 'description'
    mem[ceil32(return_data.size) + 666] = sha3(mem[371], arg1)
    mem[ceil32(return_data.size) + 698 len 0] = None
    mem[ceil32(return_data.size) + 634] = 43
    mem[ceil32(return_data.size) + 741 len 11] = mem[ceil32(return_data.size) + 698 len 11]
    mem[ceil32(return_data.size) + 709] = 0x986e791a00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 713] = sha3(sha3(mem[371], arg1), mem[ceil32(return_data.size) + 698 len 11])
    require ext_code.size(stor4)
    call stor4.getString(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(mem[371], arg1), mem[ceil32(return_data.size) + 698 len 11])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 709 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 709
    require return_data.size >= 32
    _34548 = mem[ceil32(return_data.size) + 709 len 4], Mask(224, 32, sha3(sha3(mem[371], arg1), mem[ceil32(return_data.size) + 698 len 11])) >> 32
    require mem[ceil32(return_data.size) + 709 len 4], Mask(224, 32, sha3(sha3(mem[371], arg1), mem[ceil32(return_data.size) + 698 len 11])) >> 32 <= 4294967296
    require mem[ceil32(return_data.size) + 709 len 4], Mask(224, 32, sha3(sha3(mem[371], arg1), mem[ceil32(return_data.size) + 698 len 11])) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 709 len 4], Mask(224, 32, sha3(sha3(mem[371], arg1), mem[ceil32(return_data.size) + 698 len 11])) >> 32 + 709] + mem[ceil32(return_data.size) + 709 len 4], Mask(224, 32, sha3(sha3(mem[371], arg1), mem[ceil32(return_data.size) + 698 len 11])) >> 32 + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 709 len 4], Mask(224, 32, sha3(sha3(mem[371], arg1), mem[ceil32(return_data.size) + 698 len 11])) >> 32 + 709] <= 4294967296
    mem[(2 * ceil32(return_data.size)) + 709] = 7
    mem[(2 * ceil32(return_data.size)) + 741] = 'creator'
    mem[(2 * ceil32(return_data.size)) + 805] = sha3(mem[371], arg1)
    mem[(2 * ceil32(return_data.size)) + 837 len 0] = None
    mem[(2 * ceil32(return_data.size)) + 773] = 39
    require ext_code.size(stor4)
    call stor4.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(mem[371], arg1), mem[(2 * ceil32(return_data.size)) + 837 len 7])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 844] = 11
    mem[(2 * ceil32(return_data.size)) + 876] = 0x6372656174656454696d650000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 940] = sha3(mem[371], arg1)
    mem[(2 * ceil32(return_data.size)) + 993 len 11] = 0
    mem[(2 * ceil32(return_data.size)) + 908] = ceil32(return_data.size) + 43
    mem[(2 * ceil32(return_data.size)) + 983 len floor32(ceil32(return_data.size) + 43)] = sha3(mem[371], arg1), mem[(2 * ceil32(return_data.size)) + 972 len floor32(ceil32(return_data.size) + 43) - 32]
    mem[(2 * ceil32(return_data.size)) + floor32(ceil32(return_data.size) + 43) + 983] = 256^(-(ceil32(return_data.size) + 43 % 32) + 32) - 1 and mem[(2 * ceil32(return_data.size)) + floor32(ceil32(return_data.size) + 43) + 983] or mem[(2 * ceil32(return_data.size)) + floor32(ceil32(return_data.size) + 43) + 940] and !(256^(-(ceil32(return_data.size) + 43 % 32) + 32) - 1)
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(mem[(2 * ceil32(return_data.size)) + 983 len ceil32(return_data.size) + 43])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 983] = 12
    mem[(2 * ceil32(return_data.size)) + 1015] = 0x646561646c696e6554696d6500000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 1079] = sha3(mem[371], arg1)
    mem[(2 * ceil32(return_data.size)) + 1047] = 44
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(mem[371], arg1), mem[(2 * ceil32(return_data.size)) + 1111 len 12])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 1123] = 12
    mem[(2 * ceil32(return_data.size)) + 1155] = 0x7265736f6c76656454696d6500000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 1219] = sha3(mem[371], arg1)
    mem[(2 * ceil32(return_data.size)) + 1187] = 44
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(mem[371], arg1), mem[(2 * ceil32(return_data.size)) + 1251 len 12])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 1263] = 6
    mem[(2 * ceil32(return_data.size)) + 1295] = 'passed'
    mem[(2 * ceil32(return_data.size)) + 1359] = sha3(mem[371], arg1)
    mem[(2 * ceil32(return_data.size)) + 1327] = 38
    require ext_code.size(stor4)
    call stor4.getBool(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(mem[371], arg1), mem[(2 * ceil32(return_data.size)) + 1391 len 6])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 1397] = 7
    mem[(2 * ceil32(return_data.size)) + 1429] = 0x766f746553756d000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 1493] = sha3(mem[371], arg1)
    mem[(2 * ceil32(return_data.size)) + 1461] = 39
    require ext_code.size(stor4)
    call stor4.getInt(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(mem[371], arg1), mem[(2 * ceil32(return_data.size)) + 1525 len 7])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 1532] = 15
    mem[(2 * ceil32(return_data.size)) + 1564] = 'resolvedAddress'
    mem[(2 * ceil32(return_data.size)) + 1628] = sha3(mem[371], arg1)
    mem[(2 * ceil32(return_data.size)) + 1660 len 0] = None
    mem[(2 * ceil32(return_data.size)) + 1596] = 47
    mem[(2 * ceil32(return_data.size)) + 1707 len 15] = mem[(2 * ceil32(return_data.size)) + 1660 len 15]
    mem[(2 * ceil32(return_data.size)) + 1679] = sha3(sha3(mem[371], arg1), mem[(2 * ceil32(return_data.size)) + 1660 len 15])
    require ext_code.size(stor4)
    call stor4.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(mem[371], arg1), mem[(2 * ceil32(return_data.size)) + 1660 len 15])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 1739] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 1771] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 1803] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 1835] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 1867] = bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 1899] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 1931] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 1675] = 288
    mem[(2 * ceil32(return_data.size)) + 1963] = mem[_26016 + 570]
    _71080 = mem[_26016 + 570]
    mem[(2 * ceil32(return_data.size)) + 1995 len ceil32(mem[_26016 + 570])] = mem[_26016 + 602 len ceil32(mem[_26016 + 570])]
    if not _71080 % 32:
        mem[(2 * ceil32(return_data.size)) + 1707] = _71080 + 320
        mem[_71080 + (2 * ceil32(return_data.size)) + 1995] = mem[ceil32(return_data.size) + _34548 + 709]
        _73683 = mem[ceil32(return_data.size) + _34548 + 709]
        mem[_71080 + (2 * ceil32(return_data.size)) + 2027 len ceil32(mem[ceil32(return_data.size) + _34548 + 709])] = mem[ceil32(return_data.size) + _34548 + 741 len ceil32(mem[ceil32(return_data.size) + _34548 + 709])]
        if not _73683 % 32:
            return 288, 
                   _71080 + 320,
                   address(ext_call.return_data[0]),
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   bool(ext_call.return_data[0]),
                   ext_call.return_data[0],
                   address(ext_call.return_data[0]),
                   mem[(2 * ceil32(return_data.size)) + 1963 len _73683 + _71080 + 64]
        mem[floor32(_73683) + _71080 + (2 * ceil32(return_data.size)) + 2027] = mem[floor32(_73683) + _71080 + (2 * ceil32(return_data.size)) + -(_73683 % 32) + 2059 len _73683 % 32]
        return 288, 
               _71080 + 320,
               address(ext_call.return_data[0]),
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               bool(ext_call.return_data[0]),
               ext_call.return_data[0],
               address(ext_call.return_data[0]),
               mem[(2 * ceil32(return_data.size)) + 1963 len floor32(_73683) + _71080 + 96]
    mem[floor32(_71080) + (2 * ceil32(return_data.size)) + 1995] = mem[floor32(_71080) + (2 * ceil32(return_data.size)) + -(_71080 % 32) + 2027 len _71080 % 32]
    mem[(2 * ceil32(return_data.size)) + 1707] = floor32(_71080) + 352
    mem[floor32(_71080) + (2 * ceil32(return_data.size)) + 2027] = mem[ceil32(return_data.size) + _34548 + 709]
    _73788 = mem[ceil32(return_data.size) + _34548 + 709]
    mem[floor32(_71080) + (2 * ceil32(return_data.size)) + 2059 len ceil32(mem[ceil32(return_data.size) + _34548 + 709])] = mem[ceil32(return_data.size) + _34548 + 741 len ceil32(mem[ceil32(return_data.size) + _34548 + 709])]
    if not _73788 % 32:
        return 288, 
               floor32(_71080) + 352,
               address(ext_call.return_data[0]),
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               bool(ext_call.return_data[0]),
               ext_call.return_data[0],
               address(ext_call.return_data[0]),
               mem[(2 * ceil32(return_data.size)) + 1963 len _73788 + floor32(_71080) + 96]
    mem[floor32(_73788) + floor32(_71080) + (2 * ceil32(return_data.size)) + 2059] = mem[floor32(_73788) + floor32(_71080) + (2 * ceil32(return_data.size)) + -(_73788 % 32) + 2091 len _73788 % 32]
    return 288, 
           floor32(_71080) + 352,
           address(ext_call.return_data[0]),
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           bool(ext_call.return_data[0]),
           ext_call.return_data[0],
           address(ext_call.return_data[0]),
           mem[(2 * ceil32(return_data.size)) + 1963 len floor32(_73788) + floor32(_71080) + 128]
}



}
