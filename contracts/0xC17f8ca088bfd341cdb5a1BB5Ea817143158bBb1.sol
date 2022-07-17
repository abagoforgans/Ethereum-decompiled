contract main {




// =====================  Runtime code  =====================


#
#  - requestAuditWithPriceHint(string arg1, uint256 arg2, uint256 arg3)
#  - getNextAuditRequest()
#
uint8 stor0; offset 160
address owner;
mapping of uint256 assignedRequestCount;
mapping of uint256 stor2;
mapping of uint256 stor3;
mapping of uint256 stor4;
mapping of struct sub_32143a35;
address auditDataAddress;
address sub_0c36eb21Address;
address sub_c7330dd4Address;
address tokenEscrowAddress;

function sub_0c36eb21(?) {
    return sub_0c36eb21Address
}

function sub_32143a35(?) {
    return sub_32143a35[arg1].field_0
}

function paused() {
    return bool(stor0)
}

function auditData() {
    return auditDataAddress
}

function owner() {
    return owner
}

function tokenEscrow() {
    return tokenEscrowAddress
}

function sub_c7330dd4(?) {
    return sub_c7330dd4Address
}

function assignedRequestCount(address arg1) {
    return assignedRequestCount[arg1]
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender == owner
    require stor0
    stor0 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor0
    stor0 = 1
    emit Pause()
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function unstake() {
    require ext_code.size(tokenEscrowAddress)
    call tokenEscrowAddress.0x51cff8d9 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function getMinAuditStake() {
    require ext_code.size(tokenEscrowAddress)
    call tokenEscrowAddress.0xc7d1b098 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getMaxAssignedRequests() {
    require ext_code.size(auditDataAddress)
    call auditDataAddress.0xf773a3fb with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getAuditTimeoutInBlocks() {
    require ext_code.size(auditDataAddress)
    call auditDataAddress.0xde42f045 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getMinAuditPrice(address arg1) {
    require ext_code.size(auditDataAddress)
    call auditDataAddress.0xfcb0a7ad with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function totalStakedFor(address arg1) {
    require ext_code.size(tokenEscrowAddress)
    call tokenEscrowAddress.0xe3a9db1a with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function hasEnoughStake(address arg1) {
    require ext_code.size(tokenEscrowAddress)
    call tokenEscrowAddress.'ys]T' with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function isPoliceNode(address arg1) {
    require ext_code.size(sub_c7330dd4Address)
    call sub_c7330dd4Address.0xe4ca784b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function hasAvailableRewards() {
    require ext_code.size(sub_c7330dd4Address)
    call sub_c7330dd4Address.0x4394aaad with:
         gas gas_remaining wei
        args msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return bool(ext_call.return_data[0])
}

function getNextAvailableReward(uint256 arg1) {
    require ext_code.size(sub_c7330dd4Address)
    call sub_c7330dd4Address.0x4394aaad with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return bool(ext_call.return_data[0]), ext_call.return_data[32]
}

function getNextPrice(uint256 arg1) {
    require ext_code.size(0x7806f843f4cda94cef1d69042a2c22815274d * 3600)
    delegate 0x697e2033ba28c1cc9e28d94ca910ca53a978aad0.0x574047ac with:
         gas gas_remaining wei
        args 2, arg1, 1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return delegate.return_data[32]
}

function getNextAssignedRequest(uint256 arg1) {
    require ext_code.size(0x7806f843f4cda94cef1d69042a2c22815274d * 3600)
    delegate 0x697e2033ba28c1cc9e28d94ca910ca53a978aad0.0x574047ac with:
         gas gas_remaining wei
        args 4, arg1, 1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return delegate.return_data[32]
}

function findPrecedingPrice(uint256 arg1) {
    require ext_code.size(0x7806f843f4cda94cef1d69042a2c22815274d * 3600)
    delegate 0x697e2033ba28c1cc9e28d94ca910ca53a978aad0.'5*qK' with:
         gas gas_remaining wei
        args Mask(224, 0, '5*qK'), 2, 0, arg1, 1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function getNextAuditByPrice(uint256 arg1, uint256 arg2) {
    require ext_code.size(0x7806f843f4cda94cef1d69042a2c22815274d * 3600)
    delegate 0x697e2033ba28c1cc9e28d94ca910ca53a978aad0.0x574047ac with:
         gas gas_remaining wei
        args sha3(arg1, 3), arg2, 1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return delegate.return_data[32]
}

function isAuditFinished(uint256 arg1) {
    require ext_code.size(auditDataAddress)
    call auditDataAddress.getAuditState(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 7
    if ext_call.return_data[0] == 4:
        return True
    require ext_call.return_data[0] <= 7
    return (ext_call.return_data[0] == 5)
}

function setAuditNodePrice(uint256 arg1) {
    require ext_code.size(auditDataAddress)
    call auditDataAddress.0xfc0c546a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 <= ext_call.return_data[0]
    require ext_code.size(auditDataAddress)
    call auditDataAddress.0xd5c21c4f with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit LogAuditNodePriceChanged(msg.sender, arg1);
}

function getReport(uint256 arg1) {
    mem[96] = 0x4e7f9b1900000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(sub_0c36eb21Address)
    call sub_0c36eb21Address.0x4e7f9b19 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 and mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_4 + 96]
    _8 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 160 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
    if not _8 % 32:
        return 32, mem[ceil32(return_data.size) + 128 len _8 + 32]
    mem[floor32(_8) + ceil32(return_data.size) + 160] = mem[floor32(_8) + ceil32(return_data.size) + -(_8 % 32) + 192 len _8 % 32]
    return 32, mem[ceil32(return_data.size) + 128 len floor32(_8) + 64]
}

function stake(uint256 arg1) {
    require ext_code.size(auditDataAddress)
    call auditDataAddress.0xfc0c546a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(auditDataAddress)
    call auditDataAddress.0xfc0c546a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args tokenEscrowAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenEscrowAddress)
    call tokenEscrowAddress.0x47e7ef24 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function getNextPoliceAssignment() {
    mem[96] = 0x8826db7a00000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    require ext_code.size(sub_c7330dd4Address)
    call sub_c7330dd4Address.0x8826db7a with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 160
    _5 = uint32(msg.sender), mem[132 len 28]
    _6 = mem[160]
    _7 = mem[192]
    require mem[192] <= 4294967296
    require mem[192] + 32 <= return_data.size
    require return_data.size >= mem[mem[192] + 96] + mem[192] + 32 and mem[mem[192] + 96] <= 4294967296
    _9 = mem[224]
    mem[ceil32(return_data.size) + 96] = bool(mem[96 len 4], Mask(224, 32, msg.sender) >> 32)
    mem[ceil32(return_data.size) + 128] = _5
    mem[ceil32(return_data.size) + 160] = _6
    mem[ceil32(return_data.size) + 224] = _9
    mem[ceil32(return_data.size) + 192] = 160
    mem[ceil32(return_data.size) + 256] = mem[_7 + 96]
    _12 = mem[_7 + 96]
    if 0 >= mem[_7 + 96]:
        if not mem[_7 + 96] % 32:
            return mem[ceil32(return_data.size) + 96], _5, _6, 160, _9, mem[ceil32(return_data.size) + 256 len mem[_7 + 96] + 32]
        mem[floor32(mem[_7 + 96]) + ceil32(return_data.size) + 288] = mem[floor32(mem[_7 + 96]) + ceil32(return_data.size) + -(mem[_7 + 96] % 32) + 320 len mem[_7 + 96] % 32]
    else:
        mem[ceil32(return_data.size) + 288] = mem[_7 + 128]
        mem[ceil32(return_data.size) + 320 len floor32(_12 - 1)] = mem[_7 + 160 len floor32(_12 - 1)]
        if not _12 % 32:
            return mem[ceil32(return_data.size) + 96], _5, _6, 160, _9, mem[ceil32(return_data.size) + 256 len _12 + 32]
        mem[floor32(_12) + ceil32(return_data.size) + 288] = mem[floor32(_12) + ceil32(return_data.size) + -(_12 % 32) + 320 len _12 % 32]
    return mem[ceil32(return_data.size) + 96], _5, _6, 160, _9, mem[ceil32(return_data.size) + 256 len floor32(_12) + 64]
}

function claimReward(uint256 arg1) {
    require ext_code.size(sub_c7330dd4Address)
    call sub_c7330dd4Address.0x9c40478c with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(sub_c7330dd4Address)
    call sub_c7330dd4Address.0x94558862 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_c7330dd4Address)
    call sub_c7330dd4Address.0x309945ba with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(auditDataAddress)
    call auditDataAddress.0xc15185f5 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= ext_call.return_data[0]
    require ext_code.size(auditDataAddress)
    call auditDataAddress.0xf8efc03e with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(auditDataAddress)
    call auditDataAddress.0xfc0c546a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x23b872dd with:
         gas gas_remaining wei
        args auditDataAddress, msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit LogPayAuditor(arg1, msg.sender, 0);
    return 1
}

function anyRequestAvailable() {
    require ext_code.size(tokenEscrowAddress)
    call tokenEscrowAddress.'ys]T' with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 5
    require ext_code.size(0x7806f843f4cda94cef1d69042a2c22815274d * 3600)
    delegate 0x697e2033ba28c1cc9e28d94ca910ca53a978aad0.0x53d00bd4 with:
         gas gas_remaining wei
        args 2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not delegate.return_data[0]:
        return 2
    require ext_code.size(auditDataAddress)
    call auditDataAddress.0xf773a3fb with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if assignedRequestCount[msg.sender] >= ext_call.return_data[0]:
        return 3
    require ext_code.size(auditDataAddress)
    call auditDataAddress.0xfcb0a7ad with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x7806f843f4cda94cef1d69042a2c22815274d * 3600)
    delegate 0x697e2033ba28c1cc9e28d94ca910ca53a978aad0.0x574047ac with:
         gas gas_remaining wei
        args 2, 0, 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if delegate.return_data[32] >= ext_call.return_data[0]:
        require ext_code.size(0x7806f843f4cda94cef1d69042a2c22815274d * 3600)
        delegate 0x697e2033ba28c1cc9e28d94ca910ca53a978aad0.0x574047ac with:
             gas gas_remaining wei
            args sha3(delegate.return_data[32], 3), 0, 1
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if delegate.return_data[32]:
            return 1
    return 4
}

function claimRewards() payable {
    mem[64] = 96
    require not msg.value
    require ext_code.size(sub_c7330dd4Address)
    call sub_c7330dd4Address.0x4394aaad with:
         gas gas_remaining wei
        args msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0]
    mem[96] = 0xdeaf3f800000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    mem[132] = 0
    require ext_code.size(sub_c7330dd4Address)
    call sub_c7330dd4Address.mem[var47004 len 4] with:
         gas gas_remaining wei
        args mem[var47004 + 4 len var47005 - 4]
    mem[var47006 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not mem[var51002]:
        return 0
    mem[96] = 0x309945ba00000000000000000000000000000000000000000000000000000000
    mem[100] = var55001
    require ext_code.size(sub_c7330dd4Address)
    call sub_c7330dd4Address.mem[var57004 len 4] with:
         gas gas_remaining wei
        args mem[var57004 + 4 len var57005 - 4]
    mem[var57006] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0xc15185f500000000000000000000000000000000000000000000000000000000
    mem[100] = var61005
    require ext_code.size(auditDataAddress)
    call auditDataAddress.mem[var63004 len 4] with:
         gas gas_remaining wei
        args mem[var63004 + 4 len var63005 - 4]
    mem[var63006] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require var69001 <= var69002
    mem[96] = 0xf8efc03e00000000000000000000000000000000000000000000000000000000
    mem[100] = var75001
    require ext_code.size(auditDataAddress)
    call auditDataAddress.mem[var77004 len 4] with:
         gas gas_remaining wei
        args mem[var77004 + 4 len var77005 - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96] = 0xfc0c546a00000000000000000000000000000000000000000000000000000000
    require ext_code.size(auditDataAddress)
    call auditDataAddress.mem[var81004 len 4] with:
         gas gas_remaining wei
        args mem[var81004 + 4 len var81005 - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    # nil
}

function myMostRecentAssignedAudit() {
    require ext_code.size(auditDataAddress)
    call auditDataAddress.0xe0ebdbff with:
         gas gas_remaining wei
        args sub_32143a35[msg.sender].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x843e240e00000000000000000000000000000000000000000000000000000000
    mem[100] = sub_32143a35[msg.sender].field_0
    require ext_code.size(auditDataAddress)
    call auditDataAddress.0x843e240e with:
         gas gas_remaining wei
        args sub_32143a35[msg.sender].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _9 = mem[96 len 4], sub_32143a35[msg.sender].field_32
    require mem[96 len 4], sub_32143a35[msg.sender].field_32 <= 4294967296
    require mem[96 len 4], sub_32143a35[msg.sender].field_32 + 32 <= return_data.size
    require return_data.size >= mem[mem[96 len 4], sub_32143a35[msg.sender].field_32 + 96] + mem[96 len 4], sub_32143a35[msg.sender].field_32 + 32 and mem[mem[96 len 4], sub_32143a35[msg.sender].field_32 + 96] <= 4294967296
    require ext_code.size(auditDataAddress)
    call auditDataAddress.0xc15185f5 with:
         gas gas_remaining wei
        args sub_32143a35[msg.sender].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(auditDataAddress)
    call auditDataAddress.0x2d4194c7 with:
         gas gas_remaining wei
        args sub_32143a35[msg.sender].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = sub_32143a35[msg.sender].field_0
    mem[ceil32(return_data.size) + 128] = address(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 160] = 160
    mem[ceil32(return_data.size) + 256] = mem[_9 + 96]
    _21 = mem[_9 + 96]
    mem[ceil32(return_data.size) + 288 len ceil32(mem[_9 + 96])] = mem[_9 + 128 len ceil32(mem[_9 + 96])]
    if not _21 % 32:
        return sub_32143a35[msg.sender].field_0, 
               address(ext_call.return_data[0]),
               160,
               ext_call.return_data[0],
               ext_call.return_data[0],
               mem[ceil32(return_data.size) + 256 len _21 + 32]
    mem[floor32(_21) + ceil32(return_data.size) + 288] = mem[floor32(_21) + ceil32(return_data.size) + -(_21 % 32) + 320 len _21 % 32]
    return sub_32143a35[msg.sender].field_0, 
           address(ext_call.return_data[0]),
           160,
           ext_call.return_data[0],
           ext_call.return_data[0],
           mem[ceil32(return_data.size) + 256 len floor32(_21) + 64]
}

function submitPoliceReport(uint256 arg1, bytes arg2, bool arg3) {
    require ext_code.size(sub_c7330dd4Address)
    call sub_c7330dd4Address.0xe4ca784b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(auditDataAddress)
    call auditDataAddress.0x3c9a5d59 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_c7330dd4Address)
    call sub_c7330dd4Address.0x6afef23f with:
         gas gas_remaining wei
        args msg.sender, address(ext_call.return_data[0]), arg1, Array(len=arg2.length, data=arg2[all]), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[0]:
        emit LogPoliceAuditFinished(arg1, msg.sender, Array(len=arg2.length, data=arg2[all]), arg3);
    if ext_call.return_data[32]:
        require ext_code.size(sub_c7330dd4Address)
        call sub_c7330dd4Address.0x309945ba with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(auditDataAddress)
        call auditDataAddress.0xc15185f5 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= ext_call.return_data[0]
        require ext_code.size(auditDataAddress)
        call auditDataAddress.0xf8efc03e with:
             gas gas_remaining wei
            args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(auditDataAddress)
        call auditDataAddress.0xfc0c546a with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x23b872dd with:
             gas gas_remaining wei
            args auditDataAddress, sub_c7330dd4Address, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_call.return_data[64] >= 0
        require ext_code.size(sub_c7330dd4Address)
        call sub_c7330dd4Address.0x641446eb with:
             gas gas_remaining wei
            args ext_call.return_data[64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return bool(ext_call.return_data[0])
}

function refund(uint256 arg1) {
    require ext_code.size(auditDataAddress)
    call auditDataAddress.getAuditState(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 7
    if ext_call.return_data[0] != 1:
        require ext_call.return_data[0] <= 7
        if ext_call.return_data[0] != 2:
            require ext_call.return_data[0] <= 7
            if ext_call.return_data[0] != 6:
                require ext_call.return_data[0] <= 7
                emit LogRefundInvalidState(arg1, uint8(ext_call.return_data[0]));
                return 0
    require ext_code.size(auditDataAddress)
    call auditDataAddress.0xe0ebdbff with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        emit LogRefundInvalidRequestor(arg1, msg.sender);
        return 0
    require ext_code.size(auditDataAddress)
    call auditDataAddress.0xde42f045 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(auditDataAddress)
    call auditDataAddress.0x630eb125 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_call.return_data[0] <= 7
    if ext_call.return_data[0] == 2:
        if 2 * ext_call.return_data[0] >= block.number:
            emit LogRefundInvalidFundsLocked(arg1, block.number, 2 * ext_call.return_data[0]);
            return 0
        if arg1:
            if stor4[arg1][0]:
                stor4[stor4[arg1][1]][0] = stor4[arg1][0]
                stor4[stor4[arg1][0]][1] = stor4[arg1][1]
                stor4[arg1][0] = 0
                stor4[arg1][1] = 0
            else:
                if stor4[arg1][1]:
                    stor4[stor4[arg1][1]][0] = stor4[arg1][0]
                    stor4[stor4[arg1][0]][1] = stor4[arg1][1]
                    stor4[arg1][0] = 0
                    stor4[arg1][1] = 0
                else:
                    if arg1 == stor4[0][1]:
                        stor4[stor4[arg1][1]][0] = stor4[arg1][0]
                        stor4[stor4[arg1][0]][1] = stor4[arg1][1]
                        stor4[arg1][0] = 0
                        stor4[arg1][1] = 0
        require ext_code.size(auditDataAddress)
        call auditDataAddress.0x3c9a5d59 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 1 <= assignedRequestCount[ext_call.return_data[12 len 20]]
        require ext_code.size(auditDataAddress)
        call auditDataAddress.0x3c9a5d59 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        assignedRequestCount[ext_call.return_data[12 len 20]]--
    else:
        require ext_call.return_data[0] <= 7
        if ext_call.return_data[0] == 1:
            require ext_code.size(auditDataAddress)
            call auditDataAddress.0xc15185f5 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x7806f843f4cda94cef1d69042a2c22815274d * 3600)
            delegate 0x697e2033ba28c1cc9e28d94ca910ca53a978aad0.0xf593633c with:
                 gas gas_remaining wei
                args 2, ext_call.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require delegate.return_data[0]
            require ext_code.size(0x7806f843f4cda94cef1d69042a2c22815274d * 3600)
            delegate 0x697e2033ba28c1cc9e28d94ca910ca53a978aad0.0xf593633c with:
                 gas gas_remaining wei
                args sha3(ext_call.return_data[0], 3), arg1
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require delegate.return_data[0]
            if arg1:
                if stor3[ext_call.return_data[0]][arg1][0]:
                    stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][arg1][1]][0] = stor3[ext_call.return_data[0]][arg1][0]
                    stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][arg1][0]][1] = stor3[ext_call.return_data[0]][arg1][1]
                    stor3[ext_call.return_data[0]][arg1][0] = 0
                    stor3[ext_call.return_data[0]][arg1][1] = 0
                else:
                    if stor3[ext_call.return_data[0]][arg1][1]:
                        stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][arg1][1]][0] = stor3[ext_call.return_data[0]][arg1][0]
                        stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][arg1][0]][1] = stor3[ext_call.return_data[0]][arg1][1]
                        stor3[ext_call.return_data[0]][arg1][0] = 0
                        stor3[ext_call.return_data[0]][arg1][1] = 0
                    else:
                        if arg1 == stor3[ext_call.return_data[0]][0][1]:
                            stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][arg1][1]][0] = stor3[ext_call.return_data[0]][arg1][0]
                            stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][arg1][0]][1] = stor3[ext_call.return_data[0]][arg1][1]
                            stor3[ext_call.return_data[0]][arg1][0] = 0
                            stor3[ext_call.return_data[0]][arg1][1] = 0
            require ext_code.size(0x7806f843f4cda94cef1d69042a2c22815274d * 3600)
            delegate 0x697e2033ba28c1cc9e28d94ca910ca53a978aad0.0x53d00bd4 with:
                 gas gas_remaining wei
                args sha3(ext_call.return_data[0], 3)
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not delegate.return_data[0]:
                if ext_call.return_data[0]:
                    if stor2[ext_call.return_data[0]][0]:
                        stor2[stor2[ext_call.return_data[0]][1]][0] = stor2[ext_call.return_data[0]][0]
                        stor2[stor2[ext_call.return_data[0]][0]][1] = stor2[ext_call.return_data[0]][1]
                        stor2[ext_call.return_data[0]][0] = 0
                        stor2[ext_call.return_data[0]][1] = 0
                    else:
                        if stor2[ext_call.return_data[0]][1]:
                            stor2[stor2[ext_call.return_data[0]][1]][0] = stor2[ext_call.return_data[0]][0]
                            stor2[stor2[ext_call.return_data[0]][0]][1] = stor2[ext_call.return_data[0]][1]
                            stor2[ext_call.return_data[0]][0] = 0
                            stor2[ext_call.return_data[0]][1] = 0
                        else:
                            if ext_call.return_data[0] == stor2[0][1]:
                                stor2[stor2[ext_call.return_data[0]][1]][0] = stor2[ext_call.return_data[0]][0]
                                stor2[stor2[ext_call.return_data[0]][0]][1] = stor2[ext_call.return_data[0]][1]
                                stor2[ext_call.return_data[0]][0] = 0
                                stor2[ext_call.return_data[0]][1] = 0
    require ext_code.size(auditDataAddress)
    call auditDataAddress.0x89afa0ec with:
         gas gas_remaining wei
        args arg1, 3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(auditDataAddress)
    call auditDataAddress.0xc15185f5 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit LogRefund(arg1, address(ext_call.return_data[0]), ext_call.return_data[0]);
    require ext_code.size(auditDataAddress)
    call auditDataAddress.0xf8efc03e with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(auditDataAddress)
    call auditDataAddress.0xfc0c546a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x23b872dd with:
         gas gas_remaining wei
        args auditDataAddress, address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return 1
}

