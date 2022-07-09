contract main {




// =====================  Runtime code  =====================


const contractName = 'CompanyContract'

const contractVersion = '2.0'


address developerAddress;
address stor1;
uint256 stor3;
address stor4;

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
        args stor3, 96, 160, 18, 0x617475726500000000000000000000000000, 3, '2.0' % 16777216
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_34876e0d(?) {
    mem[192 len 0] = None
    mem[415 len 0] = None
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(Mask(144, 0, mem[192 len 14], 0, 0)), 0x436f6d70616e795570646174), mem[415 len 7])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_a28a1c8a(?) {
    require ext_code.size(stor1)
    call stor1.0x1289c178 with:
         gas gas_remaining wei
        args 'OwnerFeature'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).isOwner(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    mem[445 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 509 len 0] = None
    mem[ceil32(arg1.length) + 445] = 36
    mem[ceil32(arg1.length) + 613 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 445 len ceil32(arg1.length) - arg1.length]
    require ext_code.size(stor4)
    call stor4.setString(bytes32 arg1, string arg2) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(Mask(144, 0, 0x436f6d70616e7944617461466561747572, 0)), 318454028854522624437862), mem[ceil32(arg1.length) + 509 len 4]), Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + 798 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 862 len 0] = None
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 798] = 37
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 967 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 798 len ceil32(arg2.length) - arg2.length]
    require ext_code.size(stor4)
    call stor4.setString(bytes32 arg1, string arg2) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(Mask(144, 0, 0x436f6d70616e7944617461466561747572, 0)), 318454028854522624437862), mem[ceil32(arg1.length) + ceil32(arg2.length) + 862 len 5]), Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 1184 len 0] = None
    require ext_code.size(stor4)
    call stor4.setAddress(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(Mask(144, 0, 0x436f6d70616e7944617461466561747572, 0)), 318454028854522624437862), mem[ceil32(arg1.length) + ceil32(arg2.length) + 1184 len 7]), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xeaf3057c: msg.sender, Array(len=arg1.length, data=arg1[all]), arg1.length + 128
    return 1
}

function sub_308fd11f(?) {
    require ext_code.size(stor1)
    call stor1.0x1289c178 with:
         gas gas_remaining wei
        args 'MemberFeature'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).isMember(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    mem[384 len 0] = None
    mem[384 len 14] = 0, mem[388 len 10]
    mem[607 len 0] = None
    mem[646 len 7] = mem[607 len 7]
    mem[618] = sha3(sha3(sha3(Mask(144, 0, mem[384 len 14], 0, 0)), 0x436f6d70616e795570646174), mem[607 len 7])
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(Mask(144, 0, mem[384 len 14], 0, 0)), 0x436f6d70616e795570646174), mem[607 len 7])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[646 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 646] = 18
    mem[ceil32(arg1.length) + 742 len 0] = None
    mem[ceil32(arg1.length) + 869] = sha3(sha3(Mask(144, 0, mem[ceil32(arg1.length) + 742 len 14], 0, 0)), mem[ceil32(arg1.length) + 869 len 13])
    mem[ceil32(arg1.length) + 1061 len 0] = None
    require ext_code.size(stor4)
    call stor4.setAddress(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args sha3(sha3(mem[ceil32(arg1.length) + 869], ext_call.return_data[0]), mem[ceil32(arg1.length) + 1061 len 7]), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + 1196 len 0] = None
    mem[ceil32(arg1.length) + 1301 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 646 len ceil32(arg1.length) - arg1.length]
    require ext_code.size(stor4)
    call stor4.setString(bytes32 arg1, string arg2) with:
         gas gas_remaining wei
        args sha3(sha3(mem[ceil32(arg1.length) + 869], ext_call.return_data[0]), mem[ceil32(arg1.length) + 1196 len 5]), Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + 1329 len 0] = None
    require ext_code.size(stor4)
    call stor4.setUint(bytes32 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sha3(sha3(mem[ceil32(arg1.length) + 869], ext_call.return_data[0]), mem[ceil32(arg1.length) + 1329 len 4]), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    # nil
}

