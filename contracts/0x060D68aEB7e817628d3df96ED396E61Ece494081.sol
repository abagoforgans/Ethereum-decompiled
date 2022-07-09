contract main {




// =====================  Runtime code  =====================


address owner;
address azimuthAddress;
uint256 price;

function owner() {
    return owner
}

function price() {
    return price
}

function azimuth() {
    return azimuthAddress
}

function close(address arg1) {
    require msg.sender == owner
    require arg1
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
}

function setPrice(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    price = arg1
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

function withdraw(address arg1) {
    require msg.sender == owner
    require arg1
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function available(uint32 arg1) {
    require ext_code.size(azimuthAddress)
    call azimuthAddress.getPrefix(uint32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(azimuthAddress)
    call azimuthAddress.isOwner(uint32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg1 << 224, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(azimuthAddress)
        call azimuthAddress.isSpawnProxy(uint32 arg1, address arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0] << 240, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(azimuthAddress)
            call azimuthAddress.hasBeenLinked(uint32 arg1) with:
                 gas gas_remaining wei
                args uint16(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function purchase(uint32 arg1) payable {
    require msg.value == price
    require ext_code.size(azimuthAddress)
    call azimuthAddress.getPrefix(uint32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(azimuthAddress)
    call azimuthAddress.isOwner(uint32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg1 << 224, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.isSpawnProxy(uint32 arg1, address arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0] << 240, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.hasBeenLinked(uint32 arg1) with:
         gas gas_remaining wei
        args uint16(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).spawn(uint32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg1 << 224, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).transferPoint(uint32 arg1, address arg2, bool arg3) with:
         gas gas_remaining wei
        args arg1 << 224, msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(azimuthAddress)
    call azimuthAddress.getPrefix(uint32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x74bf1310: ext_call.return_data[30 len 2], arg1
}



}
