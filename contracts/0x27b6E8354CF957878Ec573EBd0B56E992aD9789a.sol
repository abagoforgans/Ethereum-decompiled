contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint256 sub_88f707a5;

function sub_88f707a5(?) {
    return sub_88f707a5[arg1]
}

function _fallback() payable {
    revert
}

function sub_73e8de8d(?) {
    require ext_code.size(stor0)
    if sub_88f707a5[address(arg1)] != 0:
        call stor0.getCurrentPeriod() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_88f707a5[address(arg1)]:
            s = 0
            s = 0
            s = 0
            idx = sub_88f707a5[address(arg1)]
            s = 0
            while idx < ext_call.return_data[0]:
                require ext_code.size(stor0)
                call stor0.0x4c8f462e with:
                     gas gas_remaining wei
                    args 0, idx, arg1
                mem[96 len 192] = ext_call.return_data[0 len 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 192
                if ext_call.return_data[96] <= 0:
                    s = ext_call.return_data[160]
                    s = ext_call.return_data[96]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = s
                    continue 
                if ext_call.return_data[0] <= 0:
                    s = ext_call.return_data[160]
                    s = ext_call.return_data[96]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = s
                    continue 
                if ext_call.return_data[160] <= 0:
                    s = ext_call.return_data[160]
                    s = ext_call.return_data[96]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = s
                    continue 
                require ext_call.return_data[0]
                s = ext_call.return_data[160]
                s = ext_call.return_data[96]
                s = ext_call.return_data[0]
                idx = idx + 1
                s = s + (ext_call.return_data[160] * ext_call.return_data[96] / ext_call.return_data[0])
                continue 
        else:
            require ext_code.size(stor0)
            call stor0.0xd98c4a46 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor0)
            call stor0.0x27aa6398 with:
                 gas gas_remaining wei
                args address(arg1), 0
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= ext_call.return_data[0]:
                s = 0
                s = 0
                s = 0
                idx = ext_call.return_data[0]
                s = 0
                while idx < ext_call.return_data[0]:
                    require ext_code.size(stor0)
                    call stor0.0x4c8f462e with:
                         gas gas_remaining wei
                        args 0, idx, arg1
                    mem[96 len 192] = ext_call.return_data[0 len 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 192
                    if ext_call.return_data[96] <= 0:
                        s = ext_call.return_data[160]
                        s = ext_call.return_data[96]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = s
                        continue 
                    if ext_call.return_data[0] <= 0:
                        s = ext_call.return_data[160]
                        s = ext_call.return_data[96]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = s
                        continue 
                    if ext_call.return_data[160] <= 0:
                        s = ext_call.return_data[160]
                        s = ext_call.return_data[96]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = s
                        continue 
                    require ext_call.return_data[0]
                    s = ext_call.return_data[160]
                    s = ext_call.return_data[96]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = s + (ext_call.return_data[160] * ext_call.return_data[96] / ext_call.return_data[0])
                    continue 
            else:
                s = 0
                s = 0
                s = 0
                idx = mem[96]
                s = 0
                while idx < ext_call.return_data[0]:
                    require ext_code.size(stor0)
                    call stor0.0x4c8f462e with:
                         gas gas_remaining wei
                        args 0, idx, arg1
                    mem[96 len 192] = ext_call.return_data[0 len 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 192
                    if ext_call.return_data[96] <= 0:
                        s = ext_call.return_data[160]
                        s = ext_call.return_data[96]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = s
                        continue 
                    if ext_call.return_data[0] <= 0:
                        s = ext_call.return_data[160]
                        s = ext_call.return_data[96]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = s
                        continue 
                    if ext_call.return_data[160] <= 0:
                        s = ext_call.return_data[160]
                        s = ext_call.return_data[96]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = s
                        continue 
                    require ext_call.return_data[0]
                    s = ext_call.return_data[160]
                    s = ext_call.return_data[96]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = s + (ext_call.return_data[160] * ext_call.return_data[96] / ext_call.return_data[0])
                    continue 
    else:
        call stor0.0x6ce4248b with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor0)
        call stor0.getCurrentPeriod() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            s = 0
            s = 0
            s = 0
            idx = ext_call.return_data[0]
            s = 0
            while idx < ext_call.return_data[0]:
                require ext_code.size(stor0)
                call stor0.0x4c8f462e with:
                     gas gas_remaining wei
                    args 0, idx, arg1
                mem[96 len 192] = ext_call.return_data[0 len 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 192
                if ext_call.return_data[96] <= 0:
                    s = ext_call.return_data[160]
                    s = ext_call.return_data[96]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = s
                    continue 
                if ext_call.return_data[0] <= 0:
                    s = ext_call.return_data[160]
                    s = ext_call.return_data[96]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = s
                    continue 
                if ext_call.return_data[160] <= 0:
                    s = ext_call.return_data[160]
                    s = ext_call.return_data[96]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = s
                    continue 
                require ext_call.return_data[0]
                s = ext_call.return_data[160]
                s = ext_call.return_data[96]
                s = ext_call.return_data[0]
                idx = idx + 1
                s = s + (ext_call.return_data[160] * ext_call.return_data[96] / ext_call.return_data[0])
                continue 
        else:
            require ext_code.size(stor0)
            call stor0.0xd98c4a46 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor0)
            call stor0.0x27aa6398 with:
                 gas gas_remaining wei
                args address(arg1), 0
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= ext_call.return_data[0]:
                s = 0
                s = 0
                s = 0
                idx = ext_call.return_data[0]
                s = 0
                while idx < ext_call.return_data[0]:
                    require ext_code.size(stor0)
                    call stor0.0x4c8f462e with:
                         gas gas_remaining wei
                        args 0, idx, arg1
                    mem[96 len 192] = ext_call.return_data[0 len 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 192
                    if ext_call.return_data[96] <= 0:
                        s = ext_call.return_data[160]
                        s = ext_call.return_data[96]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = s
                        continue 
                    if ext_call.return_data[0] <= 0:
                        s = ext_call.return_data[160]
                        s = ext_call.return_data[96]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = s
                        continue 
                    if ext_call.return_data[160] <= 0:
                        s = ext_call.return_data[160]
                        s = ext_call.return_data[96]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = s
                        continue 
                    require ext_call.return_data[0]
                    s = ext_call.return_data[160]
                    s = ext_call.return_data[96]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = s + (ext_call.return_data[160] * ext_call.return_data[96] / ext_call.return_data[0])
                    continue 
            else:
                s = 0
                s = 0
                s = 0
                idx = mem[96]
                s = 0
                while idx < ext_call.return_data[0]:
                    require ext_code.size(stor0)
                    call stor0.0x4c8f462e with:
                         gas gas_remaining wei
                        args 0, idx, arg1
                    mem[96 len 192] = ext_call.return_data[0 len 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 192
                    if ext_call.return_data[96] <= 0:
                        s = ext_call.return_data[160]
                        s = ext_call.return_data[96]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = s
                        continue 
                    if ext_call.return_data[0] <= 0:
                        s = ext_call.return_data[160]
                        s = ext_call.return_data[96]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = s
                        continue 
                    if ext_call.return_data[160] <= 0:
                        s = ext_call.return_data[160]
                        s = ext_call.return_data[96]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = s
                        continue 
                    require ext_call.return_data[0]
                    s = ext_call.return_data[160]
                    s = ext_call.return_data[96]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = s + (ext_call.return_data[160] * ext_call.return_data[96] / ext_call.return_data[0])
                    continue 
    return s
}



}
