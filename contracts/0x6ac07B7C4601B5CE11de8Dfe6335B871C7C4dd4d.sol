contract main {




// =====================  Runtime code  =====================


const name = 'Azimuth Points'

const InterfaceId_ERC165 = 0x1ffc9a700000000000000000000000000000000000000000000000000000000

const symbol = 'AZP'


address owner;
address azimuthAddress;
address pollsAddress;
address sub_ed969f68Address;
mapping of uint8 stor4;
address claimsAddress;

function supportsInterface(bytes4 arg1) {
    return bool(stor4[Mask(32, 224, arg1)])
}

function owner() {
    return owner
}

function azimuth() {
    return azimuthAddress
}

function claims() {
    return claimsAddress
}

function polls() {
    return pollsAddress
}

function sub_ed969f68(?) {
    return sub_ed969f68Address
}

function castUpgradeVote(uint8 arg1, address arg2, bool arg3) {
    require ext_code.size(azimuthAddress)
    call azimuthAddress.canVoteAs(uint32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg1 << 248, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.isActive(uint32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(pollsAddress)
    call pollsAddress.0x51de5541 with:
         gas gas_remaining wei
        args arg1 << 248, address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
    require ext_code.size(azimuthAddress)
    call azimuthAddress.0xf2fde38b with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(pollsAddress)
    call pollsAddress.0xf2fde38b with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg2)
    call arg2.0x1824a46b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Upgraded(arg2);
    selfdestruct(arg2)
}

function updateUpgradePoll(address arg1) {
    require ext_code.size(pollsAddress)
    call pollsAddress.'V#q[' with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
    require ext_code.size(azimuthAddress)
    call azimuthAddress.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(pollsAddress)
    call pollsAddress.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.0x1824a46b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Upgraded(arg1);
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
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

function updateDocumentPoll(bytes32 arg1) {
    require ext_code.size(pollsAddress)
    call pollsAddress.0x172a735c with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function balanceOf(address arg1) {
    require arg1
    require ext_code.size(azimuthAddress)
    call azimuthAddress.getOwnedPointCount(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function isApprovedForAll(address arg1, address arg2) {
    require ext_code.size(azimuthAddress)
    call azimuthAddress.isOperator(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function setApprovalForAll(address arg1, bool arg2) {
    require arg1
    require ext_code.size(azimuthAddress)
    call azimuthAddress.setOperator(address arg1, address arg2, bool arg3) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function exists(uint256 arg1) {
    if arg1 >= 4294967296:
        return (arg1 < 4294967296)
    require ext_code.size(azimuthAddress)
    call azimuthAddress.isActive(uint32 arg1) with:
         gas gas_remaining wei
        args uint32(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function setDnsDomains(string arg1, string arg2, string arg3) {
    require msg.sender == owner
    require ext_code.size(azimuthAddress)
    call azimuthAddress.0xbac55edd with:
         gas gas_remaining wei
        args 0, 96, arg1.length + 128, arg1.length + arg2.length + 160, arg1.length, arg1[all], arg2.length, arg2[all], arg3.length, arg3[all]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function tokenURI(uint256 arg1) {
    require arg1 < 4294967296
    return 32, 46, 
           'https://azimuth.network/erc721/0' / 256,
           0,
           0,
           0,
           0,
           0,
           0,
           0,
           0,
           0,
           Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('param', 'arg1'), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('param', 'arg1'), 10))), 0) - 256,
           uint128('000000000.json'),
           0
}

function onUpgrade() {
    require msg.sender == sub_ed969f68Address
    require ext_code.size(azimuthAddress)
    call azimuthAddress.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require this.address == ext_call.return_data[12 len 20]
    require ext_code.size(pollsAddress)
    call pollsAddress.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require this.address == ext_call.return_data[12 len 20]
}

function getSpawnLimit(uint32 arg1, uint256 arg2) {
    require ext_code.size(azimuthAddress)
    call azimuthAddress.getPointSize(uint32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 2
    if not ext_call.return_data[0]:
        return 255
    require ext_call.return_data[0] <= 2
    if ext_call.return_data[0] != 1:
        return 0
    if arg2 - (429528 * 24 * 3600) / 8760 * 24 * 3600 >= 6:
        return 65535
    return (2^(arg2 - (429528 * 24 * 3600) / 8760 * 24 * 3600) % 4194304 << 10)
}

function ownerOf(uint256 arg1) {
    require arg1 < 4294967296
    require ext_code.size(azimuthAddress)
    call azimuthAddress.isActive(uint32 arg1) with:
         gas gas_remaining wei
        args uint32(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.getOwner(uint32 arg1) with:
         gas gas_remaining wei
        args uint32(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function getApproved(uint256 arg1) {
    require arg1 < 4294967296
    require ext_code.size(azimuthAddress)
    call azimuthAddress.isActive(uint32 arg1) with:
         gas gas_remaining wei
        args uint32(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.getTransferProxy(uint32 arg1) with:
         gas gas_remaining wei
        args uint32(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function cancelEscape(uint32 arg1) {
    require ext_code.size(azimuthAddress)
    call azimuthAddress.canManage(uint32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg1 << 224, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.isActive(uint32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.0xc6d761d4 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setManagementProxy(uint32 arg1, address arg2) {
    require ext_code.size(azimuthAddress)
    call azimuthAddress.isOwner(uint32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg1 << 224, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.isActive(uint32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.0x8866bb2c with:
         gas gas_remaining wei
        args arg1 << 224, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function startDocumentPoll(uint8 arg1, bytes32 arg2) {
    require ext_code.size(azimuthAddress)
    call azimuthAddress.canVoteAs(uint32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg1 << 248, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.isActive(uint32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(pollsAddress)
    call pollsAddress.startDocumentPoll(bytes32 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setSpawnProxy(uint16 arg1, address arg2) {
    require ext_code.size(azimuthAddress)
    call azimuthAddress.isOwner(uint32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg1 << 240, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.isActive(uint32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.setSpawnProxy(uint32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg1 << 240, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setVotingProxy(uint8 arg1, address arg2) {
    require ext_code.size(azimuthAddress)
    call azimuthAddress.isOwner(uint32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg1 << 248, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.isActive(uint32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.setVotingProxy(uint32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg1 << 248, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function castDocumentVote(uint8 arg1, bytes32 arg2, bool arg3) {
    require ext_code.size(azimuthAddress)
    call azimuthAddress.canVoteAs(uint32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg1 << 248, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.isActive(uint32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(pollsAddress)
    call pollsAddress.0x6eb58224 with:
         gas gas_remaining wei
        args arg1 << 248, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function setTransferProxy(uint32 arg1, address arg2) {
    require ext_code.size(azimuthAddress)
    call azimuthAddress.getOwner(uint32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(azimuthAddress)
    if ext_call.return_data[12 len 20] != msg.sender:
        call azimuthAddress.isOperator(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    call azimuthAddress.0x2c7ba564 with:
         gas gas_remaining wei
        args arg1 << 224, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Approval(arg1, address(ext_call.return_data[0]), arg2);
}

function approve(address arg1, uint256 arg2) {
    require arg2 < 4294967296
    require ext_code.size(azimuthAddress)
    call azimuthAddress.getOwner(uint32 arg1) with:
         gas gas_remaining wei
        args uint32(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(azimuthAddress)
    if ext_call.return_data[12 len 20] != msg.sender:
        call azimuthAddress.isOperator(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    call azimuthAddress.0x2c7ba564 with:
         gas gas_remaining wei
        args arg2 << 224, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Approval(uint32(arg2), address(ext_call.return_data[0]), arg1);
}

function sub_9e988d13(?) {
    require ext_code.size(azimuthAddress)
    call azimuthAddress.canVoteAs(uint32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg1 << 248, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.isActive(uint32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(arg2)
    call arg2.0xed969f68 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == this.address
    require ext_code.size(pollsAddress)
    call pollsAddress.startUpgradePoll(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function reject(uint32 arg1) {
    require ext_code.size(azimuthAddress)
    call azimuthAddress.isEscaping(uint32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.getEscapeRequest(uint32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(azimuthAddress)
    call azimuthAddress.canManage(uint32 arg1, address arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0] << 224, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.0xc6d761d4 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function detach(uint32 arg1) {
    require ext_code.size(azimuthAddress)
    call azimuthAddress.hasSponsor(uint32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.getSponsor(uint32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(azimuthAddress)
    call azimuthAddress.canManage(uint32 arg1, address arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0] << 224, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.loseSponsor(uint32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function adopt(uint32 arg1) {
    require ext_code.size(azimuthAddress)
    call azimuthAddress.isEscaping(uint32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.getEscapeRequest(uint32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(azimuthAddress)
    call azimuthAddress.canManage(uint32 arg1, address arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0] << 224, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.doEscape(uint32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function configureKeys(uint32 arg1, bytes32 arg2, bytes32 arg3, uint32 arg4, bool arg5) {
    require ext_code.size(azimuthAddress)
    call azimuthAddress.canManage(uint32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg1 << 224, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.isActive(uint32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(azimuthAddress)
    if arg5:
        call azimuthAddress.incrementContinuityNumber(uint32 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    call azimuthAddress.setKeys(uint32 arg1, bytes32 arg2, bytes32 arg3, uint32 arg4) with:
         gas gas_remaining wei
        args 0, 0, arg2, arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function canEscapeTo(uint32 arg1, uint32 arg2) {
    require ext_code.size(azimuthAddress)
    call azimuthAddress.hasBeenLinked(uint32 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(azimuthAddress)
    call azimuthAddress.getPointSize(uint32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(azimuthAddress)
    call azimuthAddress.getPointSize(uint32 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 2
    require ext_call.return_data[0] <= 2
    if uint8(ext_call.return_data[0] + 1) == uint8(ext_call.return_data[0]):
        return True
    require ext_call.return_data[0] <= 2
    require ext_call.return_data[0] <= 2
    if ext_call.return_data[0] != ext_call.return_data[0]:
        return (ext_call.return_data[0] == ext_call.return_data[0])
    require ext_code.size(azimuthAddress)
    call azimuthAddress.hasBeenLinked(uint32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return not bool(ext_call.return_data[0])
}

function createGalaxy(uint8 arg1, address arg2) {
    require msg.sender == owner
    require ext_code.size(azimuthAddress)
    call azimuthAddress.isOwner(uint32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg1 << 248, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg2
    require ext_code.size(pollsAddress)
    call pollsAddress.incrementTotalVoters() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.registerSpawned(uint32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(azimuthAddress)
    if msg.sender == arg2:
        call azimuthAddress.activatePoint(uint32 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(azimuthAddress)
        call azimuthAddress.setOwner(uint32 arg1, address arg2) with:
             gas gas_remaining wei
            args arg1 << 248, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Transfer(arg1, 0, arg2);
    else:
        call azimuthAddress.setOwner(uint32 arg1, address arg2) with:
             gas gas_remaining wei
            args arg1 << 248, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(azimuthAddress)
        call azimuthAddress.0x2c7ba564 with:
             gas gas_remaining wei
            args arg1 << 248, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Transfer(arg1, 0, msg.sender);
        emit Approval(arg1, msg.sender, arg2);
}

function escape(uint32 arg1, uint32 arg2) {
    require ext_code.size(azimuthAddress)
    call azimuthAddress.canManage(uint32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg1 << 224, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.isActive(uint32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.hasBeenLinked(uint32 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.getPointSize(uint32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(azimuthAddress)
    call azimuthAddress.getPointSize(uint32 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 2
    require ext_call.return_data[0] <= 2
    if uint8(ext_call.return_data[0] + 1) != uint8(ext_call.return_data[0]):
        require ext_call.return_data[0] <= 2
        require ext_call.return_data[0] <= 2
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(azimuthAddress)
        call azimuthAddress.hasBeenLinked(uint32 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require not ext_call.return_data[0]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.setEscapeRequest(uint32 arg1, uint32 arg2) with:
         gas gas_remaining wei
        args arg1 << 224, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferPoint(uint32 arg1, address arg2, bool arg3) {
    require ext_code.size(azimuthAddress)
    call azimuthAddress.canTransfer(uint32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg1 << 224, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.isActive(uint32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(azimuthAddress)
    if not ext_call.return_data[0]:
        call azimuthAddress.activatePoint(uint32 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    call azimuthAddress.isOwner(uint32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg1 << 224, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(azimuthAddress)
        call azimuthAddress.getOwner(uint32 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(azimuthAddress)
        call azimuthAddress.setOwner(uint32 arg1, address arg2) with:
             gas gas_remaining wei
            args arg1 << 224, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(azimuthAddress)
        call azimuthAddress.0x2c7ba564 with:
             gas gas_remaining wei
            args arg1 << 224, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Transfer(arg1, address(ext_call.return_data[0]), arg2);
    if arg3:
        require ext_code.size(azimuthAddress)
        call azimuthAddress.hasBeenLinked(uint32 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(azimuthAddress)
        if ext_call.return_data[0]:
            call azimuthAddress.incrementContinuityNumber(uint32 arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(azimuthAddress)
            call azimuthAddress.setKeys(uint32 arg1, bytes32 arg2, bytes32 arg3, uint32 arg4) with:
                 gas gas_remaining wei
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        call azimuthAddress.0x8866bb2c with:
             gas gas_remaining wei
            args arg1 << 224, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(azimuthAddress)
        call azimuthAddress.setVotingProxy(uint32 arg1, address arg2) with:
             gas gas_remaining wei
            args arg1 << 224, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(azimuthAddress)
        call azimuthAddress.0x2c7ba564 with:
             gas gas_remaining wei
            args arg1 << 224, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(azimuthAddress)
        call azimuthAddress.setSpawnProxy(uint32 arg1, address arg2) with:
             gas gas_remaining wei
            args arg1 << 224, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(claimsAddress)
        call claimsAddress.clearClaims(uint32 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 < 4294967296
    require ext_code.size(azimuthAddress)
    call azimuthAddress.isOwner(uint32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg3 << 224, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.canTransfer(uint32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg3 << 224, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.isActive(uint32 arg1) with:
         gas gas_remaining wei
        args uint32(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(azimuthAddress)
    if not ext_call.return_data[0]:
        call azimuthAddress.activatePoint(uint32 arg1) with:
             gas gas_remaining wei
            args uint32(arg3)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    call azimuthAddress.isOwner(uint32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg3 << 224, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(azimuthAddress)
    if not ext_call.return_data[0]:
        call azimuthAddress.getOwner(uint32 arg1) with:
             gas gas_remaining wei
            args uint32(arg3)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(azimuthAddress)
        call azimuthAddress.setOwner(uint32 arg1, address arg2) with:
             gas gas_remaining wei
            args arg3 << 224, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(azimuthAddress)
        call azimuthAddress.0x2c7ba564 with:
             gas gas_remaining wei
            args arg3 << 224, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Transfer(uint32(arg3), address(ext_call.return_data[0]), arg2);
    call azimuthAddress.hasBeenLinked(uint32 arg1) with:
         gas gas_remaining wei
        args uint32(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(azimuthAddress)
    if ext_call.return_data[0]:
        call azimuthAddress.incrementContinuityNumber(uint32 arg1) with:
             gas gas_remaining wei
            args uint32(arg3)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(azimuthAddress)
        call azimuthAddress.setKeys(uint32 arg1, bytes32 arg2, bytes32 arg3, uint32 arg4) with:
             gas gas_remaining wei
            args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    call azimuthAddress.0x8866bb2c with:
         gas gas_remaining wei
        args arg3 << 224, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.setVotingProxy(uint32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg3 << 224, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.0x2c7ba564 with:
         gas gas_remaining wei
        args arg3 << 224, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.setSpawnProxy(uint32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg3 << 224, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(claimsAddress)
    call claimsAddress.clearClaims(uint32 arg1) with:
         gas gas_remaining wei
        args uint32(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 < 4294967296
    require ext_code.size(azimuthAddress)
    call azimuthAddress.isOwner(uint32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg3 << 224, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.canTransfer(uint32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg3 << 224, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.isActive(uint32 arg1) with:
         gas gas_remaining wei
        args uint32(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(azimuthAddress)
    if not ext_call.return_data[0]:
        call azimuthAddress.activatePoint(uint32 arg1) with:
             gas gas_remaining wei
            args uint32(arg3)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    call azimuthAddress.isOwner(uint32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg3 << 224, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(azimuthAddress)
    if not ext_call.return_data[0]:
        call azimuthAddress.getOwner(uint32 arg1) with:
             gas gas_remaining wei
            args uint32(arg3)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(azimuthAddress)
        call azimuthAddress.setOwner(uint32 arg1, address arg2) with:
             gas gas_remaining wei
            args arg3 << 224, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(azimuthAddress)
        call azimuthAddress.0x2c7ba564 with:
             gas gas_remaining wei
            args arg3 << 224, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Transfer(uint32(arg3), address(ext_call.return_data[0]), arg2);
    call azimuthAddress.hasBeenLinked(uint32 arg1) with:
         gas gas_remaining wei
        args uint32(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(azimuthAddress)
    if ext_call.return_data[0]:
        call azimuthAddress.incrementContinuityNumber(uint32 arg1) with:
             gas gas_remaining wei
            args uint32(arg3)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(azimuthAddress)
        call azimuthAddress.setKeys(uint32 arg1, bytes32 arg2, bytes32 arg3, uint32 arg4) with:
             gas gas_remaining wei
            args arg3 << 224, 0, 0, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    call azimuthAddress.0x8866bb2c with:
         gas gas_remaining wei
        args arg3 << 224, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.setVotingProxy(uint32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg3 << 224, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.0x2c7ba564 with:
         gas gas_remaining wei
        args arg3 << 224, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.setSpawnProxy(uint32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg3 << 224, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(claimsAddress)
    call claimsAddress.clearClaims(uint32 arg1) with:
         gas gas_remaining wei
        args uint32(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require arg3 < 4294967296
    require ext_code.size(azimuthAddress)
    call azimuthAddress.isOwner(uint32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg3 << 224, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.canTransfer(uint32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg3 << 224, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.isActive(uint32 arg1) with:
         gas gas_remaining wei
        args uint32(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(azimuthAddress)
    if not ext_call.return_data[0]:
        call azimuthAddress.activatePoint(uint32 arg1) with:
             gas gas_remaining wei
            args uint32(arg3)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    call azimuthAddress.isOwner(uint32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg3 << 224, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(azimuthAddress)
    if not ext_call.return_data[0]:
        call azimuthAddress.getOwner(uint32 arg1) with:
             gas gas_remaining wei
            args uint32(arg3)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(azimuthAddress)
        call azimuthAddress.setOwner(uint32 arg1, address arg2) with:
             gas gas_remaining wei
            args arg3 << 224, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(azimuthAddress)
        call azimuthAddress.0x2c7ba564 with:
             gas gas_remaining wei
            args arg3 << 224, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Transfer(uint32(arg3), address(ext_call.return_data[0]), arg2);
    call azimuthAddress.hasBeenLinked(uint32 arg1) with:
         gas gas_remaining wei
        args uint32(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(azimuthAddress)
    if ext_call.return_data[0]:
        call azimuthAddress.incrementContinuityNumber(uint32 arg1) with:
             gas gas_remaining wei
            args uint32(arg3)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(azimuthAddress)
        call azimuthAddress.setKeys(uint32 arg1, bytes32 arg2, bytes32 arg3, uint32 arg4) with:
             gas gas_remaining wei
            args arg3 << 224, 0, 0, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    call azimuthAddress.0x8866bb2c with:
         gas gas_remaining wei
        args arg3 << 224, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.setVotingProxy(uint32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg3 << 224, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.0x2c7ba564 with:
         gas gas_remaining wei
        args arg3 << 224, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.setSpawnProxy(uint32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg3 << 224, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(claimsAddress)
    call claimsAddress.clearClaims(uint32 arg1) with:
         gas gas_remaining wei
        args uint32(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
}

function spawn(uint32 arg1, address arg2) {
    require ext_code.size(azimuthAddress)
    call azimuthAddress.isOwner(uint32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg1 << 224, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.getPrefix(uint32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(azimuthAddress)
    call azimuthAddress.getPointSize(uint32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 2
    require ext_code.size(azimuthAddress)
    call azimuthAddress.getPointSize(uint32 arg1) with:
         gas gas_remaining wei
        args uint16(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 2
    require uint8(ext_call.return_data[0] + 1) == uint8(ext_call.return_data[0])
    require ext_code.size(azimuthAddress)
    call azimuthAddress.hasBeenLinked(uint32 arg1) with:
         gas gas_remaining wei
        args uint16(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.getPointSize(uint32 arg1) with:
         gas gas_remaining wei
        args uint16(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 2
    if not ext_call.return_data[0]:
        require ext_code.size(azimuthAddress)
        call azimuthAddress.getSpawnCount(uint32 arg1) with:
             gas gas_remaining wei
            args uint16(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[28 len 4] < 255
    else:
        require ext_call.return_data[0] <= 2
        require ext_code.size(azimuthAddress)
        call azimuthAddress.getSpawnCount(uint32 arg1) with:
             gas gas_remaining wei
            args uint16(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != 1:
            require ext_call.return_data[28 len 4] < 0
        else:
            if block.timestamp - (429528 * 24 * 3600) / 8760 * 24 * 3600 >= 6:
                require ext_call.return_data[28 len 4] < 65535
            else:
                require ext_call.return_data[28 len 4] < 2^(block.timestamp - (429528 * 24 * 3600) / 8760 * 24 * 3600) % 4194304 << 10
    require ext_code.size(azimuthAddress)
    call azimuthAddress.canSpawnAs(uint32 arg1, address arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0] << 240, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(azimuthAddress)
    if arg2 == msg.sender:
        call azimuthAddress.registerSpawned(uint32 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(azimuthAddress)
        call azimuthAddress.activatePoint(uint32 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(azimuthAddress)
        call azimuthAddress.setOwner(uint32 arg1, address arg2) with:
             gas gas_remaining wei
            args arg1 << 224, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Transfer(arg1, 0, arg2);
    else:
        call azimuthAddress.getOwner(uint32 arg1) with:
             gas gas_remaining wei
            args uint16(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(azimuthAddress)
        call azimuthAddress.registerSpawned(uint32 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(azimuthAddress)
        call azimuthAddress.setOwner(uint32 arg1, address arg2) with:
             gas gas_remaining wei
            args arg1 << 224, address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(azimuthAddress)
        call azimuthAddress.0x2c7ba564 with:
             gas gas_remaining wei
            args arg1 << 224, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Transfer(arg1, 0, address(ext_call.return_data[0]));
        emit Approval(arg1, address(ext_call.return_data[0]), arg2);
}



}
