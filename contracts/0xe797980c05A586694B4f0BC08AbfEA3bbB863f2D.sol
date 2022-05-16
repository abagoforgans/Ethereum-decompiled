contract main {




// =====================  Runtime code  =====================


address owner;
address adminAddress;
address sub_781bb4d8Address;
uint256 rate;
uint256 weiRaised;

function rate() {
    return rate
}

function weiRaised() {
    return weiRaised
}

function sub_781bb4d8(?) {
    return sub_781bb4d8Address
}

function owner() {
    return owner
}

function admin() {
    return adminAddress
}

function updateRate(uint256 arg1) {
    require msg.sender == adminAddress
    rate = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function sub_7d94ac37(?) {
    require msg.sender == owner
    require arg1
    emit 0xd777993e: adminAddress, arg1
    adminAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_bd32ab18(?) {
    require msg.sender == owner
    require ext_code.size(sub_781bb4d8Address)
    call sub_781bb4d8Address.0xf2fde38b with:
         gas gas_remaining wei
        args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function finishMinting() {
    require msg.sender == adminAddress
    require ext_code.size(sub_781bb4d8Address)
    call sub_781bb4d8Address.0x7d64bcb4 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == adminAddress
    require ext_code.size(sub_781bb4d8Address)
    call sub_781bb4d8Address.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function _fallback() payable {
    require msg.value >= 2 * 10^16
    require msg.sender
    require msg.value
    require rate * msg.value / msg.value == rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require ext_code.size(sub_781bb4d8Address)
    call sub_781bb4d8Address.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, rate * msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function buyTokens(address arg1) payable {
    require msg.value >= 2 * 10^16
    require arg1
    require msg.value
    require rate * msg.value / msg.value == rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require ext_code.size(sub_781bb4d8Address)
    call sub_781bb4d8Address.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), rate * msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
