contract main {




// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;
mapping of uint256 stor2;
uint256 stor3;
mapping of uint8 stor4;
mapping of uint8 stor5;
address stor6;
uint256 stor6;
address stor7;
uint256 stor7;
address stor8;
uint256 stor6797;

function _fallback() payable {
    revert
}

function sub_bd2bbe15(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor8)
    staticcall stor8.0xa3bf06f1 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 == bool(ext_call.return_data[0])
    stor5[address(arg1)] = uint8(arg2)
}

function addMarket(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor8)
    staticcall stor8.0xa3bf06f1 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 == bool(ext_call.return_data[0])
    stor4[address(arg1)] = uint8(arg2)
}

function setRatio(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor8)
    staticcall stor8.0xa3bf06f1 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 == bool(ext_call.return_data[0])
    require arg1 > 0
    require arg2 > 0
    stor0 = arg1
    stor1 = arg2
}

function sub_cc7b3d74(?) {
    require block.timestamp - stor3 == (24 * 3600 * block.timestamp - stor3 / 24 * 3600) + (block.timestamp - stor3 % 24 * 3600)
    if block.timestamp - stor3 / 24 * 3600 <= 3650:
        idx = 0
        s = stor6797
        while idx < block.timestamp - stor3 / 24 * 3600:
            if not s:
                idx = idx + 1
                s = 0
                continue 
            require 999 * s / s == 999
            require 999 * s == (1000 * 999 * s / 1000) + (999 * s % 1000)
            idx = idx + 1
            s = 999 * s / 1000
            continue 
        return block.timestamp - stor3 / 24 * 3600, s
    idx = 0
    s = stor6797
    while idx < 3650:
        if not s:
            idx = idx + 1
            s = 0
            continue 
        require 999 * s / s == 999
        require 999 * s == (1000 * 999 * s / 1000) + (999 * s % 1000)
        idx = idx + 1
        s = 999 * s / 1000
        continue 
    return 3650, s
}

function sub_d2256a2f(?) {
    require block.timestamp - stor3 == (24 * 3600 * block.timestamp - stor3 / 24 * 3600) + (block.timestamp - stor3 % 24 * 3600)
    if block.timestamp - stor3 / 24 * 3600 <= 3650:
        idx = 0
        s = stor2[1]
        while idx < block.timestamp - stor3 / 24 * 3600:
            if not s:
                idx = idx + 1
                s = 0
                continue 
            require 999 * s / s == 999
            require 999 * s == (1000 * 999 * s / 1000) + (999 * s % 1000)
            idx = idx + 1
            s = 999 * s / 1000
            continue 
        return block.timestamp - stor3 / 24 * 3600, s
    idx = 0
    s = stor2[1]
    while idx < 3650:
        if not s:
            idx = idx + 1
            s = 0
            continue 
        require 999 * s / s == 999
        require 999 * s == (1000 * 999 * s / 1000) + (999 * s % 1000)
        idx = idx + 1
        s = 999 * s / 1000
        continue 
    return 3650, s
}

function sub_f66f282a(?) {
    require block.timestamp - stor3 == (24 * 3600 * block.timestamp - stor3 / 24 * 3600) + (block.timestamp - stor3 % 24 * 3600)
    if block.timestamp - stor3 / 24 * 3600 <= 3650:
        idx = 0
        s = stor2[0]
        while idx < block.timestamp - stor3 / 24 * 3600:
            if not s:
                idx = idx + 1
                s = 0
                continue 
            require 999 * s / s == 999
            require 999 * s == (1000 * 999 * s / 1000) + (999 * s % 1000)
            idx = idx + 1
            s = 999 * s / 1000
            continue 
        return block.timestamp - stor3 / 24 * 3600, s
    idx = 0
    s = stor2[0]
    while idx < 3650:
        if not s:
            idx = idx + 1
            s = 0
            continue 
        require 999 * s / s == 999
        require 999 * s == (1000 * 999 * s / 1000) + (999 * s % 1000)
        idx = idx + 1
        s = 999 * s / 1000
        continue 
    return 3650, s
}

