contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_21650426(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.rap(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.tab(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 1000000000 * 10^18 * ext_call.return_data[0] / 1000000000 * 10^18 != ext_call.return_data[0]:
        revert with 0, 'ds-math-mul-overflow'
    if (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) < 1000000000 * 10^18 * ext_call.return_data[0]:
        revert with 0, 'ds-math-add-overflow'
    require ext_call.return_data[0]
    if not (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
        require ext_code.size(0x99041f808d598b782d5a3e498681c2452a31da08)
        staticcall 0x99041f808d598b782d5a3e498681c2452a31da08.peek() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not ext_call.return_data[32]:
            revert with 0, 'Unable to get mkr rate'
        if not ext_call.return_data[0]:
            revert with 0, 'Unable to get mkr rate'
        if ext_call.return_data[0] / 2 < 0:
            revert with 0, 'ds-math-add-overflow'
        if ext_call.return_data[0]:
            return (ext_call.return_data[0] / 2 / ext_call.return_data[0])
    else:
        if (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
            if arg2 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] != arg2:
                revert with 0, 'ds-math-mul-overflow'
            if (arg2 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 < arg2 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                revert with 0, 'ds-math-add-overflow'
            require ext_code.size(0x99041f808d598b782d5a3e498681c2452a31da08)
            staticcall 0x99041f808d598b782d5a3e498681c2452a31da08.peek() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if not ext_call.return_data[32]:
                revert with 0, 'Unable to get mkr rate'
            if not ext_call.return_data[0]:
                revert with 0, 'Unable to get mkr rate'
            if 10^18 * (arg2 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / 10^18 != (arg2 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
                revert with 0, 'ds-math-mul-overflow'
            if (10^18 * (arg2 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) < 10^18 * (arg2 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
                revert with 0, 'ds-math-add-overflow'
            if ext_call.return_data[0]:
                return ((10^18 * (arg2 * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
    revert
}



}
