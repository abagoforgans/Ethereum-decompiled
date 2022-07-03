contract main {




// =====================  Runtime code  =====================


#
#  - sub_4854637f(?)
#  - getTransfer(uint256 arg1)
#
const decimals = 0

const contractName = 'TokenContract'

const contractVersion = '2.0'


address developerAddress;
address stor1;
address stor2;
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
  stop
}

function approve(address arg1, uint256 arg2, address arg3) {
    require msg.sender == stor2
    return 0
}

function allowance(address arg1, address arg2, address arg3) {
    require msg.sender == stor2
    return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3, address arg4) payable {
    require msg.sender == stor2
    return 0
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
        args stor3, 96, 160, 12, 0, 3, '2.0' % 16777216
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_34ce4826(?) {
    mem[192 len 0] = None
    mem[192 len 0] = 0
    require ext_code.size(stor4)
    call stor4.getBool(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(Mask(96, 0, mem[192 len 12], 0)), mem[332 len 14])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function balanceOf(address arg1) {
    mem[204 len 0] = None
    mem[416 len 0] = None
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(mem[204 len 8], 0), arg1), mem[416 len 12])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function totalSupply() {
    mem[192 len 0] = None
    mem[192 len 0] = 0
    mem[332 len 0] = None
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(Mask(96, 0, mem[192 len 12], 0)), mem[332 len 16])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getTreasuryAddress() {
    mem[192 len 0] = None
    mem[192 len 0] = 0
    require ext_code.size(stor4)
    call stor4.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(Mask(96, 0, mem[192 len 12], 0)), mem[332 len 12], Mask(64, 96, 'TokenTreasuryAddress') >> 96)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return address(ext_call.return_data[0])
}

function getTransferCount() {
    mem[192 len 0] = None
    mem[192 len 0] = 0
    mem[332 len 0] = None
    mem[477 len 0] = None
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(Mask(96, 0, mem[192 len 12], 0)), mem[332 len 15], 0), mem[477 len 7])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getTreasuryToken() {
    mem[192 len 0] = None
    mem[192 len 0] = 0
    require ext_code.size(stor4)
    call stor4.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(Mask(96, 0, mem[192 len 12], 0)), mem[332 len 12], Mask(64, 96, 'TokenTreasuryAddress') >> 96)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[460 len 0] = None
    mem[672 len 0] = None
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(mem[460 len 8], 0), address(ext_call.return_data[0])), mem[672 len 12])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_0ad63a1e(?) {
    require ext_code.size(stor1)
    call stor1.0x1289c178 with:
         gas gas_remaining wei
        args ''
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require address(ext_call.return_data[0]) == msg.sender
    mem[256 len 0] = None
    mem[256 len 20] = 0, mem[260 len 16]
    mem[256 len 0] = 0
    mem[396 len 0] = None
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(Mask(96, 0, mem[256 len 12], 0)), mem[396 len 16])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[520 len 0] = None
    mem[732 len 0] = None
    require ext_code.size(stor4)
    call stor4.setUint(bytes32 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(mem[520 len 12]), arg1), mem[732 len 12]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8891c77c(?) {
    require ext_code.size(stor1)
    call stor1.0x1289c178 with:
         gas gas_remaining wei
        args ''
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require address(ext_call.return_data[0]) == msg.sender
    require arg2
    mem[256 len 20] = 0, mem[260 len 16]
    mem[268 len 0] = None
    mem[480 len 0] = None
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(mem[268 len 8], 0), arg1), mem[480 len 12])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[600 len 0] = None
    mem[812 len 0] = None
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(mem[600 len 8], 0), arg2), mem[812 len 12])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[932 len 0] = None
    mem[1144 len 0] = None
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(mem[932 len 8], 0), arg1), mem[1144 len 12])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 <= ext_call.return_data[0]
    # nil
}

function sub_ebcaeda5(?) {
    require ext_code.size(stor1)
    call stor1.0x1289c178 with:
         gas gas_remaining wei
        args ''
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require address(ext_call.return_data[0]) == msg.sender
    mem[256 len 0] = None
    mem[256 len 20] = 0, mem[260 len 16]
    mem[256 len 0] = 0
    require ext_code.size(stor4)
    call stor4.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(Mask(96, 0, mem[256 len 12], 0)), mem[396 len 12], Mask(64, 96, 'TokenTreasuryAddress') >> 96)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20]:
        revert with 0, 'Treasury Wallet already has initiated'
    require arg1
    mem[524 len 0] = None
    mem[736 len 0] = None
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(mem[524 len 8], 0), arg3), mem[736 len 12])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[856 len 0] = None
    mem[1068 len 0] = None
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(mem[856 len 8], 0), arg1), mem[1068 len 12])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[1188 len 0] = None
    mem[1400 len 0] = None
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(mem[1188 len 8], 0), arg3), mem[1400 len 12])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 <= ext_call.return_data[0]
    # nil
}