function changeMapping(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor8)
    staticcall stor8.0xa3bf06f1 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 == bool(ext_call.return_data[0])
    stor8 = arg1
    require ext_code.size(arg1)
    staticcall arg1.0x8fe77e86 with:
            gas gas_remaining wei
           args Array(len=6, data='mining')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor6) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor6))
    require ext_code.size(stor8)
    staticcall stor8.0x8fe77e86 with:
            gas gas_remaining wei
           args Array(len=8, data='loanData')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor7) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor7))
}

function sub_2cdc9050(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(address(stor6))
    staticcall address(stor6).0x40f4f7b9 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require block.timestamp - stor3 == (24 * 3600 * block.timestamp - stor3 / 24 * 3600) + (block.timestamp - stor3 % 24 * 3600)
    if block.timestamp - stor3 / 24 * 3600 <= 3650:
        if arg1 < 100 * 10^18:
            idx = 0
            s = stor2[0]
            while idx < block.timestamp - stor3 / 24 * 3600:
                if not s:
                    idx = idx + 1
                    s = 0
                    continue 
                require 999 * s / s == 999
                require 999 * s == (1000 * 999 * s / 1000) + (999 * s % 1000)
                idx = idx + 1
                s = 999 * s / 1000
                continue 
        else:
            if arg1 >= 1000 * 10^18:
                idx = 0
                s = stor6797
                while idx < block.timestamp - stor3 / 24 * 3600:
                    if not s:
                        idx = idx + 1
                        s = 0
                        continue 
                    require 999 * s / s == 999
                    require 999 * s == (1000 * 999 * s / 1000) + (999 * s % 1000)
                    idx = idx + 1
                    s = 999 * s / 1000
                    continue 
            else:
                idx = 0
                s = stor2[1]
                while idx < block.timestamp - stor3 / 24 * 3600:
                    if not s:
                        idx = idx + 1
                        s = 0
                        continue 
                    require 999 * s / s == 999
                    require 999 * s == (1000 * 999 * s / 1000) + (999 * s % 1000)
                    idx = idx + 1
                    s = 999 * s / 1000
                    continue 
    else:
        if arg1 < 100 * 10^18:
            idx = 0
            s = stor2[0]
            while idx < 3650:
                if not s:
                    idx = idx + 1
                    s = 0
                    continue 
                require 999 * s / s == 999
                require 999 * s == (1000 * 999 * s / 1000) + (999 * s % 1000)
                idx = idx + 1
                s = 999 * s / 1000
                continue 
        else:
            if arg1 >= 1000 * 10^18:
                idx = 0
                s = stor6797
                while idx < 3650:
                    if not s:
                        idx = idx + 1
                        s = 0
                        continue 
                    require 999 * s / s == 999
                    require 999 * s == (1000 * 999 * s / 1000) + (999 * s % 1000)
                    idx = idx + 1
                    s = 999 * s / 1000
                    continue 
            else:
                idx = 0
                s = stor2[1]
                while idx < 3650:
                    if not s:
                        idx = idx + 1
                        s = 0
                        continue 
                    require 999 * s / s == 999
                    require 999 * s == (1000 * 999 * s / 1000) + (999 * s % 1000)
                    idx = idx + 1
                    s = 999 * s / 1000
                    continue 
    if 1 == bool(stor4[address(arg2)]):
        return ext_call.return_data[32], ext_call.return_data[0], 10, s
    if bool(stor5[address(arg2)]) != 1:
        return ext_call.return_data[32], ext_call.return_data[0], 1, s
    return ext_call.return_data[32], ext_call.return_data[0], 8, s
}

