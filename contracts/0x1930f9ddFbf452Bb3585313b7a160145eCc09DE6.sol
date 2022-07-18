contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
address stor6;

function _fallback() payable {
    revert
}

function sub_cb4554d5(?) {
    require ext_code.size(stor4)
    call stor4.pip() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).read() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] < arg1
    require msg.sender == stor0
    require ext_code.size(stor3)
    call stor3.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 5 * 10^17
    require ext_code.size(stor4)
    call stor4.safe(bytes32 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(stor4)
        call stor4.bite(bytes32 arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor3)
    call stor3.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    call stor2.0x70a08231 with:
         gas gas_remaining wei
        args stor4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 1000000000 * 10^18 * ext_call.return_data[0] / 1000000000 * 10^18 != ext_call.return_data[0]:
        revert with 0, 'ds-math-mul-overflow'
    if (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) < 1000000000 * 10^18 * ext_call.return_data[0]:
        revert with 0, 'ds-math-add-overflow'
    require ext_call.return_data[0]
    s = 0
    t = 0
    u = 0
    v = 0
    w = 0
    x = 0
    y = 0
    z = 0
    idx = 1
    while idx:
        mem[100] = stor5
        require ext_code.size(stor3)
        call stor3.0x70a08231 with:
             gas gas_remaining wei
            args stor5
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 5 * 10^16:
            s = s
            t = t
            u = u
            v = v
            w = w
            x = x
            y = y
            z = ext_call.return_data[0]
            idx = 0
            continue 
        require ext_code.size(stor3)
        call stor3.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 1000000000 * 10^18 * ext_call.return_data[0] / 1000000000 * 10^18 != ext_call.return_data[0]:
            revert with 0, 'ds-math-mul-overflow'
        if (1000000000 * 10^18 * ext_call.return_data[0]) + ((1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / 2) < 1000000000 * 10^18 * ext_call.return_data[0]:
            revert with 0, 'ds-math-add-overflow'
        require (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
        require ext_code.size(stor6)
        call stor6.getBestOffer(address arg1, address arg2) with:
             gas gas_remaining wei
            args stor1, stor2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor6)
        call stor6.getOffer(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        mem[96 len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        if not (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
            mem[100] = 0
            require ext_code.size(stor5)
            call stor5.ask(uint256 arg1) with:
                 gas gas_remaining wei
                args 0
        else:
            require (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
            if ext_call.return_data[64] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] != ext_call.return_data[64]:
                revert with 0, 'ds-math-mul-overflow'
            if (ext_call.return_data[64] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 < ext_call.return_data[64] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                revert with 0, 'ds-math-add-overflow'
            mem[100] = (ext_call.return_data[64] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
            require ext_code.size(stor5)
            call stor5.ask(uint256 arg1) with:
                 gas gas_remaining wei
                args ((ext_call.return_data[64] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18)
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= ext_call.return_data[0]:
            s = s
            t = t
            u = ext_call.return_data[64]
            v = ext_call.return_data[0]
            w = ext_call.return_data[0]
            x = (1000000000 * 10^18 * ext_call.return_data[0]) + ((1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / 2) / (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
            y = ext_call.return_data[0]
            z = ext_call.return_data[0]
            idx = 0
            continue 
        if ext_call.return_data[64] < (1000000000 * 10^18 * ext_call.return_data[0]) + ((1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / 2) / (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
            if not (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                require ext_code.size(stor5)
                call stor5.s2s() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor5)
                call stor5.gap() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_call.return_data[0]
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
                if (ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 < ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, 'ds-math-add-overflow'
                require (ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18
                if ext_call.return_data[0] >= 1000000000 * 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                    require ext_code.size(stor4)
                    call stor4.exit(uint256 arg1) with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[132] = ext_call.return_data[0]
                    require ext_code.size(stor6)
                    call stor6.buy(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[96] = 0xaf378ce500000000000000000000000000000000000000000000000000000000
                    mem[100] = 1000000000 * 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18
                    require ext_code.size(stor5)
                    call stor5.bust(uint256 arg1) with:
                         gas gas_remaining wei
                        args (1000000000 * 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if gas_remaining >= 400000:
                        s = 1000000000 * 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18
                        t = ext_call.return_data[0]
                        u = ext_call.return_data[64]
                        v = ext_call.return_data[0]
                        w = ext_call.return_data[0]
                        x = ext_call.return_data[64]
                        y = 0
                        z = ext_call.return_data[0]
                        idx = idx
                        continue 
                    s = 1000000000 * 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18
                    t = ext_call.return_data[0]
                    u = ext_call.return_data[64]
                    v = ext_call.return_data[0]
                    w = ext_call.return_data[0]
                    x = ext_call.return_data[64]
                    y = 0
                    z = ext_call.return_data[0]
                    idx = 0
                    continue 
            else:
                require (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
                if ext_call.return_data[64] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] != ext_call.return_data[64]:
                    revert with 0, 'ds-math-mul-overflow'
                if (ext_call.return_data[64] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 < ext_call.return_data[64] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                    revert with 0, 'ds-math-add-overflow'
                require ext_code.size(stor5)
                call stor5.s2s() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor5)
                call stor5.gap() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_call.return_data[0]
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
                if (ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 < ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, 'ds-math-add-overflow'
                require (ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18
                if ext_call.return_data[0] >= 1000000000 * 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                    require ext_code.size(stor4)
                    call stor4.exit(uint256 arg1) with:
                         gas gas_remaining wei
                        args ((ext_call.return_data[64] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[132] = ext_call.return_data[0]
                    require ext_code.size(stor6)
                    call stor6.buy(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[96] = 0xaf378ce500000000000000000000000000000000000000000000000000000000
                    mem[100] = 1000000000 * 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18
                    require ext_code.size(stor5)
                    call stor5.bust(uint256 arg1) with:
                         gas gas_remaining wei
                        args (1000000000 * 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if gas_remaining >= 400000:
                        s = 1000000000 * 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18
                        t = ext_call.return_data[0]
                        u = ext_call.return_data[64]
                        v = ext_call.return_data[0]
                        w = ext_call.return_data[0]
                        x = ext_call.return_data[64]
                        y = (ext_call.return_data[64] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
                        z = ext_call.return_data[0]
                        idx = idx
                        continue 
                    s = 1000000000 * 10^18 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18
                    t = ext_call.return_data[0]
                    u = ext_call.return_data[64]
                    v = ext_call.return_data[0]
                    w = ext_call.return_data[0]
                    x = ext_call.return_data[64]
                    y = (ext_call.return_data[64] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
                    z = ext_call.return_data[0]
                    idx = 0
                    continue 
            ('lt', ('ext_call.return_data', 0, 32), ('div', ('mul', 1000000000000000000000000000, ('ext_call.return_data', 0, 32)), ('div', ('add', 500000000000000000, ('mul', ('ext_call.return_data', 0, 32), ('ext_call.return_data', 0, 32))), 1000000000000000000)))
        else:
            if not ext_call.return_data[0]:
                if ext_call.return_data[64] / 2 < 0:
                    revert with 0, 'ds-math-add-overflow'
                require ext_call.return_data[64]
                require ext_code.size(stor5)
                call stor5.s2s() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor5)
                call stor5.gap() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_call.return_data[0]
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
                if (ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 < ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, 'ds-math-add-overflow'
                require (ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18
                if ext_call.return_data[0] >= 1000000000 * 10^18 * ext_call.return_data[64] / 2 / ext_call.return_data[64] / (ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                    require ext_code.size(stor4)
                    call stor4.exit(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[132] = ext_call.return_data[64] / 2 / ext_call.return_data[64]
                    require ext_code.size(stor6)
                    call stor6.buy(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], ext_call.return_data[64] / 2 / ext_call.return_data[64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[96] = 0xaf378ce500000000000000000000000000000000000000000000000000000000
                    mem[100] = 1000000000 * 10^18 * ext_call.return_data[64] / 2 / ext_call.return_data[64] / (ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18
                    require ext_code.size(stor5)
                    call stor5.bust(uint256 arg1) with:
                         gas gas_remaining wei
                        args (1000000000 * 10^18 * ext_call.return_data[64] / 2 / ext_call.return_data[64] / (ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if gas_remaining >= 400000:
                        s = 1000000000 * 10^18 * ext_call.return_data[64] / 2 / ext_call.return_data[64] / (ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18
                        t = ext_call.return_data[64] / 2 / ext_call.return_data[64]
                        u = ext_call.return_data[64]
                        v = ext_call.return_data[0]
                        w = ext_call.return_data[0]
                        x = (1000000000 * 10^18 * ext_call.return_data[0]) + ((1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / 2) / (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
                        y = ext_call.return_data[0]
                        z = ext_call.return_data[0]
                        idx = idx
                        continue 
                    s = 1000000000 * 10^18 * ext_call.return_data[64] / 2 / ext_call.return_data[64] / (ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18
                    t = ext_call.return_data[64] / 2 / ext_call.return_data[64]
                    u = ext_call.return_data[64]
                    v = ext_call.return_data[0]
                    w = ext_call.return_data[0]
                    x = (1000000000 * 10^18 * ext_call.return_data[0]) + ((1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / 2) / (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
                    y = ext_call.return_data[0]
                    z = ext_call.return_data[0]
                    idx = 0
                    continue 
            else:
                require ext_call.return_data[0]
                if (1000000000 * 10^18 * ext_call.return_data[0]) + ((1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / 2) / (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != (1000000000 * 10^18 * ext_call.return_data[0]) + ((1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / 2) / (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
                if ((1000000000 * 10^18 * ext_call.return_data[0]) + ((1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / 2) / (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 < (1000000000 * 10^18 * ext_call.return_data[0]) + ((1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / 2) / (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, 'ds-math-add-overflow'
                if 10^18 * ((1000000000 * 10^18 * ext_call.return_data[0]) + ((1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / 2) / (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 10^18 != ((1000000000 * 10^18 * ext_call.return_data[0]) + ((1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / 2) / (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                    revert with 0, 'ds-math-mul-overflow'
                if (10^18 * ((1000000000 * 10^18 * ext_call.return_data[0]) + ((1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / 2) / (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (ext_call.return_data[64] / 2) < 10^18 * ((1000000000 * 10^18 * ext_call.return_data[0]) + ((1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / 2) / (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                    revert with 0, 'ds-math-add-overflow'
                require ext_call.return_data[64]
                require ext_code.size(stor5)
                call stor5.s2s() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor5)
                call stor5.gap() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_call.return_data[0]
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 'ds-math-mul-overflow'
                if (ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 < ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, 'ds-math-add-overflow'
                require (ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18
                if ext_call.return_data[0] >= 1000000000 * 10^18 * (10^18 * ((1000000000 * 10^18 * ext_call.return_data[0]) + ((1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / 2) / (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (ext_call.return_data[64] / 2) / ext_call.return_data[64] / (ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                    require ext_code.size(stor4)
                    call stor4.exit(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[132] = (10^18 * ((1000000000 * 10^18 * ext_call.return_data[0]) + ((1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / 2) / (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]
                    require ext_code.size(stor6)
                    call stor6.buy(uint256 arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], (10^18 * ((1000000000 * 10^18 * ext_call.return_data[0]) + ((1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / 2) / (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[96] = 0xaf378ce500000000000000000000000000000000000000000000000000000000
                    mem[100] = 1000000000 * 10^18 * (10^18 * ((1000000000 * 10^18 * ext_call.return_data[0]) + ((1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / 2) / (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (ext_call.return_data[64] / 2) / ext_call.return_data[64] / (ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18
                    require ext_code.size(stor5)
                    call stor5.bust(uint256 arg1) with:
                         gas gas_remaining wei
                        args (1000000000 * 10^18 * (10^18 * ((1000000000 * 10^18 * ext_call.return_data[0]) + ((1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / 2) / (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (ext_call.return_data[64] / 2) / ext_call.return_data[64] / (ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if gas_remaining >= 400000:
                        s = 1000000000 * 10^18 * (10^18 * ((1000000000 * 10^18 * ext_call.return_data[0]) + ((1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / 2) / (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (ext_call.return_data[64] / 2) / ext_call.return_data[64] / (ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18
                        t = (10^18 * ((1000000000 * 10^18 * ext_call.return_data[0]) + ((1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / 2) / (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]
                        u = ext_call.return_data[64]
                        v = ext_call.return_data[0]
                        w = ext_call.return_data[0]
                        x = (1000000000 * 10^18 * ext_call.return_data[0]) + ((1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / 2) / (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
                        y = ext_call.return_data[0]
                        z = ext_call.return_data[0]
                        idx = idx
                        continue 
                    s = 1000000000 * 10^18 * (10^18 * ((1000000000 * 10^18 * ext_call.return_data[0]) + ((1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / 2) / (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (ext_call.return_data[64] / 2) / ext_call.return_data[64] / (ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18
                    t = (10^18 * ((1000000000 * 10^18 * ext_call.return_data[0]) + ((1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / 2) / (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (ext_call.return_data[64] / 2) / ext_call.return_data[64]
                    u = ext_call.return_data[64]
                    v = ext_call.return_data[0]
                    w = ext_call.return_data[0]
                    x = (1000000000 * 10^18 * ext_call.return_data[0]) + ((1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / 2) / (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
                    y = ext_call.return_data[0]
                    z = ext_call.return_data[0]
                    idx = 0
                    continue 
        require ext_code.size(stor5)
        call stor5.ask(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[64]:
            if ext_call.return_data[0] / 2 < 0:
                revert with 0, 'ds-math-add-overflow'
            require ext_call.return_data[0]
            if not (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                require ext_code.size(stor4)
                call stor4.exit(uint256 arg1) with:
                     gas gas_remaining wei
                    args 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[132] = ext_call.return_data[0]
                require ext_code.size(stor6)
                call stor6.buy(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[96] = 0xaf378ce500000000000000000000000000000000000000000000000000000000
                mem[100] = ext_call.return_data[0]
                require ext_code.size(stor5)
                call stor5.bust(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if gas_remaining >= 400000:
                    s = ext_call.return_data[0]
                    t = ext_call.return_data[0]
                    u = ext_call.return_data[64]
                    v = ext_call.return_data[0]
                    w = ext_call.return_data[0]
                    x = ext_call.return_data[0] / 2 / ext_call.return_data[0]
                    y = 0
                    z = ext_call.return_data[0]
                    idx = idx
                    continue 
                s = ext_call.return_data[0]
                t = ext_call.return_data[0]
                u = ext_call.return_data[64]
                v = ext_call.return_data[0]
                w = ext_call.return_data[0]
                x = ext_call.return_data[0] / 2 / ext_call.return_data[0]
                y = 0
                z = ext_call.return_data[0]
                idx = 0
                continue 
            require (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
            if ext_call.return_data[0] / 2 / ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] != ext_call.return_data[0] / 2 / ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            if (ext_call.return_data[0] / 2 / ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 < ext_call.return_data[0] / 2 / ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                revert with 0, 'ds-math-add-overflow'
            require ext_code.size(stor4)
            call stor4.exit(uint256 arg1) with:
                 gas gas_remaining wei
                args ((ext_call.return_data[0] / 2 / ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[132] = ext_call.return_data[0]
            require ext_code.size(stor6)
            call stor6.buy(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[96] = 0xaf378ce500000000000000000000000000000000000000000000000000000000
            mem[100] = ext_call.return_data[0]
            require ext_code.size(stor5)
            call stor5.bust(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if gas_remaining >= 400000:
                s = ext_call.return_data[0]
                t = ext_call.return_data[0]
                u = ext_call.return_data[64]
                v = ext_call.return_data[0]
                w = ext_call.return_data[0]
                x = ext_call.return_data[0] / 2 / ext_call.return_data[0]
                y = (ext_call.return_data[0] / 2 / ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
                z = ext_call.return_data[0]
                idx = idx
                continue 
            s = ext_call.return_data[0]
            t = ext_call.return_data[0]
            u = ext_call.return_data[64]
            v = ext_call.return_data[0]
            w = ext_call.return_data[0]
            x = ext_call.return_data[0] / 2 / ext_call.return_data[0]
            y = (ext_call.return_data[0] / 2 / ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
            z = ext_call.return_data[0]
            idx = 0
            continue 
        require ext_call.return_data[64]
        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
            revert with 0, 'ds-math-mul-overflow'
        if (ext_call.return_data[0] * ext_call.return_data[64]) + 5 * 10^17 < ext_call.return_data[0] * ext_call.return_data[64]:
            revert with 0, 'ds-math-add-overflow'
        if 10^18 * (ext_call.return_data[0] * ext_call.return_data[64]) + 5 * 10^17 / 10^18 / 10^18 != (ext_call.return_data[0] * ext_call.return_data[64]) + 5 * 10^17 / 10^18:
            revert with 0, 'ds-math-mul-overflow'
        if (10^18 * (ext_call.return_data[0] * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) < 10^18 * (ext_call.return_data[0] * ext_call.return_data[64]) + 5 * 10^17 / 10^18:
            revert with 0, 'ds-math-add-overflow'
        require ext_call.return_data[0]
        if not (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
            require ext_code.size(stor4)
            call stor4.exit(uint256 arg1) with:
                 gas gas_remaining wei
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[132] = ext_call.return_data[0]
            require ext_code.size(stor6)
            call stor6.buy(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[96] = 0xaf378ce500000000000000000000000000000000000000000000000000000000
            mem[100] = ext_call.return_data[0]
            require ext_code.size(stor5)
            call stor5.bust(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if gas_remaining >= 400000:
                s = ext_call.return_data[0]
                t = ext_call.return_data[0]
                u = ext_call.return_data[64]
                v = ext_call.return_data[0]
                w = ext_call.return_data[0]
                x = (10^18 * (ext_call.return_data[0] * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
                y = 0
                z = ext_call.return_data[0]
                idx = idx
                continue 
            s = ext_call.return_data[0]
            t = ext_call.return_data[0]
            u = ext_call.return_data[64]
            v = ext_call.return_data[0]
            w = ext_call.return_data[0]
            x = (10^18 * (ext_call.return_data[0] * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
            y = 0
            z = ext_call.return_data[0]
            idx = 0
            continue 
        require (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
        if (10^18 * (ext_call.return_data[0] * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] / (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] != (10^18 * (ext_call.return_data[0] * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
            revert with 0, 'ds-math-mul-overflow'
        if ((10^18 * (ext_call.return_data[0] * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 < (10^18 * (ext_call.return_data[0] * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
            revert with 0, 'ds-math-add-overflow'
        require ext_code.size(stor4)
        call stor4.exit(uint256 arg1) with:
             gas gas_remaining wei
            args (((10^18 * (ext_call.return_data[0] * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[132] = ext_call.return_data[0]
        require ext_code.size(stor6)
        call stor6.buy(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = 0xaf378ce500000000000000000000000000000000000000000000000000000000
        mem[100] = ext_call.return_data[0]
        require ext_code.size(stor5)
        call stor5.bust(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if gas_remaining >= 400000:
            s = ext_call.return_data[0]
            t = ext_call.return_data[0]
            u = ext_call.return_data[64]
            v = ext_call.return_data[0]
            w = ext_call.return_data[0]
            x = (10^18 * (ext_call.return_data[0] * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
            y = ((10^18 * (ext_call.return_data[0] * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
            z = ext_call.return_data[0]
            idx = idx
            continue 
        s = ext_call.return_data[0]
        t = ext_call.return_data[0]
        u = ext_call.return_data[64]
        v = ext_call.return_data[0]
        w = ext_call.return_data[0]
        x = (10^18 * (ext_call.return_data[0] * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]
        y = ((10^18 * (ext_call.return_data[0] * ext_call.return_data[64]) + 5 * 10^17 / 10^18) + (ext_call.return_data[0] / 2) / ext_call.return_data[0] * (1000000000 * 10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 500000000 * 10^18 / 1000000000 * 10^18
        z = ext_call.return_data[0]
        idx = 0
        continue 
}



}
