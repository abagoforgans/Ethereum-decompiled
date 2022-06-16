contract main {




// =====================  Runtime code  =====================


address walletAddress;
address sub_b0ea7090Address;
address sub_0c5a57a0Address;
address sub_886f359dAddress;
address kncAddress;

function sub_0c5a57a0(?) {
    return sub_0c5a57a0Address
}

function wallet() {
    return walletAddress
}

function sub_886f359d(?) {
    return sub_886f359dAddress
}

function sub_b0ea7090(?) {
    return sub_b0ea7090Address
}

function knc() {
    return kncAddress
}

function _fallback() {
    require msg.sender == sub_0c5a57a0Address
    require 0 < calldata.size
    require uint8(call.func_hash) < 20
    require ext_code.size(walletAddress)
    call walletAddress.0x3616646f with:
         gas gas_remaining wei
        args sub_b0ea7090Address, 1000 * 10^18 * uint8(call.func_hash)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(kncAddress)
    call kncAddress.0xa9059cbb with:
         gas gas_remaining wei
        args sub_886f359dAddress, 1000 * 10^18 * uint8(call.func_hash)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(kncAddress)
    call kncAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
}



}
