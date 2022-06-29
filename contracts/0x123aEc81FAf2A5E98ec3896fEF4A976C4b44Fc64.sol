contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
uint8 stor2;
address externalStorageAddress; offset 8
array of struct stor3;
array of struct stor4;
uint8 stor5;
uint8 stor5; offset 168
address stor5; offset 8
address upgradedTokenAddress;
uint8 stor7; offset 160
address stor7;
mapping of uint8 stor8;
mapping of uint8 stor9;
address mintingRecipientAddress;

function getExternalStorage() {
    return externalStorageAddress
}

function isUpgraded() {
    return bool(upgradedTokenAddress)
}

function isBurner(address arg1) {
    require arg1
    return bool(stor8[address(arg1)])
}

function getUpgradedToken() {
    return upgradedTokenAddress
}

function isPauser(address arg1) {
    require arg1
    return bool(stor1[address(arg1)])
}

function owner() {
    return owner
}

function isMinter(address arg1) {
    require arg1
    return bool(stor9[address(arg1)])
}

function getMintingRecipient() {
    return mintingRecipientAddress
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

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function renouncePauser() {
    require msg.sender
    require stor1[address(msg.sender)]
    stor1[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function renounceMinter() {
    require msg.sender
    require stor9[address(msg.sender)]
    stor9[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function renounceBurner() {
    require msg.sender
    require stor8[address(msg.sender)]
    stor8[address(msg.sender)] = 0
    emit BurnerRemoved(msg.sender);
}

function addPauser(address arg1) {
    require msg.sender == owner
    require arg1
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function addMinter(address arg1) {
    require msg.sender == owner
    require arg1
    require not stor9[address(arg1)]
    stor9[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function addBurner(address arg1) {
    require msg.sender == owner
    require arg1
    require not stor8[address(arg1)]
    stor8[address(arg1)] = 1
    emit BurnerAdded(arg1);
}

function removeBurner(address arg1) {
    require msg.sender == owner
    require arg1
    require stor8[address(arg1)]
    stor8[address(arg1)] = 0
    emit BurnerRemoved(arg1);
}

function removeMinter(address arg1) {
    require msg.sender == owner
    require arg1
    require stor9[address(arg1)]
    stor9[address(arg1)] = 0
    emit MinterRemoved(arg1);
}

function removePauser(address arg1) {
    require msg.sender == owner
    require arg1
    require stor1[address(arg1)]
    stor1[address(arg1)] = 0
    emit PauserRemoved(arg1);
}

function finalizeUpgrade() {
    if not address(stor5.field_8):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must have a contract to upgrade from'
    if address(stor5.field_8) != msg.sender:
        revert with 0, 'Proxy is the only allowed calle'
    uint8(stor5.field_168) = 1
    emit 0x81a9bb80: msg.sender
}

function isWhitelisted(address arg1) {
    require ext_code.size(address(stor7.field_0))
    call address(stor7.field_0).0x3af32abf with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function isNotBlacklisted(address arg1) {
    require ext_code.size(address(stor7.field_0))
    call address(stor7.field_0).isBlacklisted(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return not bool(ext_call.return_data[0])
}

function decimals() {
    if not upgradedTokenAddress:
        return uint8(stor5.field_0)
    require ext_code.size(upgradedTokenAddress)
    call upgradedTokenAddress.0x3d0383b3 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[31 len 1]
}

function paused() {
    if not upgradedTokenAddress:
        if not uint8(stor5.field_168):
            revert with 0, 'Token disabled'
        return bool(stor2)
    require ext_code.size(upgradedTokenAddress)
    call upgradedTokenAddress.0xbe9bc819 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function unpause() {
    if upgradedTokenAddress:
        require ext_code.size(upgradedTokenAddress)
        call upgradedTokenAddress.0xb07cd20a with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if not uint8(stor5.field_168):
            revert with 0, 'Token disabled'
        require msg.sender
        require stor1[address(msg.sender)]
        require stor2
        stor2 = 0
        emit Unpaused(msg.sender);
}

function pause() {
    if upgradedTokenAddress:
        require ext_code.size(upgradedTokenAddress)
        call upgradedTokenAddress.0xa1b01371 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if not uint8(stor5.field_168):
            revert with 0, 'Token disabled'
        require msg.sender
        require stor1[address(msg.sender)]
        require not stor2
        stor2 = 1
        emit Paused(msg.sender);
}

function decimalsProxy(address arg1) {
    if not uint8(stor5.field_168):
        revert with 0, 'Token disabled'
    if address(stor5.field_8) != msg.sender:
        revert with 0, 'Proxy is the only allowed calle'
    if not upgradedTokenAddress:
        return uint8(stor5.field_0)
    require ext_code.size(upgradedTokenAddress)
    call upgradedTokenAddress.0x3d0383b3 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[31 len 1]
}

function totalSupply() {
    if upgradedTokenAddress:
        require ext_code.size(upgradedTokenAddress)
        call upgradedTokenAddress.0x7c56d0fc with:
             gas gas_remaining wei
            args msg.sender
    else:
        if not uint8(stor5.field_168):
            revert with 0, 'Token disabled'
        require ext_code.size(externalStorageAddress)
        call externalStorageAddress.getTotalSupply() with:
             gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOf(address arg1) {
    if upgradedTokenAddress:
        require ext_code.size(upgradedTokenAddress)
        call upgradedTokenAddress.0xf4054940 with:
             gas gas_remaining wei
            args msg.sender, arg1
    else:
        if not uint8(stor5.field_168):
            revert with 0, 'Token disabled'
        require ext_code.size(externalStorageAddress)
        call externalStorageAddress.getBalance(address arg1) with:
             gas gas_remaining wei
            args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function pausedProxy(address arg1) {
    if not uint8(stor5.field_168):
        revert with 0, 'Token disabled'
    if address(stor5.field_8) != msg.sender:
        revert with 0, 'Proxy is the only allowed calle'
    if not upgradedTokenAddress:
        if not uint8(stor5.field_168):
            revert with 0, 'Token disabled'
        return bool(stor2)
    require ext_code.size(upgradedTokenAddress)
    call upgradedTokenAddress.0xbe9bc819 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function changeMintingRecipient(address arg1) {
    if upgradedTokenAddress:
        require ext_code.size(upgradedTokenAddress)
        call upgradedTokenAddress.0xd8a7be06 with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if not uint8(stor5.field_168):
            revert with 0, 'Token disabled'
        if owner != msg.sender:
            revert with 0, 'is not owner'
        if not arg1:
            revert with 0, 'zero minting recipient'
        mintingRecipientAddress = arg1
        emit 0x459b9e00: mintingRecipientAddress, arg1
}

function hasAccess(address arg1) {
    require ext_code.size(address(stor7.field_0))
    if not uint8(stor7.field_160):
        call address(stor7.field_0).isBlacklisted(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return not bool(ext_call.return_data[0])
    call address(stor7.field_0).0x95a078e8 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function pauseProxy(address arg1) {
    if not uint8(stor5.field_168):
        revert with 0, 'Token disabled'
    if address(stor5.field_8) != msg.sender:
        revert with 0, 'Proxy is the only allowed calle'
    if upgradedTokenAddress:
        require ext_code.size(upgradedTokenAddress)
        call upgradedTokenAddress.0xa1b01371 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if not uint8(stor5.field_168):
            revert with 0, 'Token disabled'
        require arg1
        require stor1[address(arg1)]
        require not stor2
        stor2 = 1
        emit Paused(arg1);
}

function unpauseProxy(address arg1) {
    if not uint8(stor5.field_168):
        revert with 0, 'Token disabled'
    if address(stor5.field_8) != msg.sender:
        revert with 0, 'Proxy is the only allowed calle'
    if upgradedTokenAddress:
        require ext_code.size(upgradedTokenAddress)
        call upgradedTokenAddress.0xb07cd20a with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if not uint8(stor5.field_168):
            revert with 0, 'Token disabled'
        require arg1
        require stor1[address(arg1)]
        require stor2
        stor2 = 0
        emit Unpaused(arg1);
}

function allowance(address arg1, address arg2) {
    if upgradedTokenAddress:
        require ext_code.size(upgradedTokenAddress)
        call upgradedTokenAddress.0xc190472e with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg2
    else:
        if not uint8(stor5.field_168):
            revert with 0, 'Token disabled'
        require ext_code.size(externalStorageAddress)
        call externalStorageAddress.getAllowed(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function totalSupplyProxy(address arg1) {
    if not uint8(stor5.field_168):
        revert with 0, 'Token disabled'
    if address(stor5.field_8) != msg.sender:
        revert with 0, 'Proxy is the only allowed calle'
    if upgradedTokenAddress:
        require ext_code.size(upgradedTokenAddress)
        call upgradedTokenAddress.0x7c56d0fc with:
             gas gas_remaining wei
            args arg1
    else:
        if not uint8(stor5.field_168):
            revert with 0, 'Token disabled'
        require ext_code.size(externalStorageAddress)
        call externalStorageAddress.getTotalSupply() with:
             gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOfProxy(address arg1, address arg2) {
    if not uint8(stor5.field_168):
        revert with 0, 'Token disabled'
    if address(stor5.field_8) != msg.sender:
        revert with 0, 'Proxy is the only allowed calle'
    if upgradedTokenAddress:
        require ext_code.size(upgradedTokenAddress)
        call upgradedTokenAddress.0xf4054940 with:
             gas gas_remaining wei
            args address(arg1), arg2
    else:
        if not uint8(stor5.field_168):
            revert with 0, 'Token disabled'
        require ext_code.size(externalStorageAddress)
        call externalStorageAddress.getBalance(address arg1) with:
             gas gas_remaining wei
            args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function changeMintingRecipientProxy(address arg1, address arg2) {
    if not uint8(stor5.field_168):
        revert with 0, 'Token disabled'
    if address(stor5.field_8) != msg.sender:
        revert with 0, 'Proxy is the only allowed calle'
    if upgradedTokenAddress:
        require ext_code.size(upgradedTokenAddress)
        call upgradedTokenAddress.0xd8a7be06 with:
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if not uint8(stor5.field_168):
            revert with 0, 'Token disabled'
        if owner != arg1:
            revert with 0, 'is not owner'
        if not arg2:
            revert with 0, 'zero minting recipient'
        mintingRecipientAddress = arg2
        emit 0x459b9e00: mintingRecipientAddress, arg2
}

function allowanceProxy(address arg1, address arg2, address arg3) {
    if not uint8(stor5.field_168):
        revert with 0, 'Token disabled'
    if address(stor5.field_8) != msg.sender:
        revert with 0, 'Proxy is the only allowed calle'
    if upgradedTokenAddress:
        require ext_code.size(upgradedTokenAddress)
        call upgradedTokenAddress.0xc190472e with:
             gas gas_remaining wei
            args address(arg1), address(arg2), arg3
    else:
        if not uint8(stor5.field_168):
            revert with 0, 'Token disabled'
        require ext_code.size(externalStorageAddress)
        call externalStorageAddress.getAllowed(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function upgrade(address arg1) {
    require msg.sender == owner
    if upgradedTokenAddress:
        revert with 0, 'Token is already upgraded'
    if not arg1:
        revert with 0, 'Cannot upgrade to null address'
    if this.address == arg1:
        revert with 0, 'Cannot upgrade to myself'
    require ext_code.size(externalStorageAddress)
    call externalStorageAddress.0xeeb1934e with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'I don't own my storage. This will end badly.'
    upgradedTokenAddress = arg1
    require ext_code.size(externalStorageAddress)
    call externalStorageAddress.0x7a1f3b2c with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.0x9a508c8e with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Upgraded(arg1);
}

function burn(uint256 arg1) {
    if upgradedTokenAddress:
        require ext_code.size(upgradedTokenAddress)
        call upgradedTokenAddress.0xde09ad54 with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if not uint8(stor5.field_168):
            revert with 0, 'Token disabled'
        require msg.sender
        if not stor8[address(msg.sender)]:
            revert with 0, 'not burner'
        require msg.sender
        require ext_code.size(externalStorageAddress)
        call externalStorageAddress.getTotalSupply() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg1 <= ext_call.return_data[0]
        require ext_code.size(externalStorageAddress)
        call externalStorageAddress.setTotalSupply(uint256 arg1) with:
             gas gas_remaining wei
            args (ext_call.return_data[0] - arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(externalStorageAddress)
        call externalStorageAddress.decreaseBalance(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Transfer(arg1, msg.sender, 0);
}

function mint(address arg1, uint256 arg2) {
    if upgradedTokenAddress:
        require ext_code.size(upgradedTokenAddress)
        call upgradedTokenAddress.0xaf4e8308 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return bool(ext_call.return_data[0])
    if not uint8(stor5.field_168):
        revert with 0, 'Token disabled'
    require msg.sender
    if not stor9[address(msg.sender)]:
        revert with 0, 'not minter'
    if mintingRecipientAddress != arg1:
        revert with 0, 'is not mintingRecpientAccount'
    require arg1
    require ext_code.size(externalStorageAddress)
    call externalStorageAddress.getTotalSupply() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 + ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_code.size(externalStorageAddress)
    call externalStorageAddress.setTotalSupply(uint256 arg1) with:
         gas gas_remaining wei
        args (arg2 + ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(externalStorageAddress)
    call externalStorageAddress.increaseBalance(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg2, 0, arg1);
    return 1
}

function burnProxy(address arg1, uint256 arg2) {
    if not uint8(stor5.field_168):
        revert with 0, 'Token disabled'
    if address(stor5.field_8) != msg.sender:
        revert with 0, 'Proxy is the only allowed calle'
    if upgradedTokenAddress:
        require ext_code.size(upgradedTokenAddress)
        call upgradedTokenAddress.0xde09ad54 with:
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if not uint8(stor5.field_168):
            revert with 0, 'Token disabled'
        require arg1
        if not stor8[address(arg1)]:
            revert with 0, 'not burner'
        require arg1
        require ext_code.size(externalStorageAddress)
        call externalStorageAddress.getTotalSupply() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg2 <= ext_call.return_data[0]
        require ext_code.size(externalStorageAddress)
        call externalStorageAddress.setTotalSupply(uint256 arg1) with:
             gas gas_remaining wei
            args (ext_call.return_data[0] - arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(externalStorageAddress)
        call externalStorageAddress.decreaseBalance(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Transfer(arg2, arg1, 0);
}

function name() {
    if not upgradedTokenAddress:
        mem[128] = uint256(stor3.field_0)
        idx = 128
        s = 0
        while stor3.length + 96 > idx:
            mem[idx + 32] = stor3[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor3.length, data=mem[128 len stor3.length])
    mem[96] = 0x420cc0a700000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    require ext_code.size(upgradedTokenAddress)
    call upgradedTokenAddress.0x420cc0a7 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _6 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] + mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 32 and mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_6 + 96]
    _19 = mem[_6 + 96]
    mem[ceil32(return_data.size) + 160 len ceil32(mem[_6 + 96])] = mem[_6 + 128 len ceil32(mem[_6 + 96])]
    if not _19 % 32:
        return 32, mem[ceil32(return_data.size) + 128 len _19 + 32]
    mem[floor32(_19) + ceil32(return_data.size) + 160] = mem[floor32(_19) + ceil32(return_data.size) + -(_19 % 32) + 192 len _19 % 32]
    return 32, mem[ceil32(return_data.size) + 128 len floor32(_19) + 64]
}

function symbol() {
    if not upgradedTokenAddress:
        mem[128] = uint256(stor4.field_0)
        idx = 128
        s = 0
        while stor4.length + 96 > idx:
            mem[idx + 32] = stor4[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor4.length, data=mem[128 len stor4.length])
    mem[96] = 0xd784df9e00000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    require ext_code.size(upgradedTokenAddress)
    call upgradedTokenAddress.0xd784df9e with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _6 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] + mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 32 and mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_6 + 96]
    _19 = mem[_6 + 96]
    mem[ceil32(return_data.size) + 160 len ceil32(mem[_6 + 96])] = mem[_6 + 128 len ceil32(mem[_6 + 96])]
    if not _19 % 32:
        return 32, mem[ceil32(return_data.size) + 128 len _19 + 32]
    mem[floor32(_19) + ceil32(return_data.size) + 160] = mem[floor32(_19) + ceil32(return_data.size) + -(_19 % 32) + 192 len _19 % 32]
    return 32, mem[ceil32(return_data.size) + 128 len floor32(_19) + 64]
}

function mintProxy(address arg1, address arg2, uint256 arg3) {
    if not uint8(stor5.field_168):
        revert with 0, 'Token disabled'
    if address(stor5.field_8) != msg.sender:
        revert with 0, 'Proxy is the only allowed calle'
    if upgradedTokenAddress:
        require ext_code.size(upgradedTokenAddress)
        call upgradedTokenAddress.0xaf4e8308 with:
             gas gas_remaining wei
            args address(arg1), address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return bool(ext_call.return_data[0])
    if not uint8(stor5.field_168):
        revert with 0, 'Token disabled'
    require arg1
    if not stor9[address(arg1)]:
        revert with 0, 'not minter'
    if mintingRecipientAddress != arg2:
        revert with 0, 'is not mintingRecpientAccount'
    require arg2
    require ext_code.size(externalStorageAddress)
    call externalStorageAddress.getTotalSupply() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg3 + ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_code.size(externalStorageAddress)
    call externalStorageAddress.setTotalSupply(uint256 arg1) with:
         gas gas_remaining wei
        args (arg3 + ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(externalStorageAddress)
    call externalStorageAddress.increaseBalance(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg3, 0, arg2);
    return 1
}

function nameProxy(address arg1) {
    if not uint8(stor5.field_168):
        revert with 0, 'Token disabled'
    if address(stor5.field_8) != msg.sender:
        revert with 0, 'Proxy is the only allowed calle'
    if not upgradedTokenAddress:
        mem[128] = uint256(stor3.field_0)
        idx = 128
        s = 0
        while stor3.length + 96 > idx:
            mem[idx + 32] = stor3[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor3.length, data=mem[128 len stor3.length])
    mem[96] = 0x420cc0a700000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(upgradedTokenAddress)
    call upgradedTokenAddress.0x420cc0a7 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _14 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= 4294967296
    require mem[96 len 4], address(arg1) << 64 + 32 <= return_data.size
    require return_data.size >= mem[mem[96 len 4], address(arg1) << 64 + 96] + mem[96 len 4], address(arg1) << 64 + 32 and mem[mem[96 len 4], address(arg1) << 64 + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_14 + 96]
    _27 = mem[_14 + 96]
    mem[ceil32(return_data.size) + 160 len ceil32(mem[_14 + 96])] = mem[_14 + 128 len ceil32(mem[_14 + 96])]
    if not _27 % 32:
        return 32, mem[ceil32(return_data.size) + 128 len _27 + 32]
    mem[floor32(_27) + ceil32(return_data.size) + 160] = mem[floor32(_27) + ceil32(return_data.size) + -(_27 % 32) + 192 len _27 % 32]
    return 32, mem[ceil32(return_data.size) + 128 len floor32(_27) + 64]
}

function symbolProxy(address arg1) {
    if not uint8(stor5.field_168):
        revert with 0, 'Token disabled'
    if address(stor5.field_8) != msg.sender:
        revert with 0, 'Proxy is the only allowed calle'
    if not upgradedTokenAddress:
        mem[128] = uint256(stor4.field_0)
        idx = 128
        s = 0
        while stor4.length + 96 > idx:
            mem[idx + 32] = stor4[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor4.length, data=mem[128 len stor4.length])
    mem[96] = 0xd784df9e00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(upgradedTokenAddress)
    call upgradedTokenAddress.0xd784df9e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _14 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= 4294967296
    require mem[96 len 4], address(arg1) << 64 + 32 <= return_data.size
    require return_data.size >= mem[mem[96 len 4], address(arg1) << 64 + 96] + mem[96 len 4], address(arg1) << 64 + 32 and mem[mem[96 len 4], address(arg1) << 64 + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_14 + 96]
    _27 = mem[_14 + 96]
    mem[ceil32(return_data.size) + 160 len ceil32(mem[_14 + 96])] = mem[_14 + 128 len ceil32(mem[_14 + 96])]
    if not _27 % 32:
        return 32, mem[ceil32(return_data.size) + 128 len _27 + 32]
    mem[floor32(_27) + ceil32(return_data.size) + 160] = mem[floor32(_27) + ceil32(return_data.size) + -(_27 % 32) + 192 len _27 % 32]
    return 32, mem[ceil32(return_data.size) + 128 len floor32(_27) + 64]
}

function approve(address arg1, uint256 arg2) {
    if upgradedTokenAddress:
        require ext_code.size(upgradedTokenAddress)
        call upgradedTokenAddress.0x2376fe70 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return bool(ext_call.return_data[0])
    if not uint8(stor5.field_168):
        revert with 0, 'Token disabled'
    require not stor2
    require ext_code.size(address(stor7.field_0))
    if not uint8(stor7.field_160):
        call address(stor7.field_0).isBlacklisted(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, '%no access'
    else:
        call address(stor7.field_0).0x95a078e8 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, '%no access'
    require ext_code.size(address(stor7.field_0))
    if not uint8(stor7.field_160):
        call address(stor7.field_0).isBlacklisted(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, '%no access'
    else:
        call address(stor7.field_0).0x95a078e8 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, '%no access'
    require arg1
    require ext_code.size(externalStorageAddress)
    call externalStorageAddress.setAllowed(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x728c5be1: arg2, msg.sender, arg1
    return 1
}

function approveProxy(address arg1, address arg2, uint256 arg3) {
    if not uint8(stor5.field_168):
        revert with 0, 'Token disabled'
    if address(stor5.field_8) != msg.sender:
        revert with 0, 'Proxy is the only allowed calle'
    if upgradedTokenAddress:
        require ext_code.size(upgradedTokenAddress)
        call upgradedTokenAddress.0x2376fe70 with:
             gas gas_remaining wei
            args address(arg1), address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return bool(ext_call.return_data[0])
    if not uint8(stor5.field_168):
        revert with 0, 'Token disabled'
    require not stor2
    require ext_code.size(address(stor7.field_0))
    if not uint8(stor7.field_160):
        call address(stor7.field_0).isBlacklisted(address arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, '%no access'
    else:
        call address(stor7.field_0).0x95a078e8 with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, '%no access'
    require ext_code.size(address(stor7.field_0))
    if not uint8(stor7.field_160):
        call address(stor7.field_0).isBlacklisted(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, '%no access'
    else:
        call address(stor7.field_0).0x95a078e8 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, '%no access'
    require arg2
    require ext_code.size(externalStorageAddress)
    call externalStorageAddress.setAllowed(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x728c5be1: arg3, arg1, arg2
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if upgradedTokenAddress:
        require ext_code.size(upgradedTokenAddress)
        call upgradedTokenAddress.0x4733dc8f with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return bool(ext_call.return_data[0])
    if not uint8(stor5.field_168):
        revert with 0, 'Token disabled'
    require not stor2
    require ext_code.size(address(stor7.field_0))
    if not uint8(stor7.field_160):
        call address(stor7.field_0).isBlacklisted(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, '%no access'
    else:
        call address(stor7.field_0).0x95a078e8 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, '%no access'
    require ext_code.size(address(stor7.field_0))
    if not uint8(stor7.field_160):
        call address(stor7.field_0).isBlacklisted(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, '%no access'
    else:
        call address(stor7.field_0).0x95a078e8 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, '%no access'
    require arg1
    require ext_code.size(externalStorageAddress)
    call externalStorageAddress.decreaseBalance(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(externalStorageAddress)
    call externalStorageAddress.increaseBalance(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    if upgradedTokenAddress:
        require ext_code.size(upgradedTokenAddress)
        call upgradedTokenAddress.0x9412be65 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if not uint8(stor5.field_168):
            revert with 0, 'Token disabled'
        require msg.sender
        if not stor8[address(msg.sender)]:
            revert with 0, 'not burner'
        require ext_code.size(externalStorageAddress)
        call externalStorageAddress.getAllowed(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(arg1), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg2 <= ext_call.return_data[0]
        require ext_code.size(externalStorageAddress)
        call externalStorageAddress.decreaseAllowed(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(arg1), msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require arg1
        require ext_code.size(externalStorageAddress)
        call externalStorageAddress.getTotalSupply() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg2 <= ext_call.return_data[0]
        require ext_code.size(externalStorageAddress)
        call externalStorageAddress.setTotalSupply(uint256 arg1) with:
             gas gas_remaining wei
            args (ext_call.return_data[0] - arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(externalStorageAddress)
        call externalStorageAddress.decreaseBalance(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Transfer(arg2, arg1, 0);
        require ext_code.size(externalStorageAddress)
        call externalStorageAddress.getAllowed(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(arg1), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0x728c5be1: ext_call.return_data[0], arg1, msg.sender
}

function increaseAllowance(address arg1, uint256 arg2) {
    if upgradedTokenAddress:
        require ext_code.size(upgradedTokenAddress)
        call upgradedTokenAddress.0x82bcef79 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return bool(ext_call.return_data[0])
    if not uint8(stor5.field_168):
        revert with 0, 'Token disabled'
    require not stor2
    require ext_code.size(address(stor7.field_0))
    if not uint8(stor7.field_160):
        call address(stor7.field_0).isBlacklisted(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, '%no access'
    else:
        call address(stor7.field_0).0x95a078e8 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, '%no access'
    require ext_code.size(address(stor7.field_0))
    if not uint8(stor7.field_160):
        call address(stor7.field_0).isBlacklisted(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, '%no access'
    else:
        call address(stor7.field_0).0x95a078e8 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, '%no access'
    require arg1
    require ext_code.size(externalStorageAddress)
    call externalStorageAddress.increaseAllowed(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(externalStorageAddress)
    call externalStorageAddress.getAllowed(address arg1, address arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x728c5be1: ext_call.return_data[0], msg.sender, arg1
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    if upgradedTokenAddress:
        require ext_code.size(upgradedTokenAddress)
        call upgradedTokenAddress.decreaseAllowanceProxy(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return bool(ext_call.return_data[0])
    if not uint8(stor5.field_168):
        revert with 0, 'Token disabled'
    require not stor2
    require ext_code.size(address(stor7.field_0))
    if not uint8(stor7.field_160):
        call address(stor7.field_0).isBlacklisted(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, '%no access'
    else:
        call address(stor7.field_0).0x95a078e8 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, '%no access'
    require ext_code.size(address(stor7.field_0))
    if not uint8(stor7.field_160):
        call address(stor7.field_0).isBlacklisted(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, '%no access'
    else:
        call address(stor7.field_0).0x95a078e8 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, '%no access'
    require arg1
    require ext_code.size(externalStorageAddress)
    call externalStorageAddress.decreaseAllowed(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(externalStorageAddress)
    call externalStorageAddress.getAllowed(address arg1, address arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x728c5be1: ext_call.return_data[0], msg.sender, arg1
    return 1
}

function burnFromProxy(address arg1, address arg2, uint256 arg3) {
    if not uint8(stor5.field_168):
        revert with 0, 'Token disabled'
    if address(stor5.field_8) != msg.sender:
        revert with 0, 'Proxy is the only allowed calle'
    if upgradedTokenAddress:
        require ext_code.size(upgradedTokenAddress)
        call upgradedTokenAddress.0x9412be65 with:
             gas gas_remaining wei
            args address(arg1), address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if not uint8(stor5.field_168):
            revert with 0, 'Token disabled'
        require arg1
        if not stor8[address(arg1)]:
            revert with 0, 'not burner'
        require ext_code.size(externalStorageAddress)
        call externalStorageAddress.getAllowed(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(arg2), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg3 <= ext_call.return_data[0]
        require ext_code.size(externalStorageAddress)
        call externalStorageAddress.decreaseAllowed(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(arg2), address(arg1), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require arg2
        require ext_code.size(externalStorageAddress)
        call externalStorageAddress.getTotalSupply() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg3 <= ext_call.return_data[0]
        require ext_code.size(externalStorageAddress)
        call externalStorageAddress.setTotalSupply(uint256 arg1) with:
             gas gas_remaining wei
            args (ext_call.return_data[0] - arg3)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(externalStorageAddress)
        call externalStorageAddress.decreaseBalance(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Transfer(arg3, arg2, 0);
        require ext_code.size(externalStorageAddress)
        call externalStorageAddress.getAllowed(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(arg2), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0x728c5be1: ext_call.return_data[0], arg2, arg1
}

function transferProxy(address arg1, address arg2, uint256 arg3) {
    if not uint8(stor5.field_168):
        revert with 0, 'Token disabled'
    if address(stor5.field_8) != msg.sender:
        revert with 0, 'Proxy is the only allowed calle'
    if upgradedTokenAddress:
        require ext_code.size(upgradedTokenAddress)
        call upgradedTokenAddress.0x4733dc8f with:
             gas gas_remaining wei
            args address(arg1), address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return bool(ext_call.return_data[0])
    if not uint8(stor5.field_168):
        revert with 0, 'Token disabled'
    require not stor2
    require ext_code.size(address(stor7.field_0))
    if not uint8(stor7.field_160):
        call address(stor7.field_0).isBlacklisted(address arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, '%no access'
    else:
        call address(stor7.field_0).0x95a078e8 with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, '%no access'
    require ext_code.size(address(stor7.field_0))
    if not uint8(stor7.field_160):
        call address(stor7.field_0).isBlacklisted(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, '%no access'
    else:
        call address(stor7.field_0).0x95a078e8 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, '%no access'
    require arg2
    require ext_code.size(externalStorageAddress)
    call externalStorageAddress.decreaseBalance(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(externalStorageAddress)
    call externalStorageAddress.increaseBalance(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function increaseAllowanceProxy(address arg1, address arg2, uint256 arg3) {
    if not uint8(stor5.field_168):
        revert with 0, 'Token disabled'
    if address(stor5.field_8) != msg.sender:
        revert with 0, 'Proxy is the only allowed calle'
    if upgradedTokenAddress:
        require ext_code.size(upgradedTokenAddress)
        call upgradedTokenAddress.0x82bcef79 with:
             gas gas_remaining wei
            args address(arg1), address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return bool(ext_call.return_data[0])
    if not uint8(stor5.field_168):
        revert with 0, 'Token disabled'
    require not stor2
    require ext_code.size(address(stor7.field_0))
    if not uint8(stor7.field_160):
        call address(stor7.field_0).isBlacklisted(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, '%no access'
    else:
        call address(stor7.field_0).0x95a078e8 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, '%no access'
    require ext_code.size(address(stor7.field_0))
    if not uint8(stor7.field_160):
        call address(stor7.field_0).isBlacklisted(address arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, '%no access'
    else:
        call address(stor7.field_0).0x95a078e8 with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, '%no access'
    require arg2
    require ext_code.size(externalStorageAddress)
    call externalStorageAddress.increaseAllowed(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(externalStorageAddress)
    call externalStorageAddress.getAllowed(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x728c5be1: ext_call.return_data[0], arg1, arg2
    return 1
}

function decreaseAllowanceProxy(address arg1, address arg2, uint256 arg3) {
    if not uint8(stor5.field_168):
        revert with 0, 'Token disabled'
    if address(stor5.field_8) != msg.sender:
        revert with 0, 'Proxy is the only allowed calle'
    if upgradedTokenAddress:
        require ext_code.size(upgradedTokenAddress)
        call upgradedTokenAddress.decreaseAllowanceProxy(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(arg1), address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return bool(ext_call.return_data[0])
    if not uint8(stor5.field_168):
        revert with 0, 'Token disabled'
    require not stor2
    require ext_code.size(address(stor7.field_0))
    if not uint8(stor7.field_160):
        call address(stor7.field_0).isBlacklisted(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, '%no access'
    else:
        call address(stor7.field_0).0x95a078e8 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, '%no access'
    require ext_code.size(address(stor7.field_0))
    if not uint8(stor7.field_160):
        call address(stor7.field_0).isBlacklisted(address arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, '%no access'
    else:
        call address(stor7.field_0).0x95a078e8 with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, '%no access'
    require arg2
    require ext_code.size(externalStorageAddress)
    call externalStorageAddress.decreaseAllowed(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(externalStorageAddress)
    call externalStorageAddress.getAllowed(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x728c5be1: ext_call.return_data[0], arg1, arg2
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if upgradedTokenAddress:
        require ext_code.size(upgradedTokenAddress)
        call upgradedTokenAddress.0xb56d559a with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return bool(ext_call.return_data[0])
    if not uint8(stor5.field_168):
        revert with 0, 'Token disabled'
    require not stor2
    require ext_code.size(address(stor7.field_0))
    if not uint8(stor7.field_160):
        call address(stor7.field_0).isBlacklisted(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, '%no access'
    else:
        call address(stor7.field_0).0x95a078e8 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, '%no access'
    require ext_code.size(address(stor7.field_0))
    if not uint8(stor7.field_160):
        call address(stor7.field_0).isBlacklisted(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, '%no access'
    else:
        call address(stor7.field_0).0x95a078e8 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, '%no access'
    require ext_code.size(address(stor7.field_0))
    if not uint8(stor7.field_160):
        call address(stor7.field_0).isBlacklisted(address arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, '%no access'
    else:
        call address(stor7.field_0).0x95a078e8 with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, '%no access'
    require ext_code.size(externalStorageAddress)
    call externalStorageAddress.decreaseAllowed(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), msg.sender, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg2
    require ext_code.size(externalStorageAddress)
    call externalStorageAddress.decreaseBalance(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(externalStorageAddress)
    call externalStorageAddress.increaseBalance(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg3, arg1, arg2);
    require ext_code.size(externalStorageAddress)
    call externalStorageAddress.getAllowed(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(arg1), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x728c5be1: ext_call.return_data[0], arg1, msg.sender
    return 1
}

function transferFromProxy(address arg1, address arg2, address arg3, uint256 arg4) {
    if not uint8(stor5.field_168):
        revert with 0, 'Token disabled'
    if address(stor5.field_8) != msg.sender:
        revert with 0, 'Proxy is the only allowed calle'
    if upgradedTokenAddress:
        require ext_code.size(upgradedTokenAddress)
        call upgradedTokenAddress.0xb56d559a with:
             gas gas_remaining wei
            args 0, 0, address(arg2), address(arg3), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    else:
        if not uint8(stor5.field_168):
            revert with 0, 'Token disabled'
        require not stor2
        require ext_code.size(address(stor7.field_0))
        if not uint8(stor7.field_160):
            call address(stor7.field_0).isBlacklisted(address arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, '%no access'
        else:
            call address(stor7.field_0).0x95a078e8 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, '%no access'
        require ext_code.size(address(stor7.field_0))
        if not uint8(stor7.field_160):
            call address(stor7.field_0).isBlacklisted(address arg1) with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, '%no access'
        else:
            call address(stor7.field_0).0x95a078e8 with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, '%no access'
        require ext_code.size(address(stor7.field_0))
        if not uint8(stor7.field_160):
            call address(stor7.field_0).isBlacklisted(address arg1) with:
                 gas gas_remaining wei
                args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, '%no access'
        else:
            call address(stor7.field_0).0x95a078e8 with:
                 gas gas_remaining wei
                args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, '%no access'
        require ext_code.size(externalStorageAddress)
        call externalStorageAddress.decreaseAllowed(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(arg2), address(arg1), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require arg3
        require ext_code.size(externalStorageAddress)
        call externalStorageAddress.decreaseBalance(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(externalStorageAddress)
        call externalStorageAddress.increaseBalance(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg3), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Transfer(arg4, arg2, arg3);
        require ext_code.size(externalStorageAddress)
        call externalStorageAddress.getAllowed(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(arg2), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0x728c5be1: ext_call.return_data[0], arg2, arg1
    return 0
}



}
