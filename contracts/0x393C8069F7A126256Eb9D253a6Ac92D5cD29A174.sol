contract main {




// =====================  Runtime code  =====================


address userAddress;
address coordinatorAddress;
uint256 stor2;
uint8 stor3;

function coordinator() {
    return coordinatorAddress
}

function user() {
    return userAddress
}

function _fallback() payable {
    revert
}

function getInfo() {
    return stor2, userAddress
}

function withdraw(uint256 arg1) {
    require msg.sender == userAddress
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args 'token'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args userAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) {
    require msg.sender == userAddress
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args 'token'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8e7d5dba(?) {
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args 'ownerPool'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x252d5e81 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == stor2
    require ext_call.return_data[32] <= 2
    require ext_call.return_data[32] == 2
    stor2 = arg1
}

function setCoordinator(address arg1) {
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args 'ownerPool'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x252d5e81 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == stor2
    require ext_call.return_data[32] <= 2
    require ext_call.return_data[32] == 2
    require arg1
    coordinatorAddress = arg1
}

function sub_eb6bce7b(?) {
    mem[128 len arg1.length] = arg1[all]
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args 'ownerPool'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x252d5e81 with:
         gas gas_remaining wei
        args msg.sender
    mem[ceil32(arg1.length) + 128 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if msg.sender == userAddress:
        if ext_call.return_data[0] != stor2:
            require arg2
            require not stor3
            stor3 = 1
            mem[ceil32(arg1.length) + 128 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            if not arg1.length % 32:
                call arg2.mem[ceil32(arg1.length) + 128 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(arg1.length) + 132 len arg1.length - 4]
                require ext_call.success
                if arg3:
                    _317 = mem[160]
                    require ext_code.size(coordinatorAddress)
                    call coordinatorAddress.0x21f8a721 with:
                         gas gas_remaining wei
                        args 'listingRewards'
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xc32fdf34 with:
                         gas gas_remaining wei
                        args this.address
                    mem[ceil32(arg1.length) + 128 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[ceil32(arg1.length) + 132] = 'listingRewards'
                    require ext_code.size(coordinatorAddress)
                    call coordinatorAddress.0x21f8a721 with:
                         gas gas_remaining wei
                        args 'listingRewards'
                    mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 != address(ext_call.return_data[0]):
                        require mem[196] == arg3
                        require ext_code.size(coordinatorAddress)
                        call coordinatorAddress.0x21f8a721 with:
                             gas gas_remaining wei
                            args 'token'
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg2), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if Mask(32, 224, _317) != 0x91d5c02100000000000000000000000000000000000000000000000000000000:
                            require mem[196] == arg3
                            require ext_code.size(coordinatorAddress)
                            call coordinatorAddress.0x21f8a721 with:
                                 gas gas_remaining wei
                                args 'token'
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg2), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if ext_call.return_data[64] > 5:
                                require mem[196] == arg3
                                require ext_code.size(coordinatorAddress)
                                call coordinatorAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args 'token'
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg2), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[floor32(arg1.length) + ceil32(arg1.length) + 128] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
                call arg2.mem[ceil32(arg1.length) + 128 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(arg1.length) + 132 len floor32(arg1.length) + 28]
                require ext_call.success
                if arg3:
                    _332 = mem[160]
                    require ext_code.size(coordinatorAddress)
                    call coordinatorAddress.0x21f8a721 with:
                         gas gas_remaining wei
                        args 'listingRewards'
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xc32fdf34 with:
                         gas gas_remaining wei
                        args this.address
                    mem[ceil32(arg1.length) + 128 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[ceil32(arg1.length) + 132] = 'listingRewards'
                    require ext_code.size(coordinatorAddress)
                    call coordinatorAddress.0x21f8a721 with:
                         gas gas_remaining wei
                        args 'listingRewards'
                    mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 != address(ext_call.return_data[0]):
                        require mem[196] == arg3
                        require ext_code.size(coordinatorAddress)
                        call coordinatorAddress.0x21f8a721 with:
                             gas gas_remaining wei
                            args 'token'
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg2), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if Mask(32, 224, _332) != 0x91d5c02100000000000000000000000000000000000000000000000000000000:
                            require mem[196] == arg3
                            require ext_code.size(coordinatorAddress)
                            call coordinatorAddress.0x21f8a721 with:
                                 gas gas_remaining wei
                                args 'token'
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg2), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if ext_call.return_data[64] > 5:
                                require mem[196] == arg3
                                require ext_code.size(coordinatorAddress)
                                call coordinatorAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args 'token'
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg2), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_call.return_data[32] <= 2
            require ext_call.return_data[32] == 2
            require arg2
            require not stor3
            stor3 = 1
            mem[ceil32(arg1.length) + 128 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            if not arg1.length % 32:
                call arg2.mem[ceil32(arg1.length) + 128 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(arg1.length) + 132 len arg1.length - 4]
                require ext_call.success
                if arg3:
                    _322 = mem[160]
                    require ext_code.size(coordinatorAddress)
                    call coordinatorAddress.0x21f8a721 with:
                         gas gas_remaining wei
                        args 'listingRewards'
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xc32fdf34 with:
                         gas gas_remaining wei
                        args this.address
                    mem[ceil32(arg1.length) + 128 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[ceil32(arg1.length) + 132] = 'listingRewards'
                    require ext_code.size(coordinatorAddress)
                    call coordinatorAddress.0x21f8a721 with:
                         gas gas_remaining wei
                        args 'listingRewards'
                    mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 != address(ext_call.return_data[0]):
                        require mem[196] == arg3
                        require ext_code.size(coordinatorAddress)
                        call coordinatorAddress.0x21f8a721 with:
                             gas gas_remaining wei
                            args 'token'
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg2), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if Mask(32, 224, _322) != 0x91d5c02100000000000000000000000000000000000000000000000000000000:
                            require mem[196] == arg3
                            require ext_code.size(coordinatorAddress)
                            call coordinatorAddress.0x21f8a721 with:
                                 gas gas_remaining wei
                                args 'token'
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg2), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if ext_call.return_data[64] > 5:
                                require mem[196] == arg3
                                require ext_code.size(coordinatorAddress)
                                call coordinatorAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args 'token'
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg2), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[floor32(arg1.length) + ceil32(arg1.length) + 128] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
                call arg2.mem[ceil32(arg1.length) + 128 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(arg1.length) + 132 len floor32(arg1.length) + 28]
                require ext_call.success
                if arg3:
                    _337 = mem[160]
                    require ext_code.size(coordinatorAddress)
                    call coordinatorAddress.0x21f8a721 with:
                         gas gas_remaining wei
                        args 'listingRewards'
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xc32fdf34 with:
                         gas gas_remaining wei
                        args this.address
                    mem[ceil32(arg1.length) + 128 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[ceil32(arg1.length) + 132] = 'listingRewards'
                    require ext_code.size(coordinatorAddress)
                    call coordinatorAddress.0x21f8a721 with:
                         gas gas_remaining wei
                        args 'listingRewards'
                    mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 != address(ext_call.return_data[0]):
                        require mem[196] == arg3
                        require ext_code.size(coordinatorAddress)
                        call coordinatorAddress.0x21f8a721 with:
                             gas gas_remaining wei
                            args 'token'
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg2), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if Mask(32, 224, _337) != 0x91d5c02100000000000000000000000000000000000000000000000000000000:
                            require mem[196] == arg3
                            require ext_code.size(coordinatorAddress)
                            call coordinatorAddress.0x21f8a721 with:
                                 gas gas_remaining wei
                                args 'token'
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg2), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if ext_call.return_data[64] > 5:
                                require mem[196] == arg3
                                require ext_code.size(coordinatorAddress)
                                call coordinatorAddress.0x21f8a721 with:
                                     gas gas_remaining wei
                                    args 'token'
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg2), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_call.return_data[0] == stor2
        require ext_call.return_data[32] <= 2
        require ext_call.return_data[32] == 2
        require arg2
        require not stor3
        stor3 = 1
        mem[ceil32(arg1.length) + 128 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            call arg2.mem[ceil32(arg1.length) + 128 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + 132 len arg1.length - 4]
            require ext_call.success
            if arg3:
                _327 = mem[160]
                require ext_code.size(coordinatorAddress)
                call coordinatorAddress.0x21f8a721 with:
                     gas gas_remaining wei
                    args 'listingRewards'
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xc32fdf34 with:
                     gas gas_remaining wei
                    args this.address
                mem[ceil32(arg1.length) + 128 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                mem[ceil32(arg1.length) + 132] = 'listingRewards'
                require ext_code.size(coordinatorAddress)
                call coordinatorAddress.0x21f8a721 with:
                     gas gas_remaining wei
                    args 'listingRewards'
                mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 != address(ext_call.return_data[0]):
                    require mem[196] == arg3
                    require ext_code.size(coordinatorAddress)
                    call coordinatorAddress.0x21f8a721 with:
                         gas gas_remaining wei
                        args 'token'
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg2), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if Mask(32, 224, _327) != 0x91d5c02100000000000000000000000000000000000000000000000000000000:
                        require mem[196] == arg3
                        require ext_code.size(coordinatorAddress)
                        call coordinatorAddress.0x21f8a721 with:
                             gas gas_remaining wei
                            args 'token'
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg2), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if ext_call.return_data[64] > 5:
                            require mem[196] == arg3
                            require ext_code.size(coordinatorAddress)
                            call coordinatorAddress.0x21f8a721 with:
                                 gas gas_remaining wei
                                args 'token'
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg2), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + 128] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
            call arg2.mem[ceil32(arg1.length) + 128 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + 132 len floor32(arg1.length) + 28]
            require ext_call.success
            if arg3:
                _342 = mem[160]
                require ext_code.size(coordinatorAddress)
                call coordinatorAddress.0x21f8a721 with:
                     gas gas_remaining wei
                    args 'listingRewards'
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xc32fdf34 with:
                     gas gas_remaining wei
                    args this.address
                mem[ceil32(arg1.length) + 128 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                mem[ceil32(arg1.length) + 132] = 'listingRewards'
                require ext_code.size(coordinatorAddress)
                call coordinatorAddress.0x21f8a721 with:
                     gas gas_remaining wei
                    args 'listingRewards'
                mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 != address(ext_call.return_data[0]):
                    require mem[196] == arg3
                    require ext_code.size(coordinatorAddress)
                    call coordinatorAddress.0x21f8a721 with:
                         gas gas_remaining wei
                        args 'token'
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg2), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if Mask(32, 224, _342) != 0x91d5c02100000000000000000000000000000000000000000000000000000000:
                        require mem[196] == arg3
                        require ext_code.size(coordinatorAddress)
                        call coordinatorAddress.0x21f8a721 with:
                             gas gas_remaining wei
                            args 'token'
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg2), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if ext_call.return_data[64] > 5:
                            require mem[196] == arg3
                            require ext_code.size(coordinatorAddress)
                            call coordinatorAddress.0x21f8a721 with:
                                 gas gas_remaining wei
                                args 'token'
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg2), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
    emit Forward(address(arg2), arg3);
    stor3 = 0
}



}
