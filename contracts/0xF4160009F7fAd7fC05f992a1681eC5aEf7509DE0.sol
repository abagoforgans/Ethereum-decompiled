contract main {




// =====================  Runtime code  =====================


address owner;
address azimuthAddress;
uint256 price;
uint32 sub_4e7b0a47;
mapping of uint256 shares;
mapping of uint256 released;
array of address payees;
uint256 totalShares;
uint256 totalReleased;

function totalShares() {
    return totalShares
}

function sub_4e7b0a47(?) {
    return sub_4e7b0a47
}

function payees(uint256 arg1) {
    require arg1 < payees.length
    return payees[arg1]
}

function owner() {
    return owner
}

function released(address arg1) {
    return released[arg1]
}

function price() {
    return price
}

function shares(address arg1) {
    return shares[arg1]
}

function azimuth() {
    return azimuthAddress
}

function totalReleased() {
    return totalReleased
}

function close(address arg1) {
    require msg.sender == owner
    require arg1
    require ext_code.size(azimuthAddress)
    call azimuthAddress.getOwner(uint32 arg1) with:
         gas gas_remaining wei
        args sub_4e7b0a47
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.sender == owner:
        require ext_call.return_data[12 len 20]
    else:
        require ext_code.size(azimuthAddress)
        call azimuthAddress.getOwner(uint32 arg1) with:
             gas gas_remaining wei
            args sub_4e7b0a47
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require msg.sender == ext_call.return_data[12 len 20]
        require address(ext_call.return_data[0])
    require 0 < shares[msg.sender]
    require totalReleased + eth.balance(this.address) >= eth.balance(this.address)
    if not totalReleased + eth.balance(this.address):
        require totalShares
        require released[address(msg.sender)] <= 0 / totalShares
        require (0 / totalShares) - released[address(msg.sender)]
        require (0 / totalShares) - released[address(msg.sender)] <= eth.balance(this.address)
        require 0 / totalShares >= released[address(msg.sender)]
        released[address(msg.sender)] = 0 / totalShares
        require (0 / totalShares) - released[address(msg.sender)] + totalReleased >= totalReleased
        totalReleased = (0 / totalShares) - released[address(msg.sender)] + totalReleased
        call address(ext_call.return_data[0]) with:
           value (0 / totalShares) - released[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
    else:
        require (totalReleased * shares[address(msg.sender)]) + (eth.balance(this.address) * shares[address(msg.sender)]) / totalReleased + eth.balance(this.address) == shares[address(msg.sender)]
        require totalShares
        require released[address(msg.sender)] <= (totalReleased * shares[address(msg.sender)]) + (eth.balance(this.address) * shares[address(msg.sender)]) / totalShares
        require ((totalReleased * shares[address(msg.sender)]) + (eth.balance(this.address) * shares[address(msg.sender)]) / totalShares) - released[address(msg.sender)]
        require ((totalReleased * shares[address(msg.sender)]) + (eth.balance(this.address) * shares[address(msg.sender)]) / totalShares) - released[address(msg.sender)] <= eth.balance(this.address)
        require (totalReleased * shares[address(msg.sender)]) + (eth.balance(this.address) * shares[address(msg.sender)]) / totalShares >= released[address(msg.sender)]
        released[address(msg.sender)] = (totalReleased * shares[address(msg.sender)]) + (eth.balance(this.address) * shares[address(msg.sender)]) / totalShares
        require ((totalReleased * shares[address(msg.sender)]) + (eth.balance(this.address) * shares[address(msg.sender)]) / totalShares) - released[address(msg.sender)] + totalReleased >= totalReleased
        totalReleased = ((totalReleased * shares[address(msg.sender)]) + (eth.balance(this.address) * shares[address(msg.sender)]) / totalShares) - released[address(msg.sender)] + totalReleased
        call address(ext_call.return_data[0]) with:
           value ((totalReleased * shares[address(msg.sender)]) + (eth.balance(this.address) * shares[address(msg.sender)]) / totalShares) - released[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function withdraw(address arg1) {
    if owner != msg.sender:
        require ext_code.size(azimuthAddress)
        call azimuthAddress.getOwner(uint32 arg1) with:
             gas gas_remaining wei
            args sub_4e7b0a47
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require msg.sender == ext_call.return_data[12 len 20]
    require arg1
    require 0 < shares[msg.sender]
    require totalReleased + eth.balance(this.address) >= eth.balance(this.address)
    if not totalReleased + eth.balance(this.address):
        require totalShares
        require released[address(msg.sender)] <= 0 / totalShares
        require (0 / totalShares) - released[address(msg.sender)]
        require (0 / totalShares) - released[address(msg.sender)] <= eth.balance(this.address)
        require 0 / totalShares >= released[address(msg.sender)]
        released[address(msg.sender)] = 0 / totalShares
        require (0 / totalShares) - released[address(msg.sender)] + totalReleased >= totalReleased
        totalReleased = (0 / totalShares) - released[address(msg.sender)] + totalReleased
        call arg1 with:
           value (0 / totalShares) - released[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
    else:
        require (totalReleased * shares[address(msg.sender)]) + (eth.balance(this.address) * shares[address(msg.sender)]) / totalReleased + eth.balance(this.address) == shares[address(msg.sender)]
        require totalShares
        require released[address(msg.sender)] <= (totalReleased * shares[address(msg.sender)]) + (eth.balance(this.address) * shares[address(msg.sender)]) / totalShares
        require ((totalReleased * shares[address(msg.sender)]) + (eth.balance(this.address) * shares[address(msg.sender)]) / totalShares) - released[address(msg.sender)]
        require ((totalReleased * shares[address(msg.sender)]) + (eth.balance(this.address) * shares[address(msg.sender)]) / totalShares) - released[address(msg.sender)] <= eth.balance(this.address)
        require (totalReleased * shares[address(msg.sender)]) + (eth.balance(this.address) * shares[address(msg.sender)]) / totalShares >= released[address(msg.sender)]
        released[address(msg.sender)] = (totalReleased * shares[address(msg.sender)]) + (eth.balance(this.address) * shares[address(msg.sender)]) / totalShares
        require ((totalReleased * shares[address(msg.sender)]) + (eth.balance(this.address) * shares[address(msg.sender)]) / totalShares) - released[address(msg.sender)] + totalReleased >= totalReleased
        totalReleased = ((totalReleased * shares[address(msg.sender)]) + (eth.balance(this.address) * shares[address(msg.sender)]) / totalShares) - released[address(msg.sender)] + totalReleased
        call arg1 with:
           value ((totalReleased * shares[address(msg.sender)]) + (eth.balance(this.address) * shares[address(msg.sender)]) / totalShares) - released[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
