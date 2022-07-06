contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
address kodaV2Address;
address auctionAddress;
uint256 sub_983586b1;
uint8 stor4;
mapping of uint8 stor5;
uint256 maxEditionSize;
uint8 stor7;
uint256 maxInvocations;
uint256 sub_b83281b0;
mapping of uint256 sub_43ce3354;
mapping of uint256 sub_2ec8d5bb;

function sub_2ec8d5bb(?) {
    return sub_2ec8d5bb[arg1]
}

function sub_43ce3354(?) {
    return sub_43ce3354[arg1]
}

function sub_46f7c98a(?) {
    return bool(stor5[arg1])
}

function kodaV2() {
    return kodaV2Address
}

function paused() {
    return bool(stor0)
}

function maxInvocations() {
    return maxInvocations
}

function maxEditionSize() {
    return maxEditionSize
}

function auction() {
    return auctionAddress
}

function owner() {
    return owner
}

function sub_8e6e1577(?) {
    return bool(stor7)
}

function sub_983586b1(?) {
    return sub_983586b1
}

function sub_b83281b0(?) {
    return sub_b83281b0
}

function sub_e29cda48(?) {
    return bool(stor4)
}

function _fallback() payable {
    revert
}

function setKodavV2(address arg1) {
    require msg.sender == owner
    kodaV2Address = arg1
}

function setAuction(address arg1) {
    require msg.sender == owner
    auctionAddress = arg1
}

function setOpenToAllArtist(bool arg1) {
    require msg.sender == owner
    stor4 = uint8(arg1)
}

function setMaxEditionSize(uint256 arg1) {
    require msg.sender == owner
    maxEditionSize = arg1
}

function setArtistCommission(uint256 arg1) {
    require msg.sender == owner
    sub_983586b1 = arg1
}

function setMaxInvocations(uint256 arg1) {
    require msg.sender == owner
    maxInvocations = arg1
}

