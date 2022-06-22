contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 2940]




// =====================  Runtime code  =====================


function sub_42289c40(?) payable {
    require ext_code.size(address(call.data[4]))
    if Mask(8, 248, call.data[4]):
        call address(call.data[4]).getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining - 710 wei
            args address(call.data[36]), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, call.data[100], block.number
    else:
        call address(call.data[4]).getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining - 710 wei
            args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(call.data[36]), call.data[100], block.number
    require ext_call.success
    if 9999 * ext_call.return_data[0] / 10000 < call.data[68]:
        return 0
    return call.data[100], 0
}

function sub_b1058cfd(?) payable {
    if not Mask(8, 248, call.data[4]):
        require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
        call 0x818e6fecd516ecc3849daf6845e3ec868087b755.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
           value call.data[100] wei
             gas gas_remaining - 9710 wei
            args 0, 4008636142, call.data[100], address(call.data[36]), address(this.address), 0x8000000000000000000000000000000000000000000000000000000000000000, 1, address(this.address), 256, 0
        require ext_call.success
        require ext_call.return_data[0] > 0
    else:
        require ext_code.size(address(call.data[36]))
        call address(call.data[36]).balanceOf(address arg1) with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        if call.data[100] >= ext_call.return_data[0]:
            if ext_call.return_data[0]:
                require ext_code.size(address(call.data[36]))
                call address(call.data[36]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining - 710 wei
                    args 0x818e6fecd516ecc3849daf6845e3ec868087b755, ext_call.return_data[0]
                require ext_call.success
                require ext_call.return_data[0]
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                call 0x818e6fecd516ecc3849daf6845e3ec868087b755.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                     gas gas_remaining - 710 wei
                    args 0, 0, ext_call.return_data[0], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(this.address), 0x8000000000000000000000000000000000000000000000000000000000000000, 1, address(this.address), 256, 0
                require ext_call.success
                require ext_call.return_data[0] > 0
        else:
            if call.data[100]:
                require ext_code.size(address(call.data[36]))
                call address(call.data[36]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining - 710 wei
                    args 0x818e6fecd516ecc3849daf6845e3ec868087b755, call.data[100]
                require ext_call.success
                require ext_call.return_data[0]
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                call 0x818e6fecd516ecc3849daf6845e3ec868087b755.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                     gas gas_remaining - 710 wei
                    args 0, 0, call.data[100], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(this.address), 0x8000000000000000000000000000000000000000000000000000000000000000, 1, address(this.address), 256, 0
                require ext_call.success
                require ext_call.return_data[0] > 0
    return 0
}

function _fallback() payable {
    if unknown_0x42289c40(?????) == uint32(call.func_hash):
        require ext_code.size(address(call.data[4]))
        if Mask(8, 248, call.data[4]):
            call address(call.data[4]).getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                 gas gas_remaining - 710 wei
                args address(call.data[36]), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, call.data[100], block.number
        else:
            call address(call.data[4]).getConversionRate(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                 gas gas_remaining - 710 wei
                args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(call.data[36]), call.data[100], block.number
        require ext_call.success
        if 9999 * ext_call.return_data[0] / 10000 < call.data[68]:
            return 0
        return call.data[100], 0
    require unknown_0xb1058cfd(?????) == uint32(call.func_hash)
    if not Mask(8, 248, call.data[4]):
        require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
        call 0x818e6fecd516ecc3849daf6845e3ec868087b755.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
           value call.data[100] wei
             gas gas_remaining - 9710 wei
            args 0, 4008636142, call.data[100], address(call.data[36]), address(this.address), 0x8000000000000000000000000000000000000000000000000000000000000000, 1, address(this.address), 256, 0
        require ext_call.success
        require ext_call.return_data[0] > 0
    else:
        require ext_code.size(address(call.data[36]))
        call address(call.data[36]).balanceOf(address arg1) with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        if call.data[100] >= ext_call.return_data[0]:
            if ext_call.return_data[0]:
                require ext_code.size(address(call.data[36]))
                call address(call.data[36]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining - 710 wei
                    args 0x818e6fecd516ecc3849daf6845e3ec868087b755, ext_call.return_data[0]
                require ext_call.success
                require ext_call.return_data[0]
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                call 0x818e6fecd516ecc3849daf6845e3ec868087b755.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                     gas gas_remaining - 710 wei
                    args 0, 0, ext_call.return_data[0], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(this.address), 0x8000000000000000000000000000000000000000000000000000000000000000, 1, address(this.address), 256, 0
                require ext_call.success
                require ext_call.return_data[0] > 0
        else:
            if call.data[100]:
                require ext_code.size(address(call.data[36]))
                call address(call.data[36]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining - 710 wei
                    args 0x818e6fecd516ecc3849daf6845e3ec868087b755, call.data[100]
                require ext_call.success
                require ext_call.return_data[0]
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                call 0x818e6fecd516ecc3849daf6845e3ec868087b755.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                     gas gas_remaining - 710 wei
                    args 0, 0, call.data[100], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(this.address), 0x8000000000000000000000000000000000000000000000000000000000000000, 1, address(this.address), 256, 0
                require ext_call.success
                require ext_call.return_data[0] > 0
    return 0
}



}
