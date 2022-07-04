contract main {




// =====================  Runtime code  =====================


#
#  - sub_0610288d(?)
#
function _fallback() payable {
    revert
}

function sub_4870c3c9(?) {
    require calldata.size - 4 >= 64
    require arg2 == 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.tab(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x9f8f72aa9304c8b593d555f12ef6589cc3a579a2)
    staticcall 0x9f8f72aa9304c8b593d555f12ef6589cc3a579a2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
        require ext_call.return_data[0]
        if ext_call.return_data[0] >= ext_call.return_data[0] / 2 / ext_call.return_data[0]:
            return ext_call.return_data[0]
        if (ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ext_call.return_data[0] > ext_call.return_data[0] / 2 / ext_call.return_data[0]:
            revert with 0, 'ds-math-sub-underflow'
        require ext_code.size(0xca3c70f65f8e9dac0ac3527af980b1d914f9c7c2)
        staticcall 0xca3c70f65f8e9dac0ac3527af980b1d914f9c7c2.0xfa67ca36 with:
                gas gas_remaining wei
               args 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359, 0x9f8f72aa9304c8b593d555f12ef6589cc3a579a2, (ext_call.return_data[0] / 2 / ext_call.return_data[0]) - ext_call.return_data[0]
    else:
        require (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
        if ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'ds-math-mul-overflow'
        if (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 < ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
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
        if 10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / 10^18 != (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
            revert with 0, 'ds-math-mul-overflow'
        if (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) < 10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
            revert with 0, 'ds-math-add-overflow'
        require ext_call.return_data[0]
        if ext_call.return_data[0] >= (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
            return ext_call.return_data[0]
        if ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ext_call.return_data[0] > (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
            revert with 0, 'ds-math-sub-underflow'
        require ext_code.size(0xca3c70f65f8e9dac0ac3527af980b1d914f9c7c2)
        staticcall 0xca3c70f65f8e9dac0ac3527af980b1d914f9c7c2.0xfa67ca36 with:
                gas gas_remaining wei
               args 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359, 0x9f8f72aa9304c8b593d555f12ef6589cc3a579a2, ((10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) - ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'ds-math-add-overflow'
    return (2 * ext_call.return_data[0])
}

function sub_1f2f90fc(?) payable {
    require calldata.size - 4 >= 160
    require not arg4
    require arg2 == 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359
    if arg1:
        require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
        call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit() with:
           value arg5 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
        staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.per() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 1000000000 * 10^18 * arg5 / 1000000000 * 10^18 != arg5:
            revert with 0, 'ds-math-mul-overflow'
        if (1000000000 * 10^18 * arg5) + (ext_call.return_data[0] / 2) < 1000000000 * 10^18 * arg5:
            revert with 0, 'ds-math-add-overflow'
        require ext_call.return_data[0]
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
        call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.join(uint256 arg1) with:
             gas gas_remaining wei
            args ((1000000000 * 10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xf53ad2c6851052a81b42133467480961b2321c09)
        staticcall 0xf53ad2c6851052a81b42133467480961b2321c09.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), 0x448a5065aebb8e423f0896e6c5d525c040f59af3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != -1:
            require ext_code.size(0xf53ad2c6851052a81b42133467480961b2321c09)
            call 0xf53ad2c6851052a81b42133467480961b2321c09.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x448a5065aebb8e423f0896e6c5d525c040f59af3, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
        call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.lock(bytes32 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg1, (1000000000 * 10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
        staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.tag() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not (1000000000 * 10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
            if arg3 / 2 < 0:
                revert with 0, 'ds-math-add-overflow'
            require arg3
            require ext_code.size(0x9b0f70df76165442ca6092939132bbaea77f2d7a)
            call 0x9b0f70df76165442ca6092939132bbaea77f2d7a.par() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 1000000000 * 10^18 * arg3 / 2 / arg3 / 1000000000 * 10^18 != arg3 / 2 / arg3:
                revert with 0, 'ds-math-mul-overflow'
            if (1000000000 * 10^18 * arg3 / 2 / arg3) + (ext_call.return_data[0] / 2) < 1000000000 * 10^18 * arg3 / 2 / arg3:
                revert with 0, 'ds-math-add-overflow'
            require ext_call.return_data[0]
            require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
            call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.draw(bytes32 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args arg1, (1000000000 * 10^18 * arg3 / 2 / arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x1c79f2b1: msg.sender
            return arg1, (1000000000 * 10^18 * arg3 / 2 / arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
        require (1000000000 * 10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
        if ext_call.return_data[0] * (1000000000 * 10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / (1000000000 * 10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'ds-math-mul-overflow'
        if (ext_call.return_data[0] * (1000000000 * 10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 < ext_call.return_data[0] * (1000000000 * 10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
            revert with 0, 'ds-math-add-overflow'
        if 10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / 10^18 != (ext_call.return_data[0] * (1000000000 * 10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
            revert with 0, 'ds-math-mul-overflow'
        if (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (arg3 / 2) < 10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
            revert with 0, 'ds-math-add-overflow'
        require arg3
        require ext_code.size(0x9b0f70df76165442ca6092939132bbaea77f2d7a)
        call 0x9b0f70df76165442ca6092939132bbaea77f2d7a.par() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 1000000000 * 10^18 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (arg3 / 2) / arg3 / 1000000000 * 10^18 != (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (arg3 / 2) / arg3:
            revert with 0, 'ds-math-mul-overflow'
        if (1000000000 * 10^18 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (arg3 / 2) / arg3) + (ext_call.return_data[0] / 2) < 1000000000 * 10^18 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (arg3 / 2) / arg3:
            revert with 0, 'ds-math-add-overflow'
        require ext_call.return_data[0]
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
        call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.draw(bytes32 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg1, (1000000000 * 10^18 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (arg3 / 2) / arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x1c79f2b1: msg.sender
        return arg1, 
               (1000000000 * 10^18 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (arg3 / 2) / arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.open() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
    call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit() with:
       value arg5 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.per() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 1000000000 * 10^18 * arg5 / 1000000000 * 10^18 != arg5:
        revert with 0, 'ds-math-mul-overflow'
    if (1000000000 * 10^18 * arg5) + (ext_call.return_data[0] / 2) < 1000000000 * 10^18 * arg5:
        revert with 0, 'ds-math-add-overflow'
    require ext_call.return_data[0]
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.join(uint256 arg1) with:
         gas gas_remaining wei
        args ((1000000000 * 10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xf53ad2c6851052a81b42133467480961b2321c09)
    staticcall 0xf53ad2c6851052a81b42133467480961b2321c09.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), 0x448a5065aebb8e423f0896e6c5d525c040f59af3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != -1:
        require ext_code.size(0xf53ad2c6851052a81b42133467480961b2321c09)
        call 0xf53ad2c6851052a81b42133467480961b2321c09.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x448a5065aebb8e423f0896e6c5d525c040f59af3, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.lock(bytes32 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], (1000000000 * 10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.tag() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not (1000000000 * 10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
        if arg3 / 2 < 0:
            revert with 0, 'ds-math-add-overflow'
        require arg3
        require ext_code.size(0x9b0f70df76165442ca6092939132bbaea77f2d7a)
        call 0x9b0f70df76165442ca6092939132bbaea77f2d7a.par() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 1000000000 * 10^18 * arg3 / 2 / arg3 / 1000000000 * 10^18 != arg3 / 2 / arg3:
            revert with 0, 'ds-math-mul-overflow'
        if (1000000000 * 10^18 * arg3 / 2 / arg3) + (ext_call.return_data[0] / 2) < 1000000000 * 10^18 * arg3 / 2 / arg3:
            revert with 0, 'ds-math-add-overflow'
        require ext_call.return_data[0]
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
        call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.draw(bytes32 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], (1000000000 * 10^18 * arg3 / 2 / arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x1c79f2b1: msg.sender
        return ext_call.return_data[0], 
               (1000000000 * 10^18 * arg3 / 2 / arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
    require (1000000000 * 10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
    if ext_call.return_data[0] * (1000000000 * 10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / (1000000000 * 10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'ds-math-mul-overflow'
    if (ext_call.return_data[0] * (1000000000 * 10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 < ext_call.return_data[0] * (1000000000 * 10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
        revert with 0, 'ds-math-add-overflow'
    if 10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / 10^18 != (ext_call.return_data[0] * (1000000000 * 10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
        revert with 0, 'ds-math-mul-overflow'
    if (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (arg3 / 2) < 10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
        revert with 0, 'ds-math-add-overflow'
    require arg3
    require ext_code.size(0x9b0f70df76165442ca6092939132bbaea77f2d7a)
    call 0x9b0f70df76165442ca6092939132bbaea77f2d7a.par() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 1000000000 * 10^18 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (arg3 / 2) / arg3 / 1000000000 * 10^18 != (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (arg3 / 2) / arg3:
        revert with 0, 'ds-math-mul-overflow'
    if (1000000000 * 10^18 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (arg3 / 2) / arg3) + (ext_call.return_data[0] / 2) < 1000000000 * 10^18 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (arg3 / 2) / arg3:
        revert with 0, 'ds-math-add-overflow'
    require ext_call.return_data[0]
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.draw(bytes32 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], (1000000000 * 10^18 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (arg3 / 2) / arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x1c79f2b1: msg.sender
    return ext_call.return_data[0], 
           (1000000000 * 10^18 * (10^18 * (ext_call.return_data[0] * (1000000000 * 10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (arg3 / 2) / arg3) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
}



}
