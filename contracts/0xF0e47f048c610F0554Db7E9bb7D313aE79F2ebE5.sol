contract main {




// =====================  Runtime code  =====================


address legacyTokenAddress;
address newTokenAddress;

function legacyToken() payable {
    return legacyTokenAddress
}

function newToken() payable {
    return newTokenAddress
}

function _fallback() payable {
    revert
}

function beginMigration(address arg1) payable {
    require calldata.size - 4 >= 32
    require not newTokenAddress
    require arg1
    require ext_code.size(arg1)
    staticcall arg1.isMinter(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    newTokenAddress = arg1
}

function migrate(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require newTokenAddress
    require ext_code.size(legacyTokenAddress) > 0
    mem[228 len 96] = unknown_0x23b872dd(?????), address(arg1) << 64, 0, address(this.address), Mask(224, 32, arg2) >> 32
    call legacyTokenAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[324 len 4]
    if not return_data.size:
        require ext_call.success
        require unknown_0x23b872dd(?????), address(arg1) << 64
    else:
        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require ext_call.success
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[260]
    require ext_code.size(newTokenAddress)
    call newTokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function migrateAll(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(legacyTokenAddress)
    staticcall legacyTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(legacyTokenAddress)
    staticcall legacyTokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(arg1), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require newTokenAddress
    require ext_code.size(legacyTokenAddress) > 0
    mem[228 len 96] = unknown_0x23b872dd(?????), address(arg1) << 64, 0, address(this.address), ext_call.return_data[0 len 28]
    call legacyTokenAddress with:
         gas gas_remaining wei
        args Mask(736, -512, ext_call.return_data[0 len 28]) << 512, mem[324 len 4]
    if not return_data.size:
        require ext_call.success
        require unknown_0x23b872dd(?????), address(arg1) << 64
    else:
        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require ext_call.success
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[260]
    require ext_code.size(newTokenAddress)
    call newTokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
