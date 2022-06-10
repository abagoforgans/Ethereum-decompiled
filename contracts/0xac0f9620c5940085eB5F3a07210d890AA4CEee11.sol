contract main {




// =====================  Runtime code  =====================


#
#  - respondBytes32Array(uint256 arg1, bytes32[] arg2)
#  - respond4(uint256 arg1, string arg2, string arg3, string arg4, string arg5)
#  - respond3(uint256 arg1, string arg2, string arg3, string arg4)
#  - respond1(uint256 arg1, string arg2)
#  - cancelQuery(uint256 arg1)
#  - query(address arg1, string arg2, bytes32 arg3, bytes32[] arg4)
#  - respondIntArray(uint256 arg1, int256[] arg2)
#  - respond2(uint256 arg1, string arg2, string arg3)
#
address owner;
address stor1;
address stor2;
address bondageAddress;
address bondageAddress;
uint256 stor4;
address dbAddress;
uint256 stor5;

function db() {
    return address(dbAddress)
}

function owner() {
    return owner
}

function bondage() {
    return bondageAddress
}

function bondageAddress() {
    return address(bondageAddress)
}

function selfDestruct() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getStatus(uint256 arg1) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x2ecb0d64 with:
         gas gas_remaining wei
        args sha3('queries', Mask(200, 56, arg1) >> 56, mem[205 len 13])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getEndpoint(uint256 arg1) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xa6ed563e with:
         gas gas_remaining wei
        args sha3('queries', Mask(200, 56, arg1) >> 56, mem[207 len 15])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getProvider(uint256 arg1) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x2ecb0d64 with:
         gas gas_remaining wei
        args sha3('queries', Mask(200, 56, arg1) >> 56, mem[207 len 15])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return address(ext_call.return_data[0])
}

function getSubscriber(uint256 arg1) {
    mem[209] = Mask(16, 176, 'subscriber') >> 176, 'queries', uint64(arg1) or Mask(120, 136, mem[209])
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x2ecb0d64 with:
         gas gas_remaining wei
        args sha3('queries', Mask(200, 56, arg1) >> 56, mem[209 len 17])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return address(ext_call.return_data[0])
}

function getCancel(uint256 arg1) {
    mem[210] = Mask(32, 168, 'cancelBlock') >> 168, 'queries', Mask(56, 200, arg1) >> 200 or Mask(112, 144, mem[210])
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x2ecb0d64 with:
         gas gas_remaining wei
        args sha3('queries', Mask(200, 56, arg1) >> 56, mem[210 len 18])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getSubscriberOnchain(uint256 arg1) {
    mem[216] = Mask(128, 120, 'onchainSubscriber') >> 120, 'queries', uint8(arg1) or Mask(64, 192, mem[216])
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x2ecb0d64 with:
         gas gas_remaining wei
        args sha3('queries', Mask(200, 56, arg1) >> 56, mem[216 len 24])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] == 1:
        return 1
    else:
        return 0
}

function updateDependencies() {
    if stor1 != msg.sender:
        revert with 0, 'Error: Coordinator Only Function'
    require ext_code.size(stor2)
    call stor2.0x35817773 with:
         gas gas_remaining wei
        args Array(len=8, data='DATABASE')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor5) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor5))
    require ext_code.size(stor2)
    call stor2.0x35817773 with:
         gas gas_remaining wei
        args Array(len=7, data='BONDAGE')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor4) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor4))
    bondageAddress = address(bondageAddress)
}

function getUserQuery(uint256 arg1) {
    mem[167] = 'userQuery'
    mem[224 len 16] = 'queries', Mask(72, 184, arg1) >> 184
    _25 = sha3('queries', Mask(200, 56, arg1) >> 56, mem[208 len 16])
    mem[176] = 0x986e791a00000000000000000000000000000000000000000000000000000000
    mem[180] = sha3('queries', Mask(200, 56, arg1) >> 56, mem[208 len 16])
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x986e791a with:
         gas gas_remaining wei
        args _25
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[176 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 176
    require return_data.size >= 32
    _30 = mem[176 len 4], Mask(224, 32, _25) >> 32
    require mem[176 len 4], Mask(224, 32, _25) >> 32 <= 4294967296
    require mem[176 len 4], Mask(224, 32, _25) >> 32 + 32 <= return_data.size
    require mem[mem[176 len 4], Mask(224, 32, _25) >> 32 + 176] <= 4294967296 and mem[176 len 4], Mask(224, 32, _25) >> 32 + mem[mem[176 len 4], Mask(224, 32, _25) >> 32 + 176] + 32 <= return_data.size
    mem[ceil32(return_data.size) + 176] = 32
    mem[ceil32(return_data.size) + 208] = mem[_30 + 176]
    _34 = mem[_30 + 176]
    mem[ceil32(return_data.size) + 240 len ceil32(mem[_30 + 176])] = mem[_30 + 208 len ceil32(mem[_30 + 176])]
    if not _34 % 32:
        return 32, mem[ceil32(return_data.size) + 208 len _34 + 32]
    mem[floor32(_34) + ceil32(return_data.size) + 240] = mem[floor32(_34) + ceil32(return_data.size) + -(_34 % 32) + 272 len _34 % 32]
    return 32, mem[ceil32(return_data.size) + 208 len floor32(_34) + 64]
}



}