function setDisableInvocationCheck(bool arg1) {
    require msg.sender == owner
    stor7 = uint8(arg1)
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

function isEnabledForAccount(address arg1) {
    if not stor4:
        return bool(stor5[address(arg1)])
    return 1
}

function setAllowedArtist(address arg1, bool arg2) {
    require msg.sender == owner
    stor5[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function canCreateAnotherEdition(address arg1) {
    if not stor4:
        if not stor5[address(arg1)]:
            return bool(stor5[address(arg1)])
    return sub_43ce3354[address(arg1)] <= maxInvocations
}

function withdrawStuckEther(address arg1) {
    require msg.sender == owner
    if not arg1:
        revert with 0, 'Invalid address provided'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function createEditionFor(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, string arg5, bool arg6) {
    mem[128 len arg5.length] = arg5[all]
    require msg.sender == owner
    if arg2 <= 0:
        revert with 0, 'Must be at least one available in edition'
    if arg2 > maxEditionSize:
        revert with 0, 'Must not exceed max edition size'
    if owner != msg.sender:
        if not stor4:
            if not stor5[address(arg1)]:
                revert with 0, 'Only allowed artists can create editions for now'
    require ext_code.size(kodaV2Address)
    call kodaV2Address.highestEditionNumber() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(kodaV2Address)
    call kodaV2Address.totalAvailableEdition(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
    require maxEditionSize
    mem[ceil32(arg5.length) + 128] = 0x8bbb594a00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg5.length) + 484 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
    if not arg5.length % 32:
        require ext_code.size(kodaV2Address)
        call kodaV2Address.createActiveEdition(uint256 arg1, bytes32 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7, uint256 arg8, string arg9, uint256 arg10) with:
             gas gas_remaining wei
            args (2 * ext_call.return_data[0]) + maxEditionSize / maxEditionSize * maxEditionSize, 0, 1, arg4, 0, address(arg1), sub_983586b1, arg3, 320, arg2, arg5.length, Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * arg5.length) - 256
    else:
        mem[floor32(arg5.length) + ceil32(arg5.length) + 484] = mem[floor32(arg5.length) + ceil32(arg5.length) + -(arg5.length % 32) + 516 len arg5.length % 32]
        require ext_code.size(kodaV2Address)
        call kodaV2Address.createActiveEdition(uint256 arg1, bytes32 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7, uint256 arg8, string arg9, uint256 arg10) with:
             gas gas_remaining wei
            args (2 * ext_call.return_data[0]) + maxEditionSize / maxEditionSize * maxEditionSize, 0, 1, arg4, 0, address(arg1), sub_983586b1, arg3, 320, arg2, arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[(2 * ceil32(arg5.length)) + 484 len floor32(arg5.length) + -ceil32(arg5.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Failed to create new edition'
    if arg6:
        require ext_code.size(auctionAddress)
        call auctionAddress.setArtistsControlAddressAndEnabledEdition(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args (2 * ext_call.return_data[0]) + maxEditionSize / maxEditionSize * maxEditionSize, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit SelfServiceEditionCreated(arg3, arg2, arg6, (2 * ext_call.return_data[0]) + maxEditionSize / maxEditionSize * maxEditionSize, arg1);
    return ((2 * ext_call.return_data[0]) + maxEditionSize / maxEditionSize * maxEditionSize)
}

function createEdition(uint256 arg1, uint256 arg2, uint256 arg3, string arg4, bool arg5) {
    mem[128 len arg4.length] = arg4[all]
    require not stor0
    if not stor7:
        if not sub_2ec8d5bb[msg.sender]:
            sub_43ce3354[msg.sender] = 1
            sub_2ec8d5bb[msg.sender] = block.number
        else:
            if block.timestamp - sub_2ec8d5bb[msg.sender] >= sub_b83281b0:
                sub_43ce3354[msg.sender] = 1
                sub_2ec8d5bb[msg.sender] = block.number
            else:
                if sub_43ce3354[msg.sender] > maxInvocations:
                    revert with 0, 'Exceeded max invocations for time period'
                sub_43ce3354[msg.sender]++
    if arg1 <= 0:
        revert with 0, 'Must be at least one available in edition'
    if arg1 > maxEditionSize:
        revert with 0, 'Must not exceed max edition size'
    if owner != msg.sender:
        if not stor4:
            if not stor5[address(msg.sender)]:
                revert with 0, 'Only allowed artists can create editions for now'
    require ext_code.size(kodaV2Address)
    call kodaV2Address.highestEditionNumber() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(kodaV2Address)
    call kodaV2Address.totalAvailableEdition(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
    require maxEditionSize
    mem[ceil32(arg4.length) + 128] = 0x8bbb594a00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg4.length) + 484 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
    if not arg4.length % 32:
        require ext_code.size(kodaV2Address)
        call kodaV2Address.createActiveEdition(uint256 arg1, bytes32 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7, uint256 arg8, string arg9, uint256 arg10) with:
             gas gas_remaining wei
            args (2 * ext_call.return_data[0]) + maxEditionSize / maxEditionSize * maxEditionSize, 0, 1, arg3, 0, msg.sender, sub_983586b1, arg2, 320, arg1, arg4.length, Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256
    else:
        mem[floor32(arg4.length) + ceil32(arg4.length) + 484] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 516 len arg4.length % 32]
        require ext_code.size(kodaV2Address)
        call kodaV2Address.createActiveEdition(uint256 arg1, bytes32 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7, uint256 arg8, string arg9, uint256 arg10) with:
             gas gas_remaining wei
            args (2 * ext_call.return_data[0]) + maxEditionSize / maxEditionSize * maxEditionSize, 0, 1, arg3, 0, msg.sender, sub_983586b1, arg2, 320, arg1, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 484 len floor32(arg4.length) + -ceil32(arg4.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Failed to create new edition'
    if arg5:
        require ext_code.size(auctionAddress)
        call auctionAddress.setArtistsControlAddressAndEnabledEdition(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args (2 * ext_call.return_data[0]) + maxEditionSize / maxEditionSize * maxEditionSize, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit SelfServiceEditionCreated(arg2, arg1, arg5, (2 * ext_call.return_data[0]) + maxEditionSize / maxEditionSize * maxEditionSize, msg.sender);
    return ((2 * ext_call.return_data[0]) + maxEditionSize / maxEditionSize * maxEditionSize)
}



}
