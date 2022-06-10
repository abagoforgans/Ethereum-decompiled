contract main {




// =====================  Runtime code  =====================


#
#  - escrowDots(address arg1, address arg2, bytes32 arg3, uint256 arg4)
#  - releaseDots(address arg1, address arg2, bytes32 arg3, uint256 arg4)
#  - bond(address arg1, bytes32 arg2, uint256 arg3)
#  - unbond(address arg1, bytes32 arg2, uint256 arg3)
#  - delegateBond(address arg1, address arg2, bytes32 arg3, uint256 arg4)
#  - returnDots(address arg1, address arg2, bytes32 arg3, uint256 arg4)
#
address owner;
address stor1;
address stor2;
address dbAddress;
uint256 stor3;
address stor4;
uint256 stor4;
uint256 stor5;
address arbiterAddress;
uint256 stor6;
address dispatchAddress;
uint256 stor7;

function db() {
    return address(dbAddress)
}

function arbiterAddress() {
    return address(arbiterAddress)
}

function owner() {
    return owner
}

function dispatchAddress() {
    return address(dispatchAddress)
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

function dotLimit(address arg1, bytes32 arg2) {
    require ext_code.size(address(stor4))
    call address(stor4).0xc1ca69c4 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function currentCostOfDot(address arg1, bytes32 arg2, uint256 arg3) {
    require ext_code.size(address(stor4))
    call address(stor4).0xecca1fad with:
         gas gas_remaining wei
        args address(arg1), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getIndexSize(address arg1) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x2fc94ba6 with:
         gas gas_remaining wei
        args sha3('holders', arg1, Mask(40, 216, 'oracleList') >> 216, mem[197 len 5])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getNumEscrow(address arg1, address arg2, bytes32 arg3) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x2ecb0d64 with:
         gas gas_remaining wei
        args sha3(arg2, Mask(144, 112, arg3) >> 112 >> 256, mem[270 len 14])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getEndpointBroker(address arg1, bytes32 arg2) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xa6ed563e with:
         gas gas_remaining wei
        args sha3('oracles', arg1, arg2, Mask(40, 216, 'broker') >> 216 >> 256, mem[257 len 1])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return address(ext_call.return_data[0])
}

function getOracleAddress(address arg1, uint256 arg2) {
    mem[169] = sha3('holders', arg1, Mask(40, 216, 'oracleList') >> 216, mem[197 len 5])
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0xe16e9340 with:
         gas gas_remaining wei
        args mem[169], arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return address(ext_call.return_data[0])
}

function getNumZap(address arg1, bytes32 arg2) {
    mem[222] = Mask(224, 0, arg2), Mask(16, 240, 'totalBound') >> 240 or Mask(16, 240, mem[222])
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x2ecb0d64 with:
         gas gas_remaining wei
        args sha3('totalBound', arg1, uint16(arg2), mem[222 len 30])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getZapBound(address arg1, bytes32 arg2) {
    mem[222] = Mask(224, 0, arg2), Mask(16, 240, 'totalBound') >> 240 or Mask(16, 240, mem[222])
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x2ecb0d64 with:
         gas gas_remaining wei
        args sha3('totalBound', arg1, uint16(arg2), mem[222 len 30])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getDotsIssued(address arg1, bytes32 arg2) {
    mem[223] = Mask(240, 0, arg2), Mask(8, 248, 'totalIssued') >> 248 or Mask(8, 248, mem[223])
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x2ecb0d64 with:
         gas gas_remaining wei
        args sha3('totalIssued', arg1, uint8(arg2), mem[223 len 31])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getBoundDots(address arg1, address arg2, bytes32 arg3) {
    mem[276] = uint64(arg3), 'holders', Mask(40, 120, arg1) >> 120 or Mask(96, 160, mem[276])
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x2ecb0d64 with:
         gas gas_remaining wei
        args sha3(arg2, Mask(96, 160, arg3) >> 160 >> 256, mem[276 len 20])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function isProviderInitialized(address arg1, address arg2) {
    mem[218] = arg2, Mask(48, 208, 'holders') >> 208 or Mask(48, 208, mem[218])
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x2ecb0d64 with:
         gas gas_remaining wei
        args sha3('holders', arg1, Mask(40, 216, 'initialized') >> 216, mem[218 len 26])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] == 1:
        return 1
    else:
        return 0
}

function calcZapForDots(address arg1, bytes32 arg2, uint256 arg3) {
    mem[223] = Mask(240, 0, arg2), Mask(8, 248, 'totalIssued') >> 248 or Mask(8, 248, mem[223])
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x2ecb0d64 with:
         gas gas_remaining wei
        args sha3('totalIssued', arg1, uint8(arg2), mem[223 len 31])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor4))
    call address(stor4).0x197d66d5 with:
         gas gas_remaining wei
        args address(arg1), arg2, ext_call.return_data[0] + 1, arg3 - 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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
    uint256(stor3) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3))
    require ext_code.size(stor2)
    call stor2.0x35817773 with:
         gas gas_remaining wei
        args Array(len=7, data='ARBITER')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor6) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor6))
    require ext_code.size(stor2)
    call stor2.0x35817773 with:
         gas gas_remaining wei
        args Array(len=8, data='DISPATCH')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor7) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor7))
    require ext_code.size(stor2)
    call stor2.0x35817773 with:
         gas gas_remaining wei
        args Array(len=9, data='ZAP_TOKEN')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor5 = ext_call.return_data[12 len 20] or Mask(96, 160, stor5)
    require ext_code.size(stor2)
    call stor2.0x35817773 with:
         gas gas_remaining wei
        args Array(len=12, data='CURRENT_COST')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor4) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor4))
}



}
