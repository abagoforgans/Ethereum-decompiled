contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;
mapping of uint8 stor3;
mapping of uint8 stor4;
address sub_a0b8a77eAddress;
address _storageAddress;
address sub_7d104a65Address;
address sub_e60bf99bAddress;
uint256 _burnFee;
uint256 _mintFee;

function sub_42c94ff2(?) {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function sub_4732e5b6(?) {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function getMintFee() {
    return _mintFee
}

function sub_7d104a65(?) {
    return sub_7d104a65Address
}

function owner() {
    return owner
}

function sub_a0b8a77e(?) {
    return sub_a0b8a77eAddress
}

function getBurnFee() {
    return _burnFee
}

function sub_b22d614c(?) {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function sub_bb11c493(?) {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function _burnFee() {
    return _burnFee
}

function _storage() {
    return _storageAddress
}

function getFeeBeneficiary() {
    return sub_e60bf99bAddress
}

function sub_e60bf99b(?) {
    return sub_e60bf99bAddress
}

function _mintFee() {
    return _mintFee
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setBurnFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    _burnFee = arg1
    emit 0xd54296e3: arg1
}

function setMintFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    _mintFee = arg1
    emit MintFeeUpdated(arg1);
}

function setFeeBeneficiary(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_e60bf99bAddress = arg1
    emit 0x19c8a4f6: arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function deauthorizeBurnFulfiller(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not stor4[address(arg1)]:
        revert with 0, 'Only authorized burn fulfiller'
    stor4[address(arg1)] = 0
}

function deauthorizeMintRequester(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not stor1[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'User does not have mint request authorization'
    stor1[address(arg1)] = 0
}

function deauthorizeMintFulfiller(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not stor2[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'User does not have mint fulfill authorization'
    stor2[address(arg1)] = 0
}

function deauthorizeBurnRequester(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'User does not have burn request authorization'
    stor3[address(arg1)] = 0
}

function authorizeMintRequester(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if owner == arg1:
        revert with 0, 'User cannot be the owner'
    if stor1[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'User has mint request authorization'
    if stor2[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'User has mint fulfill authorization'
    stor1[address(arg1)] = 1
}

function authorizeMintFulfiller(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if owner == arg1:
        revert with 0, 'User cannot be the owner'
    if stor1[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'User has mint request authorization'
    if stor2[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'User has mint fulfill authorization'
    stor2[address(arg1)] = 1
}

function authorizeBurnRequester(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if owner == arg1:
        revert with 0, 'User cannot be the owner'
    if stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'User has burn request authorization'
    if stor4[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'User has burn fulfill authorization'
    stor3[address(arg1)] = 1
}

function authorizeBurnFulfiller(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if owner == arg1:
        revert with 0, 'User cannot be the owner'
    if stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'User has burn request authorization'
    if stor4[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'User has burn fulfill authorization'
    stor4[address(arg1)] = 1
}

function rejectMintRequest(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require ext_code.size(_storageAddress)
    staticcall _storageAddress.0xd8eee5e2 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 3
    if ext_call.return_data[0]:
        revert with 0, 'The mint request status must be new'
    if not stor2[msg.sender]:
        revert with 0, 'Only authorized mint fulfiller'
    require ext_code.size(_storageAddress)
    call _storageAddress.0x634c1c46 with:
         gas gas_remaining wei
        args arg1, 3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(_storageAddress)
    call _storageAddress.0x912275e2 with:
         gas gas_remaining wei
        args arg1, 96, msg.sender, 8, 0x72656a65637465720000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg2.length) + 128] = 0x5bef0be600000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + 324 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        require ext_code.size(_storageAddress)
        call _storageAddress with:
             gas gas_remaining wei
            args arg1, 96, 160, 10, 'rejectData', arg2.length, Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 324] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 356 len arg2.length % 32]
        require ext_code.size(_storageAddress)
        call _storageAddress with:
             gas gas_remaining wei
            args arg1, 96, 160, 10, 'rejectData', arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 324 len floor32(arg2.length) + -ceil32(arg2.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit MintRequestRejected(arg1);
}

function rejectBurnRequest(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require ext_code.size(_storageAddress)
    staticcall _storageAddress.0x9afcfba3 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 3
    if ext_call.return_data[0]:
        revert with 0, 'The burn request status must be new'
    if not stor4[msg.sender]:
        revert with 0, 'Only authorized burn fulfiller'
    require ext_code.size(_storageAddress)
    call _storageAddress.0x947af462 with:
         gas gas_remaining wei
        args arg1, 96, msg.sender, 8, 0x72656a65637465720000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(_storageAddress)
    call _storageAddress.0x47d1f2a6 with:
         gas gas_remaining wei
        args arg1, 3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg2.length) + 128] = 0x3c63d00000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + 324 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        require ext_code.size(_storageAddress)
        call _storageAddress with:
             gas gas_remaining wei
            args arg1, 96, 160, 10, 'rejectData', arg2.length, Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 324] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 356 len arg2.length % 32]
        require ext_code.size(_storageAddress)
        call _storageAddress with:
             gas gas_remaining wei
            args arg1, 96, 160, 10, 'rejectData', arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 324 len floor32(arg2.length) + -ceil32(arg2.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit BurnRequestRejected(arg1);
}

function cancelMintRequest(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require ext_code.size(_storageAddress)
    staticcall _storageAddress.0xd8eee5e2 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 3
    if ext_call.return_data[0]:
        revert with 0, 'The mint request status must be new'
    if not stor1[msg.sender]:
        revert with 0, 'Only authorized mint requester'
    require ext_code.size(_storageAddress)
    staticcall _storageAddress.0x6871d014 with:
            gas gas_remaining wei
           args arg1, 64, 9, 0xfe72657175657374657200000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Only authorized mint requester'
    require ext_code.size(_storageAddress)
    call _storageAddress.0x634c1c46 with:
         gas gas_remaining wei
        args arg1, 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg2.length) + 128] = 0x5bef0be600000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + 324 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        require ext_code.size(_storageAddress)
        call _storageAddress with:
             gas gas_remaining wei
            args arg1, 96, 160, 10, 'cancelData', arg2.length, Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 324] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 356 len arg2.length % 32]
        require ext_code.size(_storageAddress)
        call _storageAddress with:
             gas gas_remaining wei
            args arg1, 96, 160, 10, 'cancelData', arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 324 len floor32(arg2.length) + -ceil32(arg2.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit MintRequestCancelled(arg1);
}

function cancelBurnRequest(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require ext_code.size(_storageAddress)
    staticcall _storageAddress.0x9afcfba3 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 3
    if ext_call.return_data[0]:
        revert with 0, 'The burn request status must be new'
    if not stor3[msg.sender]:
        revert with 0, 'Only authorized burn requester'
    require ext_code.size(_storageAddress)
    staticcall _storageAddress.0x162bf1ee with:
            gas gas_remaining wei
           args arg1, 64, 9, 0xfe72657175657374657200000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Only authorized burn requester'
    require ext_code.size(_storageAddress)
    call _storageAddress.0x47d1f2a6 with:
         gas gas_remaining wei
        args arg1, 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg2.length) + 128] = 0x3c63d00000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + 324 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        require ext_code.size(_storageAddress)
        call _storageAddress with:
             gas gas_remaining wei
            args arg1, 96, 160, 10, 'cancelData', arg2.length, Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 324] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 356 len arg2.length % 32]
        require ext_code.size(_storageAddress)
        call _storageAddress with:
             gas gas_remaining wei
            args arg1, 96, 160, 10, 'cancelData', arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 324 len floor32(arg2.length) + -ceil32(arg2.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit BurnRequestCancelled(arg1);
}

