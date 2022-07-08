contract main {




// =====================  Runtime code  =====================


#
#  - sub_308fd11f(?)
#  - sub_c20bf895(?)
#  - sub_d274a178(?)
#  - sub_f1afc657(?)
#
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

function sub_7bd80efa(?) {
    require ext_code.size(stor4)
    call stor4.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(Mask(144, 112, 0, 0, 1635022194) >> 112), msg.sender), mem[422 len 15])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return address(ext_call.return_data[0])
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

function register() {
    if developerAddress != msg.sender:
        revert with 0, 'Only an Developer required'
    require ext_code.size(stor1)
    call stor1.register(bytes32 arg1, string arg2, string arg3) with:
         gas gas_remaining wei
        args stor3, 96, 160, 18, 0x617475726500000000000000000000000000, 3, '2.0' % 16777216
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.register(bytes32 arg1, string arg2, string arg3) with:
         gas gas_remaining wei
        args stor3, 96, 160, 18, 0x617475726500000000000000000000000000, 3, '2.0' % 16777216
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6b2b6013(?) {
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
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    mem[274 len 0] = None
    mem[486 len 0] = None
    require ext_code.size(stor4)
    call stor4.setAddress(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(mem[274 len 14], Mask(32, 112, 5600101, 0) >> 112), msg.sender), mem[486 len 15]), address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2a0aaa47(?) {
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
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    mem[454 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 518 len 0] = None
    mem[ceil32(arg1.length) + 454] = 46
    mem[ceil32(arg1.length) + 632 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 454 len ceil32(arg1.length) - arg1.length]
    require ext_code.size(stor4)
    call stor4.setString(bytes32 arg1, string arg2) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(0), msg.sender), mem[ceil32(arg1.length) + 518 len 14]), Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + 646 len 0] = None
    mem[ceil32(arg1.length) + 858 len 0] = None
    require ext_code.size(stor4)
    call stor4.setUint(bytes32 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(mem[ceil32(arg1.length) + 646 len 14], Mask(32, 112, 5600101, 0) >> 112), msg.sender), mem[ceil32(arg1.length) + 858 len 12]), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a28a1c8a(?) {
    require ext_code.size(stor1)
    call stor1.0x2f54bf6e with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    mem[381 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 445 len 0] = None
    mem[ceil32(arg1.length) + 381] = 36
    mem[ceil32(arg1.length) + 549 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 381 len ceil32(arg1.length) - arg1.length]
    require ext_code.size(stor4)
    call stor4.setString(bytes32 arg1, string arg2) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(Mask(144, 0, 0x436f6d70616e7944617461466561747572, 0)), 318454028854522624437862), mem[ceil32(arg1.length) + 445 len 4]), Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + 734 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 798 len 0] = None
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 734] = 37
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 903 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 734 len ceil32(arg2.length) - arg2.length]
    require ext_code.size(stor4)
    call stor4.setString(bytes32 arg1, string arg2) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(Mask(144, 0, 0x436f6d70616e7944617461466561747572, 0)), 318454028854522624437862), mem[ceil32(arg1.length) + ceil32(arg2.length) + 798 len 5]), Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 1120 len 0] = None
    require ext_code.size(stor4)
    call stor4.setAddress(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(Mask(144, 0, 0x436f6d70616e7944617461466561747572, 0)), 318454028854522624437862), mem[ceil32(arg1.length) + ceil32(arg2.length) + 1120 len 7]), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xeaf3057c: msg.sender, Array(len=arg1.length, data=arg1[all]), arg1.length + 128
    return 1
}

function sub_c5eeade5(?) {
    mem[96] = 18
    mem[128] = 0x5573657257616c6c6574734665617475726500000000000000000000000000
    mem[206 len 18] = 0x617475726500000000000000000000000000
    mem[160] = 18
    mem[210 len 0] = None
    mem[242] = sha3(Mask(144, 112, 0, 0, 1635022194) >> 112)
    mem[274] = address(msg.sender)
    mem[210] = 52
    mem[294] = 14
    mem[326] = 'BitcoinAddress'
    mem[390] = sha3(sha3(Mask(144, 112, 0, 0, 1635022194) >> 112), msg.sender)
    mem[422 len 0] = None
    mem[358] = 46
    mem[468 len 14] = mem[422 len 14]
    mem[436] = 0x986e791a00000000000000000000000000000000000000000000000000000000
    mem[440] = sha3(sha3(sha3(Mask(144, 112, 0, 0, 1635022194) >> 112), msg.sender), mem[422 len 14])
    require ext_code.size(stor4)
    call stor4.getString(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(Mask(144, 112, 0, 0, 1635022194) >> 112), msg.sender), mem[422 len 14])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[436 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 436
    require return_data.size >= 32
    _451 = mem[436 len 4], Mask(224, 32, sha3(sha3(sha3(Mask(144, 112, 0, 0, 1635022194) >> 112), msg.sender), mem[422 len 14])) >> 32
    require mem[436 len 4], Mask(224, 32, sha3(sha3(sha3(Mask(144, 112, 0, 0, 1635022194) >> 112), msg.sender), mem[422 len 14])) >> 32 <= 4294967296
    require mem[436 len 4], Mask(224, 32, sha3(sha3(sha3(Mask(144, 112, 0, 0, 1635022194) >> 112), msg.sender), mem[422 len 14])) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[mem[436 len 4], Mask(224, 32, sha3(sha3(sha3(Mask(144, 112, 0, 0, 1635022194) >> 112), msg.sender), mem[422 len 14])) >> 32 + 436] + mem[436 len 4], Mask(224, 32, sha3(sha3(sha3(Mask(144, 112, 0, 0, 1635022194) >> 112), msg.sender), mem[422 len 14])) >> 32 + 32 and mem[mem[436 len 4], Mask(224, 32, sha3(sha3(sha3(Mask(144, 112, 0, 0, 1635022194) >> 112), msg.sender), mem[422 len 14])) >> 32 + 436] <= 4294967296
    mem[ceil32(return_data.size) + 436] = 12
    mem[ceil32(return_data.size) + 468] = 'BitcoinValue'
    mem[ceil32(return_data.size) + 532] = sha3(sha3(Mask(144, 112, 0, 0, 1635022194) >> 112), msg.sender)
    mem[ceil32(return_data.size) + 564 len 0] = None
    mem[ceil32(return_data.size) + 500] = 44
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(Mask(144, 112, 0, 0, 1635022194) >> 112), msg.sender), mem[ceil32(return_data.size) + 564 len 12])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 608] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 576] = 64
    mem[ceil32(return_data.size) + 640] = mem[_451 + 436]
    _581 = mem[_451 + 436]
    mem[ceil32(return_data.size) + 672 len ceil32(mem[_451 + 436])] = mem[_451 + 468 len ceil32(mem[_451 + 436])]
    if not _581 % 32:
        return 64, ext_call.return_data[0], mem[ceil32(return_data.size) + 640 len _581 + 32]
    mem[floor32(_581) + ceil32(return_data.size) + 672] = mem[floor32(_581) + ceil32(return_data.size) + -(_581 % 32) + 704 len _581 % 32]
    return 64, ext_call.return_data[0], mem[ceil32(return_data.size) + 640 len floor32(_581) + 64]
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
    mem[ceil32(return_data.size) + 591 len 5] = 418565681765
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
    call address(ext_call.return_data[0]).0xe0024604 with:
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