function requestAudit(string arg1, uint256 arg2) {
    require not stor0
    require arg2 > 0
    require ext_code.size(auditDataAddress)
    call auditDataAddress.0xfc0c546a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, auditDataAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(auditDataAddress)
    call auditDataAddress.0x23d2691b with:
         gas gas_remaining wei
        args msg.sender, Array(len=arg1.length, data=arg1[all]), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(auditDataAddress)
    call auditDataAddress.0xc15185f5 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x7806f843f4cda94cef1d69042a2c22815274d * 3600)
    delegate 0x697e2033ba28c1cc9e28d94ca910ca53a978aad0.0xf593633c with:
         gas gas_remaining wei
        args 2, ext_call.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0]:
        if not stor3[ext_call.return_data[0]][ext_call.return_data[0]][0]:
            if not stor3[ext_call.return_data[0]][ext_call.return_data[0]][1]:
                if ext_call.return_data[0] != stor3[ext_call.return_data[0]][0][1]:
                    if stor3[ext_call.return_data[0]][0][0]:
                        stor3[ext_call.return_data[0]][ext_call.return_data[0]][1] = 0
                        stor3[ext_call.return_data[0]][0][0] = ext_call.return_data[0]
                        stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][0][0]][1] = ext_call.return_data[0]
                        stor3[ext_call.return_data[0]][ext_call.return_data[0]][0] = stor3[ext_call.return_data[0]][0][0]
                    else:
                        if stor3[ext_call.return_data[0]][0][1]:
                            stor3[ext_call.return_data[0]][ext_call.return_data[0]][1] = 0
                            stor3[ext_call.return_data[0]][0][0] = ext_call.return_data[0]
                            stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][0][0]][1] = ext_call.return_data[0]
                            stor3[ext_call.return_data[0]][ext_call.return_data[0]][0] = stor3[ext_call.return_data[0]][0][0]
                        else:
                            if 0 == stor3[ext_call.return_data[0]][0][1]:
                                stor3[ext_call.return_data[0]][ext_call.return_data[0]][1] = 0
                                stor3[ext_call.return_data[0]][0][0] = ext_call.return_data[0]
                                stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][0][0]][1] = ext_call.return_data[0]
                                stor3[ext_call.return_data[0]][ext_call.return_data[0]][0] = stor3[ext_call.return_data[0]][0][0]
    else:
        require ext_code.size(0x7806f843f4cda94cef1d69042a2c22815274d * 3600)
        delegate 0x697e2033ba28c1cc9e28d94ca910ca53a978aad0.0xf593633c with:
             gas gas_remaining wei
            args 2, 0
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x7806f843f4cda94cef1d69042a2c22815274d * 3600)
        delegate 0x697e2033ba28c1cc9e28d94ca910ca53a978aad0.'5*qK' with:
             gas gas_remaining wei
            args 2, 0, ext_call.return_data[0], 1
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if stor2[ext_call.return_data[0]][0]:
            if not stor3[ext_call.return_data[0]][ext_call.return_data[0]][0]:
                if not stor3[ext_call.return_data[0]][ext_call.return_data[0]][1]:
                    if ext_call.return_data[0] != stor3[ext_call.return_data[0]][0][1]:
                        if stor3[ext_call.return_data[0]][0][0]:
                            stor3[ext_call.return_data[0]][ext_call.return_data[0]][1] = 0
                            stor3[ext_call.return_data[0]][0][0] = ext_call.return_data[0]
                            stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][0][0]][1] = ext_call.return_data[0]
                            stor3[ext_call.return_data[0]][ext_call.return_data[0]][0] = stor3[ext_call.return_data[0]][0][0]
                        else:
                            if stor3[ext_call.return_data[0]][0][1]:
                                stor3[ext_call.return_data[0]][ext_call.return_data[0]][1] = 0
                                stor3[ext_call.return_data[0]][0][0] = ext_call.return_data[0]
                                stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][0][0]][1] = ext_call.return_data[0]
                                stor3[ext_call.return_data[0]][ext_call.return_data[0]][0] = stor3[ext_call.return_data[0]][0][0]
                            else:
                                if 0 == stor3[ext_call.return_data[0]][0][1]:
                                    stor3[ext_call.return_data[0]][ext_call.return_data[0]][1] = 0
                                    stor3[ext_call.return_data[0]][0][0] = ext_call.return_data[0]
                                    stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][0][0]][1] = ext_call.return_data[0]
                                    stor3[ext_call.return_data[0]][ext_call.return_data[0]][0] = stor3[ext_call.return_data[0]][0][0]
        else:
            if stor2[ext_call.return_data[0]][1]:
                if not stor3[ext_call.return_data[0]][ext_call.return_data[0]][0]:
                    if not stor3[ext_call.return_data[0]][ext_call.return_data[0]][1]:
                        if ext_call.return_data[0] != stor3[ext_call.return_data[0]][0][1]:
                            if stor3[ext_call.return_data[0]][0][0]:
                                stor3[ext_call.return_data[0]][ext_call.return_data[0]][1] = 0
                                stor3[ext_call.return_data[0]][0][0] = ext_call.return_data[0]
                                stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][0][0]][1] = ext_call.return_data[0]
                                stor3[ext_call.return_data[0]][ext_call.return_data[0]][0] = stor3[ext_call.return_data[0]][0][0]
                            else:
                                if stor3[ext_call.return_data[0]][0][1]:
                                    stor3[ext_call.return_data[0]][ext_call.return_data[0]][1] = 0
                                    stor3[ext_call.return_data[0]][0][0] = ext_call.return_data[0]
                                    stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][0][0]][1] = ext_call.return_data[0]
                                    stor3[ext_call.return_data[0]][ext_call.return_data[0]][0] = stor3[ext_call.return_data[0]][0][0]
                                else:
                                    if 0 == stor3[ext_call.return_data[0]][0][1]:
                                        stor3[ext_call.return_data[0]][ext_call.return_data[0]][1] = 0
                                        stor3[ext_call.return_data[0]][0][0] = ext_call.return_data[0]
                                        stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][0][0]][1] = ext_call.return_data[0]
                                        stor3[ext_call.return_data[0]][ext_call.return_data[0]][0] = stor3[ext_call.return_data[0]][0][0]
            else:
                if ext_call.return_data[0] == stor2[0][1]:
                    if not stor3[ext_call.return_data[0]][ext_call.return_data[0]][0]:
                        if not stor3[ext_call.return_data[0]][ext_call.return_data[0]][1]:
                            if ext_call.return_data[0] != stor3[ext_call.return_data[0]][0][1]:
                                if stor3[ext_call.return_data[0]][0][0]:
                                    stor3[ext_call.return_data[0]][ext_call.return_data[0]][1] = 0
                                    stor3[ext_call.return_data[0]][0][0] = ext_call.return_data[0]
                                    stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][0][0]][1] = ext_call.return_data[0]
                                    stor3[ext_call.return_data[0]][ext_call.return_data[0]][0] = stor3[ext_call.return_data[0]][0][0]
                                else:
                                    if stor3[ext_call.return_data[0]][0][1]:
                                        stor3[ext_call.return_data[0]][ext_call.return_data[0]][1] = 0
                                        stor3[ext_call.return_data[0]][0][0] = ext_call.return_data[0]
                                        stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][0][0]][1] = ext_call.return_data[0]
                                        stor3[ext_call.return_data[0]][ext_call.return_data[0]][0] = stor3[ext_call.return_data[0]][0][0]
                                    else:
                                        if 0 == stor3[ext_call.return_data[0]][0][1]:
                                            stor3[ext_call.return_data[0]][ext_call.return_data[0]][1] = 0
                                            stor3[ext_call.return_data[0]][0][0] = ext_call.return_data[0]
                                            stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][0][0]][1] = ext_call.return_data[0]
                                            stor3[ext_call.return_data[0]][ext_call.return_data[0]][0] = stor3[ext_call.return_data[0]][0][0]
                else:
                    if stor2[delegate.return_data[0]][0]:
                        stor2[ext_call.return_data[0]][1] = delegate.return_data[0]
                        stor2[delegate.return_data[0]][0] = ext_call.return_data[0]
                        stor2[stor2[delegate.return_data[0]][0]][1] = ext_call.return_data[0]
                        stor2[ext_call.return_data[0]][0] = stor2[delegate.return_data[0]][0]
                        if not stor3[ext_call.return_data[0]][ext_call.return_data[0]][0]:
                            if not stor3[ext_call.return_data[0]][ext_call.return_data[0]][1]:
                                if ext_call.return_data[0] != stor3[ext_call.return_data[0]][0][1]:
                                    if stor3[ext_call.return_data[0]][0][0]:
                                        stor3[ext_call.return_data[0]][ext_call.return_data[0]][1] = 0
                                        stor3[ext_call.return_data[0]][0][0] = ext_call.return_data[0]
                                        stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][0][0]][1] = ext_call.return_data[0]
                                        stor3[ext_call.return_data[0]][ext_call.return_data[0]][0] = stor3[ext_call.return_data[0]][0][0]
                                    else:
                                        if stor3[ext_call.return_data[0]][0][1]:
                                            stor3[ext_call.return_data[0]][ext_call.return_data[0]][1] = 0
                                            stor3[ext_call.return_data[0]][0][0] = ext_call.return_data[0]
                                            stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][0][0]][1] = ext_call.return_data[0]
                                            stor3[ext_call.return_data[0]][ext_call.return_data[0]][0] = stor3[ext_call.return_data[0]][0][0]
                                        else:
                                            if 0 == stor3[ext_call.return_data[0]][0][1]:
                                                stor3[ext_call.return_data[0]][ext_call.return_data[0]][1] = 0
                                                stor3[ext_call.return_data[0]][0][0] = ext_call.return_data[0]
                                                stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][0][0]][1] = ext_call.return_data[0]
                                                stor3[ext_call.return_data[0]][ext_call.return_data[0]][0] = stor3[ext_call.return_data[0]][0][0]
                    else:
                        if stor2[delegate.return_data[0]][1]:
                            stor2[ext_call.return_data[0]][1] = delegate.return_data[0]
                            stor2[delegate.return_data[0]][0] = ext_call.return_data[0]
                            stor2[stor2[delegate.return_data[0]][0]][1] = ext_call.return_data[0]
                            stor2[ext_call.return_data[0]][0] = stor2[delegate.return_data[0]][0]
                            if not stor3[ext_call.return_data[0]][ext_call.return_data[0]][0]:
                                if not stor3[ext_call.return_data[0]][ext_call.return_data[0]][1]:
                                    if ext_call.return_data[0] != stor3[ext_call.return_data[0]][0][1]:
                                        if stor3[ext_call.return_data[0]][0][0]:
                                            stor3[ext_call.return_data[0]][ext_call.return_data[0]][1] = 0
                                            stor3[ext_call.return_data[0]][0][0] = ext_call.return_data[0]
                                            stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][0][0]][1] = ext_call.return_data[0]
                                            stor3[ext_call.return_data[0]][ext_call.return_data[0]][0] = stor3[ext_call.return_data[0]][0][0]
                                        else:
                                            if stor3[ext_call.return_data[0]][0][1]:
                                                stor3[ext_call.return_data[0]][ext_call.return_data[0]][1] = 0
                                                stor3[ext_call.return_data[0]][0][0] = ext_call.return_data[0]
                                                stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][0][0]][1] = ext_call.return_data[0]
                                                stor3[ext_call.return_data[0]][ext_call.return_data[0]][0] = stor3[ext_call.return_data[0]][0][0]
                                            else:
                                                if 0 == stor3[ext_call.return_data[0]][0][1]:
                                                    stor3[ext_call.return_data[0]][ext_call.return_data[0]][1] = 0
                                                    stor3[ext_call.return_data[0]][0][0] = ext_call.return_data[0]
                                                    stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][0][0]][1] = ext_call.return_data[0]
                                                    stor3[ext_call.return_data[0]][ext_call.return_data[0]][0] = stor3[ext_call.return_data[0]][0][0]
                        else:
                            if delegate.return_data[0] == stor2[0][1]:
                                stor2[ext_call.return_data[0]][1] = delegate.return_data[0]
                                stor2[delegate.return_data[0]][0] = ext_call.return_data[0]
                                stor2[stor2[delegate.return_data[0]][0]][1] = ext_call.return_data[0]
                                stor2[ext_call.return_data[0]][0] = stor2[delegate.return_data[0]][0]
                            if not stor3[ext_call.return_data[0]][ext_call.return_data[0]][0]:
                                if not stor3[ext_call.return_data[0]][ext_call.return_data[0]][1]:
                                    if ext_call.return_data[0] != stor3[ext_call.return_data[0]][0][1]:
                                        if stor3[ext_call.return_data[0]][0][0]:
                                            stor3[ext_call.return_data[0]][ext_call.return_data[0]][1] = 0
                                            stor3[ext_call.return_data[0]][0][0] = ext_call.return_data[0]
                                            stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][0][0]][1] = ext_call.return_data[0]
                                            stor3[ext_call.return_data[0]][ext_call.return_data[0]][0] = stor3[ext_call.return_data[0]][0][0]
                                        else:
                                            if stor3[ext_call.return_data[0]][0][1]:
                                                stor3[ext_call.return_data[0]][ext_call.return_data[0]][1] = 0
                                                stor3[ext_call.return_data[0]][0][0] = ext_call.return_data[0]
                                                stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][0][0]][1] = ext_call.return_data[0]
                                                stor3[ext_call.return_data[0]][ext_call.return_data[0]][0] = stor3[ext_call.return_data[0]][0][0]
                                            else:
                                                if 0 == stor3[ext_call.return_data[0]][0][1]:
                                                    stor3[ext_call.return_data[0]][ext_call.return_data[0]][1] = 0
                                                    stor3[ext_call.return_data[0]][0][0] = ext_call.return_data[0]
                                                    stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][0][0]][1] = ext_call.return_data[0]
                                                    stor3[ext_call.return_data[0]][ext_call.return_data[0]][0] = stor3[ext_call.return_data[0]][0][0]
    emit LogAuditRequested(ext_call.return_data[0], msg.sender, Array(len=arg1.length, data=arg1[all]), arg2);
    return ext_call.return_data[0]
}

