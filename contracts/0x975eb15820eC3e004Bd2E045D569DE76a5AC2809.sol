contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 2931]




// =====================  Runtime code  =====================


function sub_2ceefe42(?) payable {
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    if Mask(8, 248, call.data[4]):
        call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining - 710 wei
            args address(call.data[4]), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, call.data[68]
    else:
        call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining - 710 wei
            args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(call.data[4]), call.data[68]
    require ext_call.success
    if 9999 * ext_call.return_data[0] / 10000 < call.data[36]:
        return 0
    return call.data[68], 0
}

function sub_83a20efa(?) payable {
    if not Mask(8, 248, call.data[4]):
        require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
        call 0x818e6fecd516ecc3849daf6845e3ec868087b755.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
           value call.data[68] wei
             gas gas_remaining - 9710 wei
            args 0, 0, call.data[96 len 4], address(call.data[4]), address(this.address), 0x8000000000000000000000000000000000000000000000000000000000000000, 1, address(this.address), 256, 0
        require ext_call.success
        require ext_call.return_data[0] > 0
    else:
        require ext_code.size(address(call.data[4]))
        call address(call.data[4]).0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        if call.data[68] >= ext_call.return_data[0]:
            if ext_call.return_data[0]:
                require ext_code.size(address(call.data[4]))
                call address(call.data[4]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining - 710 wei
                    args 0x818e6fecd516ecc3849daf6845e3ec868087b755, ext_call.return_data[0]
                require ext_call.success
                require ext_call.return_data[0]
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                call 0x818e6fecd516ecc3849daf6845e3ec868087b755.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                     gas gas_remaining - 710 wei
                    args 0, 0, ext_call.return_data[28 len 4], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(this.address), 0x8000000000000000000000000000000000000000000000000000000000000000, 1, address(this.address), 256, 0
                require ext_call.success
                require ext_call.return_data[0] > 0
        else:
            if call.data[68]:
                require ext_code.size(address(call.data[4]))
                call address(call.data[4]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining - 710 wei
                    args 0x818e6fecd516ecc3849daf6845e3ec868087b755, call.data[68]
                require ext_call.success
                require ext_call.return_data[0]
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                call 0x818e6fecd516ecc3849daf6845e3ec868087b755.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                     gas gas_remaining - 710 wei
                    args 0, 0, call.data[96 len 4], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(this.address), 0x8000000000000000000000000000000000000000000000000000000000000000, 1, address(this.address), 256, 0
                require ext_call.success
                require ext_call.return_data[0] > 0
    return 0
}

function _fallback() payable {
    if unknown_0x2ceefe42(?????) == uint32(call.func_hash):
        require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
        if Mask(8, 248, call.data[4]):
            call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining - 710 wei
                args address(call.data[4]), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, call.data[68]
        else:
            call 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining - 710 wei
                args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(call.data[4]), call.data[68]
        require ext_call.success
        if 9999 * ext_call.return_data[0] / 10000 < call.data[36]:
            return 0
        return call.data[68], 0
    require unknown_0x83a20efa(?????) == uint32(call.func_hash)
    if not Mask(8, 248, call.data[4]):
        require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
        call 0x818e6fecd516ecc3849daf6845e3ec868087b755.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
           value call.data[68] wei
             gas gas_remaining - 9710 wei
            args 0, 0, call.data[96 len 4], address(call.data[4]), address(this.address), 0x8000000000000000000000000000000000000000000000000000000000000000, 1, address(this.address), 256, 0
        require ext_call.success
        require ext_call.return_data[0] > 0
    else:
        require ext_code.size(address(call.data[4]))
        call address(call.data[4]).0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        if call.data[68] >= ext_call.return_data[0]:
            if ext_call.return_data[0]:
                require ext_code.size(address(call.data[4]))
                call address(call.data[4]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining - 710 wei
                    args 0x818e6fecd516ecc3849daf6845e3ec868087b755, ext_call.return_data[0]
                require ext_call.success
                require ext_call.return_data[0]
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                call 0x818e6fecd516ecc3849daf6845e3ec868087b755.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                     gas gas_remaining - 710 wei
                    args 0, 0, ext_call.return_data[28 len 4], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(this.address), 0x8000000000000000000000000000000000000000000000000000000000000000, 1, address(this.address), 256, 0
                require ext_call.success
                require ext_call.return_data[0] > 0
        else:
            if call.data[68]:
                require ext_code.size(address(call.data[4]))
                call address(call.data[4]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining - 710 wei
                    args 0x818e6fecd516ecc3849daf6845e3ec868087b755, call.data[68]
                require ext_call.success
                require ext_call.return_data[0]
                require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
                call 0x818e6fecd516ecc3849daf6845e3ec868087b755.tradeWithHint(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7, bytes arg8) with:
                     gas gas_remaining - 710 wei
                    args 0, 0, call.data[96 len 4], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(this.address), 0x8000000000000000000000000000000000000000000000000000000000000000, 1, address(this.address), 256, 0
                require ext_call.success
                require ext_call.return_data[0] > 0
    return 0
}



}
