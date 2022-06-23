contract main {




// =====================  Runtime code  =====================


mapping of uint256 sub_ebff1b68;
uint256 sub_82fbf195;
uint256 prizeId;
uint256 sub_380cfd19;
uint256 counter;
address sub_54879918Address;

function sub_380cfd19(?) {
    return sub_380cfd19
}

function sub_54879918(?) {
    return sub_54879918Address
}

function counter() {
    return counter
}

function sub_82fbf195(?) {
    return sub_82fbf195
}

function prizeId() {
    return prizeId
}

function sub_ebff1b68(?) {
    return sub_ebff1b68[arg1]
}

function _fallback() payable {
    revert
}

function sub_2d00a151(?) {
    require msg.sender == sub_54879918Address
    sub_54879918Address = arg1
}

function start() {
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0x1ea4c115 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    prizeId = 0
    sub_82fbf195++
}

function sub_ab8078c6(?) {
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0x9d6ad02e with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0x4d4e6ef0 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xaaca3d7d with:
         gas gas_remaining wei
        args sub_82fbf195
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if ext_call.return_data[64]:
        return 0
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0x56e83e81 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getRandom(uint256 arg1) with:
         gas gas_remaining wei
        args sub_82fbf195
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0xfc5ab87c with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x320ca889 with:
         gas gas_remaining wei
        args sub_82fbf195, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x9f8a0bd with:
         gas gas_remaining wei
        args sub_82fbf195, ext_call.return_data[0], ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x7e8c7a96: ext_call.return_data[0], sub_82fbf195, ext_call.return_data[0]
    return 1
}

function calculatePrizes() {
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0x9d6ad02e with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0x4d4e6ef0 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_54879918Address)
    call sub_54879918Address.0xfc5ab87c with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xaaca3d7d with:
         gas gas_remaining wei
        args sub_82fbf195
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if sub_ebff1b68[stor1] >= ext_call.return_data[96]:
        return 0
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).JACKPOT() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if prizeId != ext_call.return_data[0]:
        idx = 0
        s = 0
        s = sub_380cfd19
        while idx < 10:
            if sub_ebff1b68[stor1] >= ext_call.return_data[96]:
                sub_380cfd19 = s
                return 1
            require ext_call.return_data[32]
            mem[100] = sub_82fbf195
            mem[132] = sha3(s) % ext_call.return_data[32]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x39ff487b with:
                 gas gas_remaining wei
                args sub_82fbf195, sha3(s) % ext_call.return_data[32]
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not address(ext_call.return_data[0]):
                mem[96] = 0x8c0fb11300000000000000000000000000000000000000000000000000000000
                mem[100] = sub_82fbf195
                mem[132] = prizeId
                mem[164] = sha3(s) % ext_call.return_data[32]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x8c0fb113 with:
                     gas gas_remaining wei
                    args sub_82fbf195, prizeId, sha3(s) % ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = sha3(s) % ext_call.return_data[32]
            s = sha3(s)
            continue 
        sub_380cfd19 = s
    else:
        if 4 == counter:
            require ext_call.return_data[32]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x8c0fb113 with:
                 gas gas_remaining wei
                args sub_82fbf195, prizeId, sha3(ext_call.return_data[64]) % ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            counter = 0
            idx = 0
            s = 0
            s = 0
            while idx < 10:
                if sub_ebff1b68[stor1] + 1 >= ext_call.return_data[96]:
                    prizeId++
                    sub_380cfd19 = s + sha3(ext_call.return_data[64])
                    sub_ebff1b68[stor1]++
                    return 1
                require ext_call.return_data[32]
                mem[100] = sub_82fbf195
                mem[132] = sha3(s + sha3(ext_call.return_data[64])) % ext_call.return_data[32]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x39ff487b with:
                     gas gas_remaining wei
                    args sub_82fbf195, sha3(s + sha3(ext_call.return_data[64])) % ext_call.return_data[32]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not address(ext_call.return_data[0]):
                    mem[96] = 0x8c0fb11300000000000000000000000000000000000000000000000000000000
                    mem[100] = sub_82fbf195
                    mem[132] = prizeId + 1
                    mem[164] = sha3(s + sha3(ext_call.return_data[64])) % ext_call.return_data[32]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x8c0fb113 with:
                         gas gas_remaining wei
                        args sub_82fbf195, prizeId + 1, sha3(s + sha3(ext_call.return_data[64])) % ext_call.return_data[32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = sha3(s) % ext_call.return_data[32]
                s = sha3(s)
                continue 
            prizeId++
            sub_380cfd19 = s
            sub_ebff1b68[stor1]++
        else:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x7eefb6e with:
                 gas gas_remaining wei
                args ext_call.return_data[64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x4f6a624e with:
                     gas gas_remaining wei
                    args sub_82fbf195
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                counter++
                idx = 0
                s = 0
                s = 0
                while idx < 10:
                    if sub_ebff1b68[stor1] >= ext_call.return_data[96]:
                        prizeId++
                        sub_380cfd19 = s + sha3(ext_call.return_data[64])
                        return 1
                    require ext_call.return_data[32]
                    mem[100] = sub_82fbf195
                    mem[132] = sha3(s + sha3(ext_call.return_data[64])) % ext_call.return_data[32]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x39ff487b with:
                         gas gas_remaining wei
                        args sub_82fbf195, sha3(s + sha3(ext_call.return_data[64])) % ext_call.return_data[32]
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not address(ext_call.return_data[0]):
                        mem[96] = 0x8c0fb11300000000000000000000000000000000000000000000000000000000
                        mem[100] = sub_82fbf195
                        mem[132] = prizeId + 1
                        mem[164] = sha3(s + sha3(ext_call.return_data[64])) % ext_call.return_data[32]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x8c0fb113 with:
                             gas gas_remaining wei
                            args sub_82fbf195, prizeId + 1, sha3(s + sha3(ext_call.return_data[64])) % ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = sha3(s) % ext_call.return_data[32]
                    s = sha3(s)
                    continue 
                prizeId++
                sub_380cfd19 = s
            else:
                require ext_call.return_data[32]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x8c0fb113 with:
                     gas gas_remaining wei
                    args sub_82fbf195, prizeId, sha3(ext_call.return_data[64]) % ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                counter = 0
                idx = 0
                s = 0
                s = 0
                while idx < 10:
                    if sub_ebff1b68[stor1] + 1 >= ext_call.return_data[96]:
                        prizeId++
                        sub_380cfd19 = s + sha3(ext_call.return_data[64])
                        sub_ebff1b68[stor1]++
                        return 1
                    require ext_call.return_data[32]
                    mem[100] = sub_82fbf195
                    mem[132] = sha3(s + sha3(ext_call.return_data[64])) % ext_call.return_data[32]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x39ff487b with:
                         gas gas_remaining wei
                        args sub_82fbf195, sha3(s + sha3(ext_call.return_data[64])) % ext_call.return_data[32]
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not address(ext_call.return_data[0]):
                        mem[96] = 0x8c0fb11300000000000000000000000000000000000000000000000000000000
                        mem[100] = sub_82fbf195
                        mem[132] = prizeId + 1
                        mem[164] = sha3(s + sha3(ext_call.return_data[64])) % ext_call.return_data[32]
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x8c0fb113 with:
                             gas gas_remaining wei
                            args sub_82fbf195, prizeId + 1, sha3(s + sha3(ext_call.return_data[64])) % ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = sha3(s) % ext_call.return_data[32]
                    s = sha3(s)
                    continue 
                prizeId++
                sub_380cfd19 = s
                sub_ebff1b68[stor1]++
    return 1
}



}
