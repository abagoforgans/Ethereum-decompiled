contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = code.data[1213 len 20]
    return code.data[83 len 1118]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint256 contributions;
uint256 contributedTotal;

function contributions(address arg1) {
    return contributions[arg1]
}

function contributedTotal() {
    return contributedTotal
}

function getContributionOf(address arg1) {
    return contributions[address(arg1)]
}

function _fallback() payable {
    revert
}

function setDepositAddressVerify() {
    require ext_code.size(stor0)
    call stor0.0x179c537e with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
}

function claimReserveTokens() {
    require ext_code.size(stor0)
    call stor0.0x6932c9c5 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0xff5bc8a7 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0]), ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0x4aa83079 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    emit ClaimTokens(address(this.address), msg.sender, ext_call.return_data[0]);
}



}
