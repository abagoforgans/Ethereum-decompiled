contract main {




// =====================  Runtime code  =====================


const getAddressKyber = 0x818e6fecd516ecc3849daf6845e3ec868087b755

const getAddressETH = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee

const getAddressAdmin = 0x7284a8451d9a0e7dc62b3a71c0593ea2ec5c5638

const sub_c0784198(?) = 200


uint256 version;

function version() {
    return version
}

function _fallback() payable {
    revert
}

function sub_c7d85a56(?) {
    require calldata.size - 4 >= 64
    if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        return eth.balance(arg2), 0
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return eth.balance(arg2), ext_call.return_data[0]
}

function getExpectedRate(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
    staticcall 0x818e6fecd516ecc3849daf6845e3ec868087b755.0x809a9e55 with:
            gas gas_remaining wei
           args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], 99 * ext_call.return_data[0] / 100
}

function sell(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        if arg3 != msg.value:
            revert with 0, 'not-enough-src'
        require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
        call 0x818e6fecd516ecc3849daf6845e3ec868087b755.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
           value arg3 wei
             gas gas_remaining wei
            args 0, 0, arg3, address(arg2), msg.sender, 0x8000000000000000000000000000000000000000000000000000000000000000, arg4, 0x7284a8451d9a0e7dc62b3a71c0593ea2ec5c5638
    else:
        require ext_code.size(arg1)
        staticcall arg1.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), 0x818e6fecd516ecc3849daf6845e3ec868087b755
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        if arg3 > ext_call.return_data[0]:
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x818e6fecd516ecc3849daf6845e3ec868087b755, 0x8000000000000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
        call 0x818e6fecd516ecc3849daf6845e3ec868087b755.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
             gas gas_remaining wei
            args 0, 0, arg3, address(arg2), msg.sender, 0x8000000000000000000000000000000000000000000000000000000000000000, arg4, 0x7284a8451d9a0e7dc62b3a71c0593ea2ec5c5638
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x11e25872: 1, address(arg1), arg3, address(arg2), ext_call.return_data[0], address(msg.sender), arg4, 0x7284a8451d9a0e7dc62b3a71c0593ea2ec5c5638
    return ext_call.return_data[0]
}

function buy(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        if arg3 != msg.value:
            revert with 0, 'not-enough-src'
        require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
        call 0x818e6fecd516ecc3849daf6845e3ec868087b755.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
           value arg3 wei
             gas gas_remaining wei
            args 0, 0, arg3, address(arg2), msg.sender, arg4, arg5, 0x7284a8451d9a0e7dc62b3a71c0593ea2ec5c5638
    else:
        require ext_code.size(arg1)
        staticcall arg1.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), 0x818e6fecd516ecc3849daf6845e3ec868087b755
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        if arg3 > ext_call.return_data[0]:
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x818e6fecd516ecc3849daf6845e3ec868087b755, 0x8000000000000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x818e6fecd516ecc3849daf6845e3ec868087b755)
        call 0x818e6fecd516ecc3849daf6845e3ec868087b755.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
             gas gas_remaining wei
            args 0, 0, arg3, address(arg2), msg.sender, arg4, arg5, 0x7284a8451d9a0e7dc62b3a71c0593ea2ec5c5638
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) > 0:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if arg1 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    emit 0x11e25872: 0, address(arg1), arg3, address(arg2), ext_call.return_data[0], address(msg.sender), arg5, 0x7284a8451d9a0e7dc62b3a71c0593ea2ec5c5638
    return ext_call.return_data[0]
}



}
