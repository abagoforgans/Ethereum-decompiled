contract main {




// =====================  Runtime code  =====================


const sub_adee57e5(?) = 1


address countryAddress;

function country() {
    return countryAddress
}

function _fallback() payable {
    revert
}

function sub_4327f2eb(?) {
    require ext_code.size(countryAddress)
    call countryAddress.0x8a95724d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint8(ext_call.return_data[0]):
        mem[128 len 32 * uint8(ext_call.return_data[0])] = code.data[1528 len 32 * uint8(ext_call.return_data[0])]
    idx = 0
    while uint8(idx) < uint8(ext_call.return_data[0]):
        require ext_code.size(countryAddress)
        call countryAddress.exists(uint256 arg1) with:
             gas gas_remaining wei
            args uint8(idx + 1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(countryAddress)
        if not ext_call.return_data[0]:
            call countryAddress.0xc151c7fa with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * uint8(ext_call.return_data[0])) + 132] = uint8(idx)
            require ext_code.size(countryAddress)
            call countryAddress.countryData(uint256 arg1) with:
                 gas gas_remaining wei
                args uint8(idx)
            mem[(32 * uint8(ext_call.return_data[0])) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require uint8(idx) < ext_call.return_data[31 len 1]
            mem[(32 * uint8(idx)) + 128] = uint16(ext_call.return_data[0]) << 176 or uint16(ext_call.return_data[0]) << 160
        else:
            call countryAddress.ownerOf(uint256 arg1) with:
                 gas gas_remaining wei
                args uint8(idx + 1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * uint8(ext_call.return_data[0])) + 132] = uint8(idx + 1)
            require ext_code.size(countryAddress)
            call countryAddress.getPacked(uint256 arg1) with:
                 gas gas_remaining wei
                args uint8(idx + 1)
            mem[(32 * uint8(ext_call.return_data[0])) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require uint8(idx) < ext_call.return_data[31 len 1]
            mem[(32 * uint8(idx)) + 128] = uint32(ext_call.return_data[0]) << 160 or address(ext_call.return_data[0])
        idx = idx + 1
        continue 
    mem[(32 * uint8(ext_call.return_data[0])) + 128] = 32
    mem[(32 * uint8(ext_call.return_data[0])) + 160] = ext_call.return_data[31 len 1]
    mem[(32 * uint8(ext_call.return_data[0])) + 192 len floor32(ext_call.return_data[31 len 1])] = mem[128 len floor32(ext_call.return_data[31 len 1])]
    return 32, mem[(32 * uint8(ext_call.return_data[0])) + 160 len (32 * ext_call.return_data[31 len 1]) + 32]
}



}