function fulfillMintRequest(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require ext_code.size(_storageAddress)
    staticcall _storageAddress.0xd8eee5e2 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 3
    if ext_call.return_data[0]:
        revert with 0, 'The mint request status must be new'
    if not stor2[msg.sender]:
        revert with 0, 'Only authorized mint fulfiller'
    require ext_code.size(_storageAddress)
    call _storageAddress.0x634c1c46 with:
         gas gas_remaining wei
        args arg1, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(_storageAddress)
    call _storageAddress.0x912275e2 with:
         gas gas_remaining wei
        args arg1, 96, msg.sender, 9, 0x66756c66696c6c657200000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg2.length) + 128] = 0x5bef0be600000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + 324 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        require ext_code.size(_storageAddress)
        call _storageAddress with:
             gas gas_remaining wei
            args arg1, 96, 160, 11, 'fulfillData', arg2.length, Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 324] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 356 len arg2.length % 32]
        require ext_code.size(_storageAddress)
        call _storageAddress with:
             gas gas_remaining wei
            args arg1, 96, 160, 11, 'fulfillData', arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 324 len floor32(arg2.length) + -ceil32(arg2.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(_storageAddress)
    staticcall _storageAddress.0x6871d014 with:
            gas gas_remaining wei
           args arg1, 64, 11, 0x62656e65666963696172790000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(_storageAddress)
    staticcall _storageAddress.0x7b5a199e with:
            gas gas_remaining wei
           args arg1, 64, 6, 0x6ed9cf98f40000000000000000000000000000000000000000000000000 * 24 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_a0b8a77eAddress)
    call sub_a0b8a77eAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'fulfillMintRequest failed'
    emit MintRequestFulfilled(arg1);
}

