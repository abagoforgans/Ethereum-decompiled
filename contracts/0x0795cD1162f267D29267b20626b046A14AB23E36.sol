contract main {




// =====================  Runtime code  =====================


#
#  - sub_6f065bbb(?)
#  - sub_9f951be8(?)
#
const contractName = 'AdminContract'

const contractVersion = '2.0'


address developerAddress;
mapping of uint8 stor1;
address stor2;

function developer() {
    return developerAddress
}

function isWhitelistAddress(address arg1) {
    return bool(stor1[address(arg1)])
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

function addAddressToWhitelist(address arg1) {
    if developerAddress != msg.sender:
        revert with 0, 'Only an Developer required'
    if stor1[address(arg1)]:
        return 0
    stor1[address(arg1)] = 1
    emit 0x14a05adb: address(arg1), 1, Array(len=39, data='The address has been added to Wh', 'itelist')
    return 1
}

function removeAddressFromWhitelist(address arg1) {
    if developerAddress != msg.sender:
        revert with 0, 'Only an Developer required'
    if not stor1[address(arg1)]:
        return 0
    stor1[address(arg1)] = 0
    emit 0x14a05adb: address(arg1), 0, 96, 43, 'The address has been deleted fro', 'm Whitelist'
    return 1
}

function sub_8e4de0ad(?) {
    if stor1[msg.sender]:
        mem[192 len 0] = None
        mem[192 len 0] = 0
    else:
        require msg.sender == developerAddress
        mem[192 len 0] = None
    require ext_code.size(stor2)
    call stor2.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(Mask(96, 0, mem[192 len 12], 0)), 0x4d6173746572436f6e74726163), mem[410 len 7])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_49340570(?) {
    if developerAddress != msg.sender:
        revert with 0, 'Only an Developer required'
    mem[314] = sha3(sha3(Mask(96, 0, mem[192 len 12], 0)), mem[314 len 14])
    mem[506 len 0] = None
    require ext_code.size(stor2)
    call stor2.setBool(bytes32 arg1, bool arg2) with:
         gas gas_remaining wei
        args sha3(sha3(mem[314], arg1), mem[506 len 7]), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x79306263: msg.sender, 1, Array(len=35, data='MasterContract address has disab', 'led')
}

function sub_76d5ba52(?) {
    if stor1[msg.sender]:
        mem[192 len 0] = None
        mem[192 len 0] = 0
    else:
        require msg.sender == developerAddress
        mem[192 len 0] = None
    mem[314] = sha3(sha3(Mask(96, 0, mem[192 len 12], 0)), mem[314 len 14])
    mem[506 len 0] = None
    require ext_code.size(stor2)
    call stor2.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(mem[314], arg1), mem[506 len 11])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[613 len 0] = None
    mem[824 len 0] = None
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(Mask(104, 0, mem[613 len 13], 0)), 'Member'), mem[824 len 7])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function register(address arg1) {
    mem[352 len 0] = None
    mem[352 len 0] = 0
    require ext_code.size(stor2)
    call stor2.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(Mask(96, 0, mem[352 len 12], 0)), 0x4d6173746572436f6e74726163), mem[570 len 7])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[923 len 0] = None
    mem[923 len 0] = 0
    require ext_code.size(stor2)
    call stor2.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(Mask(96, 0, mem[923 len 12], 0)), 0x4d6173746572436f6e74726163), mem[1141 len 7])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[1212 len 0] = None
    require ext_code.size(stor2)
    call stor2.setUint(bytes32 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(Mask(96, 0, 79054433215428917879666034, 0)), 0x4d6173746572436f6e74726163), mem[1212 len 7]), ext_call.return_data[0] + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[1315 len 0] = None
    mem[1437] = sha3(sha3(Mask(96, 0, mem[1315 len 12], 0)), mem[1437 len 14])
    mem[1629 len 0] = None
    require ext_code.size(stor2)
    call stor2.setAddress(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args sha3(sha3(mem[1437], ext_call.return_data[0]), mem[1629 len 10]), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    # nil
}

