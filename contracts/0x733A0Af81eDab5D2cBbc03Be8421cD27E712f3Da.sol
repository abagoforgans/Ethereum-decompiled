contract main {




// =====================  Runtime code  =====================


const sub_0cdd44a7(?) = 0xe41d2489571d322189246dafa5ebde1f4699f498

const weth = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2

const sub_ccc07959(?) = 0x1985365e9f78359a9b6ad760e32412f4a445e862

const dai = 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359

const bat = 0xd8775f648430679a709e98d2b0cb6250d2887ef


address adminOwner;
address sub_44aa49a5Address;
address sub_b46b02c6Address;
address sub_f55e8471Address;
address stor4;
address stor5;
address stor6;

function adminOwner() {
    return adminOwner
}

function sub_44aa49a5(?) {
    return sub_44aa49a5Address
}

function sub_b46b02c6(?) {
    return sub_b46b02c6Address
}

function sub_f55e8471(?) {
    return sub_f55e8471Address
}

function _fallback() payable {
  stop
}

function sub_e0f18c28(?) {
    return (msg.sender == adminOwner)
}

function sub_48b6c985(?) {
    return (msg.sender == sub_b46b02c6Address)
}

function sub_867b0870(?) {
    return (msg.sender == sub_44aa49a5Address)
}

function sub_4bb6e041(?) {
    require msg.sender == adminOwner
    require arg1
    sub_b46b02c6Address = arg1
}

function sub_a8a8d29d(?) {
    require msg.sender == adminOwner
    sub_f55e8471Address = arg1
    stor4 = arg1
}

function sub_e1cd61bd(?) {
    require msg.sender == adminOwner
    require arg1
    sub_44aa49a5Address = arg1
}

function transferAdminOwnership(address arg1) {
    require msg.sender == adminOwner
    require arg1
    adminOwner = arg1
}

function withdrawEth() {
    require msg.sender == adminOwner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        return 0
}

function returnToken(address arg1) {
    require msg.sender == adminOwner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
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
        if return_data.size:
            require return_data.size == 32
            require ext_call.return_data[0]
}

function returnAllTokens() {
    require msg.sender == adminOwner
    require ext_code.size(0xd8775f648430679a709e98d2b0cb6250d2887ef)
    call 0x0d8775f648430679a709e98d2b0cb6250d2887ef.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(0xd8775f648430679a709e98d2b0cb6250d2887ef)
        call 0x0d8775f648430679a709e98d2b0cb6250d2887ef.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            require ext_call.return_data[0]
    require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
    call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
        call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            require ext_call.return_data[0]
    require ext_code.size(0x1985365e9f78359a9b6ad760e32412f4a445e862)
    call 0x1985365e9f78359a9b6ad760e32412f4a445e862.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(0x1985365e9f78359a9b6ad760e32412f4a445e862)
        call 0x1985365e9f78359a9b6ad760e32412f4a445e862.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            require ext_call.return_data[0]
    require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
    call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
        call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            require ext_call.return_data[0]
    require ext_code.size(0xe41d2489571d322189246dafa5ebde1f4699f498)
    call 0xe41d2489571d322189246dafa5ebde1f4699f498.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(0xe41d2489571d322189246dafa5ebde1f4699f498)
        call 0xe41d2489571d322189246dafa5ebde1f4699f498.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            require ext_call.return_data[0]
}

function repayAll() payable {
    mem[64] = 96
    require not msg.value
    if msg.sender == sub_b46b02c6Address:
        mem[96] = 0x6e2ede0300000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor5)
        call stor5.mem[var41004 len 4] with:
             gas gas_remaining wei
            args mem[var41004 + 4 len var41005 - 4]
        mem[var41006] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if var45007 >= mem[var45002]:
        mem[96] = 0xbeb5461500000000000000000000000000000000000000000000000000000000
        mem[100] = var47005
        require ext_code.size(stor5)
        call stor5.mem[var49004 len 4] with:
             gas gas_remaining wei
            args mem[var49004 + 4 len var49005 - 4]
        mem[var49006] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _1042 = mem[var53002]
        mem[96] = 0x118e31b700000000000000000000000000000000000000000000000000000000
        mem[100] = sub_f55e8471Address
        mem[132] = address(_1042)
        require ext_code.size(stor5)
        call stor5.mem[var55004 len 4] with:
             gas gas_remaining wei
            args mem[var55004 + 4 len var55005 - 4]
        mem[var55006] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _1555 = mem[var59002]
        if not mem[var59002]:
            require ext_code.size(stor5)
            call stor5.getCollateralMarketsLength() with:
                 gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            s = var59003
            t = var59004
            u = _1555
            u = var59006
            u = var59007
            while ext_call.success:
                require return_data.size >= 32
                if u + 1 >= mem[96]:
                require ext_code.size(stor5)
                call stor5.collateralMarkets(uint256 arg1) with:
                     gas gas_remaining wei
                    args (u + 1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[100] = sub_f55e8471Address
                mem[132] = address(ext_call.return_data[0])
                require ext_code.size(stor5)
                call stor5.getBorrowBalance(address arg1, address arg2) with:
                     gas gas_remaining wei
                    args sub_f55e8471Address, address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_code.size(stor5)
                    call stor5.getCollateralMarketsLength() with:
                         gas gas_remaining wei
                    mem[96] = ext_call.return_data[0]
                    s = s
                    t = t
                    u = ext_call.return_data[0]
                    u = ext_call.return_data[0]
                    u = u + 1
                    continue 
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x70a08231 with:
                     gas gas_remaining wei
                    args sub_f55e8471Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    require ext_code.size(stor6)
                    call stor6.getExchange(address arg1) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[164] = sub_f55e8471Address
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).'W68' with:
                         gas gas_remaining wei
                        args 0, block.timestamp + 1, sub_f55e8471Address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x70a08231 with:
                     gas gas_remaining wei
                    args sub_f55e8471Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= ext_call.return_data[0]
                mem[100] = address(ext_call.return_data[0])
                mem[132] = ext_call.return_data[0]
                require ext_code.size(stor4)
                call stor4.0x647f24ac with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor5)
                call stor5.getCollateralMarketsLength() with:
                     gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                s = ext_call.return_data[0]
                t = ext_call.return_data[0]
                u = ext_call.return_data[0]
                u = ext_call.return_data[0]
                u = u + 1
                continue 
            revert with ext_call.return_data[0 len return_data.size]
        mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
        mem[100] = sub_f55e8471Address
        require ext_code.size(address(var61004))
        call var63002.mem[var63004 len 4] with:
             gas gas_remaining wei
            args mem[var63004 + 4 len var63005 - 4]
        mem[var63006] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if mem[var67002] >= var67005:
            mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
            mem[100] = sub_f55e8471Address
            require ext_code.size(address(var69002))
            call var71002.mem[var71004 len 4] with:
                 gas gas_remaining wei
                args mem[var71004 + 4 len var71005 - 4]
            mem[var71006] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require mem[var75002] >= var75005
            # nil
        else:
            mem[96] = 0x6f2bf6200000000000000000000000000000000000000000000000000000000
            mem[100] = address(var69004)
            require ext_code.size(stor6)
            call stor6.mem[var71004 len 4] with:
                 gas gas_remaining wei
                args mem[var71004 + 4 len var71005 - 4]
            mem[var71006] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(mem[var75002 + 12 len 20])
            # nil
    else:
        if msg.sender == sub_44aa49a5Address:
            mem[96] = 0x6e2ede0300000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor5)
            call stor5.mem[var43004 len 4] with:
                 gas gas_remaining wei
                args mem[var43004 + 4 len var43005 - 4]
            mem[var43006] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if var47007 >= mem[var47002]:
            mem[96] = 0xbeb5461500000000000000000000000000000000000000000000000000000000
            mem[100] = var49005
            require ext_code.size(stor5)
            call stor5.mem[var51004 len 4] with:
                 gas gas_remaining wei
                args mem[var51004 + 4 len var51005 - 4]
            mem[var51006] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _1045 = mem[var55002]
            mem[96] = 0x118e31b700000000000000000000000000000000000000000000000000000000
            mem[100] = sub_f55e8471Address
            mem[132] = address(_1045)
            require ext_code.size(stor5)
            call stor5.mem[var57004 len 4] with:
                 gas gas_remaining wei
                args mem[var57004 + 4 len var57005 - 4]
            mem[var57006] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _1556 = mem[var61002]
            if not mem[var61002]:
                require ext_code.size(stor5)
                call stor5.getCollateralMarketsLength() with:
                     gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                s = var61003
                t = var61004
                u = _1556
                u = var61006
                u = var61007
                while ext_call.success:
                    require return_data.size >= 32
                    if u + 1 >= mem[96]:
                    require ext_code.size(stor5)
                    call stor5.collateralMarkets(uint256 arg1) with:
                         gas gas_remaining wei
                        args (u + 1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[100] = sub_f55e8471Address
                    mem[132] = address(ext_call.return_data[0])
                    require ext_code.size(stor5)
                    call stor5.getBorrowBalance(address arg1, address arg2) with:
                         gas gas_remaining wei
                        args sub_f55e8471Address, address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        require ext_code.size(stor5)
                        call stor5.getCollateralMarketsLength() with:
                             gas gas_remaining wei
                        mem[96] = ext_call.return_data[0]
                        s = s
                        t = t
                        u = ext_call.return_data[0]
                        u = ext_call.return_data[0]
                        u = u + 1
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x70a08231 with:
                         gas gas_remaining wei
                        args sub_f55e8471Address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        require ext_code.size(stor6)
                        call stor6.getExchange(address arg1) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[164] = sub_f55e8471Address
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).'W68' with:
                             gas gas_remaining wei
                            args 0, block.timestamp + 1, sub_f55e8471Address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x70a08231 with:
                         gas gas_remaining wei
                        args sub_f55e8471Address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= ext_call.return_data[0]
                    mem[100] = address(ext_call.return_data[0])
                    mem[132] = ext_call.return_data[0]
                    require ext_code.size(stor4)
                    call stor4.0x647f24ac with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor5)
                    call stor5.getCollateralMarketsLength() with:
                         gas gas_remaining wei
                    mem[96] = ext_call.return_data[0]
                    s = ext_call.return_data[0]
                    t = ext_call.return_data[0]
                    u = ext_call.return_data[0]
                    u = ext_call.return_data[0]
                    u = u + 1
                    continue 
                revert with ext_call.return_data[0 len return_data.size]
            mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
            mem[100] = sub_f55e8471Address
            require ext_code.size(address(var63004))
            call var65002.mem[var65004 len 4] with:
                 gas gas_remaining wei
                args mem[var65004 + 4 len var65005 - 4]
            mem[var65006] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if mem[var69002] >= var69005:
                mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                mem[100] = sub_f55e8471Address
                require ext_code.size(address(var71002))
                call var73002.mem[var73004 len 4] with:
                     gas gas_remaining wei
                    args mem[var73004 + 4 len var73005 - 4]
                mem[var73006] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require mem[var77002] >= var77005
                # nil
            else:
                mem[96] = 0x6f2bf6200000000000000000000000000000000000000000000000000000000
                mem[100] = address(var71004)
                require ext_code.size(stor6)
                call stor6.mem[var73004 len 4] with:
                     gas gas_remaining wei
                    args mem[var73004 + 4 len var73005 - 4]
                mem[var73006] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(mem[var77002 + 12 len 20])
                # nil
        else:
            require msg.sender == adminOwner
            mem[96] = 0x6e2ede0300000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor5)
            call stor5.mem[var45004 len 4] with:
                 gas gas_remaining wei
                args mem[var45004 + 4 len var45005 - 4]
            mem[var45006] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if var49007 >= mem[var49002]:
            mem[96] = 0xbeb5461500000000000000000000000000000000000000000000000000000000
            mem[100] = var51005
            require ext_code.size(stor5)
            call stor5.mem[var53004 len 4] with:
                 gas gas_remaining wei
                args mem[var53004 + 4 len var53005 - 4]
            mem[var53006] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _1048 = mem[var57002]
            mem[96] = 0x118e31b700000000000000000000000000000000000000000000000000000000
            mem[100] = sub_f55e8471Address
            mem[132] = address(_1048)
            require ext_code.size(stor5)
            call stor5.mem[var59004 len 4] with:
                 gas gas_remaining wei
                args mem[var59004 + 4 len var59005 - 4]
            mem[var59006] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _1557 = mem[var63002]
            if not mem[var63002]:
                require ext_code.size(stor5)
                call stor5.getCollateralMarketsLength() with:
                     gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                s = var63003
                t = var63004
                u = _1557
                u = var63006
                u = var63007
                while ext_call.success:
                    require return_data.size >= 32
                    if u + 1 >= mem[96]:
                    require ext_code.size(stor5)
                    call stor5.collateralMarkets(uint256 arg1) with:
                         gas gas_remaining wei
                        args (u + 1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[100] = sub_f55e8471Address
                    mem[132] = address(ext_call.return_data[0])
                    require ext_code.size(stor5)
                    call stor5.getBorrowBalance(address arg1, address arg2) with:
                         gas gas_remaining wei
                        args sub_f55e8471Address, address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        require ext_code.size(stor5)
                        call stor5.getCollateralMarketsLength() with:
                             gas gas_remaining wei
                        mem[96] = ext_call.return_data[0]
                        s = s
                        t = t
                        u = ext_call.return_data[0]
                        u = ext_call.return_data[0]
                        u = u + 1
                        continue 
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x70a08231 with:
                         gas gas_remaining wei
                        args sub_f55e8471Address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        require ext_code.size(stor6)
                        call stor6.getExchange(address arg1) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[164] = sub_f55e8471Address
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).'W68' with:
                             gas gas_remaining wei
                            args 0, block.timestamp + 1, sub_f55e8471Address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x70a08231 with:
                         gas gas_remaining wei
                        args sub_f55e8471Address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= ext_call.return_data[0]
                    mem[100] = address(ext_call.return_data[0])
                    mem[132] = ext_call.return_data[0]
                    require ext_code.size(stor4)
                    call stor4.0x647f24ac with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor5)
                    call stor5.getCollateralMarketsLength() with:
                         gas gas_remaining wei
                    mem[96] = ext_call.return_data[0]
                    s = ext_call.return_data[0]
                    t = ext_call.return_data[0]
                    u = ext_call.return_data[0]
                    u = ext_call.return_data[0]
                    u = u + 1
                    continue 
                revert with ext_call.return_data[0 len return_data.size]
            mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
            mem[100] = sub_f55e8471Address
            require ext_code.size(address(var65004))
            call var67002.mem[var67004 len 4] with:
                 gas gas_remaining wei
                args mem[var67004 + 4 len var67005 - 4]
            mem[var67006] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if mem[var71002] >= var71005:
                mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
                mem[100] = sub_f55e8471Address
                require ext_code.size(address(var73002))
                call var75002.mem[var75004 len 4] with:
                     gas gas_remaining wei
                    args mem[var75004 + 4 len var75005 - 4]
                mem[var75006] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require mem[var79002] >= var79005
                # nil
            else:
                mem[96] = 0x6f2bf6200000000000000000000000000000000000000000000000000000000
                mem[100] = address(var73004)
                require ext_code.size(stor6)
                call stor6.mem[var75004 len 4] with:
                     gas gas_remaining wei
                    args mem[var75004 + 4 len var75005 - 4]
                mem[var75006] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(mem[var79002 + 12 len 20])
                # nil
}



}
