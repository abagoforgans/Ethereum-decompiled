contract main {




// =====================  Runtime code  =====================


array of struct stor0;
address jackpotAddress;
address stor2;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702948;
array of struct stor18569430475105882587588266137607568536673111973893317399460219858819262702949;
array of address stor18569430475105882587588266137607568536673111973893317399460219858819262702950;

function jackpotAddress() {
    return jackpotAddress
}

function _fallback() payable {
  stop
}

function migrate(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor2
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function placeBet(bytes22 arg1) payable {
    require calldata.size - 4 >= 32
    if msg.value < 10^16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Bet amount should be greater or equal than minimal amount'
    if msg.value > 100 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Bet amount should be lesser or equal than maximal amount'
    if not Mask(128, 128, arg1):
        revert with 0, 'Id should not be 0'
    stor0.length++
    stor0[stor0.length].field_0 = block.number
    stor290D[stor0.length] = msg.value - (10 * 10^18 * msg.value / 100 / 10^18)
    stor290D[stor0.length].field_0 = uint128(arg1)
    stor290D[stor0.length].field_128 = Mask(48, 80, arg1) >> 80
    stor290D[stor0.length] = msg.sender
    idx = 0
    s = 0
    while idx < 6:
        if Mask(8, -(('mask_shl', 48, 80, 125, ('param', 'arg1')), 0) + 256, idx) << (('mask_shl', 48, 80, 125, ('param', 'arg1')), 0) - 8 <= 0x1300000000000000000000000000000000000000000000000000000000000000:
            idx = idx + 1
            s = s + 1
            continue 
        idx = idx + 1
        s = s
        continue 
    require ext_code.size(jackpotAddress)
    if uint8(s) > 1:
        call jackpotAddress.0xc4d2e0aa with:
             gas gas_remaining wei
            args Mask(128, 128, arg1), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    call jackpotAddress.0xfcddd056 with:
       value 10 * 10^18 * msg.value / 100 / 10^18 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function settleBets() {
    if not stor0.length:
    mem[96] = stor0.length
    mem[64] = (32 * stor0.length) + 256
    mem[(32 * stor0.length) + 128] = 0
    mem[(32 * stor0.length) + 160] = 0
    mem[(32 * stor0.length) + 192] = 0
    mem[(32 * stor0.length) + 224] = 0
    mem[var9001] = (32 * stor0.length) + 128
    s = var9001
    idx = var9002
    while idx - 1:
        mem[64] = mem[64] + 128
        mem[(32 * stor0.length) + 128] = 0
        mem[(32 * stor0.length) + 160] = 0
        mem[(32 * stor0.length) + 192] = 0
        mem[(32 * stor0.length) + 224] = 0
        mem[s + 32] = (32 * stor0.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    _445 = mem[64]
    mem[mem[64]] = stor0.length
    mem[64] = mem[64] + (32 * stor0.length) + 32
    if not stor0.length:
        require var21001 - 1 < stor0.length
        if stor0[var23001].field_0 < block.number:
            require var39001 < stor0.length
            require var41004 < stor0.length
            if uint8(var41003) >= 6:
                if not uint8(var51003):
                    require var51007 < stor0.length
                    mem[64] = _445 + (32 * stor0.length) + 160
                    if uint8(var51003) <= 0:
                        mem[_445 + (32 * stor0.length) + 32] = 0
                        mem[_445 + (32 * stor0.length) + 64] = var51006
                        require var51007 < stor0.length
                        mem[_445 + (32 * stor0.length) + 96] = Mask(128, 128, stor0[var51007].field_512)
                        require var51007 < mem[96]
                        mem[(32 * var51007) + 128] = _445 + (32 * stor0.length) + 32
                        require stor0.length
                        mem[0] = 0
                        stor0[stor0.length - 1].field_0 = 0
                        stor0[stor0.length - 1].field_256 = 0
                        stor0[stor0.length - 1].field_512 = 0
                        stor0[stor0.length - 1].field_768 = 0
                        stor0.length--
                        if var47003 > 0:
                            require var49001 - 1 < stor0.length
                            # nil
                        else:
                            require var48001 - 1 < mem[_445]
                            # nil
                    else:
                        mem[_445 + (32 * stor0.length) + 32] = uint8(var51003)
                        mem[_445 + (32 * stor0.length) + 64] = var51006
                        require var51007 < stor0.length
                        mem[_445 + (32 * stor0.length) + 96] = Mask(128, 128, stor0[var51007].field_512)
                        require var51007 < mem[96]
                        mem[(32 * var51007) + 128] = _445 + (32 * stor0.length) + 32
                        require stor0.length
                        mem[0] = 0
                        stor0[stor0.length - 1].field_0 = 0
                        stor0[stor0.length - 1].field_256 = 0
                        stor0[stor0.length - 1].field_512 = 0
                        stor0[stor0.length - 1].field_768 = 0
                        stor0.length--
                        if var48003 > 0:
                            require var50001 - 1 < stor0.length
                            # nil
                        else:
                            require var49001 - 1 < mem[_445]
                            # nil
                else:
                    require uint8(var51004 - var51003)^uint8(var51004 - var51003)
                    require var51007 < stor0.length
                    mem[64] = _445 + (32 * stor0.length) + 160
                    if stor0[var51007].field_256 * 10^18 * 16^uint8(var51004) / uint8(var51004 - var51003)^uint8(var51004 - var51003) / 10^18:
                        mem[_445 + (32 * stor0.length) + 32] = stor0[var51007].field_256 * 10^18 * 16^uint8(var51004) / uint8(var51004 - var51003)^uint8(var51004 - var51003) / 10^18
                        mem[_445 + (32 * stor0.length) + 64] = var51006
                        require var51007 < stor0.length
                        mem[_445 + (32 * stor0.length) + 96] = Mask(128, 128, stor0[var51007].field_512)
                        require var51007 < mem[96]
                        mem[(32 * var51007) + 128] = _445 + (32 * stor0.length) + 32
                        require stor0.length
                        mem[0] = 0
                        stor0[stor0.length - 1].field_0 = 0
                        stor0[stor0.length - 1].field_256 = 0
                        stor0[stor0.length - 1].field_512 = 0
                        stor0[stor0.length - 1].field_768 = 0
                        stor0.length--
                        if var47003 > 0:
                            require var49001 - 1 < stor0.length
                            # nil
                        else:
                            require var48001 - 1 < mem[_445]
                            # nil
                    else:
                        if uint8(var51003) <= 0:
                            mem[_445 + (32 * stor0.length) + 32] = stor0[var51007].field_256 * 10^18 * 16^uint8(var51004) / uint8(var51004 - var51003)^uint8(var51004 - var51003) / 10^18
                            mem[_445 + (32 * stor0.length) + 64] = var51006
                            require var51007 < stor0.length
                            mem[_445 + (32 * stor0.length) + 96] = Mask(128, 128, stor0[var51007].field_512)
                            require var51007 < mem[96]
                            mem[(32 * var51007) + 128] = _445 + (32 * stor0.length) + 32
                            require stor0.length
                            mem[0] = 0
                            stor0[stor0.length - 1].field_0 = 0
                            stor0[stor0.length - 1].field_256 = 0
                            stor0[stor0.length - 1].field_512 = 0
                            stor0[stor0.length - 1].field_768 = 0
                            stor0.length--
                            if var48003 > 0:
                                require var50001 - 1 < stor0.length
                                # nil
                            else:
                                require var49001 - 1 < mem[_445]
                                # nil
                        else:
                            mem[_445 + (32 * stor0.length) + 32] = uint8(var51003)
                            mem[_445 + (32 * stor0.length) + 64] = var51006
                            require var51007 < stor0.length
                            mem[_445 + (32 * stor0.length) + 96] = Mask(128, 128, stor0[var51007].field_512)
                            require var51007 < mem[96]
                            mem[(32 * var51007) + 128] = _445 + (32 * stor0.length) + 32
                            require stor0.length
                            mem[0] = 0
                            stor0[stor0.length - 1].field_0 = 0
                            stor0[stor0.length - 1].field_256 = 0
                            stor0[stor0.length - 1].field_512 = 0
                            stor0[stor0.length - 1].field_768 = 0
                            stor0.length--
                            if var49003 > 0:
                                require var51001 - 1 < stor0.length
                                # nil
                            else:
                                require var50001 - 1 < mem[_445]
                                # nil
            else:
                require var41004 < stor0.length
                require uint8(var45004) < 6
                require uint8((uint8(var45004) / 2) + 29) < 32
                require var41004 < stor0.length
                require uint8(var45004) < 6
                require var41004 < stor0.length
                require uint8(var45004) < 6
                require var63007 < stor0.length
                mem[0] = 0
                if uint8(var65003) < 6:
                    require var65009 < stor0.length
                    var45004 = var65003
                    var45006 = var65005
                    var45007 = var65006
                    continue 
                if not uint8(var65005):
                    require var65009 < stor0.length
                    mem[64] = _445 + (32 * stor0.length) + 160
                    if uint8(var65005) <= 0:
                        mem[_445 + (32 * stor0.length) + 32] = 0
                        mem[_445 + (32 * stor0.length) + 64] = var65008
                        require var65009 < stor0.length
                        mem[_445 + (32 * stor0.length) + 96] = Mask(128, 128, stor0[var65009].field_512)
                        mem[_445 + (32 * stor0.length) + 128] = stor0[var65009].field_768
                        require var65009 < mem[96]
                        mem[(32 * var65009) + 128] = _445 + (32 * stor0.length) + 32
                        require stor0.length
                        mem[0] = 0
                        stor0[stor0.length - 1].field_0 = 0
                        stor0[stor0.length - 1].field_256 = 0
                        stor0[stor0.length - 1].field_512 = 0
                        stor0[stor0.length - 1].field_768 = 0
                        stor0.length--
                        if var67003 <= 0:
                            require var68001 - 1 < mem[_445]
                            if not Mask(128, 128, mem[mem[_445 + (32 * var70001) + 32] + 64]):
                                idx = var70003
                                while idx > 0:
                                    require idx - 1 < mem[_445]
                                    if Mask(128, 128, mem[mem[_445 + (32 * idx - 1) + 32] + 64]):
                                        require idx - 1 < mem[_445]
                                        stor0.length++
                                        mem[0] = 0
                                        stor0[stor0.length].field_0 = mem[mem[(32 * idx - 1) + _445 + 32]]
                                        stor0[stor0.length].field_256 = mem[mem[(32 * idx - 1) + _445 + 32] + 32]
                                        stor0[stor0.length].field_512 = mem[mem[(32 * idx - 1) + _445 + 32] + 64 len 16]
                                        stor0[stor0.length].field_640 = mem[mem[(32 * idx - 1) + _445 + 32] + 96 len 6]
                                        stor0[stor0.length].field_768 = mem[mem[(32 * idx - 1) + _445 + 32] + 140 len 20]
                                    idx = idx - 1
                                    continue 
                                # nil
                            else:
                                require var72001 < mem[_445]
                                # nil
                        else:
                            require var69001 - 1 < stor0.length
                            if stor0[var71001].field_0 >= block.number:
                                require var73001 < stor0.length
                                # nil
                            else:
                                require var71004 < stor0.length
                                mem[0] = 0
                                require var71004 < stor0.length
                                var45004 = 0
                                var45006 = 0
                                var45007 = 0
                                continue 
                    else:
                        mem[_445 + (32 * stor0.length) + 32] = uint8(var65005)
                        mem[_445 + (32 * stor0.length) + 64] = var65008
                        require var65009 < stor0.length
                        mem[_445 + (32 * stor0.length) + 96] = Mask(128, 128, stor0[var65009].field_512)
                        mem[_445 + (32 * stor0.length) + 128] = stor0[var65009].field_768
                        require var65009 < mem[96]
                        mem[(32 * var65009) + 128] = _445 + (32 * stor0.length) + 32
                        require stor0.length
                        mem[0] = 0
                        stor0[stor0.length - 1].field_0 = 0
                        stor0[stor0.length - 1].field_256 = 0
                        stor0[stor0.length - 1].field_512 = 0
                        stor0[stor0.length - 1].field_768 = 0
                        stor0.length--
                        if var68003 <= 0:
                            require var69001 - 1 < mem[_445]
                            if not Mask(128, 128, mem[mem[_445 + (32 * var71001) + 32] + 64]):
                                idx = var71003
                                while idx > 0:
                                    require idx - 1 < mem[_445]
                                    if Mask(128, 128, mem[mem[_445 + (32 * idx - 1) + 32] + 64]):
                                        require idx - 1 < mem[_445]
                                        stor0.length++
                                        mem[0] = 0
                                        stor0[stor0.length].field_0 = mem[mem[(32 * idx - 1) + _445 + 32]]
                                        stor0[stor0.length].field_256 = mem[mem[(32 * idx - 1) + _445 + 32] + 32]
                                        stor0[stor0.length].field_512 = mem[mem[(32 * idx - 1) + _445 + 32] + 64 len 16]
                                        stor0[stor0.length].field_640 = mem[mem[(32 * idx - 1) + _445 + 32] + 96 len 6]
                                        stor0[stor0.length].field_768 = mem[mem[(32 * idx - 1) + _445 + 32] + 140 len 20]
                                    idx = idx - 1
                                    continue 
                                # nil
                            else:
                                require var73001 < mem[_445]
                                # nil
                        else:
                            require var70001 - 1 < stor0.length
                            if stor0[var72001].field_0 >= block.number:
                                require var74001 < stor0.length
                                # nil
                            else:
                                require var72004 < stor0.length
                                mem[0] = 0
                                require var72004 < stor0.length
                                var45004 = 0
                                var45006 = 0
                                var45007 = 0
                                continue 
                else:
                    require uint8(var65006 - var65005)^uint8(var65006 - var65005)
                    require var65009 < stor0.length
                    mem[64] = _445 + (32 * stor0.length) + 160
                    if stor0[var65009].field_256 * 10^18 * 16^uint8(var65006) / uint8(var65006 - var65005)^uint8(var65006 - var65005) / 10^18:
                        mem[_445 + (32 * stor0.length) + 32] = stor0[var65009].field_256 * 10^18 * 16^uint8(var65006) / uint8(var65006 - var65005)^uint8(var65006 - var65005) / 10^18
                        mem[_445 + (32 * stor0.length) + 64] = var65008
                        require var65009 < stor0.length
                        mem[_445 + (32 * stor0.length) + 96] = Mask(128, 128, stor0[var65009].field_512)
                        mem[_445 + (32 * stor0.length) + 128] = stor0[var65009].field_768
                        require var65009 < mem[96]
                        mem[(32 * var65009) + 128] = _445 + (32 * stor0.length) + 32
                        require stor0.length
                        mem[0] = 0
                        stor0[stor0.length - 1].field_0 = 0
                        stor0[stor0.length - 1].field_256 = 0
                        stor0[stor0.length - 1].field_512 = 0
                        stor0[stor0.length - 1].field_768 = 0
                        stor0.length--
                        if var67003 <= 0:
                            require var68001 - 1 < mem[_445]
                            if not Mask(128, 128, mem[mem[_445 + (32 * var70001) + 32] + 64]):
                                idx = var70003
                                while idx > 0:
                                    require idx - 1 < mem[_445]
                                    if Mask(128, 128, mem[mem[_445 + (32 * idx - 1) + 32] + 64]):
                                        require idx - 1 < mem[_445]
                                        stor0.length++
                                        mem[0] = 0
                                        stor0[stor0.length].field_0 = mem[mem[(32 * idx - 1) + _445 + 32]]
                                        stor0[stor0.length].field_256 = mem[mem[(32 * idx - 1) + _445 + 32] + 32]
                                        stor0[stor0.length].field_512 = mem[mem[(32 * idx - 1) + _445 + 32] + 64 len 16]
                                        stor0[stor0.length].field_640 = mem[mem[(32 * idx - 1) + _445 + 32] + 96 len 6]
                                        stor0[stor0.length].field_768 = mem[mem[(32 * idx - 1) + _445 + 32] + 140 len 20]
                                    idx = idx - 1
                                    continue 
                                # nil
                            else:
                                require var72001 < mem[_445]
                                # nil
                        else:
                            require var69001 - 1 < stor0.length
                            if stor0[var71001].field_0 >= block.number:
                                require var73001 < stor0.length
                                # nil
                            else:
                                require var71004 < stor0.length
                                mem[0] = 0
                                require var71004 < stor0.length
                                var45004 = 0
                                var45006 = 0
                                var45007 = 0
                                continue 
                    else:
                        if uint8(var65005) <= 0:
                            mem[_445 + (32 * stor0.length) + 32] = stor0[var65009].field_256 * 10^18 * 16^uint8(var65006) / uint8(var65006 - var65005)^uint8(var65006 - var65005) / 10^18
                            mem[_445 + (32 * stor0.length) + 64] = var65008
                            require var65009 < stor0.length
                            mem[_445 + (32 * stor0.length) + 96] = Mask(128, 128, stor0[var65009].field_512)
                            mem[_445 + (32 * stor0.length) + 128] = stor0[var65009].field_768
                            require var65009 < mem[96]
                            mem[(32 * var65009) + 128] = _445 + (32 * stor0.length) + 32
                            require stor0.length
                            mem[0] = 0
                            stor0[stor0.length - 1].field_0 = 0
                            stor0[stor0.length - 1].field_256 = 0
                            stor0[stor0.length - 1].field_512 = 0
                            stor0[stor0.length - 1].field_768 = 0
                            stor0.length--
                            if var68003 <= 0:
                                require var69001 - 1 < mem[_445]
                                if not Mask(128, 128, mem[mem[_445 + (32 * var71001) + 32] + 64]):
                                    idx = var71003
                                    while idx > 0:
                                        require idx - 1 < mem[_445]
                                        if Mask(128, 128, mem[mem[_445 + (32 * idx - 1) + 32] + 64]):
                                            require idx - 1 < mem[_445]
                                            stor0.length++
                                            mem[0] = 0
                                            stor0[stor0.length].field_0 = mem[mem[(32 * idx - 1) + _445 + 32]]
                                            stor0[stor0.length].field_256 = mem[mem[(32 * idx - 1) + _445 + 32] + 32]
                                            stor0[stor0.length].field_512 = mem[mem[(32 * idx - 1) + _445 + 32] + 64 len 16]
                                            stor0[stor0.length].field_640 = mem[mem[(32 * idx - 1) + _445 + 32] + 96 len 6]
                                            stor0[stor0.length].field_768 = mem[mem[(32 * idx - 1) + _445 + 32] + 140 len 20]
                                        idx = idx - 1
                                        continue 
                                    # nil
                                else:
                                    require var73001 < mem[_445]
                                    # nil
                            else:
                                require var70001 - 1 < stor0.length
                                if stor0[var72001].field_0 >= block.number:
                                    require var74001 < stor0.length
                                    # nil
                                else:
                                    require var72004 < stor0.length
                                    mem[0] = 0
                                    require var72004 < stor0.length
                                    var45004 = 0
                                    var45006 = 0
                                    var45007 = 0
                                    continue 
                        else:
                            mem[_445 + (32 * stor0.length) + 32] = uint8(var65005)
                            mem[_445 + (32 * stor0.length) + 64] = var65008
                            require var65009 < stor0.length
                            mem[_445 + (32 * stor0.length) + 96] = Mask(128, 128, stor0[var65009].field_512)
                            mem[_445 + (32 * stor0.length) + 128] = stor0[var65009].field_768
                            require var65009 < mem[96]
                            mem[(32 * var65009) + 128] = _445 + (32 * stor0.length) + 32
                            require stor0.length
                            mem[0] = 0
                            stor0[stor0.length - 1].field_0 = 0
                            stor0[stor0.length - 1].field_256 = 0
                            stor0[stor0.length - 1].field_512 = 0
                            stor0[stor0.length - 1].field_768 = 0
                            stor0.length--
                            if var69003 <= 0:
                                require var70001 - 1 < mem[_445]
                                if not Mask(128, 128, mem[mem[_445 + (32 * var72001) + 32] + 64]):
                                    idx = var72003
                                    while idx > 0:
                                        require idx - 1 < mem[_445]
                                        if Mask(128, 128, mem[mem[_445 + (32 * idx - 1) + 32] + 64]):
                                            require idx - 1 < mem[_445]
                                            stor0.length++
                                            mem[0] = 0
                                            stor0[stor0.length].field_0 = mem[mem[(32 * idx - 1) + _445 + 32]]
                                            stor0[stor0.length].field_256 = mem[mem[(32 * idx - 1) + _445 + 32] + 32]
                                            stor0[stor0.length].field_512 = mem[mem[(32 * idx - 1) + _445 + 32] + 64 len 16]
                                            stor0[stor0.length].field_640 = mem[mem[(32 * idx - 1) + _445 + 32] + 96 len 6]
                                            stor0[stor0.length].field_768 = mem[mem[(32 * idx - 1) + _445 + 32] + 140 len 20]
                                        idx = idx - 1
                                        continue 
                                    # nil
                                else:
                                    require var74001 < mem[_445]
                                    # nil
                            else:
                                require var71001 - 1 < stor0.length
                                if stor0[var73001].field_0 >= block.number:
                                    require var75001 < stor0.length
                                    # nil
                                else:
                                    require var73004 < stor0.length
                                    mem[0] = 0
                                    require var73004 < stor0.length
                                    var45004 = 0
                                    var45006 = 0
                                    var45007 = 0
                                    continue 
        else:
            require var25001 < stor0.length
            mem[0] = 0
            mem[64] = _445 + (32 * stor0.length) + 192
            mem[_445 + (32 * stor0.length) + 32] = stor0[var27001].field_0
            mem[_445 + (32 * stor0.length) + 64] = stor0[var27001].field_256
            mem[_445 + (32 * stor0.length) + 96] = Mask(128, 128, stor0[var27001].field_512)
            mem[_445 + (32 * stor0.length) + 128] = stor0[var27001].field_640 << 208
            mem[_445 + (32 * stor0.length) + 160] = stor0[var27001].field_768
            require var27003 < mem[_445]
            mem[_445 + (32 * var29001) + 32] = var29003
            require stor0.length
            mem[0] = 0
            stor0[stor0.length - 1].field_0 = 0
            stor0[stor0.length - 1].field_256 = 0
            stor0[stor0.length - 1].field_512 = 0
            stor0[stor0.length - 1].field_768 = 0
            stor0.length--
            if var33003 <= 0:
                require var34001 - 1 < mem[_445]
                if not Mask(128, 128, mem[mem[_445 + (32 * var36001) + 32] + 64]):
                    idx = var36003
                    while idx > 0:
                        require idx - 1 < mem[_445]
                        if Mask(128, 128, mem[mem[_445 + (32 * idx - 1) + 32] + 64]):
                            require idx - 1 < mem[_445]
                            stor0.length++
                            mem[0] = 0
                            stor0[stor0.length].field_0 = mem[mem[(32 * idx - 1) + _445 + 32]]
                            stor0[stor0.length].field_256 = mem[mem[(32 * idx - 1) + _445 + 32] + 32]
                            stor0[stor0.length].field_512 = mem[mem[(32 * idx - 1) + _445 + 32] + 64 len 16]
                            stor0[stor0.length].field_640 = mem[mem[(32 * idx - 1) + _445 + 32] + 96 len 6]
                            stor0[stor0.length].field_768 = mem[mem[(32 * idx - 1) + _445 + 32] + 140 len 20]
                        idx = idx - 1
                        continue 
                    idx = 0
                    while idx < mem[96]:
                        require idx < mem[96]
                        if Mask(128, 128, mem[mem[(32 * idx) + 128] + 64]) <= 0:
                            idx = idx + 1
                            continue 
                        else:
                            if 0 <= eth.balance(this.address):
                                require idx < mem[96]
                                _16096 = mem[mem[(32 * idx) + 128] + 96]
                                require idx < mem[96]
                                _16182 = mem[mem[(32 * idx) + 128] + 64]
                                require idx < mem[96]
                                require idx < mem[96]
                                _16336 = mem[mem[(32 * idx) + 128] + 32]
                                mem[_445 + (32 * stor0.length) + 192] = mem[mem[(32 * idx) + 128]]
                                mem[_445 + (32 * stor0.length) + 224] = _16336
                                emit 0xea7d87ff: mem[_445 + (32 * stor0.length) + 192], _16336, Mask(128, 128, _16182), address(_16096)
                                idx = idx + 1
                                continue 
                            else:
                                require idx < mem[96]
                                require idx < mem[96]
                                require idx < mem[96]
                                revert
                else:
                    require var38001 < mem[_445]
                    stor0.length++
                    mem[0] = 0
                    stor0[stor0.length].field_0 = mem[mem[(32 * var40001) + _445 + 32]]
                    stor0[stor0.length].field_256 = mem[mem[(32 * var40001) + _445 + 32] + 32]
                    stor0[stor0.length].field_512 = mem[mem[(32 * var40001) + _445 + 32] + 64 len 16]
                    stor0[stor0.length].field_640 = mem[mem[(32 * var40001) + _445 + 32] + 96 len 6]
                    stor0[stor0.length].field_768 = mem[mem[(32 * var40001) + _445 + 32] + 140 len 20]
                    idx = var40004
                    while idx > 0:
                        require idx - 1 < mem[_445]
                        if Mask(128, 128, mem[mem[_445 + (32 * idx - 1) + 32] + 64]):
                            require idx - 1 < mem[_445]
                            stor0.length++
                            mem[0] = 0
                            stor0[stor0.length].field_0 = mem[mem[(32 * idx - 1) + _445 + 32]]
                            stor0[stor0.length].field_256 = mem[mem[(32 * idx - 1) + _445 + 32] + 32]
                            stor0[stor0.length].field_512 = mem[mem[(32 * idx - 1) + _445 + 32] + 64 len 16]
                            stor0[stor0.length].field_640 = mem[mem[(32 * idx - 1) + _445 + 32] + 96 len 6]
                            stor0[stor0.length].field_768 = mem[mem[(32 * idx - 1) + _445 + 32] + 140 len 20]
                        idx = idx - 1
                        continue 
                    idx = 0
                    while idx < mem[96]:
                        require idx < mem[96]
                        if Mask(128, 128, mem[mem[(32 * idx) + 128] + 64]) <= 0:
                            idx = idx + 1
                            continue 
                        else:
                            if 0 <= eth.balance(this.address):
                                require idx < mem[96]
                                _27676 = mem[mem[(32 * idx) + 128] + 96]
                                require idx < mem[96]
                                _27837 = mem[mem[(32 * idx) + 128] + 64]
                                require idx < mem[96]
                                require idx < mem[96]
                                _28074 = mem[mem[(32 * idx) + 128] + 32]
                                mem[_445 + (32 * stor0.length) + 192] = mem[mem[(32 * idx) + 128]]
                                mem[_445 + (32 * stor0.length) + 224] = _28074
                                emit 0xea7d87ff: mem[_445 + (32 * stor0.length) + 192], _28074, Mask(128, 128, _27837), address(_27676)
                                idx = idx + 1
                                continue 
                            else:
                                require idx < mem[96]
                                require idx < mem[96]
                                require idx < mem[96]
                                revert
                idx = 0
                while idx < mem[96]:
                    require idx < mem[96]
                    if mem[mem[(32 * idx) + 128]] <= 0:
                        idx = idx + 1
                        continue 
                    else:
                        if 0 <= eth.balance(this.address):
                            require idx < mem[96]
                            require idx < mem[96]
                            call mem[mem[(32 * idx) + 128] + 108 len 20] with:
                               value mem[mem[(32 * idx) + 128]] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                idx = idx + 1
                                continue 
                        else:
                            require idx < mem[96]
                            require idx < mem[96]
                            revert
            require var35001 - 1 < stor0.length
            if stor0[var37001].field_0 < block.number:
                require var53001 < stor0.length
                require var55004 < stor0.length
                if uint8(var55003) < 6:
                    require var55004 < stor0.length
                    require uint8(var59004) < 6
                    require uint8((uint8(var59004) / 2) + 29) < 32
                    require var55004 < stor0.length
                    require uint8(var59004) < 6
                    require var55004 < stor0.length
                    require uint8(var59004) < 6
                    # nil
                else:
                    if not uint8(var55005):
                        require var55004 < stor0.length
                        require var55004 < stor0.length
                        require var55004 < mem[96]
                        require stor0.length
                        stor0[stor0.length - 1].field_0 = 0
                        stor0[stor0.length - 1].field_256 = 0
                        stor0[stor0.length - 1].field_512 = 0
                        stor0[stor0.length - 1].field_768 = 0
                        stor0.length--
                        # nil
                        if uint8(var55005) <= 0:
                        else:
                    else:
                        require uint8(var55006 - var55005)^uint8(var55006 - var55005)
                        require var55004 < stor0.length
                        require var55004 < stor0.length
                        require var55004 < mem[96]
                        require stor0.length
                        stor0[stor0.length - 1].field_0 = 0
                        stor0[stor0.length - 1].field_256 = 0
                        stor0[stor0.length - 1].field_512 = 0
                        stor0[stor0.length - 1].field_768 = 0
                        stor0.length--
                        # nil
                        if stor0[var55004].field_256 * 10^18 * 16^uint8(var55006) / uint8(var55006 - var55005)^uint8(var55006 - var55005) / 10^18:
                        else:
                            if uint8(var55005) <= 0:
                            else:
            else:
                require var39001 < stor0.length
                mem[0] = 0
                mem[64] = _445 + (32 * stor0.length) + 352
                mem[_445 + (32 * stor0.length) + 192] = stor0[var41001].field_0
                mem[_445 + (32 * stor0.length) + 224] = stor0[var41001].field_256
                mem[_445 + (32 * stor0.length) + 256] = Mask(128, 128, stor0[var41001].field_512)
                mem[_445 + (32 * stor0.length) + 288] = stor0[var41001].field_640 << 208
                mem[_445 + (32 * stor0.length) + 320] = stor0[var41001].field_768
                require var41003 < mem[_445]
                mem[_445 + (32 * var43001) + 32] = var43003
                require stor0.length
                mem[0] = 0
                stor0[stor0.length - 1].field_0 = 0
                stor0[stor0.length - 1].field_256 = 0
                stor0[stor0.length - 1].field_512 = 0
                stor0[stor0.length - 1].field_768 = 0
                stor0.length--
                if var47003 > 0:
                    require var49001 - 1 < stor0.length
                    if stor0[var51001].field_0 < block.number:
                        # nil
                    else:
                        require var53001 < stor0.length
                        # nil
                else:
                    require var48001 - 1 < mem[_445]
                    if not Mask(128, 128, mem[mem[_445 + (32 * var50001) + 32] + 64]):
                        idx = var50003
                        while idx > 0:
                            require idx - 1 < mem[_445]
                            if Mask(128, 128, mem[mem[_445 + (32 * idx - 1) + 32] + 64]):
                                require idx - 1 < mem[_445]
                                stor0.length++
                                mem[0] = 0
                                stor0[stor0.length].field_0 = mem[mem[(32 * idx - 1) + _445 + 32]]
                                stor0[stor0.length].field_256 = mem[mem[(32 * idx - 1) + _445 + 32] + 32]
                                stor0[stor0.length].field_512 = mem[mem[(32 * idx - 1) + _445 + 32] + 64 len 16]
                                stor0[stor0.length].field_640 = mem[mem[(32 * idx - 1) + _445 + 32] + 96 len 6]
                                stor0[stor0.length].field_768 = mem[mem[(32 * idx - 1) + _445 + 32] + 140 len 20]
                            idx = idx - 1
                            continue 
                        # nil
                    else:
                        require var52001 < mem[_445]
                        # nil
    else:
        mem[64] = _445 + (32 * stor0.length) + 192
        mem[_445 + (32 * stor0.length) + 32] = 0
        mem[_445 + (32 * stor0.length) + 64] = 0
        mem[_445 + (32 * stor0.length) + 96] = 0
        mem[_445 + (32 * stor0.length) + 128] = 0
        mem[_445 + (32 * stor0.length) + 160] = 0
        mem[var17001] = _445 + (32 * stor0.length) + 32
        s = var17001
        idx = var17002
        while idx - 1:
            mem[64] = mem[64] + 160
            mem[_445 + (32 * stor0.length) + 32] = 0
            mem[_445 + (32 * stor0.length) + 64] = 0
            mem[_445 + (32 * stor0.length) + 96] = 0
            mem[_445 + (32 * stor0.length) + 128] = 0
            mem[_445 + (32 * stor0.length) + 160] = 0
            mem[s + 32] = _445 + (32 * stor0.length) + 32
            s = s + 32
            idx = idx - 1
            continue 
        require var28001 - 1 < stor0.length
        if stor0[var30001].field_0 < block.number:
            require var46001 < stor0.length
            require var48004 < stor0.length
            if uint8(var48003) >= 6:
                if not uint8(var58003):
                    require var58007 < stor0.length
                    mem[0] = 0
                    if uint8(var58003) <= 0:
                        _48321 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_48321] = 0
                        mem[_48321 + 32] = var58006
                        require var58007 < stor0.length
                        mem[_48321 + 64] = Mask(128, 128, stor0[var58007].field_512)
                        mem[_48321 + 96] = stor0[var58007].field_768
                        require var58007 < mem[96]
                        require stor0.length
                        # nil
                    else:
                        _48481 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_48481] = uint8(var58003)
                        mem[_48481 + 32] = var58006
                        require var58007 < stor0.length
                        mem[_48481 + 64] = Mask(128, 128, stor0[var58007].field_512)
                        mem[_48481 + 96] = stor0[var58007].field_768
                        require var58007 < mem[96]
                        require stor0.length
                        # nil
                else:
                    require uint8(var58004 - var58003)^uint8(var58004 - var58003)
                    require var58007 < stor0.length
                    mem[0] = 0
                    if stor0[var58007].field_256 * 10^18 * 16^uint8(var58004) / uint8(var58004 - var58003)^uint8(var58004 - var58003) / 10^18:
                        _48320 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_48320] = stor0[var58007].field_256 * 10^18 * 16^uint8(var58004) / uint8(var58004 - var58003)^uint8(var58004 - var58003) / 10^18
                        mem[_48320 + 32] = var58006
                        require var58007 < stor0.length
                        mem[_48320 + 64] = Mask(128, 128, stor0[var58007].field_512)
                        mem[_48320 + 96] = stor0[var58007].field_768
                        require var58007 < mem[96]
                        require stor0.length
                        # nil
                    else:
                        if uint8(var58003) <= 0:
                            _48479 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_48479] = stor0[var58007].field_256 * 10^18 * 16^uint8(var58004) / uint8(var58004 - var58003)^uint8(var58004 - var58003) / 10^18
                            mem[_48479 + 32] = var58006
                            require var58007 < stor0.length
                            mem[_48479 + 64] = Mask(128, 128, stor0[var58007].field_512)
                            mem[_48479 + 96] = stor0[var58007].field_768
                            require var58007 < mem[96]
                            require stor0.length
                            # nil
                        else:
                            _48735 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_48735] = uint8(var58003)
                            mem[_48735 + 32] = var58006
                            require var58007 < stor0.length
                            mem[_48735 + 64] = Mask(128, 128, stor0[var58007].field_512)
                            mem[_48735 + 96] = stor0[var58007].field_768
                            require var58007 < mem[96]
                            require stor0.length
                            # nil
            else:
                require var48004 < stor0.length
                require uint8(var52004) < 6
                require uint8((uint8(var52004) / 2) + 29) < 32
                require var48004 < stor0.length
                require uint8(var52004) < 6
                require var48004 < stor0.length
                require uint8(var52004) < 6
                require var70007 < stor0.length
                mem[0] = 0
                if uint8(var72003) < 6:
                    require var72009 < stor0.length
                    var52004 = var72003
                    var52006 = var72005
                    var52007 = var72006
                    continue 
                if bool(var52004):
                    if not uint8(var72005):
                        require var72009 < stor0.length
                        mem[0] = 0
                        if uint8(var72005) <= 0:
                            _33191 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_33191] = 0
                            mem[_33191 + 32] = var72008
                            require var72009 < stor0.length
                            mem[_33191 + 64] = Mask(128, 128, stor0[var72009].field_512)
                            mem[_33191 + 96] = stor0[var72009].field_768
                            require var72009 < mem[96]
                            mem[(32 * var72009) + 128] = _33191
                            require stor0.length
                            mem[0] = 0
                            stor0[stor0.length - 1].field_0 = 0
                            stor0[stor0.length - 1].field_256 = 0
                            stor0[stor0.length - 1].field_512 = 0
                            stor0[stor0.length - 1].field_768 = 0
                            stor0.length--
                            if var74003 > 0:
                                require var76001 - 1 < stor0.length
                                # nil
                            else:
                                require var75001 - 1 < mem[_445]
                                # nil
                        else:
                            _33320 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_33320] = uint8(var72005)
                            mem[_33320 + 32] = var72008
                            require var72009 < stor0.length
                            mem[_33320 + 64] = Mask(128, 128, stor0[var72009].field_512)
                            mem[_33320 + 96] = stor0[var72009].field_768
                            require var72009 < mem[96]
                            mem[(32 * var72009) + 128] = _33320
                            require stor0.length
                            mem[0] = 0
                            stor0[stor0.length - 1].field_0 = 0
                            stor0[stor0.length - 1].field_256 = 0
                            stor0[stor0.length - 1].field_512 = 0
                            stor0[stor0.length - 1].field_768 = 0
                            stor0.length--
                            if var75003 > 0:
                                require var77001 - 1 < stor0.length
                                # nil
                            else:
                                require var76001 - 1 < mem[_445]
                                # nil
                    else:
                        require uint8(var72006 - var72005)^uint8(var72006 - var72005)
                        require var72009 < stor0.length
                        mem[0] = 0
                        if stor0[var72009].field_256 * 10^18 * 16^uint8(var72006) / uint8(var72006 - var72005)^uint8(var72006 - var72005) / 10^18:
                            _33190 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_33190] = stor0[var72009].field_256 * 10^18 * 16^uint8(var72006) / uint8(var72006 - var72005)^uint8(var72006 - var72005) / 10^18
                            mem[_33190 + 32] = var72008
                            require var72009 < stor0.length
                            mem[_33190 + 64] = Mask(128, 128, stor0[var72009].field_512)
                            mem[_33190 + 96] = stor0[var72009].field_768
                            require var72009 < mem[96]
                            mem[(32 * var72009) + 128] = _33190
                            require stor0.length
                            mem[0] = 0
                            stor0[stor0.length - 1].field_0 = 0
                            stor0[stor0.length - 1].field_256 = 0
                            stor0[stor0.length - 1].field_512 = 0
                            stor0[stor0.length - 1].field_768 = 0
                            stor0.length--
                            if var74003 > 0:
                                require var76001 - 1 < stor0.length
                                # nil
                            else:
                                require var75001 - 1 < mem[_445]
                                # nil
                        else:
                            if uint8(var72005) <= 0:
                                _33318 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_33318] = stor0[var72009].field_256 * 10^18 * 16^uint8(var72006) / uint8(var72006 - var72005)^uint8(var72006 - var72005) / 10^18
                                mem[_33318 + 32] = var72008
                                require var72009 < stor0.length
                                mem[_33318 + 64] = Mask(128, 128, stor0[var72009].field_512)
                                mem[_33318 + 96] = stor0[var72009].field_768
                                require var72009 < mem[96]
                                mem[(32 * var72009) + 128] = _33318
                                require stor0.length
                                mem[0] = 0
                                stor0[stor0.length - 1].field_0 = 0
                                stor0[stor0.length - 1].field_256 = 0
                                stor0[stor0.length - 1].field_512 = 0
                                stor0[stor0.length - 1].field_768 = 0
                                stor0.length--
                                if var75003 > 0:
                                    require var77001 - 1 < stor0.length
                                    # nil
                                else:
                                    require var76001 - 1 < mem[_445]
                                    # nil
                            else:
                                _33572 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_33572] = uint8(var72005)
                                mem[_33572 + 32] = var72008
                                require var72009 < stor0.length
                                mem[_33572 + 64] = Mask(128, 128, stor0[var72009].field_512)
                                mem[_33572 + 96] = stor0[var72009].field_768
                                require var72009 < mem[96]
                                mem[(32 * var72009) + 128] = _33572
                                require stor0.length
                                mem[0] = 0
                                stor0[stor0.length - 1].field_0 = 0
                                stor0[stor0.length - 1].field_256 = 0
                                stor0[stor0.length - 1].field_512 = 0
                                stor0[stor0.length - 1].field_768 = 0
                                stor0.length--
                                if var76003 > 0:
                                    require var78001 - 1 < stor0.length
                                    # nil
                                else:
                                    require var77001 - 1 < mem[_445]
                                    # nil
                else:
                    if not uint8(var72005):
                        require var72009 < stor0.length
                        mem[0] = 0
                        if uint8(var72005) <= 0:
                            _33193 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_33193] = 0
                            mem[_33193 + 32] = var72008
                            require var72009 < stor0.length
                            mem[_33193 + 64] = Mask(128, 128, stor0[var72009].field_512)
                            mem[_33193 + 96] = stor0[var72009].field_768
                            require var72009 < mem[96]
                            mem[(32 * var72009) + 128] = _33193
                            require stor0.length
                            mem[0] = 0
                            stor0[stor0.length - 1].field_0 = 0
                            stor0[stor0.length - 1].field_256 = 0
                            stor0[stor0.length - 1].field_512 = 0
                            stor0[stor0.length - 1].field_768 = 0
                            stor0.length--
                            if var74003 > 0:
                                require var76001 - 1 < stor0.length
                                # nil
                            else:
                                require var75001 - 1 < mem[_445]
                                # nil
                        else:
                            _33324 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_33324] = uint8(var72005)
                            mem[_33324 + 32] = var72008
                            require var72009 < stor0.length
                            mem[_33324 + 64] = Mask(128, 128, stor0[var72009].field_512)
                            mem[_33324 + 96] = stor0[var72009].field_768
                            require var72009 < mem[96]
                            mem[(32 * var72009) + 128] = _33324
                            require stor0.length
                            mem[0] = 0
                            stor0[stor0.length - 1].field_0 = 0
                            stor0[stor0.length - 1].field_256 = 0
                            stor0[stor0.length - 1].field_512 = 0
                            stor0[stor0.length - 1].field_768 = 0
                            stor0.length--
                            if var75003 > 0:
                                require var77001 - 1 < stor0.length
                                # nil
                            else:
                                require var76001 - 1 < mem[_445]
                                # nil
                    else:
                        require uint8(var72006 - var72005)^uint8(var72006 - var72005)
                        require var72009 < stor0.length
                        mem[0] = 0
                        if stor0[var72009].field_256 * 10^18 * 16^uint8(var72006) / uint8(var72006 - var72005)^uint8(var72006 - var72005) / 10^18:
                            _33192 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_33192] = stor0[var72009].field_256 * 10^18 * 16^uint8(var72006) / uint8(var72006 - var72005)^uint8(var72006 - var72005) / 10^18
                            mem[_33192 + 32] = var72008
                            require var72009 < stor0.length
                            mem[_33192 + 64] = Mask(128, 128, stor0[var72009].field_512)
                            mem[_33192 + 96] = stor0[var72009].field_768
                            require var72009 < mem[96]
                            mem[(32 * var72009) + 128] = _33192
                            require stor0.length
                            mem[0] = 0
                            stor0[stor0.length - 1].field_0 = 0
                            stor0[stor0.length - 1].field_256 = 0
                            stor0[stor0.length - 1].field_512 = 0
                            stor0[stor0.length - 1].field_768 = 0
                            stor0.length--
                            if var74003 > 0:
                                require var76001 - 1 < stor0.length
                                # nil
                            else:
                                require var75001 - 1 < mem[_445]
                                # nil
                        else:
                            if uint8(var72005) <= 0:
                                _33322 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_33322] = stor0[var72009].field_256 * 10^18 * 16^uint8(var72006) / uint8(var72006 - var72005)^uint8(var72006 - var72005) / 10^18
                                mem[_33322 + 32] = var72008
                                require var72009 < stor0.length
                                mem[_33322 + 64] = Mask(128, 128, stor0[var72009].field_512)
                                mem[_33322 + 96] = stor0[var72009].field_768
                                require var72009 < mem[96]
                                mem[(32 * var72009) + 128] = _33322
                                require stor0.length
                                mem[0] = 0
                                stor0[stor0.length - 1].field_0 = 0
                                stor0[stor0.length - 1].field_256 = 0
                                stor0[stor0.length - 1].field_512 = 0
                                stor0[stor0.length - 1].field_768 = 0
                                stor0.length--
                                if var75003 > 0:
                                    require var77001 - 1 < stor0.length
                                    # nil
                                else:
                                    require var76001 - 1 < mem[_445]
                                    # nil
                            else:
                                _33579 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_33579] = uint8(var72005)
                                mem[_33579 + 32] = var72008
                                require var72009 < stor0.length
                                mem[_33579 + 64] = Mask(128, 128, stor0[var72009].field_512)
                                mem[_33579 + 96] = stor0[var72009].field_768
                                require var72009 < mem[96]
                                mem[(32 * var72009) + 128] = _33579
                                require stor0.length
                                mem[0] = 0
                                stor0[stor0.length - 1].field_0 = 0
                                stor0[stor0.length - 1].field_256 = 0
                                stor0[stor0.length - 1].field_512 = 0
                                stor0[stor0.length - 1].field_768 = 0
                                stor0.length--
                                if var76003 > 0:
                                    require var78001 - 1 < stor0.length
                                    # nil
                                else:
                                    require var77001 - 1 < mem[_445]
                                    # nil
        else:
            require var32001 < stor0.length
            mem[0] = 0
            _3614 = mem[64]
            mem[64] = mem[64] + 160
            mem[_3614] = stor0[var34001].field_0
            mem[_3614 + 32] = stor0[var34001].field_256
            mem[_3614 + 64] = Mask(128, 128, stor0[var34001].field_512)
            mem[_3614 + 96] = stor0[var34001].field_640 << 208
            mem[_3614 + 128] = stor0[var34001].field_768
            require var34003 < mem[_445]
            mem[_445 + (32 * var36001) + 32] = var36003
            require stor0.length
            mem[0] = 0
            stor0[stor0.length - 1].field_0 = 0
            stor0[stor0.length - 1].field_256 = 0
            stor0[stor0.length - 1].field_512 = 0
            stor0[stor0.length - 1].field_768 = 0
            stor0.length--
            if var40003 <= 0:
                require var41001 - 1 < mem[_445]
                if not Mask(128, 128, mem[mem[_445 + (32 * var43001) + 32] + 64]):
                    idx = var43003
                    while idx > 0:
                        require idx - 1 < mem[_445]
                        if Mask(128, 128, mem[mem[_445 + (32 * idx - 1) + 32] + 64]):
                            require idx - 1 < mem[_445]
                            stor0.length++
                            mem[0] = 0
                            stor0[stor0.length].field_0 = mem[mem[(32 * idx - 1) + _445 + 32]]
                            stor0[stor0.length].field_256 = mem[mem[(32 * idx - 1) + _445 + 32] + 32]
                            stor0[stor0.length].field_512 = mem[mem[(32 * idx - 1) + _445 + 32] + 64 len 16]
                            stor0[stor0.length].field_640 = mem[mem[(32 * idx - 1) + _445 + 32] + 96 len 6]
                            stor0[stor0.length].field_768 = mem[mem[(32 * idx - 1) + _445 + 32] + 140 len 20]
                        idx = idx - 1
                        continue 
                    _27253 = mem[96]
                    idx = 0
                    while idx < _27253:
                        require idx < mem[96]
                        if Mask(128, 128, mem[mem[(32 * idx) + 128] + 64]) <= 0:
                            idx = idx + 1
                            continue 
                        else:
                            if 0 <= eth.balance(this.address):
                                require idx < mem[96]
                                _27697 = mem[mem[(32 * idx) + 128] + 96]
                                require idx < mem[96]
                                _27874 = mem[mem[(32 * idx) + 128] + 64]
                                require idx < mem[96]
                                require idx < mem[96]
                                _28130 = mem[mem[(32 * idx) + 128] + 32]
                                mem[mem[64]] = mem[mem[(32 * idx) + 128]]
                                mem[mem[64] + 32] = _28130
                                emit 0xea7d87ff: mem[mem[64]], _28130, Mask(128, 128, _27874), address(_27697)
                                idx = idx + 1
                                continue 
                            else:
                                require idx < mem[96]
                                require idx < mem[96]
                                require idx < mem[96]
                                revert
                else:
                    require var45001 < mem[_445]
                    stor0.length++
                    mem[0] = 0
                    stor0[stor0.length].field_0 = mem[mem[(32 * var47001) + _445 + 32]]
                    stor0[stor0.length].field_256 = mem[mem[(32 * var47001) + _445 + 32] + 32]
                    stor0[stor0.length].field_512 = mem[mem[(32 * var47001) + _445 + 32] + 64 len 16]
                    stor0[stor0.length].field_640 = mem[mem[(32 * var47001) + _445 + 32] + 96 len 6]
                    stor0[stor0.length].field_768 = mem[mem[(32 * var47001) + _445 + 32] + 140 len 20]
                    idx = var47004
                    while idx > 0:
                        require idx - 1 < mem[_445]
                        if Mask(128, 128, mem[mem[_445 + (32 * idx - 1) + 32] + 64]):
                            require idx - 1 < mem[_445]
                            stor0.length++
                            mem[0] = 0
                            stor0[stor0.length].field_0 = mem[mem[(32 * idx - 1) + _445 + 32]]
                            stor0[stor0.length].field_256 = mem[mem[(32 * idx - 1) + _445 + 32] + 32]
                            stor0[stor0.length].field_512 = mem[mem[(32 * idx - 1) + _445 + 32] + 64 len 16]
                            stor0[stor0.length].field_640 = mem[mem[(32 * idx - 1) + _445 + 32] + 96 len 6]
                            stor0[stor0.length].field_768 = mem[mem[(32 * idx - 1) + _445 + 32] + 140 len 20]
                        idx = idx - 1
                        continue 
                    _39691 = mem[96]
                    idx = 0
                    while idx < _39691:
                        require idx < mem[96]
                        if Mask(128, 128, mem[mem[(32 * idx) + 128] + 64]) <= 0:
                            idx = idx + 1
                            continue 
                        else:
                            if 0 <= eth.balance(this.address):
                                require idx < mem[96]
                                _40271 = mem[mem[(32 * idx) + 128] + 96]
                                require idx < mem[96]
                                _40491 = mem[mem[(32 * idx) + 128] + 64]
                                require idx < mem[96]
                                require idx < mem[96]
                                _40786 = mem[mem[(32 * idx) + 128] + 32]
                                mem[mem[64]] = mem[mem[(32 * idx) + 128]]
                                mem[mem[64] + 32] = _40786
                                emit 0xea7d87ff: mem[mem[64]], _40786, Mask(128, 128, _40491), address(_40271)
                                idx = idx + 1
                                continue 
                            else:
                                require idx < mem[96]
                                require idx < mem[96]
                                require idx < mem[96]
                                revert
                idx = 0
                while idx < mem[96]:
                    require idx < mem[96]
                    if mem[mem[(32 * idx) + 128]] <= 0:
                        idx = idx + 1
                        continue 
                    else:
                        if 0 <= eth.balance(this.address):
                            require idx < mem[96]
                            require idx < mem[96]
                            call mem[mem[(32 * idx) + 128] + 108 len 20] with:
                               value mem[mem[(32 * idx) + 128]] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                idx = idx + 1
                                continue 
                        else:
                            require idx < mem[96]
                            require idx < mem[96]
                            revert
            require var42001 - 1 < stor0.length
            if stor0[var44001].field_0 < block.number:
                require var60001 < stor0.length
                require var62004 < stor0.length
                if uint8(var62003) < 6:
                    # nil
                else:
                    if not uint8(var62005):
                        require var62004 < stor0.length
                        mem[0] = 0
                        if uint8(var62005) <= 0:
                            _58525 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_58525] = 0
                            mem[_58525 + 32] = block.hash(stor0[var62001].field_0)
                            require var62004 < stor0.length
                            mem[_58525 + 64] = Mask(128, 128, stor0[var62004].field_512)
                            mem[_58525 + 96] = stor0[var62004].field_768
                            require var62004 < mem[96]
                            # nil
                        else:
                            _58984 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_58984] = uint8(var62005)
                            mem[_58984 + 32] = block.hash(stor0[var62001].field_0)
                            require var62004 < stor0.length
                            mem[_58984 + 64] = Mask(128, 128, stor0[var62004].field_512)
                            mem[_58984 + 96] = stor0[var62004].field_768
                            require var62004 < mem[96]
                            # nil
                    else:
                        require uint8(var62006 - var62005)^uint8(var62006 - var62005)
                        require var62004 < stor0.length
                        mem[0] = 0
                        if stor0[var62004].field_256 * 10^18 * 16^uint8(var62006) / uint8(var62006 - var62005)^uint8(var62006 - var62005) / 10^18:
                            _58524 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_58524] = stor0[var62004].field_256 * 10^18 * 16^uint8(var62006) / uint8(var62006 - var62005)^uint8(var62006 - var62005) / 10^18
                            mem[_58524 + 32] = block.hash(stor0[var62001].field_0)
                            require var62004 < stor0.length
                            mem[_58524 + 64] = Mask(128, 128, stor0[var62004].field_512)
                            mem[_58524 + 96] = stor0[var62004].field_768
                            require var62004 < mem[96]
                            # nil
                        else:
                            if uint8(var62005) <= 0:
                                _58982 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_58982] = stor0[var62004].field_256 * 10^18 * 16^uint8(var62006) / uint8(var62006 - var62005)^uint8(var62006 - var62005) / 10^18
                                mem[_58982 + 32] = block.hash(stor0[var62001].field_0)
                                require var62004 < stor0.length
                                mem[_58982 + 64] = Mask(128, 128, stor0[var62004].field_512)
                                mem[_58982 + 96] = stor0[var62004].field_768
                                require var62004 < mem[96]
                                # nil
                            else:
                                _59449 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_59449] = uint8(var62005)
                                mem[_59449 + 32] = block.hash(stor0[var62001].field_0)
                                require var62004 < stor0.length
                                mem[_59449 + 64] = Mask(128, 128, stor0[var62004].field_512)
                                mem[_59449 + 96] = stor0[var62004].field_768
                                require var62004 < mem[96]
                                # nil
            else:
                require var46001 < stor0.length
                mem[0] = 0
                _27251 = mem[64]
                mem[64] = mem[64] + 160
                mem[_27251] = stor0[var48001].field_0
                mem[_27251 + 32] = stor0[var48001].field_256
                mem[_27251 + 64] = Mask(128, 128, stor0[var48001].field_512)
                mem[_27251 + 96] = stor0[var48001].field_640 << 208
                mem[_27251 + 128] = stor0[var48001].field_768
                require var48003 < mem[_445]
                require stor0.length
                mem[0] = 0
                stor0[stor0.length - 1].field_0 = 0
                stor0[stor0.length - 1].field_256 = 0
                stor0[stor0.length - 1].field_512 = 0
                stor0[stor0.length - 1].field_768 = 0
                stor0.length--
                if var54003 > 0:
                    require var56001 - 1 < stor0.length
                    # nil
                else:
                    require var55001 - 1 < mem[_445]
                    # nil
}



}