function sub_c087cb72(?) {
    if developerAddress != msg.sender:
        revert with 0, 'Only an Developer required'
    mem[352 len 0] = None
    mem[352 len 0] = 0
    require ext_code.size(stor2)
    call stor2.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(Mask(96, 0, mem[352 len 12], 0)), 0x4d6173746572436f6e74726163), mem[570 len 7])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[923 len 0] = None
    mem[923 len 0] = 0
    require ext_code.size(stor2)
    call stor2.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(Mask(96, 0, mem[923 len 12], 0)), 0x4d6173746572436f6e74726163), mem[1141 len 7])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[1212 len 0] = None
    require ext_code.size(stor2)
    call stor2.setUint(bytes32 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(Mask(96, 0, 79054433215428917879666034, 0)), 0x4d6173746572436f6e74726163), mem[1212 len 7]), ext_call.return_data[0] + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[1315 len 0] = None
    mem[1315 len 0] = 0
    mem[1437] = sha3(sha3(Mask(96, 0, mem[1315 len 12], 0)), mem[1437 len 14])
    mem[1629 len 0] = None
    require ext_code.size(stor2)
    call stor2.setAddress(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args sha3(sha3(mem[1437], ext_call.return_data[0]), mem[1629 len 10]), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    # nil
}

function sub_052a3881(?) {
    if not stor1[msg.sender]:
        require msg.sender == developerAddress
        mem[192 len 0] = None
        mem[204 len 0] = None
        mem[314] = sha3(sha3(Mask(96, 0, mem[192 len 12], 0)), mem[314 len 14])
        mem[346] = arg1
        mem[474] = sha3(mem[314], arg1)
        mem[506 len 0] = None
        mem[527 len 11] = Mask(88, 0, 'storageAddr')
        mem[549 len 11] = mem[506 len 11]
        require ext_code.size(stor2)
        call stor2.getAddress(bytes32 arg1) with:
             gas gas_remaining wei
            args sha3(sha3(mem[314], arg1), mem[506 len 11])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[613 len 0] = None
        mem[626 len 0] = None
        mem[639 len 19] = 'MemberFeature' % 281474976710656, mem[645 len 13]
        mem[626 len 13] = Mask(104, 0, mem[613 len 13], 0)
        mem[658] = sha3(Mask(104, 0, mem[613 len 13], 0))
        mem[690] = 'Member'
        mem[728] = sha3(sha3(Mask(104, 0, mem[613 len 13], 0)), mem[728 len 6])
        mem[760] = arg2
        mem[888] = sha3(mem[728], arg2)
        mem[920 len 0] = None
        mem[957 len 5] = mem[920 len 5]
        mem[925] = 0x986e791a00000000000000000000000000000000000000000000000000000000
        mem[929] = sha3(sha3(mem[728], arg2), mem[920 len 5])
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).getString(bytes32 arg1) with:
             gas gas_remaining wei
            args sha3(sha3(mem[728], arg2), mem[920 len 5])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[925 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 925
        require return_data.size >= 32
        _1561 = mem[925 len 4], Mask(224, 32, sha3(sha3(mem[728], arg2), mem[920 len 5])) >> 32
        require mem[925 len 4], Mask(224, 32, sha3(sha3(mem[728], arg2), mem[920 len 5])) >> 32 <= 4294967296
        require mem[925 len 4], Mask(224, 32, sha3(sha3(mem[728], arg2), mem[920 len 5])) >> 32 + 32 <= return_data.size
        require return_data.size >= mem[mem[925 len 4], Mask(224, 32, sha3(sha3(mem[728], arg2), mem[920 len 5])) >> 32 + 925] + mem[925 len 4], Mask(224, 32, sha3(sha3(mem[728], arg2), mem[920 len 5])) >> 32 + 32 and mem[mem[925 len 4], Mask(224, 32, sha3(sha3(mem[728], arg2), mem[920 len 5])) >> 32 + 925] <= 4294967296
        mem[ceil32(return_data.size) + 925] = 32
        mem[ceil32(return_data.size) + 957] = mem[_1561 + 925]
        _1569 = mem[_1561 + 925]
        mem[ceil32(return_data.size) + 989 len ceil32(mem[_1561 + 925])] = mem[_1561 + 957 len ceil32(mem[_1561 + 925])]
        if not _1569 % 32:
            return 32, mem[ceil32(return_data.size) + 957 len _1569 + 32]
        mem[floor32(_1569) + ceil32(return_data.size) + 989] = mem[floor32(_1569) + ceil32(return_data.size) + -(_1569 % 32) + 1021 len _1569 % 32]
        return 32, mem[ceil32(return_data.size) + 957 len floor32(_1569) + 64]
    mem[192 len 0] = None
    mem[192 len 0] = 0
    mem[204 len 0] = None
    mem[216 len 20] = 0, mem[224 len 12]
    mem[204 len 12] = Mask(96, 0, mem[192 len 12], 0)
    mem[236] = sha3(Mask(96, 0, mem[192 len 12], 0))
    mem[314] = sha3(sha3(Mask(96, 0, mem[192 len 12], 0)), mem[314 len 14])
    mem[346] = arg1
    mem[474] = sha3(mem[314], arg1)
    mem[506 len 0] = None
    mem[527 len 11] = Mask(88, 0, 'storageAddr')
    mem[549 len 11] = mem[506 len 11]
    require ext_code.size(stor2)
    call stor2.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(mem[314], arg1), mem[506 len 11])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[613 len 0] = None
    mem[626 len 0] = None
    mem[639 len 19] = 'MemberFeature' % 281474976710656, mem[645 len 13]
    mem[626 len 13] = Mask(104, 0, mem[613 len 13], 0)
    mem[658] = sha3(Mask(104, 0, mem[613 len 13], 0))
    mem[690] = 'Member'
    mem[728] = sha3(sha3(Mask(104, 0, mem[613 len 13], 0)), mem[728 len 6])
    mem[760] = arg2
    mem[888] = sha3(mem[728], arg2)
    mem[920 len 0] = None
    mem[957 len 5] = mem[920 len 5]
    mem[925] = 0x986e791a00000000000000000000000000000000000000000000000000000000
    mem[929] = sha3(sha3(mem[728], arg2), mem[920 len 5])
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getString(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(mem[728], arg2), mem[920 len 5])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[925 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 925
    require return_data.size >= 32
    _1560 = mem[925 len 4], Mask(224, 32, sha3(sha3(mem[728], arg2), mem[920 len 5])) >> 32
    require mem[925 len 4], Mask(224, 32, sha3(sha3(mem[728], arg2), mem[920 len 5])) >> 32 <= 4294967296
    require mem[925 len 4], Mask(224, 32, sha3(sha3(mem[728], arg2), mem[920 len 5])) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[mem[925 len 4], Mask(224, 32, sha3(sha3(mem[728], arg2), mem[920 len 5])) >> 32 + 925] + mem[925 len 4], Mask(224, 32, sha3(sha3(mem[728], arg2), mem[920 len 5])) >> 32 + 32 and mem[mem[925 len 4], Mask(224, 32, sha3(sha3(mem[728], arg2), mem[920 len 5])) >> 32 + 925] <= 4294967296
    mem[ceil32(return_data.size) + 925] = 32
    mem[ceil32(return_data.size) + 957] = mem[_1560 + 925]
    _1566 = mem[_1560 + 925]
    mem[ceil32(return_data.size) + 989 len ceil32(mem[_1560 + 925])] = mem[_1560 + 957 len ceil32(mem[_1560 + 925])]
    if not _1566 % 32:
        return 32, mem[ceil32(return_data.size) + 957 len _1566 + 32]
    mem[floor32(_1566) + ceil32(return_data.size) + 989] = mem[floor32(_1566) + ceil32(return_data.size) + -(_1566 % 32) + 1021 len _1566 % 32]
    return 32, mem[ceil32(return_data.size) + 957 len floor32(_1566) + 64]
}



}
