contract main {




// =====================  Runtime code  =====================


#
#  - endSubscriptionSubscriber(address arg1, bytes32 arg2)
#  - getSubscription(address arg1, address arg2, bytes32 arg3)
#  - initiateSubscription(address arg1, bytes32 arg2, bytes32[] arg3, uint256 arg4, uint64 arg5)
#  - endSubscriptionProvider(address arg1, bytes32 arg2)
#
address owner;
address stor1;
address stor2;
address stor3;
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

function passParams(address arg1, bytes32 arg2, bytes32[] arg3) {
    mem[(32 * arg3.length) + 224 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    emit ParamsPassed(arg2, Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 224 len (32 * arg3.length) - floor32(arg3.length)]), msg.sender, arg1);
}

function getPreBlockEnd(address arg1, address arg2, bytes32 arg3) {
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x2ecb0d64 with:
         gas gas_remaining wei
        args sha3('subscriptions', arg1, arg2, arg3, 'preBlockEnd')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return Mask(96, 0, ext_call.return_data[0])
}

function getDots(address arg1, address arg2, bytes32 arg3) {
    mem[281] = Mask(112, 0, arg3), 'dots', Mask(56, 200, 'subscriptions') >> 200 or Mask(56, 200, mem[281])
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x2ecb0d64 with:
         gas gas_remaining wei
        args sha3(arg1, arg2, Mask(88, 168, arg3) >> 168 >> 256, mem[281 len 25])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return uint64(ext_call.return_data[0])
}

function getBlockStart(address arg1, address arg2, bytes32 arg3) {
    mem[287] = address(arg3), 'blockStart', Mask(8, 248, 'subscriptions') >> 248 or Mask(8, 248, mem[287])
    require ext_code.size(address(dbAddress))
    call address(dbAddress).0x2ecb0d64 with:
         gas gas_remaining wei
        args sha3(arg1, arg2, Mask(88, 168, arg3) >> 168 >> 256, mem[287 len 31])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return Mask(96, 0, ext_call.return_data[0])
}

function updateDependencies() {
    if stor1 != msg.sender:
        revert with 0, 'Error: Coordinator Only Function'
    require ext_code.size(stor2)
    call stor2.0x35817773 with:
         gas gas_remaining wei
        args Array(len=7, data='BONDAGE')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor4) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor4))
    stor3 = address(bondageAddress)
    require ext_code.size(stor2)
    call stor2.0x35817773 with:
         gas gas_remaining wei
        args Array(len=8, data='DATABASE')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor5) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor5))
}



}
