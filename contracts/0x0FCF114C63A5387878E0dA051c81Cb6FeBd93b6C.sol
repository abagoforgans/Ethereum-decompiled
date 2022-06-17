contract main {




// =====================  Runtime code  =====================


address owner;
address marketplaceAddress;
address manaAddress;

function owner() {
    return owner
}

function marketplace() {
    return marketplaceAddress
}

function mana() {
    return manaAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1 == owner:
        revert with 0, 'Cannot transfer to yourself'
    owner = arg1
}

function pause() {
    require msg.sender == owner
    require ext_code.size(marketplaceAddress)
    call marketplaceAddress.0x8456cb59 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function unpause() {
    require msg.sender == owner
    require ext_code.size(marketplaceAddress)
    call marketplaceAddress.0x3f4ba83a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setOwnerCutPerMillion(uint256 arg1) {
    require msg.sender == owner
    require ext_code.size(marketplaceAddress)
    call marketplaceAddress.0x19dad16d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferMarketplaceOwnership(address arg1) {
    require msg.sender == owner
    require ext_code.size(marketplaceAddress)
    call marketplaceAddress.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function burn() {
    require ext_code.size(manaAddress)
    call manaAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(manaAddress)
    call manaAddress.0x42966c68 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