function fulfillBurnRequest(uint256 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require ext_code.size(_storageAddress)
    staticcall _storageAddress.0x9afcfba3 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 3
    if ext_call.return_data[0]:
        revert with 0, 'The burn request status must be new'
    if not stor4[msg.sender]:
        revert with 0, 'Only authorized burn fulfiller'
    require ext_code.size(_storageAddress)
    call _storageAddress.0x947af462 with:
         gas gas_remaining wei
        args arg1, 96, msg.sender, 9, 0x66756c66696c6c657200000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(_storageAddress)
    call _storageAddress.0x47d1f2a6 with:
         gas gas_remaining wei
        args arg1, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg2.length) + 128] = 0x3c63d00000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + 324 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        require ext_code.size(_storageAddress)
        call _storageAddress with:
             gas gas_remaining wei
            args arg1, 96, 160, 11, 'fulfillData', arg2.length, Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 324] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 356 len arg2.length % 32]
        require ext_code.size(_storageAddress)
        call _storageAddress with:
             gas gas_remaining wei
            args arg1, 96, 160, 11, 'fulfillData', arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 324 len floor32(arg2.length) + -ceil32(arg2.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(_storageAddress)
    staticcall _storageAddress.0x162bf1ee with:
            gas gas_remaining wei
           args arg1, 64, 11, 0x62656e65666963696172790000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(_storageAddress)
    staticcall _storageAddress.0xac05e0f7 with:
            gas gas_remaining wei
           args arg1, 64, 6, 0x6ed9cf98f40000000000000000000000000000000000000000000000000 * 24 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_a0b8a77eAddress)
    call sub_a0b8a77eAddress.0x79cc6790 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'fulfillBurnRequest failed'
    emit BurnRequestFulfilled(arg1);
}

function createMintRequest(address arg1, uint256 arg2, string arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if not stor1[msg.sender]:
        revert with 0, 'Only authorized mint requester'
    if arg2 <= 0:
        revert with 0, 'Proxy amount cannot be zero'
    if _mintFee > 0:
        require ext_code.size(sub_7d104a65Address)
        call sub_7d104a65Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, sub_e60bf99bAddress, _mintFee
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Failed to charge UPT mint fee'
    require ext_code.size(_storageAddress)
    call _storageAddress.0xfbfb8b02 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(_storageAddress)
    call _storageAddress.0x912275e2 with:
         gas gas_remaining wei
        args ext_call.return_data[0], 96, address(arg1), 11, 0x62656e65666963696172790000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(_storageAddress)
    call _storageAddress.0x912275e2 with:
         gas gas_remaining wei
        args ext_call.return_data[0], 96, 0, 9, 0x66756c66696c6c657200000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(_storageAddress)
    call _storageAddress.0x912275e2 with:
         gas gas_remaining wei
        args ext_call.return_data[0], 96, 0, 8, 0x72656a65637465720000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(_storageAddress)
    call _storageAddress.0x912275e2 with:
         gas gas_remaining wei
        args ext_call.return_data[0], 96, msg.sender, 9, 0xfe72657175657374657200000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg3.length) + 128] = 0x5bef0be600000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 324 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        require ext_code.size(_storageAddress)
        call _storageAddress with:
             gas gas_remaining wei
            args ext_call.return_data[0], 96, 160, 11, 'requestData', arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 324] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 356 len arg3.length % 32]
        require ext_code.size(_storageAddress)
        call _storageAddress with:
             gas gas_remaining wei
            args ext_call.return_data[0], 96, 160, 11, 'requestData', arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 324 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(_storageAddress)
    call _storageAddress.0xc0f20299 with:
         gas gas_remaining wei
        args ext_call.return_data[0], 96, arg2, 6, 0x6ed9cf98f40000000000000000000000000000000000000000000000000 * 24 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit MintRequestCreated(ext_call.return_data[0]);
}

function createBurnRequest(address arg1, uint256 arg2, string arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if not stor3[msg.sender]:
        revert with 0, 'Only authorized burn requester'
    if arg2 <= 0:
        revert with 0, 'Proxy amount cannot be zero'
    if _burnFee > 0:
        require ext_code.size(sub_7d104a65Address)
        call sub_7d104a65Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, sub_e60bf99bAddress, _burnFee
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Failed to charge UPT burn fee'
    require ext_code.size(_storageAddress)
    call _storageAddress.0x3d8b41f3 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(_storageAddress)
    call _storageAddress.0x947af462 with:
         gas gas_remaining wei
        args ext_call.return_data[0], 96, address(arg1), 11, 0x62656e65666963696172790000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(_storageAddress)
    call _storageAddress.0x947af462 with:
         gas gas_remaining wei
        args ext_call.return_data[0], 96, 0, 9, 0x66756c66696c6c657200000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(_storageAddress)
    call _storageAddress.0x947af462 with:
         gas gas_remaining wei
        args ext_call.return_data[0], 96, 0, 8, 0x72656a65637465720000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(_storageAddress)
    call _storageAddress.0x947af462 with:
         gas gas_remaining wei
        args ext_call.return_data[0], 96, msg.sender, 9, 0xfe72657175657374657200000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg3.length) + 128] = 0x3c63d00000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 324 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        require ext_code.size(_storageAddress)
        call _storageAddress with:
             gas gas_remaining wei
            args ext_call.return_data[0], 96, 160, 11, 'requestData', arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 324] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 356 len arg3.length % 32]
        require ext_code.size(_storageAddress)
        call _storageAddress with:
             gas gas_remaining wei
            args ext_call.return_data[0], 96, 160, 11, 'requestData', arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 324 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(_storageAddress)
    call _storageAddress.0x48a15250 with:
         gas gas_remaining wei
        args ext_call.return_data[0], 96, arg2, 6, 0x6ed9cf98f40000000000000000000000000000000000000000000000000 * 24 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit BurnRequestCreated(ext_call.return_data[0]);
}



}
