contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_4870c3c9(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.sai() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 == ext_call.return_data[12 len 20]
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
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'ds-math-add-overflow'
    return (2 * ext_call.return_data[0])
}

function sub_1f2f90fc(?) payable {
    require calldata.size - 4 >= 160
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.gem() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.skr() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.sai() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg4 == address(ext_call.return_data[0])
    require arg2 == ext_call.return_data[12 len 20]
    if arg1:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), 0x448a5065aebb8e423f0896e6c5d525c040f59af3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != -1:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x448a5065aebb8e423f0896e6c5d525c040f59af3, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
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
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), 0x448a5065aebb8e423f0896e6c5d525c040f59af3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != -1:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
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
        call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.draw(bytes32 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg1, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x1c79f2b1: msg.sender
        return arg1
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.open() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), 0x448a5065aebb8e423f0896e6c5d525c040f59af3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != -1:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x448a5065aebb8e423f0896e6c5d525c040f59af3, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
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
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), 0x448a5065aebb8e423f0896e6c5d525c040f59af3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != -1:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
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
    call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.draw(bytes32 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x1c79f2b1: msg.sender
    return ext_call.return_data[0]
}

function sub_0610288d(?) payable {
    require calldata.size - 4 >= 160
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.gem() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.skr() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.sai() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.gov() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg4 == address(ext_call.return_data[0])
    require arg2 == address(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), 0x448a5065aebb8e423f0896e6c5d525c040f59af3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if ext_call.return_data[0] != -1:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x448a5065aebb8e423f0896e6c5d525c040f59af3, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), 0x448a5065aebb8e423f0896e6c5d525c040f59af3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != -1:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x448a5065aebb8e423f0896e6c5d525c040f59af3, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    if arg3 != -1:
        call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.wipe(bytes32 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg1, arg3
    else:
        call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.tab(bytes32 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
        call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.wipe(bytes32 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
    if arg5 == -1:
        staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.ink(bytes32 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
        call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.free(bytes32 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg1, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), 0x448a5065aebb8e423f0896e6c5d525c040f59af3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != -1:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x448a5065aebb8e423f0896e6c5d525c040f59af3, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
        call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.exit(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
    else:
        staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.tag() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
        staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.ink(bytes32 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
            staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.vox() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).par() with:
                 gas gas_remaining wei
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
            if not ext_call.return_data[0]:
                if arg5:
                    require arg5
                    if 0 / arg5:
                        revert with 0, 'ds-math-mul-overflow'
                if ext_call.return_data[0] / 2 < 0:
                    revert with 0, 'ds-math-add-overflow'
                require ext_call.return_data[0]
                require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.free(bytes32 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg1, ext_call.return_data[0] / 2 / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), 0x448a5065aebb8e423f0896e6c5d525c040f59af3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] != -1:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x448a5065aebb8e423f0896e6c5d525c040f59af3, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.exit(uint256 arg1) with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] / 2 / ext_call.return_data[0])
            else:
                require ext_call.return_data[0]
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
                if (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 < ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, 'ds-math-add-overflow'
                if not arg5:
                    if ext_call.return_data[0] / 2 < 0:
                        revert with 0, 'ds-math-add-overflow'
                    require ext_call.return_data[0]
                    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
                    call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.free(bytes32 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args arg1, ext_call.return_data[0] / 2 / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0x448a5065aebb8e423f0896e6c5d525c040f59af3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] != -1:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x448a5065aebb8e423f0896e6c5d525c040f59af3, -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
                    call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.exit(uint256 arg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] / 2 / ext_call.return_data[0])
                else:
                    require arg5
                    if (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * arg5 / arg5 != (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
                        revert with 0, 'ds-math-mul-overflow'
                    if ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * arg5) + 5 * 10^17 < (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * arg5:
                        revert with 0, 'ds-math-add-overflow'
                    if -((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * arg5) + 5 * 10^17 / 10^18 > 0:
                        revert with 0, 'ds-math-sub-underflow'
                    if -1000000000 * 10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * arg5) + 5 * 10^17 / 10^18 / 1000000000 * 10^18 != -((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * arg5) + 5 * 10^17 / 10^18:
                        revert with 0, 'ds-math-mul-overflow'
                    if (-1000000000 * 10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * arg5) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) < -1000000000 * 10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * arg5) + 5 * 10^17 / 10^18:
                        revert with 0, 'ds-math-add-overflow'
                    require ext_call.return_data[0]
                    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
                    call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.free(bytes32 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args arg1, (-1000000000 * 10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * arg5) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0x448a5065aebb8e423f0896e6c5d525c040f59af3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] != -1:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x448a5065aebb8e423f0896e6c5d525c040f59af3, -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
                    call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.exit(uint256 arg1) with:
                         gas gas_remaining wei
                        args ((-1000000000 * 10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * arg5) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
        else:
            require ext_call.return_data[0]
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            if (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 < ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, 'ds-math-add-overflow'
            require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
            staticcall 0x448a5065aebb8e423f0896e6c5d525c040f59af3.vox() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).par() with:
                 gas gas_remaining wei
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
            if not ext_call.return_data[0]:
                if arg5:
                    require arg5
                    if 0 / arg5:
                        revert with 0, 'ds-math-mul-overflow'
                if (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 > (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
                    revert with 0, 'ds-math-sub-underflow'
                if 1000000000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / 1000000000 * 10^18 != (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
                    revert with 0, 'ds-math-mul-overflow'
                if (1000000000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) < 1000000000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
                    revert with 0, 'ds-math-add-overflow'
                require ext_call.return_data[0]
                require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.free(bytes32 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg1, (1000000000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), 0x448a5065aebb8e423f0896e6c5d525c040f59af3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] != -1:
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x448a5065aebb8e423f0896e6c5d525c040f59af3, -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
                call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.exit(uint256 arg1) with:
                     gas gas_remaining wei
                    args ((1000000000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
            else:
                require ext_call.return_data[0]
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
                if (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 < ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, 'ds-math-add-overflow'
                if not arg5:
                    if (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 > (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
                        revert with 0, 'ds-math-sub-underflow'
                    if 1000000000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 / 1000000000 * 10^18 != (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000000000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) < 1000000000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
                        revert with 0, 'ds-math-add-overflow'
                    require ext_call.return_data[0]
                    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
                    call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.free(bytes32 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args arg1, (1000000000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0x448a5065aebb8e423f0896e6c5d525c040f59af3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] != -1:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x448a5065aebb8e423f0896e6c5d525c040f59af3, -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
                    call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.exit(uint256 arg1) with:
                         gas gas_remaining wei
                        args ((1000000000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
                else:
                    require arg5
                    if (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * arg5 / arg5 != (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
                        revert with 0, 'ds-math-mul-overflow'
                    if ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * arg5) + 5 * 10^17 < (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * arg5:
                        revert with 0, 'ds-math-add-overflow'
                    if ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * arg5) + 5 * 10^17 / 10^18) > (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18:
                        revert with 0, 'ds-math-sub-underflow'
                    if (1000000000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (1000000000 * 10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * arg5) + 5 * 10^17 / 10^18) / 1000000000 * 10^18 != ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * arg5) + 5 * 10^17 / 10^18):
                        revert with 0, 'ds-math-mul-overflow'
                    if ext_call.return_data[0] / 2 < 0:
                        revert with 0, 'ds-math-add-overflow'
                    require ext_call.return_data[0]
                    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
                    call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.free(bytes32 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args arg1, (1000000000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (1000000000 * 10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * arg5) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0x448a5065aebb8e423f0896e6c5d525c040f59af3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] != -1:
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args 0x448a5065aebb8e423f0896e6c5d525c040f59af3, -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                    require ext_code.size(0x448a5065aebb8e423f0896e6c5d525c040f59af3)
                    call 0x448a5065aebb8e423f0896e6c5d525c040f59af3.exit(uint256 arg1) with:
                         gas gas_remaining wei
                        args ((1000000000 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18) - (1000000000 * 10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18 * arg5) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x6928a64f: msg.sender
}



}
