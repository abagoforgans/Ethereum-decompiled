contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_8b727ee9(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
    staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.getExchange(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
    staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.getExchange(address arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if arg1 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
        staticcall address(ext_call.return_data[0]).getEthToTokenInputPrice(uint256 arg1) with:
                gas gas_remaining wei
               args arg2
    else:
        staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
                gas gas_remaining wei
               args arg2
        if arg3 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
        else:
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getEthToTokenInputPrice(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_fa67ca36(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
    staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.getExchange(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
    staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.getExchange(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if arg1 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
        staticcall address(ext_call.return_data[0]).getEthToTokenOutputPrice(uint256 arg1) with:
                gas gas_remaining wei
               args arg3
    else:
        if arg2 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
            staticcall address(ext_call.return_data[0]).getTokenToEthOutputPrice(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg3
        else:
            staticcall address(ext_call.return_data[0]).getEthToTokenOutputPrice(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getTokenToEthOutputPrice(uint256 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function swap(address arg1, uint256 arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if arg2 <= 0:
        if arg4 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        46,
                        0x3045697468657220737263416d6f756e74206f7220647374416d6f756e74206d75737420626520706f7369746976,
                        mem[210 len 18]
    require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
    staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.getExchange(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
    staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.getExchange(address arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(ext_call.return_data[0]):
        revert with 0, 'Can't find srcToken exchange'
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Can't find dstToken exchange'
    if arg1 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
        if arg2:
            if arg4:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            39,
                            0xfe45697468657220737263416d6f756e74206f7220647374416d6f756e74206d75737420626520,
                            mem[203 len 25]
            require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
            call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
               value arg2 wei
                 gas gas_remaining wei
                args 1, block.timestamp
        else:
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getEthToTokenOutputPrice(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
            call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).ethToTokenSwapOutput(uint256 arg1, uint256 arg2) with:
               value ext_call.return_data[0] wei
                 gas gas_remaining wei
                args arg4, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    else:
        require ext_code.size(arg1)
        staticcall arg1.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != -1:
            require ext_code.size(arg1)
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
        if arg3 != 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
            if not arg2:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokenToTokenSwapOutput(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                     gas gas_remaining wei
                    args 0, uint32(arg4), -1, -1, block.timestamp, address(arg3)
            else:
                if arg4:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                39,
                                0xfe45697468657220737263416d6f756e74206f7220647374416d6f756e74206d75737420626520,
                                mem[203 len 25]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokenToTokenSwapInput(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                     gas gas_remaining wei
                    args 0, uint32(arg2), 1, 1, block.timestamp, address(arg3)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        else:
            if not arg2:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokenToEthSwapOutput(uint256 arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args arg4, -1, block.timestamp
            else:
                if arg4:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                39,
                                0xfe45697468657220737263416d6f756e74206f7220647374416d6f756e74206d75737420626520,
                                mem[203 len 25]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args arg2, 1, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
            call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit() with:
               value ext_call.return_data[0] wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0]
}



}