function name() {
    mem[192 len 0] = None
    mem[192 len 0] = 0
    mem[204 len 0] = None
    mem[216 len 20] = 0, mem[224 len 12]
    mem[204 len 12] = Mask(96, 0, mem[192 len 12], 0)
    mem[300] = sha3(Mask(96, 0, mem[192 len 12], 0))
    mem[332 len 0] = None
    mem[373 len 9] = mem[332 len 9]
    mem[341] = 0x986e791a00000000000000000000000000000000000000000000000000000000
    mem[345] = sha3(sha3(Mask(96, 0, mem[192 len 12], 0)), mem[332 len 9])
    require ext_code.size(stor4)
    call stor4.getString(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(Mask(96, 0, mem[192 len 12], 0)), mem[332 len 9])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[341 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 341
    require return_data.size >= 32
    _134 = mem[341 len 4], Mask(224, 32, sha3(sha3(Mask(96, 0, mem[192 len 12], 0)), mem[332 len 9])) >> 32
    require mem[341 len 4], Mask(224, 32, sha3(sha3(Mask(96, 0, mem[192 len 12], 0)), mem[332 len 9])) >> 32 <= 4294967296
    require mem[341 len 4], Mask(224, 32, sha3(sha3(Mask(96, 0, mem[192 len 12], 0)), mem[332 len 9])) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[mem[341 len 4], Mask(224, 32, sha3(sha3(Mask(96, 0, mem[192 len 12], 0)), mem[332 len 9])) >> 32 + 341] + mem[341 len 4], Mask(224, 32, sha3(sha3(Mask(96, 0, mem[192 len 12], 0)), mem[332 len 9])) >> 32 + 32 and mem[mem[341 len 4], Mask(224, 32, sha3(sha3(Mask(96, 0, mem[192 len 12], 0)), mem[332 len 9])) >> 32 + 341] <= 4294967296
    mem[ceil32(return_data.size) + 341] = 32
    mem[ceil32(return_data.size) + 373] = mem[_134 + 341]
    _138 = mem[_134 + 341]
    mem[ceil32(return_data.size) + 405 len ceil32(mem[_134 + 341])] = mem[_134 + 373 len ceil32(mem[_134 + 341])]
    if not _138 % 32:
        return 32, mem[ceil32(return_data.size) + 373 len _138 + 32]
    mem[floor32(_138) + ceil32(return_data.size) + 405] = mem[floor32(_138) + ceil32(return_data.size) + -(_138 % 32) + 437 len _138 % 32]
    return 32, mem[ceil32(return_data.size) + 373 len floor32(_138) + 64]
}

function symbol() {
    mem[192 len 0] = None
    mem[192 len 0] = 0
    mem[204 len 0] = None
    mem[216 len 20] = 0, mem[224 len 12]
    mem[204 len 12] = Mask(96, 0, mem[192 len 12], 0)
    mem[300] = sha3(Mask(96, 0, mem[192 len 12], 0))
    mem[332 len 0] = None
    mem[375 len 11] = mem[332 len 11]
    mem[343] = 0x986e791a00000000000000000000000000000000000000000000000000000000
    mem[347] = sha3(sha3(Mask(96, 0, mem[192 len 12], 0)), mem[332 len 11])
    require ext_code.size(stor4)
    call stor4.getString(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(Mask(96, 0, mem[192 len 12], 0)), mem[332 len 11])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[343 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 343
    require return_data.size >= 32
    _134 = mem[343 len 4], Mask(224, 32, sha3(sha3(Mask(96, 0, mem[192 len 12], 0)), mem[332 len 11])) >> 32
    require mem[343 len 4], Mask(224, 32, sha3(sha3(Mask(96, 0, mem[192 len 12], 0)), mem[332 len 11])) >> 32 <= 4294967296
    require mem[343 len 4], Mask(224, 32, sha3(sha3(Mask(96, 0, mem[192 len 12], 0)), mem[332 len 11])) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[mem[343 len 4], Mask(224, 32, sha3(sha3(Mask(96, 0, mem[192 len 12], 0)), mem[332 len 11])) >> 32 + 343] + mem[343 len 4], Mask(224, 32, sha3(sha3(Mask(96, 0, mem[192 len 12], 0)), mem[332 len 11])) >> 32 + 32 and mem[mem[343 len 4], Mask(224, 32, sha3(sha3(Mask(96, 0, mem[192 len 12], 0)), mem[332 len 11])) >> 32 + 343] <= 4294967296
    mem[ceil32(return_data.size) + 343] = 32
    mem[ceil32(return_data.size) + 375] = mem[_134 + 343]
    _138 = mem[_134 + 343]
    mem[ceil32(return_data.size) + 407 len ceil32(mem[_134 + 343])] = mem[_134 + 375 len ceil32(mem[_134 + 343])]
    if not _138 % 32:
        return 32, mem[ceil32(return_data.size) + 375 len _138 + 32]
    mem[floor32(_138) + ceil32(return_data.size) + 407] = mem[floor32(_138) + ceil32(return_data.size) + -(_138 % 32) + 439 len _138 % 32]
    return 32, mem[ceil32(return_data.size) + 375 len floor32(_138) + 64]
}

function transfer(address arg1, uint256 arg2, address arg3) payable {
    require msg.sender == stor2
    require ext_code.size(stor1)
    call stor1.0x1289c178 with:
         gas gas_remaining wei
        args Array(len=15, data='OraclizeFeature')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xc93fe89e with:
       value msg.value wei
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg1
    mem[204 len 0] = None
    mem[204 len 20] = mem[204 len 8], 0
    mem[416 len 0] = None
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(mem[204 len 12]), arg3), mem[416 len 12])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[536 len 0] = None
    mem[748 len 0] = None
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(mem[536 len 8], 0), arg1), mem[748 len 12])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[868 len 0] = None
    mem[1080 len 0] = None
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(mem[868 len 8], 0), arg3), mem[1080 len 12])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 <= ext_call.return_data[0]
    mem[1200 len 0] = None
    mem[1412 len 0] = None
    require ext_code.size(stor4)
    call stor4.setUint(bytes32 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(mem[1200 len 12]), arg3), mem[1412 len 12]), ext_call.return_data[0] - arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    # nil
}



}
