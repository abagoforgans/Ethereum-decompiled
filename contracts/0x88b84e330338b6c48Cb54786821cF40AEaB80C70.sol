contract main {




// =====================  Runtime code  =====================


address adminAddress;
mapping of address sub_cffdd887;
mapping of uint256 sub_f988fccf;
mapping of uint256 sub_6836b970;
mapping of uint256 sub_c111db60;
mapping of uint32 sub_d0f94582;

function sub_6836b970(?) {
    return sub_6836b970[arg1]
}

function sub_c111db60(?) {
    return sub_c111db60[arg1]
}

function sub_cffdd887(?) {
    return sub_cffdd887[arg1]
}

function sub_d0f94582(?) {
    return Mask(32, 224, sub_d0f94582[arg1])
}

function admin() {
    return adminAddress
}

function sub_f988fccf(?) {
    return sub_f988fccf[arg1]
}

function sub_5e07e92a(?) {
    mem[128 len arg6.length] = arg6[all]
    require msg.sender == adminAddress
    sub_cffdd887[arg1] = arg2
    sub_f988fccf[address(arg2)] = arg3
    if arg3 == 2:
        sub_6836b970[address(arg2)] = arg4
    sub_c111db60[address(arg2)] = arg5
    if arg3 == 3:
        mem[ceil32(arg6.length) + 128 len floor32(arg6.length)] = call.data[arg6 + 36 len floor32(arg6.length)]
        mem[ceil32(arg6.length) + floor32(arg6.length) + 128] = 256^(-(arg6.length % 32) + 32) - 1 and mem[ceil32(arg6.length) + floor32(arg6.length) + 128] or call.data[arg6 + floor32(arg6.length) + 36 len arg6.length % 32], mem[arg6.length + 128 len -(arg6.length % 32) + 32] and !(256^(-(arg6.length % 32) + 32) - 1)
        sub_d0f94582[address(arg2)] = Mask(32, 224, sha3(call.data[arg6 + 36 len floor32(arg6.length)], mem[ceil32(arg6.length) + floor32(arg6.length) + 128 len arg6.length % 32])) >> 224
}

function sub_bfc71d04(?) {
    s = 0
    idx = 1
    while arg3 >= uint8(idx):
        mem[96 len 537] = code.data[2622 len 537]
        mem[633] = arg1
        mem[665] = arg2
        create contract with 0 wei
                        code: code.data[2622 len 537], address(arg1), arg2
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96] = 0xcbf0b0c000000000000000000000000000000000000000000000000000000000
        mem[100] = arg2
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0xcbf0b0c0 with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        s = create.new_address
        idx = idx + 1
        continue 
    create contract with 0 wei
                    code: code.data[2622 len 537], address(arg1), adminAddress
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xcbf0b0c0 with:
         gas gas_remaining wei
        args adminAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_89e2c000(?) {
    s = 0
    idx = 1
    while arg3 >= uint8(idx):
        mem[96 len 604] = code.data[3159 len 604]
        mem[700] = arg1
        mem[732] = arg2
        mem[764] = arg4
        create contract with 0 wei
                        code: code.data[3159 len 604], address(arg1), address(arg2), arg4
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96] = 0xcbf0b0c000000000000000000000000000000000000000000000000000000000
        mem[100] = arg2
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0xcbf0b0c0 with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        s = create.new_address
        idx = idx + 1
        continue 
    create contract with 0 wei
                    code: code.data[3159 len 604], address(arg1), adminAddress, arg4
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xcbf0b0c0 with:
         gas gas_remaining wei
        args adminAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_9de79738(?) {
    s = 0
    idx = 1
    while arg3 >= uint8(idx):
        mem[96 len 661] = code.data[3763 len 661]
        mem[757] = arg1
        mem[789] = arg2
        mem[821] = Mask(32, 224, arg4)
        create contract with 0 wei
                        code: code.data[3763 len 661], address(arg1), address(arg2), Mask(32, 224, arg4)
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96] = 0xcbf0b0c000000000000000000000000000000000000000000000000000000000
        mem[100] = arg2
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0xcbf0b0c0 with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        s = create.new_address
        idx = idx + 1
        continue 
    create contract with 0 wei
                    code: code.data[3763 len 661], address(arg1), adminAddress, Mask(32, 224, arg4)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xcbf0b0c0 with:
         gas gas_remaining wei
        args adminAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if sub_cffdd887[msg.value]:
        if sub_f988fccf[stor1[msg.value]] == 1:
            s = 0
            idx = 1
            while sub_c111db60[stor1[msg.value]] >= uint8(idx):
                mem[96 len 537] = code.data[2622 len 537]
                mem[633] = sub_cffdd887[msg.value]
                mem[665] = msg.sender
                create contract with 0 wei
                                code: code.data[2622 len 537], sub_cffdd887[msg.value], msg.sender
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96] = 0xcbf0b0c000000000000000000000000000000000000000000000000000000000
                mem[100] = msg.sender
                require ext_code.size(address(create.new_address))
                call address(create.new_address).0xcbf0b0c0 with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                s = create.new_address
                idx = idx + 1
                continue 
            create contract with 0 wei
                            code: code.data[2622 len 537], sub_cffdd887[msg.value], adminAddress
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(create.new_address))
            call address(create.new_address).0xcbf0b0c0 with:
                 gas gas_remaining wei
                args adminAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if 2 == sub_f988fccf[stor1[msg.value]]:
            s = 0
            idx = 1
            while sub_c111db60[stor1[msg.value]] >= uint8(idx):
                mem[96 len 604] = code.data[3159 len 604]
                mem[700] = sub_cffdd887[msg.value]
                mem[732] = msg.sender
                mem[764] = sub_6836b970[stor1[msg.value]]
                create contract with 0 wei
                                code: code.data[3159 len 604], sub_cffdd887[msg.value], msg.sender, sub_6836b970[stor1[msg.value]]
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96] = 0xcbf0b0c000000000000000000000000000000000000000000000000000000000
                mem[100] = msg.sender
                require ext_code.size(address(create.new_address))
                call address(create.new_address).0xcbf0b0c0 with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                s = create.new_address
                idx = idx + 1
                continue 
            create contract with 0 wei
                            code: code.data[3159 len 604], sub_cffdd887[msg.value], adminAddress, sub_6836b970[stor1[msg.value]]
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(create.new_address))
            call address(create.new_address).0xcbf0b0c0 with:
                 gas gas_remaining wei
                args adminAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if 3 == sub_f988fccf[stor1[msg.value]]:
            s = 0
            idx = 1
            while sub_c111db60[stor1[msg.value]] >= uint8(idx):
                mem[96 len 661] = code.data[3763 len 661]
                mem[757] = sub_cffdd887[msg.value]
                mem[789] = msg.sender
                mem[821] = Mask(32, 224, sub_d0f94582[stor1[msg.value]])
                create contract with 0 wei
                                code: code.data[3763 len 661], sub_cffdd887[msg.value], msg.sender, Mask(32, 224, sub_d0f94582[stor1[msg.value]])
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96] = 0xcbf0b0c000000000000000000000000000000000000000000000000000000000
                mem[100] = msg.sender
                require ext_code.size(address(create.new_address))
                call address(create.new_address).0xcbf0b0c0 with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                s = create.new_address
                idx = idx + 1
                continue 
            create contract with 0 wei
                            code: code.data[3763 len 661], sub_cffdd887[msg.value], adminAddress, Mask(32, 224, sub_d0f94582[stor1[msg.value]])
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(create.new_address))
            call address(create.new_address).0xcbf0b0c0 with:
                 gas gas_remaining wei
                args adminAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    if msg.value > 0:
        call adminAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
