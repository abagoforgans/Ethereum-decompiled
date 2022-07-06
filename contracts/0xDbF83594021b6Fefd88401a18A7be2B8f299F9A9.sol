contract main {




// =====================  Runtime code  =====================


address contributionRewardAddress;
address genesisProtocolAddress;

function contributionReward() payable {
    return contributionRewardAddress
}

function genesisProtocol() payable {
    return genesisProtocolAddress
}

function _fallback() payable {
    revert
}

function redeem(bytes32 arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(genesisProtocolAddress)
    staticcall genesisProtocolAddress.0x61d585da with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 6
    if ext_call.return_data[0] != 3:
        require ext_call.return_data[0] <= 6
        if ext_call.return_data[0] != 4:
            require ext_call.return_data[0] <= 6
            if ext_call.return_data[0] != 5:
                require ext_call.return_data[0] <= 6
                if ext_call.return_data[0] != 6:
                    require ext_code.size(genesisProtocolAddress)
                    staticcall genesisProtocolAddress.0x61d585da with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= 6
                    if ext_call.return_data[0] != 2:
                        require ext_call.return_data[0] <= 6
                        if ext_call.return_data[0] != 1:
                            return code.data[3230 len 96], code.data[3230 len 64], 0, 0, 0, 0, 0, 0
                    require ext_code.size(genesisProtocolAddress)
                    call genesisProtocolAddress.0xcc3bf9e9 with:
                         gas gas_remaining wei
                        args arg1, arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_code.size(genesisProtocolAddress)
                    call genesisProtocolAddress.0x6359036b with:
                         gas gas_remaining wei
                        args arg1, arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_code.size(genesisProtocolAddress)
                    staticcall genesisProtocolAddress.0x3c133818 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(contributionRewardAddress)
                    staticcall contributionRewardAddress.0x3a256daa with:
                            gas gas_remaining wei
                           args arg1, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        return ext_call.return_data[0 len 96], ext_call.return_data[32] >> 256, 0, ext_call.return_data[0], 0, 0, 0, 0
                    require ext_code.size(contributionRewardAddress)
                    staticcall contributionRewardAddress.0xe074ee55 with:
                            gas gas_remaining wei
                           args arg1, address(arg2), 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(contributionRewardAddress)
                    staticcall contributionRewardAddress.0x6046f71d with:
                            gas gas_remaining wei
                           args arg1, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(contributionRewardAddress)
                    staticcall contributionRewardAddress.0x1c3a5713 with:
                            gas gas_remaining wei
                           args arg1, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(contributionRewardAddress)
                    staticcall contributionRewardAddress.0xf70bbb9a with:
                            gas gas_remaining wei
                           args arg1, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        require ext_code.size(contributionRewardAddress)
                        staticcall contributionRewardAddress.0xe074ee55 with:
                                gas gas_remaining wei
                               args arg1, address(arg2), 3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            require ext_code.size(contributionRewardAddress)
                            call contributionRewardAddress.0xd58bf09a with:
                                 gas gas_remaining wei
                                args arg1, address(arg2), 1, 1, 0, 0
                        else:
                            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                            if not ext_call.return_data[0] * ext_call.return_data[0]:
                                require ext_code.size(contributionRewardAddress)
                                call contributionRewardAddress.0xd58bf09a with:
                                     gas gas_remaining wei
                                    args arg1, address(arg2), 1, 1, 0, 0
                            else:
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(contributionRewardAddress)
                                if ext_call.return_data[0] >= ext_call.return_data[0] * ext_call.return_data[0]:
                                    call contributionRewardAddress.0xd58bf09a with:
                                         gas gas_remaining wei
                                        args arg1, address(arg2), 1, 1, 0, 1
                                else:
                                    call contributionRewardAddress.0xd58bf09a with:
                                         gas gas_remaining wei
                                        args arg1, address(arg2), 1, 1, 0, 0
                    else:
                        require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                        require ext_code.size(contributionRewardAddress)
                        staticcall contributionRewardAddress.0xe074ee55 with:
                                gas gas_remaining wei
                               args arg1, address(arg2), 3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0] * ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                require ext_code.size(contributionRewardAddress)
                                call contributionRewardAddress.0xd58bf09a with:
                                     gas gas_remaining wei
                                    args arg1, address(arg2), 1, 1, 0, 0
                            else:
                                require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                if not ext_call.return_data[0] * ext_call.return_data[0]:
                                    require ext_code.size(contributionRewardAddress)
                                    call contributionRewardAddress.0xd58bf09a with:
                                         gas gas_remaining wei
                                        args arg1, address(arg2), 1, 1, 0, 0
                                else:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(contributionRewardAddress)
                                    if ext_call.return_data[0] >= ext_call.return_data[0] * ext_call.return_data[0]:
                                        call contributionRewardAddress.0xd58bf09a with:
                                             gas gas_remaining wei
                                            args arg1, address(arg2), 1, 1, 0, 1
                                    else:
                                        call contributionRewardAddress.0xd58bf09a with:
                                             gas gas_remaining wei
                                            args arg1, address(arg2), 1, 1, 0, 0
                        else:
                            if eth.balance(arg2) >= ext_call.return_data[0] * ext_call.return_data[0]:
                                if not ext_call.return_data[0]:
                                    require ext_code.size(contributionRewardAddress)
                                    call contributionRewardAddress.0xd58bf09a with:
                                         gas gas_remaining wei
                                        args arg1, address(arg2), 1, 1, 1, 0
                                else:
                                    require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                    if not ext_call.return_data[0] * ext_call.return_data[0]:
                                        require ext_code.size(contributionRewardAddress)
                                        call contributionRewardAddress.0xd58bf09a with:
                                             gas gas_remaining wei
                                            args arg1, address(arg2), 1, 1, 1, 0
                                    else:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(contributionRewardAddress)
                                        if ext_call.return_data[0] >= ext_call.return_data[0] * ext_call.return_data[0]:
                                            call contributionRewardAddress.0xd58bf09a with:
                                                 gas gas_remaining wei
                                                args arg1, address(arg2), 1, 1, 1, 1
                                        else:
                                            call contributionRewardAddress.0xd58bf09a with:
                                                 gas gas_remaining wei
                                                args arg1, address(arg2), 1, 1, 1, 0
                            else:
                                if not ext_call.return_data[0]:
                                    require ext_code.size(contributionRewardAddress)
                                    call contributionRewardAddress.0xd58bf09a with:
                                         gas gas_remaining wei
                                        args arg1, address(arg2), 1, 1, 0, 0
                                else:
                                    require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                                    if not ext_call.return_data[0] * ext_call.return_data[0]:
                                        require ext_code.size(contributionRewardAddress)
                                        call contributionRewardAddress.0xd58bf09a with:
                                             gas gas_remaining wei
                                            args arg1, address(arg2), 1, 1, 0, 0
                                    else:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(contributionRewardAddress)
                                        if ext_call.return_data[0] >= ext_call.return_data[0] * ext_call.return_data[0]:
                                            call contributionRewardAddress.0xd58bf09a with:
                                                 gas gas_remaining wei
                                                args arg1, address(arg2), 1, 1, 0, 1
                                        else:
                                            call contributionRewardAddress.0xd58bf09a with:
                                                 gas gas_remaining wei
                                                args arg1, address(arg2), 1, 1, 0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 128
                    return ext_call.return_data[0 len 96], 
                           ext_call.return_data[32] >> 256,
                           0,
                           ext_call.return_data[0],
                           ext_call.return_data[0],
                           ext_call.return_data[32],
                           ext_call.return_data[64],
                           ext_call.return_data[96]
    require ext_code.size(genesisProtocolAddress)
    call genesisProtocolAddress.0xe751f271 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(genesisProtocolAddress)
    staticcall genesisProtocolAddress.0x61d585da with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 6
    if ext_call.return_data[0] != 2:
        require ext_call.return_data[0] <= 6
        if ext_call.return_data[0] != 1:
            return code.data[3230 len 96], code.data[3230 len 64], bool(ext_call.return_data[0]), 0, 0, 0, 0, 0
    require ext_code.size(genesisProtocolAddress)
    call genesisProtocolAddress.0xcc3bf9e9 with:
         gas gas_remaining wei
        args arg1, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(genesisProtocolAddress)
    call genesisProtocolAddress.0x6359036b with:
         gas gas_remaining wei
        args arg1, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(genesisProtocolAddress)
    staticcall genesisProtocolAddress.0x3c133818 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(contributionRewardAddress)
    staticcall contributionRewardAddress.0x3a256daa with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        return ext_call.return_data[0 len 96], 
               ext_call.return_data[32] >> 256,
               bool(ext_call.return_data[0]),
               ext_call.return_data[0],
               0,
               0,
               0,
               0
    require ext_code.size(contributionRewardAddress)
    staticcall contributionRewardAddress.0xe074ee55 with:
            gas gas_remaining wei
           args arg1, address(arg2), 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(contributionRewardAddress)
    staticcall contributionRewardAddress.0x6046f71d with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(contributionRewardAddress)
    staticcall contributionRewardAddress.0x1c3a5713 with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(contributionRewardAddress)
    staticcall contributionRewardAddress.0xf70bbb9a with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(contributionRewardAddress)
        staticcall contributionRewardAddress.0xe074ee55 with:
                gas gas_remaining wei
               args arg1, address(arg2), 3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(contributionRewardAddress)
            call contributionRewardAddress.0xd58bf09a with:
                 gas gas_remaining wei
                args arg1, address(arg2), 1, 1, 0, 0
        else:
            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
            if not ext_call.return_data[0] * ext_call.return_data[0]:
                require ext_code.size(contributionRewardAddress)
                call contributionRewardAddress.0xd58bf09a with:
                     gas gas_remaining wei
                    args arg1, address(arg2), 1, 1, 0, 0
            else:
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(contributionRewardAddress)
                if ext_call.return_data[0] >= ext_call.return_data[0] * ext_call.return_data[0]:
                    call contributionRewardAddress.0xd58bf09a with:
                         gas gas_remaining wei
                        args arg1, address(arg2), 1, 1, 0, 1
                else:
                    call contributionRewardAddress.0xd58bf09a with:
                         gas gas_remaining wei
                        args arg1, address(arg2), 1, 1, 0, 0
    else:
        require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(contributionRewardAddress)
        staticcall contributionRewardAddress.0xe074ee55 with:
                gas gas_remaining wei
               args arg1, address(arg2), 3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0] * ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                require ext_code.size(contributionRewardAddress)
                call contributionRewardAddress.0xd58bf09a with:
                     gas gas_remaining wei
                    args arg1, address(arg2), 1, 1, 0, 0
            else:
                require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                if not ext_call.return_data[0] * ext_call.return_data[0]:
                    require ext_code.size(contributionRewardAddress)
                    call contributionRewardAddress.0xd58bf09a with:
                         gas gas_remaining wei
                        args arg1, address(arg2), 1, 1, 0, 0
                else:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(contributionRewardAddress)
                    if ext_call.return_data[0] >= ext_call.return_data[0] * ext_call.return_data[0]:
                        call contributionRewardAddress.0xd58bf09a with:
                             gas gas_remaining wei
                            args arg1, address(arg2), 1, 1, 0, 1
                    else:
                        call contributionRewardAddress.0xd58bf09a with:
                             gas gas_remaining wei
                            args arg1, address(arg2), 1, 1, 0, 0
        else:
            if eth.balance(arg2) >= ext_call.return_data[0] * ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    require ext_code.size(contributionRewardAddress)
                    call contributionRewardAddress.0xd58bf09a with:
                         gas gas_remaining wei
                        args arg1, address(arg2), 1, 1, 1, 0
                else:
                    require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                    if not ext_call.return_data[0] * ext_call.return_data[0]:
                        require ext_code.size(contributionRewardAddress)
                        call contributionRewardAddress.0xd58bf09a with:
                             gas gas_remaining wei
                            args arg1, address(arg2), 1, 1, 1, 0
                    else:
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(contributionRewardAddress)
                        if ext_call.return_data[0] >= ext_call.return_data[0] * ext_call.return_data[0]:
                            call contributionRewardAddress.0xd58bf09a with:
                                 gas gas_remaining wei
                                args arg1, address(arg2), 1, 1, 1, 1
                        else:
                            call contributionRewardAddress.0xd58bf09a with:
                                 gas gas_remaining wei
                                args arg1, address(arg2), 1, 1, 1, 0
            else:
                if not ext_call.return_data[0]:
                    require ext_code.size(contributionRewardAddress)
                    call contributionRewardAddress.0xd58bf09a with:
                         gas gas_remaining wei
                        args arg1, address(arg2), 1, 1, 0, 0
                else:
                    require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                    if not ext_call.return_data[0] * ext_call.return_data[0]:
                        require ext_code.size(contributionRewardAddress)
                        call contributionRewardAddress.0xd58bf09a with:
                             gas gas_remaining wei
                            args arg1, address(arg2), 1, 1, 0, 0
                    else:
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(contributionRewardAddress)
                        if ext_call.return_data[0] >= ext_call.return_data[0] * ext_call.return_data[0]:
                            call contributionRewardAddress.0xd58bf09a with:
                                 gas gas_remaining wei
                                args arg1, address(arg2), 1, 1, 0, 1
                        else:
                            call contributionRewardAddress.0xd58bf09a with:
                                 gas gas_remaining wei
                                args arg1, address(arg2), 1, 1, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    return ext_call.return_data[0 len 96], 
           ext_call.return_data[32] >> 256,
           bool(ext_call.return_data[0]),
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96]
}



}