function sub_dc61b497(?) {
    require arg2 <= 7
    if 4 == arg2:
        require ext_code.size(auditDataAddress)
        call auditDataAddress.getAuditState(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= 7
        if ext_call.return_data[0] != 2:
            require ext_call.return_data[0] <= 7
            emit LogReportSubmissionError_InvalidState(arg1, msg.sender, uint8(ext_call.return_data[0]));
        else:
            require ext_code.size(auditDataAddress)
            call auditDataAddress.0x3c9a5d59 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                emit LogReportSubmissionError_InvalidAuditor(arg1, msg.sender);
            else:
                if arg1:
                    if stor4[arg1][0]:
                        stor4[stor4[arg1][1]][0] = stor4[arg1][0]
                        stor4[stor4[arg1][0]][1] = stor4[arg1][1]
                        stor4[arg1][0] = 0
                        stor4[arg1][1] = 0
                    else:
                        if stor4[arg1][1]:
                            stor4[stor4[arg1][1]][0] = stor4[arg1][0]
                            stor4[stor4[arg1][0]][1] = stor4[arg1][1]
                            stor4[arg1][0] = 0
                            stor4[arg1][1] = 0
                        else:
                            if arg1 == stor4[0][1]:
                                stor4[stor4[arg1][1]][0] = stor4[arg1][0]
                                stor4[stor4[arg1][0]][1] = stor4[arg1][1]
                                stor4[arg1][0] = 0
                                stor4[arg1][1] = 0
                require ext_code.size(auditDataAddress)
                call auditDataAddress.0x3c9a5d59 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 <= assignedRequestCount[ext_call.return_data[12 len 20]]
                require ext_code.size(auditDataAddress)
                call auditDataAddress.0x3c9a5d59 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                assignedRequestCount[ext_call.return_data[12 len 20]]--
                require ext_code.size(auditDataAddress)
                call auditDataAddress.0xde42f045 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(auditDataAddress)
                call auditDataAddress.0x630eb125 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < block.number:
                    require ext_code.size(auditDataAddress)
                    call auditDataAddress.0x89afa0ec with:
                         gas gas_remaining wei
                        args arg1, 6
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit LogReportSubmissionError_ExpiredAudit(arg1, msg.sender, 2 * ext_call.return_data[0]);
                else:
                    require arg2 <= 7
                    require ext_code.size(auditDataAddress)
                    call auditDataAddress.0x89afa0ec with:
                         gas gas_remaining wei
                        args arg1, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(auditDataAddress)
                    call auditDataAddress.0x3b08d35e with:
                         gas gas_remaining wei
                        args arg1, block.number
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(auditDataAddress)
                    call auditDataAddress.getAuditState(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= 7
                    if ext_call.return_data[0] != 4:
                        require ext_call.return_data[0] <= 7
                        require ext_call.return_data[0] == 5
                    require ext_code.size(sub_0c36eb21Address)
                    call sub_0c36eb21Address.0x896d505a with:
                         gas gas_remaining wei
                        args arg1, Array(len=arg3.length, data=arg3[all])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require arg2 <= 7
                    emit 0xb767d216: arg1, msg.sender, arg2 << 248, Array(len=arg3.length, data=arg3[all])
                    require ext_code.size(sub_c7330dd4Address)
                    call sub_c7330dd4Address.0xa2be19fb with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_c7330dd4Address)
                    call sub_c7330dd4Address.0xba5bea09 with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_c7330dd4Address)
                    call sub_c7330dd4Address.0xea36345 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 0:
                        require ext_code.size(sub_c7330dd4Address)
                        call sub_c7330dd4Address.0x928c97eb with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > 0:
                            require ext_code.size(sub_c7330dd4Address)
                            call sub_c7330dd4Address.0xa969ff0a with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(auditDataAddress)
                            call auditDataAddress.0xf8efc03e with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(auditDataAddress)
                            call auditDataAddress.0xfc0c546a with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x23b872dd with:
                                 gas gas_remaining wei
                                args auditDataAddress, sub_c7330dd4Address, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            require ext_code.size(sub_c7330dd4Address)
                            call sub_c7330dd4Address.0x641446eb with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
    else:
        require arg2 <= 7
        if arg2 != 5:
            require arg2 <= 7
            emit LogReportSubmissionError_InvalidResult(arg1, msg.sender, arg2);
        else:
            require ext_code.size(auditDataAddress)
            call auditDataAddress.getAuditState(uint256 arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] <= 7
            if ext_call.return_data[0] != 2:
                require ext_call.return_data[0] <= 7
                emit LogReportSubmissionError_InvalidState(arg1, msg.sender, uint8(ext_call.return_data[0]));
            else:
                require ext_code.size(auditDataAddress)
                call auditDataAddress.0x3c9a5d59 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    emit LogReportSubmissionError_InvalidAuditor(arg1, msg.sender);
                else:
                    if arg1:
                        if stor4[arg1][0]:
                            stor4[stor4[arg1][1]][0] = stor4[arg1][0]
                            stor4[stor4[arg1][0]][1] = stor4[arg1][1]
                            stor4[arg1][0] = 0
                            stor4[arg1][1] = 0
                        else:
                            if stor4[arg1][1]:
                                stor4[stor4[arg1][1]][0] = stor4[arg1][0]
                                stor4[stor4[arg1][0]][1] = stor4[arg1][1]
                                stor4[arg1][0] = 0
                                stor4[arg1][1] = 0
                            else:
                                if arg1 == stor4[0][1]:
                                    stor4[stor4[arg1][1]][0] = stor4[arg1][0]
                                    stor4[stor4[arg1][0]][1] = stor4[arg1][1]
                                    stor4[arg1][0] = 0
                                    stor4[arg1][1] = 0
                    require ext_code.size(auditDataAddress)
                    call auditDataAddress.0x3c9a5d59 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 1 <= assignedRequestCount[ext_call.return_data[12 len 20]]
                    require ext_code.size(auditDataAddress)
                    call auditDataAddress.0x3c9a5d59 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    assignedRequestCount[ext_call.return_data[12 len 20]]--
                    require ext_code.size(auditDataAddress)
                    call auditDataAddress.0xde42f045 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(auditDataAddress)
                    call auditDataAddress.0x630eb125 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < block.number:
                        require ext_code.size(auditDataAddress)
                        call auditDataAddress.0x89afa0ec with:
                             gas gas_remaining wei
                            args arg1, 6
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit LogReportSubmissionError_ExpiredAudit(arg1, msg.sender, 2 * ext_call.return_data[0]);
                    else:
                        require arg2 <= 7
                        require ext_code.size(auditDataAddress)
                        call auditDataAddress.0x89afa0ec with:
                             gas gas_remaining wei
                            args arg1, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(auditDataAddress)
                        call auditDataAddress.0x3b08d35e with:
                             gas gas_remaining wei
                            args arg1, block.number
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(auditDataAddress)
                        call auditDataAddress.getAuditState(uint256 arg1) with:
                             gas gas_remaining wei
                            args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] <= 7
                        if ext_call.return_data[0] != 4:
                            require ext_call.return_data[0] <= 7
                            require ext_call.return_data[0] == 5
                        require ext_code.size(sub_0c36eb21Address)
                        call sub_0c36eb21Address.0x896d505a with:
                             gas gas_remaining wei
                            args arg1, Array(len=arg3.length, data=arg3[all])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require arg2 <= 7
                        emit 0xb767d216: arg1, msg.sender, arg2 << 248, Array(len=arg3.length, data=arg3[all])
                        require ext_code.size(sub_c7330dd4Address)
                        call sub_c7330dd4Address.0xa2be19fb with:
                             gas gas_remaining wei
                            args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_c7330dd4Address)
                        call sub_c7330dd4Address.0xba5bea09 with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_c7330dd4Address)
                        call sub_c7330dd4Address.0xea36345 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > 0:
                            require ext_code.size(sub_c7330dd4Address)
                            call sub_c7330dd4Address.0x928c97eb with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > 0:
                                require ext_code.size(sub_c7330dd4Address)
                                call sub_c7330dd4Address.0xa969ff0a with:
                                     gas gas_remaining wei
                                    args arg1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(auditDataAddress)
                                call auditDataAddress.0xf8efc03e with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(auditDataAddress)
                                call auditDataAddress.0xfc0c546a with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x23b872dd with:
                                     gas gas_remaining wei
                                    args auditDataAddress, sub_c7330dd4Address, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                require ext_code.size(sub_c7330dd4Address)
                                call sub_c7330dd4Address.0x641446eb with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
}



}