function sub_41872fb9(?) {
    require calldata.size - 4 >= 128
    require ext_code.size(address(stor7))
    staticcall address(stor7).0xd7b12454 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 == bool(ext_call.return_data[0])
    require ext_code.size(address(stor6))
    staticcall address(stor6).0x40f4f7b9 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require block.timestamp - stor3 == (24 * 3600 * block.timestamp - stor3 / 24 * 3600) + (block.timestamp - stor3 % 24 * 3600)
    if block.timestamp - stor3 / 24 * 3600 <= 3650:
        if arg1 < 100 * 10^18:
            idx = 0
            s = stor2[0]
            while idx < block.timestamp - stor3 / 24 * 3600:
                if not s:
                    idx = idx + 1
                    s = 0
                    continue 
                require 999 * s / s == 999
                require 999 * s == (1000 * 999 * s / 1000) + (999 * s % 1000)
                idx = idx + 1
                s = 999 * s / 1000
                continue 
        else:
            if arg1 >= 1000 * 10^18:
                idx = 0
                s = stor6797
                while idx < block.timestamp - stor3 / 24 * 3600:
                    if not s:
                        idx = idx + 1
                        s = 0
                        continue 
                    require 999 * s / s == 999
                    require 999 * s == (1000 * 999 * s / 1000) + (999 * s % 1000)
                    idx = idx + 1
                    s = 999 * s / 1000
                    continue 
            else:
                idx = 0
                s = stor2[1]
                while idx < block.timestamp - stor3 / 24 * 3600:
                    if not s:
                        idx = idx + 1
                        s = 0
                        continue 
                    require 999 * s / s == 999
                    require 999 * s == (1000 * 999 * s / 1000) + (999 * s % 1000)
                    idx = idx + 1
                    s = 999 * s / 1000
                    continue 
    else:
        if arg1 < 100 * 10^18:
            idx = 0
            s = stor2[0]
            while idx < 3650:
                if not s:
                    idx = idx + 1
                    s = 0
                    continue 
                require 999 * s / s == 999
                require 999 * s == (1000 * 999 * s / 1000) + (999 * s % 1000)
                idx = idx + 1
                s = 999 * s / 1000
                continue 
        else:
            if arg1 >= 1000 * 10^18:
                idx = 0
                s = stor6797
                while idx < 3650:
                    if not s:
                        idx = idx + 1
                        s = 0
                        continue 
                    require 999 * s / s == 999
                    require 999 * s == (1000 * 999 * s / 1000) + (999 * s % 1000)
                    idx = idx + 1
                    s = 999 * s / 1000
                    continue 
            else:
                idx = 0
                s = stor2[1]
                while idx < 3650:
                    if not s:
                        idx = idx + 1
                        s = 0
                        continue 
                    require 999 * s / s == 999
                    require 999 * s == (1000 * 999 * s / 1000) + (999 * s % 1000)
                    idx = idx + 1
                    s = 999 * s / 1000
                    continue 
    if 1 == bool(stor4[address(arg4)]):
        if not arg1:
            require ext_code.size(address(stor6))
            call address(stor6).0x1b49583b with:
                 gas gas_remaining wei
                args 0, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(stor6))
            call address(stor6).0x1b49583b with:
                 gas gas_remaining wei
                args 0, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stor8)
            staticcall stor8.0x8fe77e86 with:
                    gas gas_remaining wei
                   args Array(len=7, data='getnest')
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(stor6))
            call address(stor6).0x1b49583b with:
                 gas gas_remaining wei
                args 0, address(ext_call.return_data[0])
        else:
            require ext_call.return_data[32] * arg1 / arg1 == ext_call.return_data[32]
            if not ext_call.return_data[32] * arg1:
                require ext_code.size(address(stor6))
                call address(stor6).0x1b49583b with:
                     gas gas_remaining wei
                    args 0, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(stor6))
                call address(stor6).0x1b49583b with:
                     gas gas_remaining wei
                    args 0, arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor8)
                staticcall stor8.0x8fe77e86 with:
                        gas gas_remaining wei
                       args Array(len=7, data='getnest')
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor6))
                call address(stor6).0x1b49583b with:
                     gas gas_remaining wei
                    args 0, address(ext_call.return_data[0])
            else:
                require 10 * ext_call.return_data[32] * arg1 / ext_call.return_data[32] * arg1 == 10
                if not 10 * ext_call.return_data[32] * arg1:
                    require ext_code.size(address(stor6))
                    call address(stor6).0x1b49583b with:
                         gas gas_remaining wei
                        args 0, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(stor6))
                    call address(stor6).0x1b49583b with:
                         gas gas_remaining wei
                        args 0, arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor8)
                    staticcall stor8.0x8fe77e86 with:
                            gas gas_remaining wei
                           args Array(len=7, data='getnest')
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor6))
                    call address(stor6).0x1b49583b with:
                         gas gas_remaining wei
                        args 0, address(ext_call.return_data[0])
                else:
                    require 10 * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 10 * ext_call.return_data[32] * arg1 == ext_call.return_data[0]
                    if not 10 * ext_call.return_data[0] * ext_call.return_data[32] * arg1:
                        require ext_code.size(address(stor6))
                        call address(stor6).0x1b49583b with:
                             gas gas_remaining wei
                            args 0, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(stor6))
                        call address(stor6).0x1b49583b with:
                             gas gas_remaining wei
                            args 0, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor8)
                        staticcall stor8.0x8fe77e86 with:
                                gas gas_remaining wei
                               args Array(len=7, data='getnest')
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor6))
                        call address(stor6).0x1b49583b with:
                             gas gas_remaining wei
                            args 0, address(ext_call.return_data[0])
                    else:
                        require 10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 10 * ext_call.return_data[0] * ext_call.return_data[32] * arg1 == s
                        require 10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 == (100000000000000000000 * 10^18 * 10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18) + (10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 % 100000000000000000000 * 10^18)
                        if not 10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18:
                            require 0 <= 10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18
                            if not 10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18:
                                require ext_code.size(address(stor6))
                                call address(stor6).0x1b49583b with:
                                     gas gas_remaining wei
                                    args 0, arg2
                            else:
                                require stor0 * 10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 == stor0
                                require stor0 * 10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 == (100 * stor0 * 10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100) + (stor0 * 10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 % 100)
                                require ext_code.size(address(stor6))
                                call address(stor6).0x1b49583b with:
                                     gas gas_remaining wei
                                    args stor0 * 10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 <= 10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18
                            if not 10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18:
                                require ext_code.size(address(stor6))
                                call address(stor6).0x1b49583b with:
                                     gas gas_remaining wei
                                    args 0, arg3
                            else:
                                require stor1 * 10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 == stor1
                                require stor1 * 10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 == (100 * stor1 * 10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100) + (stor1 * 10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 % 100)
                                require ext_code.size(address(stor6))
                                call address(stor6).0x1b49583b with:
                                     gas gas_remaining wei
                                    args stor1 * 10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stor8)
                            staticcall stor8.0x8fe77e86 with:
                                    gas gas_remaining wei
                                   args Array(len=7, data='getnest')
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(stor6))
                            call address(stor6).0x1b49583b with:
                                 gas gas_remaining wei
                                args 0, address(ext_call.return_data[0])
                        else:
                            require 20 * 10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 == 20
                            require 20 * 10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 == (100 * 20 * 10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100) + (20 * 10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 % 100)
                            require 20 * 10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100 <= 10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18
                            if not (10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18) - (20 * 10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100):
                                require ext_code.size(address(stor6))
                                call address(stor6).0x1b49583b with:
                                     gas gas_remaining wei
                                    args 0, arg2
                            else:
                                require (10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 * stor0) - (20 * 10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100 * stor0) / (10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18) - (20 * 10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100) == stor0
                                require (10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 * stor0) - (20 * 10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100 * stor0) == (100 * (10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 * stor0) - (20 * 10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100 * stor0) / 100) + ((10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 * stor0) - (20 * 10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100 * stor0) % 100)
                                require ext_code.size(address(stor6))
                                call address(stor6).0x1b49583b with:
                                     gas gas_remaining wei
                                    args (10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 * stor0) - (20 * 10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100 * stor0) / 100, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 20 * 10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100 <= 10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18
                            if not (10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18) - (20 * 10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100):
                                require ext_code.size(address(stor6))
                                call address(stor6).0x1b49583b with:
                                     gas gas_remaining wei
                                    args 0, arg3
                            else:
                                require (10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 * stor1) - (20 * 10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100 * stor1) / (10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18) - (20 * 10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100) == stor1
                                require (10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 * stor1) - (20 * 10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100 * stor1) == (100 * (10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 * stor1) - (20 * 10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100 * stor1) / 100) + ((10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 * stor1) - (20 * 10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100 * stor1) % 100)
                                require ext_code.size(address(stor6))
                                call address(stor6).0x1b49583b with:
                                     gas gas_remaining wei
                                    args (10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 * stor1) - (20 * 10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100 * stor1) / 100, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stor8)
                            staticcall stor8.0x8fe77e86 with:
                                    gas gas_remaining wei
                                   args Array(len=7, data='getnest')
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(stor6))
                            call address(stor6).0x1b49583b with:
                                 gas gas_remaining wei
                                args 20 * 10 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100, address(ext_call.return_data[0])
    else:
        if bool(stor5[address(arg4)]) != 1:
            if not arg1:
                require ext_code.size(address(stor6))
                call address(stor6).0x1b49583b with:
                     gas gas_remaining wei
                    args 0, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(stor6))
                call address(stor6).0x1b49583b with:
                     gas gas_remaining wei
                    args 0, arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor8)
                staticcall stor8.0x8fe77e86 with:
                        gas gas_remaining wei
                       args Array(len=7, data='getnest')
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor6))
                call address(stor6).0x1b49583b with:
                     gas gas_remaining wei
                    args 0, address(ext_call.return_data[0])
            else:
                require ext_call.return_data[32] * arg1 / arg1 == ext_call.return_data[32]
                if not ext_call.return_data[32] * arg1:
                    require ext_code.size(address(stor6))
                    call address(stor6).0x1b49583b with:
                         gas gas_remaining wei
                        args 0, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(stor6))
                    call address(stor6).0x1b49583b with:
                         gas gas_remaining wei
                        args 0, arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor8)
                    staticcall stor8.0x8fe77e86 with:
                            gas gas_remaining wei
                           args Array(len=7, data='getnest')
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor6))
                    call address(stor6).0x1b49583b with:
                         gas gas_remaining wei
                        args 0, address(ext_call.return_data[0])
                else:
                    require ext_call.return_data[32] * arg1 / ext_call.return_data[32] * arg1 == 1
                    if not ext_call.return_data[32] * arg1:
                        require ext_code.size(address(stor6))
                        call address(stor6).0x1b49583b with:
                             gas gas_remaining wei
                            args 0, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(stor6))
                        call address(stor6).0x1b49583b with:
                             gas gas_remaining wei
                            args 0, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor8)
                        staticcall stor8.0x8fe77e86 with:
                                gas gas_remaining wei
                               args Array(len=7, data='getnest')
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor6))
                        call address(stor6).0x1b49583b with:
                             gas gas_remaining wei
                            args 0, address(ext_call.return_data[0])
                    else:
                        require ext_call.return_data[0] * ext_call.return_data[32] * arg1 / ext_call.return_data[32] * arg1 == ext_call.return_data[0]
                        if not ext_call.return_data[0] * ext_call.return_data[32] * arg1:
                            require ext_code.size(address(stor6))
                            call address(stor6).0x1b49583b with:
                                 gas gas_remaining wei
                                args 0, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(stor6))
                            call address(stor6).0x1b49583b with:
                                 gas gas_remaining wei
                                args 0, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stor8)
                            staticcall stor8.0x8fe77e86 with:
                                    gas gas_remaining wei
                                   args Array(len=7, data='getnest')
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(stor6))
                            call address(stor6).0x1b49583b with:
                                 gas gas_remaining wei
                                args 0, address(ext_call.return_data[0])
                        else:
                            require s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / ext_call.return_data[0] * ext_call.return_data[32] * arg1 == s
                            require s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 == (100000000000000000000 * 10^18 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18) + (s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 % 100000000000000000000 * 10^18)
                            if not s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18:
                                require 0 <= s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18
                                if not s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18:
                                    require ext_code.size(address(stor6))
                                    call address(stor6).0x1b49583b with:
                                         gas gas_remaining wei
                                        args 0, arg2
                                else:
                                    require stor0 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 == stor0
                                    require stor0 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 == (100 * stor0 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100) + (stor0 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 % 100)
                                    require ext_code.size(address(stor6))
                                    call address(stor6).0x1b49583b with:
                                         gas gas_remaining wei
                                        args stor0 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 <= s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18
                                if not s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18:
                                    require ext_code.size(address(stor6))
                                    call address(stor6).0x1b49583b with:
                                         gas gas_remaining wei
                                        args 0, arg3
                                else:
                                    require stor1 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 == stor1
                                    require stor1 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 == (100 * stor1 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100) + (stor1 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 % 100)
                                    require ext_code.size(address(stor6))
                                    call address(stor6).0x1b49583b with:
                                         gas gas_remaining wei
                                        args stor1 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor8)
                                staticcall stor8.0x8fe77e86 with:
                                        gas gas_remaining wei
                                       args Array(len=7, data='getnest')
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(stor6))
                                call address(stor6).0x1b49583b with:
                                     gas gas_remaining wei
                                    args 0, address(ext_call.return_data[0])
                            else:
                                require 20 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 == 20
                                require 20 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 == (100 * 20 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100) + (20 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 % 100)
                                require 20 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100 <= s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18
                                if not (s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18) - (20 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100):
                                    require ext_code.size(address(stor6))
                                    call address(stor6).0x1b49583b with:
                                         gas gas_remaining wei
                                        args 0, arg2
                                else:
                                    require (s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 * stor0) - (20 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100 * stor0) / (s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18) - (20 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100) == stor0
                                    require (s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 * stor0) - (20 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100 * stor0) == (100 * (s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 * stor0) - (20 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100 * stor0) / 100) + ((s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 * stor0) - (20 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100 * stor0) % 100)
                                    require ext_code.size(address(stor6))
                                    call address(stor6).0x1b49583b with:
                                         gas gas_remaining wei
                                        args (s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 * stor0) - (20 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100 * stor0) / 100, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 20 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100 <= s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18
                                if not (s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18) - (20 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100):
                                    require ext_code.size(address(stor6))
                                    call address(stor6).0x1b49583b with:
                                         gas gas_remaining wei
                                        args 0, arg3
                                else:
                                    require (s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 * stor1) - (20 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100 * stor1) / (s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18) - (20 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100) == stor1
                                    require (s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 * stor1) - (20 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100 * stor1) == (100 * (s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 * stor1) - (20 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100 * stor1) / 100) + ((s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 * stor1) - (20 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100 * stor1) % 100)
                                    require ext_code.size(address(stor6))
                                    call address(stor6).0x1b49583b with:
                                         gas gas_remaining wei
                                        args (s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 * stor1) - (20 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100 * stor1) / 100, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor8)
                                staticcall stor8.0x8fe77e86 with:
                                        gas gas_remaining wei
                                       args Array(len=7, data='getnest')
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(stor6))
                                call address(stor6).0x1b49583b with:
                                     gas gas_remaining wei
                                    args 20 * s * ext_call.return_data[0] * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100, address(ext_call.return_data[0])
        else:
            if not arg1:
                require ext_code.size(address(stor6))
                call address(stor6).0x1b49583b with:
                     gas gas_remaining wei
                    args 0, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(stor6))
                call address(stor6).0x1b49583b with:
                     gas gas_remaining wei
                    args 0, arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor8)
                staticcall stor8.0x8fe77e86 with:
                        gas gas_remaining wei
                       args Array(len=7, data='getnest')
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor6))
                call address(stor6).0x1b49583b with:
                     gas gas_remaining wei
                    args 0, address(ext_call.return_data[0])
            else:
                require ext_call.return_data[32] * arg1 / arg1 == ext_call.return_data[32]
                if not ext_call.return_data[32] * arg1:
                    require ext_code.size(address(stor6))
                    call address(stor6).0x1b49583b with:
                         gas gas_remaining wei
                        args 0, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(stor6))
                    call address(stor6).0x1b49583b with:
                         gas gas_remaining wei
                        args 0, arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor8)
                    staticcall stor8.0x8fe77e86 with:
                            gas gas_remaining wei
                           args Array(len=7, data='getnest')
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor6))
                    call address(stor6).0x1b49583b with:
                         gas gas_remaining wei
                        args 0, address(ext_call.return_data[0])
                else:
                    require 8 * ext_call.return_data[32] * arg1 / ext_call.return_data[32] * arg1 == 8
                    if not 8 * ext_call.return_data[32] * arg1:
                        require ext_code.size(address(stor6))
                        call address(stor6).0x1b49583b with:
                             gas gas_remaining wei
                            args 0, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(stor6))
                        call address(stor6).0x1b49583b with:
                             gas gas_remaining wei
                            args 0, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor8)
                        staticcall stor8.0x8fe77e86 with:
                                gas gas_remaining wei
                               args Array(len=7, data='getnest')
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor6))
                        call address(stor6).0x1b49583b with:
                             gas gas_remaining wei
                            args 0, address(ext_call.return_data[0])
                    else:
                        require ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 8 * ext_call.return_data[32] * arg1 == ext_call.return_data[0]
                        if not ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1:
                            require ext_code.size(address(stor6))
                            call address(stor6).0x1b49583b with:
                                 gas gas_remaining wei
                                args 0, arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(stor6))
                            call address(stor6).0x1b49583b with:
                                 gas gas_remaining wei
                                args 0, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stor8)
                            staticcall stor8.0x8fe77e86 with:
                                    gas gas_remaining wei
                                   args Array(len=7, data='getnest')
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(stor6))
                            call address(stor6).0x1b49583b with:
                                 gas gas_remaining wei
                                args 0, address(ext_call.return_data[0])
                        else:
                            require s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 == s
                            require s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 == (100000000000000000000 * 10^18 * s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18) + (s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 % 100000000000000000000 * 10^18)
                            if not s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18:
                                require 0 <= s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18
                                if not s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18:
                                    require ext_code.size(address(stor6))
                                    call address(stor6).0x1b49583b with:
                                         gas gas_remaining wei
                                        args 0, arg2
                                else:
                                    require stor0 * s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 == stor0
                                    require stor0 * s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 == (100 * stor0 * s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100) + (stor0 * s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 % 100)
                                    require ext_code.size(address(stor6))
                                    call address(stor6).0x1b49583b with:
                                         gas gas_remaining wei
                                        args stor0 * s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 <= s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18
                                if not s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18:
                                    require ext_code.size(address(stor6))
                                    call address(stor6).0x1b49583b with:
                                         gas gas_remaining wei
                                        args 0, arg3
                                else:
                                    require stor1 * s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 == stor1
                                    require stor1 * s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 == (100 * stor1 * s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100) + (stor1 * s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 % 100)
                                    require ext_code.size(address(stor6))
                                    call address(stor6).0x1b49583b with:
                                         gas gas_remaining wei
                                        args stor1 * s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor8)
                                staticcall stor8.0x8fe77e86 with:
                                        gas gas_remaining wei
                                       args Array(len=7, data='getnest')
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(stor6))
                                call address(stor6).0x1b49583b with:
                                     gas gas_remaining wei
                                    args 0, address(ext_call.return_data[0])
                            else:
                                require 20 * s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 == 20
                                require 20 * s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 == (100 * 20 * s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100) + (20 * s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 % 100)
                                require 20 * s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100 <= s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18
                                if not (s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18) - (20 * s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100):
                                    require ext_code.size(address(stor6))
                                    call address(stor6).0x1b49583b with:
                                         gas gas_remaining wei
                                        args 0, arg2
                                else:
                                    require (s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 * stor0) - (20 * s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100 * stor0) / (s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18) - (20 * s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100) == stor0
                                    require (s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 * stor0) - (20 * s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100 * stor0) == (100 * (s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 * stor0) - (20 * s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100 * stor0) / 100) + ((s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 * stor0) - (20 * s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100 * stor0) % 100)
                                    require ext_code.size(address(stor6))
                                    call address(stor6).0x1b49583b with:
                                         gas gas_remaining wei
                                        args (s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 * stor0) - (20 * s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100 * stor0) / 100, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 20 * s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100 <= s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18
                                if not (s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18) - (20 * s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100):
                                    require ext_code.size(address(stor6))
                                    call address(stor6).0x1b49583b with:
                                         gas gas_remaining wei
                                        args 0, arg3
                                else:
                                    require (s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 * stor1) - (20 * s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100 * stor1) / (s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18) - (20 * s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100) == stor1
                                    require (s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 * stor1) - (20 * s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100 * stor1) == (100 * (s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 * stor1) - (20 * s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100 * stor1) / 100) + ((s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 * stor1) - (20 * s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100 * stor1) % 100)
                                    require ext_code.size(address(stor6))
                                    call address(stor6).0x1b49583b with:
                                         gas gas_remaining wei
                                        args (s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 * stor1) - (20 * s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100 * stor1) / 100, arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor8)
                                staticcall stor8.0x8fe77e86 with:
                                        gas gas_remaining wei
                                       args Array(len=7, data='getnest')
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(stor6))
                                call address(stor6).0x1b49583b with:
                                     gas gas_remaining wei
                                    args 20 * s * ext_call.return_data[0] * 8 * ext_call.return_data[32] * arg1 / 100000000000000000000 * 10^18 / 100, address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