function sub_d274a178(?) {
    mem[96] = 12
    mem[128] = 'OwnerFeature'
    require ext_code.size(stor1)
    call stor1.0x1289c178 with:
         gas gas_remaining wei
        args 'OwnerFeature'
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
    mem[160] = 18
    mem[192] = 0x436f6d70616e79446174614665617475726500000000000000000000000000
    mem[256 len 18] = 0x436f6d70616e7944617461466561747572
    mem[224] = 18
    mem[274 len 0] = None
    mem[306] = sha3(Mask(144, 0, 0x436f6d70616e7944617461466561747572, 0))
    mem[338] = 0x436f6d70616e79557064617465000000000000000000000000000000000000
    mem[274] = 45
    mem[383] = sha3(sha3(Mask(144, 0, 0x436f6d70616e7944617461466561747572, 0)), mem[383 len 13])
    mem[415] = arg1
    mem[351] = 64
    mem[447] = 7
    mem[479] = 'creator'
    mem[543] = sha3(mem[383], arg1)
    mem[511] = 39
    require ext_code.size(stor4)
    call stor4.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(mem[383], arg1), mem[575 len 7])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[582] = 5
    mem[614] = 'title'
    mem[678] = sha3(mem[383], arg1)
    mem[710 len 0] = None
    mem[646] = 37
    mem[747 len 5] = mem[710 len 5]
    mem[715] = 0x986e791a00000000000000000000000000000000000000000000000000000000
    mem[719] = sha3(sha3(mem[383], arg1), mem[710 len 5])
    require ext_code.size(stor4)
    call stor4.getString(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(mem[383], arg1), mem[710 len 5])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[715 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 715
    require return_data.size >= 32
    _1820 = mem[715 len 4], Mask(224, 32, sha3(sha3(mem[383], arg1), mem[710 len 5])) >> 32
    require mem[715 len 4], Mask(224, 32, sha3(sha3(mem[383], arg1), mem[710 len 5])) >> 32 <= 4294967296
    require mem[715 len 4], Mask(224, 32, sha3(sha3(mem[383], arg1), mem[710 len 5])) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[mem[715 len 4], Mask(224, 32, sha3(sha3(mem[383], arg1), mem[710 len 5])) >> 32 + 715] + mem[715 len 4], Mask(224, 32, sha3(sha3(mem[383], arg1), mem[710 len 5])) >> 32 + 32 and mem[mem[715 len 4], Mask(224, 32, sha3(sha3(mem[383], arg1), mem[710 len 5])) >> 32 + 715] <= 4294967296
    mem[ceil32(return_data.size) + 715] = 4
    mem[ceil32(return_data.size) + 747] = 'time'
    mem[ceil32(return_data.size) + 811] = sha3(mem[383], arg1)
    mem[ceil32(return_data.size) + 843 len 0] = None
    mem[ceil32(return_data.size) + 779] = 36
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(mem[383], arg1), mem[ceil32(return_data.size) + 843 len 4])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 847] = address(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 911] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 879] = 96
    mem[ceil32(return_data.size) + 943] = mem[_1820 + 715]
    _2081 = mem[_1820 + 715]
    mem[ceil32(return_data.size) + 975 len ceil32(mem[_1820 + 715])] = mem[_1820 + 747 len ceil32(mem[_1820 + 715])]
    if not _2081 % 32:
        return address(ext_call.return_data[0]), 96, ext_call.return_data[0], mem[ceil32(return_data.size) + 943 len _2081 + 32]
    mem[floor32(_2081) + ceil32(return_data.size) + 975] = mem[floor32(_2081) + ceil32(return_data.size) + -(_2081 % 32) + 1007 len _2081 % 32]
    return address(ext_call.return_data[0]), 
           96,
           ext_call.return_data[0],
           mem[ceil32(return_data.size) + 943 len floor32(_2081) + 64]
}

