contract main {




// =====================  Runtime code  =====================


#
#  - sub_0557927a(?)
#  - sub_0e895ea2(?)
#  - sub_0f73927a(?)
#  - init(address arg1)
#  - isOwner(address arg1)
#  - sub_81595842(?)
#  - sub_ac9f5ac9(?)
#  - approveOwner(address arg1)
#  - sub_c28bdca6(?)
#  - getOwner(uint256 arg1)
#  - sub_e5f93e97(?)
#  - changeOwner(address arg1, address arg2)
#
const contractName = 'OwnerContract'

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
        args stor3, 96, 160, 12, 0, 3, '2.0' % 16777216
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e50fdc5e(?) {
    mem[192 len 0] = None
    mem[192 len 0] = 0
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(Mask(96, 0, mem[192 len 12], 0)), 341306140018), mem[401 len 7])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_158425f5(?) {
    mem[192 len 0] = None
    mem[192 len 0] = 0
    mem[332 len 0] = None
    require ext_code.size(stor4)
    call stor4.getBool(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(Mask(96, 0, mem[192 len 12], 0)), mem[332 len 15])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_f439d0d8(?) {
    mem[192 len 0] = None
    mem[192 len 0] = 0
    mem[332 len 0] = None
    require ext_code.size(stor4)
    call stor4.getBool(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(Mask(96, 0, mem[192 len 12], 0)), mem[332 len 13], Mask(48, 104, 'InitiatedFirstOwner') >> 104)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_69a7ddf7(?) {
    if not arg1:
        return 0
    mem[192 len 0] = None
    mem[192 len 0] = 0
    require ext_code.size(stor4)
    call stor4.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(Mask(96, 0, mem[192 len 12], 0)), mem[332 len 13])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 != address(ext_call.return_data[0]):
        return 0
    return 1
}

function sub_9598da7f(?) {
    if developerAddress != msg.sender:
        revert with 0, 'Only an Developer required'
    if not arg1:
        revert with 0, 'This address is 0!'
    mem[332 len 0] = None
    require ext_code.size(stor4)
    call stor4.setAddress(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args sha3(sha3(Mask(96, 0, 0x624f776e6572466561747572, 0)), mem[332 len 13]), address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function isMember(address arg1) {
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
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}



}
