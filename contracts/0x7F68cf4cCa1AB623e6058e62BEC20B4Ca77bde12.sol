contract main {




// =====================  Runtime code  =====================


const onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) = 0x150b7a0200000000000000000000000000000000000000000000000000000000


address sub_e69d1a25Address;
address sub_0956e09aAddress;
address codexCoinAddress;

function sub_0956e09a(?) {
    return sub_0956e09aAddress
}

function codexCoin() {
    return codexCoinAddress
}

function sub_e69d1a25(?) {
    return sub_e69d1a25Address
}

function _fallback() {
    require ext_code.size(sub_0956e09aAddress)
    call sub_0956e09aAddress.0x4522f26f with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, '1'
    require ext_code.size(sub_0956e09aAddress)
    call sub_0956e09aAddress.0xc5ae44de with:
         gas gas_remaining wei
        args call.func_hash
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(sub_0956e09aAddress)
        call sub_0956e09aAddress.feeRecipient() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(codexCoinAddress)
        call codexCoinAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, '2'
    call sub_e69d1a25Address with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