function sub_d7710d62(?) {
    mem[96] = 12
    mem[128] = 'TokenFeature'
    require ext_code.size(stor1)
    call stor1.0x1289c178 with:
         gas gas_remaining wei
        args 'TokenFeature'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = 18
    mem[192] = 0x436f6d70616e79446174614665617475726500000000000000000000000000
    mem[256 len 18] = 0x436f6d70616e7944617461466561747572
    mem[224] = 18
    mem[274 len 0] = None
    mem[306] = sha3(Mask(144, 0, 0x436f6d70616e7944617461466561747572, 0))
    mem[338] = 0x436f6d70616e79496e666f0000000000000000000000000000000000000000
    mem[274] = 43
    mem[349] = 4
    mem[381] = 'name'
    mem[445] = sha3(sha3(Mask(144, 0, 0x436f6d70616e7944617461466561747572, 0)), 318454028854522624437862)
    mem[477 len 0] = None
    mem[413] = 36
    mem[481] = 0x986e791a00000000000000000000000000000000000000000000000000000000
    mem[485] = sha3(sha3(sha3(Mask(144, 0, 0x436f6d70616e7944617461466561747572, 0)), 318454028854522624437862), mem[477 len 4])
    require ext_code.size(stor4)
    call stor4.getString(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(Mask(144, 0, 0x436f6d70616e7944617461466561747572, 0)), 318454028854522624437862), mem[477 len 4])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[481 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 481
    require return_data.size >= 32
    _1002 = mem[481 len 4], Mask(224, 32, sha3(sha3(sha3(Mask(144, 0, 0x436f6d70616e7944617461466561747572, 0)), 318454028854522624437862), mem[477 len 4])) >> 32
    require mem[481 len 4], Mask(224, 32, sha3(sha3(sha3(Mask(144, 0, 0x436f6d70616e7944617461466561747572, 0)), 318454028854522624437862), mem[477 len 4])) >> 32 <= 4294967296
    require mem[481 len 4], Mask(224, 32, sha3(sha3(sha3(Mask(144, 0, 0x436f6d70616e7944617461466561747572, 0)), 318454028854522624437862), mem[477 len 4])) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[mem[481 len 4], Mask(224, 32, sha3(sha3(sha3(Mask(144, 0, 0x436f6d70616e7944617461466561747572, 0)), 318454028854522624437862), mem[477 len 4])) >> 32 + 481] + mem[481 len 4], Mask(224, 32, sha3(sha3(sha3(Mask(144, 0, 0x436f6d70616e7944617461466561747572, 0)), 318454028854522624437862), mem[477 len 4])) >> 32 + 32 and mem[mem[481 len 4], Mask(224, 32, sha3(sha3(sha3(Mask(144, 0, 0x436f6d70616e7944617461466561747572, 0)), 318454028854522624437862), mem[477 len 4])) >> 32 + 481] <= 4294967296
    mem[ceil32(return_data.size) + 481] = 18
    mem[ceil32(return_data.size) + 513] = 0x436f6d70616e79446174614665617475726500000000000000000000000000
    mem[ceil32(return_data.size) + 577 len 0] = None
    mem[ceil32(return_data.size) + 591 len 18] = 0x617475726500000000000000000000000000
    mem[ceil32(return_data.size) + 545] = 18
    mem[ceil32(return_data.size) + 595 len 0] = None
    mem[ceil32(return_data.size) + 627] = sha3(Mask(144, 0, mem[ceil32(return_data.size) + 577 len 14], 0, 0))
    mem[ceil32(return_data.size) + 659] = 0x436f6d70616e79496e666f0000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 595] = 43
    mem[ceil32(return_data.size) + 670] = 5
    mem[ceil32(return_data.size) + 702] = 'about'
    mem[ceil32(return_data.size) + 766] = sha3(sha3(Mask(144, 0, mem[ceil32(return_data.size) + 577 len 14], 0, 0)), 318454028854522624437862)
    mem[ceil32(return_data.size) + 798 len 0] = None
    mem[ceil32(return_data.size) + 734] = 37
    mem[ceil32(return_data.size) + 835 len 5] = mem[ceil32(return_data.size) + 798 len 5]
    mem[ceil32(return_data.size) + 803] = 0x986e791a00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 807] = sha3(sha3(sha3(Mask(144, 0, mem[ceil32(return_data.size) + 577 len 14], 0, 0)), 318454028854522624437862), mem[ceil32(return_data.size) + 798 len 5])
    require ext_code.size(stor4)
    call stor4.getString(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(Mask(144, 0, mem[ceil32(return_data.size) + 577 len 14], 0, 0)), 318454028854522624437862), mem[ceil32(return_data.size) + 798 len 5])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 803 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 803
    require return_data.size >= 32
    _1564 = mem[ceil32(return_data.size) + 803 len 4], Mask(224, 32, sha3(sha3(sha3(Mask(144, 0, mem[ceil32(return_data.size) + 577 len 14], 0, 0)), 318454028854522624437862), mem[ceil32(return_data.size) + 798 len 5])) >> 32
    require mem[ceil32(return_data.size) + 803 len 4], Mask(224, 32, sha3(sha3(sha3(Mask(144, 0, mem[ceil32(return_data.size) + 577 len 14], 0, 0)), 318454028854522624437862), mem[ceil32(return_data.size) + 798 len 5])) >> 32 <= 4294967296
    require mem[ceil32(return_data.size) + 803 len 4], Mask(224, 32, sha3(sha3(sha3(Mask(144, 0, mem[ceil32(return_data.size) + 577 len 14], 0, 0)), 318454028854522624437862), mem[ceil32(return_data.size) + 798 len 5])) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 803 len 4], Mask(224, 32, sha3(sha3(sha3(Mask(144, 0, mem[ceil32(return_data.size) + 577 len 14], 0, 0)), 318454028854522624437862), mem[ceil32(return_data.size) + 798 len 5])) >> 32 + 803] + mem[ceil32(return_data.size) + 803 len 4], Mask(224, 32, sha3(sha3(sha3(Mask(144, 0, mem[ceil32(return_data.size) + 577 len 14], 0, 0)), 318454028854522624437862), mem[ceil32(return_data.size) + 798 len 5])) >> 32 + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 803 len 4], Mask(224, 32, sha3(sha3(sha3(Mask(144, 0, mem[ceil32(return_data.size) + 577 len 14], 0, 0)), 318454028854522624437862), mem[ceil32(return_data.size) + 798 len 5])) >> 32 + 803] <= 4294967296
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getTreasuryAddress() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getTreasuryToken() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 867] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 899] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 803] = 128
    mem[(2 * ceil32(return_data.size)) + 931] = mem[_1002 + 481]
    _1588 = mem[_1002 + 481]
    mem[(2 * ceil32(return_data.size)) + 963 len ceil32(mem[_1002 + 481])] = mem[_1002 + 513 len ceil32(mem[_1002 + 481])]
    if not _1588 % 32:
        mem[(2 * ceil32(return_data.size)) + 835] = _1588 + 160
        mem[_1588 + (2 * ceil32(return_data.size)) + 963] = mem[ceil32(return_data.size) + _1564 + 803]
        _1623 = mem[ceil32(return_data.size) + _1564 + 803]
        mem[_1588 + (2 * ceil32(return_data.size)) + 995 len ceil32(mem[ceil32(return_data.size) + _1564 + 803])] = mem[ceil32(return_data.size) + _1564 + 835 len ceil32(mem[ceil32(return_data.size) + _1564 + 803])]
        if not _1623 % 32:
            return 128, 
                   _1588 + 160,
                   address(ext_call.return_data[0]),
                   ext_call.return_data[0],
                   mem[(2 * ceil32(return_data.size)) + 931 len _1623 + _1588 + 64]
        mem[floor32(_1623) + _1588 + (2 * ceil32(return_data.size)) + 995] = mem[floor32(_1623) + _1588 + (2 * ceil32(return_data.size)) + -(_1623 % 32) + 1027 len _1623 % 32]
        return 128, 
               _1588 + 160,
               address(ext_call.return_data[0]),
               ext_call.return_data[0],
               mem[(2 * ceil32(return_data.size)) + 931 len floor32(_1623) + _1588 + 96]
    mem[floor32(_1588) + (2 * ceil32(return_data.size)) + 963] = mem[floor32(_1588) + (2 * ceil32(return_data.size)) + -(_1588 % 32) + 995 len _1588 % 32]
    mem[(2 * ceil32(return_data.size)) + 835] = floor32(_1588) + 192
    mem[floor32(_1588) + (2 * ceil32(return_data.size)) + 995] = mem[ceil32(return_data.size) + _1564 + 803]
    _1628 = mem[ceil32(return_data.size) + _1564 + 803]
    mem[floor32(_1588) + (2 * ceil32(return_data.size)) + 1027 len ceil32(mem[ceil32(return_data.size) + _1564 + 803])] = mem[ceil32(return_data.size) + _1564 + 835 len ceil32(mem[ceil32(return_data.size) + _1564 + 803])]
    if not _1628 % 32:
        return 128, 
               floor32(_1588) + 192,
               address(ext_call.return_data[0]),
               ext_call.return_data[0],
               mem[(2 * ceil32(return_data.size)) + 931 len _1628 + floor32(_1588) + 96]
    mem[floor32(_1628) + floor32(_1588) + (2 * ceil32(return_data.size)) + 1027] = mem[floor32(_1628) + floor32(_1588) + (2 * ceil32(return_data.size)) + -(_1628 % 32) + 1059 len _1628 % 32]
    return 128, 
           floor32(_1588) + 192,
           address(ext_call.return_data[0]),
           ext_call.return_data[0],
           mem[(2 * ceil32(return_data.size)) + 931 len floor32(_1628) + floor32(_1588) + 128]
}



}
