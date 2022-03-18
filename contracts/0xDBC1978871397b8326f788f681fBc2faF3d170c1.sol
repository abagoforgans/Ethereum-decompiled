contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor3;

function _fallback() payable {
    stor1 = 0x8a815db6fb6234d54011b699ca731681ec503d92
    stor3 = 1
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[77 len 3162]
}



// =====================  Runtime code  =====================


address adminAddress;
address stor1;
mapping of struct holding;
uint256 stor3;
mapping of uint256 stor4;

function holding(uint256 arg1) payable {
    return holding[arg1].field_256, 
           holding[arg1].field_512,
           holding[arg1].field_768,
           holding[arg1].field_1024,
           holding[arg1].field_1280
}

function sub_d295c57a(?) payable {
    return holding[arg1].field_256
}

function getHolder(uint256 arg1) payable {
    return holding[arg1].field_512
}

function sub_ec375953(?) payable {
    return holding[arg1].field_768
}

function admin() payable {
    return adminAddress
}

function kill() payable {
    if adminAddress != msg.sender:
    selfdestruct(adminAddress)
}

function _fallback() payable {
  stop
}

function sub_8b69450d(?) payable {
    return (stor3 - 1)
}

function register() payable {
    if adminAddress == msg.sender:
        call stor1.register(bytes32 rg1) with:
             gas gas_remaining - 25050 wei
            args 'custodian'
        require ext_call.success
}

function sub_0c5e11e2(?) payable {
    stor3++
    holding[stor3].field_0 = stor3
    holding[stor3].field_256 = arg1
    holding[stor3].field_512 = arg2 or Mask(96, 160, holding[stor3].field_512)
    holding[stor3].field_768 = arg3
    holding[stor3].field_1024 = arg4
    holding[stor3].field_1280 = arg5
    emit 0x3ecb3e90: arg1, address(arg2), arg3, arg4, arg5, 5, stor3
    return stor3
}

function sub_d759e241(?) payable {
    s = 0
    idx = 1
    while idx < stor3:
        mem[0] = idx
        mem[32] = 2
        if arg1 != holding[idx].field_256:
            s = sha3(idx, 2)
            idx = idx + 1
            continue 
        if holding[idx].field_512 != arg2:
            s = sha3(idx, 2)
            idx = idx + 1
            continue 
        return holding[idx].field_0
    return 0
}

function sub_550c2cea(?) payable {
    s = 0
    idx = 1
    while idx < stor3:
        mem[0] = idx
        mem[32] = 2
        if arg1 != holding[idx].field_256:
            s = sha3(idx, 2)
            idx = idx + 1
            continue 
        if holding[idx].field_512 != arg2:
            s = sha3(idx, 2)
            idx = idx + 1
            continue 
        stor4[stor2[idx].field_0] += arg3
    stor4[0] += arg3
}

function sub_ede2e5cd(?) payable {
    s = 0
    idx = 1
    while idx < stor3:
        mem[0] = idx
        mem[32] = 2
        if arg1 != holding[idx].field_256:
            s = sha3(idx, 2)
            idx = idx + 1
            continue 
        if holding[idx].field_512 != arg2:
            s = sha3(idx, 2)
            idx = idx + 1
            continue 
        stor4[stor2[idx].field_0] -= arg3
    stor4[0] -= arg3
}

function transferFunds(address arg1, address arg2, uint256 arg3) payable {
    call stor1.addressOf(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 'stabletoken'
    require ext_call.success
    call address(ext_call.return_data[0]).adminTransfer(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 25050 wei
        args address(arg2), address(arg1), arg3
    return ext_call.return_data[0]
}

function sub_e849d4ef(?) payable {
    s = 0
    idx = 1
    while idx < stor3:
        mem[0] = idx
        mem[32] = 2
        if arg1 != holding[idx].field_256:
            s = sha3(idx, 2)
            idx = idx + 1
            continue 
        if holding[idx].field_512 != arg2:
            s = sha3(idx, 2)
            idx = idx + 1
            continue 
        if holding[idx].field_0 != 0:
            return holding[holding[idx].field_0].field_768
        else:
            return 0
    return 0
}

function sub_b1eb7998(?) payable {
    s = 0
    idx = 1
    while idx < stor3:
        mem[0] = idx
        mem[32] = 2
        if arg1 != holding[idx].field_256:
            s = sha3(idx, 2)
            idx = idx + 1
            continue 
        if holding[idx].field_512 != arg2:
            s = sha3(idx, 2)
            idx = idx + 1
            continue 
        if holding[idx].field_0 != 0:
            return (holding[holding[idx].field_0].field_768 - stor4[stor2[stor2[idx].field_0].field_0])
        else:
            return 0
    return 0
}

function sub_433fdf55(?) payable {
    s = 0
    idx = 1
    while idx < stor3:
        mem[0] = idx
        mem[32] = 2
        if arg1 == holding[idx].field_256:
            call stor1.addressOf(bytes32 rg1) with:
                 gas gas_remaining - 25050 wei
                args 'stabletoken'
            require ext_call.success
            mem[100] = holding[idx].field_512
            mem[132] = arg2
            mem[164] = arg3 * holding[idx].field_768
            call address(ext_call.return_data[0]).adminTransfer(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 25050 wei
                args holding[idx].field_512, address(arg2), arg3 * holding[idx].field_768
            mem[96] = ext_call.return_data[0]
            if not ext_call.return_data[0]:
                mem[96] = arg1
                mem[128] = 5
                emit 0x5a29bc1d: arg1, 5, 3, holding[idx].field_512
            if 2 == arg4:
                mem[96] = arg1
                mem[128] = arg3 * holding[idx].field_768
                emit 0x8b36b54e: arg1, arg3 * holding[idx].field_768, 4, arg2, holding[idx].field_512
        s = sha3(idx, 2)
        idx = idx + 1
        continue 
    return 0
}

function sub_9eb27331(?) payable {
    call stor1.addressOf(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args 'stabletoken'
    require ext_call.success
    call address(ext_call.return_data[0]).adminTransfer(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 25050 wei
        args address(arg2), address(arg3), arg5 * arg4
    if not ext_call.return_data[0]:
        emit 0x5a29bc1d: arg1, 5, 3, arg3
        return 0
    s = 0
    idx = 1
    while idx < stor3:
        mem[0] = idx
        mem[32] = 2
        if arg1 != holding[idx].field_256:
            s = sha3(idx, 2)
            idx = idx + 1
            continue 
        if holding[idx].field_512 != arg2:
            s = sha3(idx, 2)
            idx = idx + 1
            continue 
        t = 0
        s = 1
        while s < stor3:
            mem[0] = s
            mem[32] = 2
            if arg1 != holding[s].field_256:
                t = sha3(s, 2)
                s = s + 1
                continue 
            if holding[s].field_512 != arg3:
                t = sha3(s, 2)
                s = s + 1
                continue 
            if holding[s].field_0 != 0:
                holding[holding[s].field_0].field_768 += arg4
                if holding[holding[idx].field_0].field_1024 > 0:
                    if holding[holding[s].field_0].field_1024 > 0:
                        return 0
                    holding[holding[s].field_0].field_1024 = holding[holding[idx].field_0].field_1024
                    holding[holding[s].field_0].field_1280 = holding[holding[idx].field_0].field_1280
                    holding[holding[idx].field_0].field_1024 = 0
                    if 1 == holding[holding[s].field_0].field_1280:
                        call stor1.addressOf(bytes32 rg1) with:
                             gas gas_remaining - 25050 wei
                            args 'cashsettled'
                        require ext_call.success
                        call address(ext_call.return_data[0]).0x43fb2310 with:
                             gas gas_remaining - 25050 wei
                            args holding[holding[s].field_0].field_1024, holding[holding[s].field_0].field_0
                    else:
                        if 2 == holding[holding[s].field_0].field_1280:
                            call stor1.addressOf(bytes32 rg1) with:
                                 gas gas_remaining - 25050 wei
                                args 'cashsettled'
                            require ext_call.success
                            call address(ext_call.return_data[0]).0x173396bb with:
                                 gas gas_remaining - 25050 wei
                                args holding[holding[s].field_0].field_1024, holding[holding[s].field_0].field_0
                holding[holding[idx].field_0].field_768 -= arg4
                emit 0x3ecb3e90: holding[holding[idx].field_0].field_256, holding[holding[idx].field_0].field_512, holding[holding[idx].field_0].field_768 - arg4, holding[holding[idx].field_0].field_1024, holding[holding[idx].field_0].field_1280, 6, holding[holding[idx].field_0].field_0
                emit 0x3ecb3e90: holding[holding[s].field_0].field_256, holding[holding[s].field_0].field_512, holding[holding[s].field_0].field_768, holding[holding[s].field_0].field_1024, holding[holding[s].field_0].field_1280, 6, holding[holding[s].field_0].field_0
            else:
                stor3++
                holding[stor3].field_256 = arg1
                holding[stor3].field_512 = arg3 or Mask(96, 160, holding[stor3].field_512)
                holding[stor3].field_0 = stor3 - 1
                holding[stor3].field_768 = arg4
                if holding[holding[idx].field_0].field_1024 > 0:
                    if holding[stor3].field_1024 > 0:
                        return 0
                    holding[stor3].field_1024 = holding[holding[idx].field_0].field_1024
                    holding[stor3].field_1280 = holding[holding[idx].field_0].field_1280
                    holding[holding[idx].field_0].field_1024 = 0
                    if 1 == holding[stor3].field_1280:
                        call stor1.addressOf(bytes32 rg1) with:
                             gas gas_remaining - 25050 wei
                            args 'cashsettled'
                        require ext_call.success
                        call address(ext_call.return_data[0]).0x43fb2310 with:
                             gas gas_remaining - 25050 wei
                            args holding[stor3].field_1024, holding[stor3].field_0
                    else:
                        if 2 == holding[stor3].field_1280:
                            call stor1.addressOf(bytes32 rg1) with:
                                 gas gas_remaining - 25050 wei
                                args 'cashsettled'
                            require ext_call.success
                            call address(ext_call.return_data[0]).0x173396bb with:
                                 gas gas_remaining - 25050 wei
                                args holding[stor3].field_1024, holding[stor3].field_0
                holding[holding[idx].field_0].field_768 -= arg4
                emit 0x3ecb3e90: holding[holding[idx].field_0].field_256, holding[holding[idx].field_0].field_512, holding[holding[idx].field_0].field_768 - arg4, holding[holding[idx].field_0].field_1024, holding[holding[idx].field_0].field_1280, 6, holding[holding[idx].field_0].field_0
                emit 0x3ecb3e90: holding[stor3].field_256, holding[stor3].field_512, holding[stor3].field_768, holding[stor3].field_1024, holding[stor3].field_1280, 6, holding[stor3].field_0
            emit 0xba705ad0: arg1, arg4, arg5 * arg4, 2, arg2, arg3
            return 1
        stor3++
        holding[stor3].field_256 = arg1
        holding[stor3].field_512 = arg3 or Mask(96, 160, holding[stor3].field_512)
        holding[stor3].field_0 = stor3 - 1
        holding[stor3].field_768 = arg4
        if holding[holding[idx].field_0].field_1024 > 0:
            if holding[stor3].field_1024 > 0:
                return 0
            holding[stor3].field_1024 = holding[holding[idx].field_0].field_1024
            holding[stor3].field_1280 = holding[holding[idx].field_0].field_1280
            holding[holding[idx].field_0].field_1024 = 0
            if 1 == holding[stor3].field_1280:
                call stor1.addressOf(bytes32 rg1) with:
                     gas gas_remaining - 25050 wei
                    args 'cashsettled'
                require ext_call.success
                call address(ext_call.return_data[0]).0x43fb2310 with:
                     gas gas_remaining - 25050 wei
                    args holding[stor3].field_1024, holding[stor3].field_0
            else:
                if 2 == holding[stor3].field_1280:
                    call stor1.addressOf(bytes32 rg1) with:
                         gas gas_remaining - 25050 wei
                        args 'cashsettled'
                    require ext_call.success
                    call address(ext_call.return_data[0]).0x173396bb with:
                         gas gas_remaining - 25050 wei
                        args holding[stor3].field_1024, holding[stor3].field_0
        holding[holding[idx].field_0].field_768 -= arg4
        emit 0x3ecb3e90: holding[holding[idx].field_0].field_256, holding[holding[idx].field_0].field_512, holding[holding[idx].field_0].field_768 - arg4, holding[holding[idx].field_0].field_1024, holding[holding[idx].field_0].field_1280, 6, holding[holding[idx].field_0].field_0
        emit 0x3ecb3e90: holding[stor3].field_256, holding[stor3].field_512, holding[stor3].field_768, holding[stor3].field_1024, holding[stor3].field_1280, 6, holding[stor3].field_0
        emit 0xba705ad0: arg1, arg4, arg5 * arg4, 2, arg2, arg3
        return 1
    s = 0
    idx = 1
    while idx < stor3:
        mem[0] = idx
        mem[32] = 2
        if arg1 != holding[idx].field_256:
            s = sha3(idx, 2)
            idx = idx + 1
            continue 
        if holding[idx].field_512 != arg3:
            s = sha3(idx, 2)
            idx = idx + 1
            continue 
        if holding[idx].field_0 != 0:
            holding[holding[idx].field_0].field_768 += arg4
            if holding[0].field_1024 > 0:
                if holding[holding[idx].field_0].field_1024 > 0:
                    return 0
                holding[holding[idx].field_0].field_1024 = holding[0].field_1024
                holding[holding[idx].field_0].field_1280 = holding[0].field_1280
                holding[0].field_1024 = 0
                if 1 == holding[holding[idx].field_0].field_1280:
                    call stor1.addressOf(bytes32 rg1) with:
                         gas gas_remaining - 25050 wei
                        args 'cashsettled'
                    require ext_call.success
                    call address(ext_call.return_data[0]).0x43fb2310 with:
                         gas gas_remaining - 25050 wei
                        args holding[holding[idx].field_0].field_1024, holding[holding[idx].field_0].field_0
                else:
                    if 2 == holding[holding[idx].field_0].field_1280:
                        call stor1.addressOf(bytes32 rg1) with:
                             gas gas_remaining - 25050 wei
                            args 'cashsettled'
                        require ext_call.success
                        call address(ext_call.return_data[0]).0x173396bb with:
                             gas gas_remaining - 25050 wei
                            args holding[holding[idx].field_0].field_1024, holding[holding[idx].field_0].field_0
            holding[0].field_768 -= arg4
            emit 0x3ecb3e90: holding[0].field_256, holding[0].field_512, holding[0].field_768 - arg4, holding[0].field_1024, holding[0].field_1280, 6, holding[0].field_0
            emit 0x3ecb3e90: holding[holding[idx].field_0].field_256, holding[holding[idx].field_0].field_512, holding[holding[idx].field_0].field_768, holding[holding[idx].field_0].field_1024, holding[holding[idx].field_0].field_1280, 6, holding[holding[idx].field_0].field_0
        else:
            stor3++
            holding[stor3].field_256 = arg1
            holding[stor3].field_512 = arg3 or Mask(96, 160, holding[stor3].field_512)
            holding[stor3].field_0 = stor3 - 1
            holding[stor3].field_768 = arg4
            if holding[0].field_1024 > 0:
                if holding[stor3].field_1024 > 0:
                    return 0
                holding[stor3].field_1024 = holding[0].field_1024
                holding[stor3].field_1280 = holding[0].field_1280
                holding[0].field_1024 = 0
                if 1 == holding[stor3].field_1280:
                    call stor1.addressOf(bytes32 rg1) with:
                         gas gas_remaining - 25050 wei
                        args 'cashsettled'
                    require ext_call.success
                    call address(ext_call.return_data[0]).0x43fb2310 with:
                         gas gas_remaining - 25050 wei
                        args holding[stor3].field_1024, holding[stor3].field_0
                else:
                    if 2 == holding[stor3].field_1280:
                        call stor1.addressOf(bytes32 rg1) with:
                             gas gas_remaining - 25050 wei
                            args 'cashsettled'
                        require ext_call.success
                        call address(ext_call.return_data[0]).0x173396bb with:
                             gas gas_remaining - 25050 wei
                            args holding[stor3].field_1024, holding[stor3].field_0
            holding[0].field_768 -= arg4
            emit 0x3ecb3e90: holding[0].field_256, holding[0].field_512, holding[0].field_768 - arg4, holding[0].field_1024, holding[0].field_1280, 6, holding[0].field_0
            emit 0x3ecb3e90: holding[stor3].field_256, holding[stor3].field_512, holding[stor3].field_768, holding[stor3].field_1024, holding[stor3].field_1280, 6, holding[stor3].field_0
        emit 0xba705ad0: arg1, arg4, arg5 * arg4, 2, arg2, arg3
        return 1
    stor3++
    holding[stor3].field_256 = arg1
    holding[stor3].field_512 = arg3 or Mask(96, 160, holding[stor3].field_512)
    holding[stor3].field_0 = stor3 - 1
    holding[stor3].field_768 = arg4
    if holding[0].field_1024 > 0:
        if holding[stor3].field_1024 > 0:
            return 0
        holding[stor3].field_1024 = holding[0].field_1024
        holding[stor3].field_1280 = holding[0].field_1280
        holding[0].field_1024 = 0
        if 1 == holding[stor3].field_1280:
            call stor1.addressOf(bytes32 rg1) with:
                 gas gas_remaining - 25050 wei
                args 'cashsettled'
            require ext_call.success
            call address(ext_call.return_data[0]).0x43fb2310 with:
                 gas gas_remaining - 25050 wei
                args holding[stor3].field_1024, holding[stor3].field_0
        else:
            if 2 == holding[stor3].field_1280:
                call stor1.addressOf(bytes32 rg1) with:
                     gas gas_remaining - 25050 wei
                    args 'cashsettled'
                require ext_call.success
                call address(ext_call.return_data[0]).0x173396bb with:
                     gas gas_remaining - 25050 wei
                    args holding[stor3].field_1024, holding[stor3].field_0
    holding[0].field_768 -= arg4
    emit 0x3ecb3e90: holding[0].field_256, holding[0].field_512, holding[0].field_768 - arg4, holding[0].field_1024, holding[0].field_1280, 6, holding[0].field_0
    emit 0x3ecb3e90: holding[stor3].field_256, holding[stor3].field_512, holding[stor3].field_768, holding[stor3].field_1024, holding[stor3].field_1280, 6, holding[stor3].field_0
    emit 0xba705ad0: arg1, arg4, arg5 * arg4, 2, arg2, arg3
    return 1
}

function sub_00146cd9(?) payable {
    mem[64] = 96
    s = 0
    idx = 1
    while idx < stor3:
        mem[0] = idx
        mem[32] = 2
        if arg1 == holding[idx].field_256:
            call stor1.addressOf(bytes32 rg1) with:
                 gas gas_remaining - 25050 wei
                args 'stabletoken'
            require ext_call.success
            mem[mem[64] + 4] = holding[idx].field_512
            mem[mem[64] + 36] = arg2
            mem[mem[64] + 68] = arg3 * holding[idx].field_768
            call address(ext_call.return_data[0]).adminTransfer(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining - 25050 wei
                args holding[idx].field_512, address(arg2), arg3 * holding[idx].field_768
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.return_data[0]:
                mem[mem[64]] = arg1
                mem[mem[64] + 32] = 5
                emit 0x5a29bc1d: arg1, 5, 3, arg2
            else:
                t = 0
                s = 1
                while s < stor3:
                    mem[0] = s
                    mem[32] = 2
                    if arg1 != holding[s].field_256:
                        t = sha3(s, 2)
                        s = s + 1
                        continue 
                    if holding[s].field_512 != holding[idx].field_512:
                        t = sha3(s, 2)
                        s = s + 1
                        continue 
                    u = 0
                    t = 1
                    while t < stor3:
                        mem[0] = t
                        mem[32] = 2
                        if arg1 != holding[t].field_256:
                            u = sha3(t, 2)
                            t = t + 1
                            continue 
                        if holding[t].field_512 != arg2:
                            u = sha3(t, 2)
                            t = t + 1
                            continue 
                        if holding[t].field_0 != 0:
                            mem[0] = holding[t].field_0
                            mem[32] = 2
                            holding[holding[t].field_0].field_768 += holding[idx].field_768
                            if holding[holding[s].field_0].field_1024 <= 0:
                                holding[holding[s].field_0].field_768 -= holding[idx].field_768
                                emit 0x3ecb3e90: holding[holding[s].field_0].field_256, holding[holding[s].field_0].field_512, holding[holding[s].field_0].field_768 - holding[idx].field_768, holding[holding[s].field_0].field_1024, holding[holding[s].field_0].field_1280, 6, holding[holding[s].field_0].field_0
                                mem[mem[64] + 96] = holding[holding[t].field_0].field_1024
                                mem[mem[64] + 128] = holding[holding[t].field_0].field_1280
                                emit 0x3ecb3e90: holding[holding[t].field_0].field_256, holding[holding[t].field_0].field_512, holding[holding[t].field_0].field_768, holding[holding[t].field_0].field_1024, holding[holding[t].field_0].field_1280, 6, holding[holding[t].field_0].field_0
                                mem[mem[64]] = arg1
                                mem[mem[64] + 32] = holding[idx].field_768
                                mem[mem[64] + 64] = arg3 * holding[idx].field_768
                                emit 0xba705ad0: arg1, holding[idx].field_768, arg3 * holding[idx].field_768, 2, holding[idx].field_512, arg2
                            else:
                                if holding[holding[t].field_0].field_1024 <= 0:
                                    holding[holding[t].field_0].field_1024 = holding[holding[s].field_0].field_1024
                                    holding[holding[t].field_0].field_1280 = holding[holding[s].field_0].field_1280
                                    holding[holding[s].field_0].field_1024 = 0
                                    if 1 == holding[holding[t].field_0].field_1280:
                                        call stor1.addressOf(bytes32 rg1) with:
                                             gas gas_remaining - 25050 wei
                                            args 'cashsettled'
                                        require ext_call.success
                                        call address(ext_call.return_data[0]).0x43fb2310 with:
                                             gas gas_remaining - 25050 wei
                                            args holding[holding[t].field_0].field_1024, holding[holding[t].field_0].field_0
                                    else:
                                        if 2 == holding[holding[t].field_0].field_1280:
                                            call stor1.addressOf(bytes32 rg1) with:
                                                 gas gas_remaining - 25050 wei
                                                args 'cashsettled'
                                            require ext_call.success
                                            call address(ext_call.return_data[0]).0x173396bb with:
                                                 gas gas_remaining - 25050 wei
                                                args holding[holding[t].field_0].field_1024, holding[holding[t].field_0].field_0
                                    holding[holding[s].field_0].field_768 -= holding[idx].field_768
                                    emit 0x3ecb3e90: holding[holding[s].field_0].field_256, holding[holding[s].field_0].field_512, holding[holding[s].field_0].field_768 - holding[idx].field_768, holding[holding[s].field_0].field_1024, holding[holding[s].field_0].field_1280, 6, holding[holding[s].field_0].field_0
                                    mem[mem[64] + 96] = holding[holding[t].field_0].field_1024
                                    mem[mem[64] + 128] = holding[holding[t].field_0].field_1280
                                    emit 0x3ecb3e90: holding[holding[t].field_0].field_256, holding[holding[t].field_0].field_512, holding[holding[t].field_0].field_768, holding[holding[t].field_0].field_1024, holding[holding[t].field_0].field_1280, 6, holding[holding[t].field_0].field_0
                                    mem[mem[64]] = arg1
                                    mem[mem[64] + 32] = holding[idx].field_768
                                    mem[mem[64] + 64] = arg3 * holding[idx].field_768
                                    emit 0xba705ad0: arg1, holding[idx].field_768, arg3 * holding[idx].field_768, 2, holding[idx].field_512, arg2
                        else:
                            stor3++
                            mem[0] = stor3
                            mem[32] = 2
                            holding[stor3].field_256 = arg1
                            holding[stor3].field_512 = arg2 or Mask(96, 160, holding[stor3].field_512)
                            holding[stor3].field_0 = stor3 - 1
                            holding[stor3].field_768 = holding[idx].field_768
                            if holding[holding[s].field_0].field_1024 <= 0:
                                holding[holding[s].field_0].field_768 -= holding[idx].field_768
                                emit 0x3ecb3e90: holding[holding[s].field_0].field_256, holding[holding[s].field_0].field_512, holding[holding[s].field_0].field_768 - holding[idx].field_768, holding[holding[s].field_0].field_1024, holding[holding[s].field_0].field_1280, 6, holding[holding[s].field_0].field_0
                                mem[mem[64] + 96] = holding[stor3].field_1024
                                mem[mem[64] + 128] = holding[stor3].field_1280
                                emit 0x3ecb3e90: holding[stor3].field_256, holding[stor3].field_512, holding[stor3].field_768, holding[stor3].field_1024, holding[stor3].field_1280, 6, holding[stor3].field_0
                                mem[mem[64]] = arg1
                                mem[mem[64] + 32] = holding[idx].field_768
                                mem[mem[64] + 64] = arg3 * holding[idx].field_768
                                emit 0xba705ad0: arg1, holding[idx].field_768, arg3 * holding[idx].field_768, 2, holding[idx].field_512, arg2
                            else:
                                if holding[stor3].field_1024 <= 0:
                                    holding[stor3].field_1024 = holding[holding[s].field_0].field_1024
                                    holding[stor3].field_1280 = holding[holding[s].field_0].field_1280
                                    holding[holding[s].field_0].field_1024 = 0
                                    if 1 == holding[stor3].field_1280:
                                        call stor1.addressOf(bytes32 rg1) with:
                                             gas gas_remaining - 25050 wei
                                            args 'cashsettled'
                                        require ext_call.success
                                        call address(ext_call.return_data[0]).0x43fb2310 with:
                                             gas gas_remaining - 25050 wei
                                            args holding[stor3].field_1024, holding[stor3].field_0
                                    else:
                                        if 2 == holding[stor3].field_1280:
                                            call stor1.addressOf(bytes32 rg1) with:
                                                 gas gas_remaining - 25050 wei
                                                args 'cashsettled'
                                            require ext_call.success
                                            call address(ext_call.return_data[0]).0x173396bb with:
                                                 gas gas_remaining - 25050 wei
                                                args holding[stor3].field_1024, holding[stor3].field_0
                                    holding[holding[s].field_0].field_768 -= holding[idx].field_768
                                    emit 0x3ecb3e90: holding[holding[s].field_0].field_256, holding[holding[s].field_0].field_512, holding[holding[s].field_0].field_768 - holding[idx].field_768, holding[holding[s].field_0].field_1024, holding[holding[s].field_0].field_1280, 6, holding[holding[s].field_0].field_0
                                    mem[mem[64] + 96] = holding[stor3].field_1024
                                    mem[mem[64] + 128] = holding[stor3].field_1280
                                    emit 0x3ecb3e90: holding[stor3].field_256, holding[stor3].field_512, holding[stor3].field_768, holding[stor3].field_1024, holding[stor3].field_1280, 6, holding[stor3].field_0
                                    mem[mem[64]] = arg1
                                    mem[mem[64] + 32] = holding[idx].field_768
                                    mem[mem[64] + 64] = arg3 * holding[idx].field_768
                                    emit 0xba705ad0: arg1, holding[idx].field_768, arg3 * holding[idx].field_768, 2, holding[idx].field_512, arg2
                        s = sha3(idx, 2)
                        idx = idx + 1
                        continue 
                    stor3++
                    mem[0] = stor3
                    mem[32] = 2
                    holding[stor3].field_256 = arg1
                    holding[stor3].field_512 = arg2 or Mask(96, 160, holding[stor3].field_512)
                    holding[stor3].field_0 = stor3 - 1
                    holding[stor3].field_768 = holding[idx].field_768
                    if holding[holding[s].field_0].field_1024 <= 0:
                        holding[holding[s].field_0].field_768 -= holding[idx].field_768
                        emit 0x3ecb3e90: holding[holding[s].field_0].field_256, holding[holding[s].field_0].field_512, holding[holding[s].field_0].field_768 - holding[idx].field_768, holding[holding[s].field_0].field_1024, holding[holding[s].field_0].field_1280, 6, holding[holding[s].field_0].field_0
                        mem[mem[64] + 96] = holding[stor3].field_1024
                        mem[mem[64] + 128] = holding[stor3].field_1280
                        emit 0x3ecb3e90: holding[stor3].field_256, holding[stor3].field_512, holding[stor3].field_768, holding[stor3].field_1024, holding[stor3].field_1280, 6, holding[stor3].field_0
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = holding[idx].field_768
                        mem[mem[64] + 64] = arg3 * holding[idx].field_768
                        emit 0xba705ad0: arg1, holding[idx].field_768, arg3 * holding[idx].field_768, 2, holding[idx].field_512, arg2
                    else:
                        if holding[stor3].field_1024 <= 0:
                            holding[stor3].field_1024 = holding[holding[s].field_0].field_1024
                            holding[stor3].field_1280 = holding[holding[s].field_0].field_1280
                            holding[holding[s].field_0].field_1024 = 0
                            if 1 == holding[stor3].field_1280:
                                call stor1.addressOf(bytes32 rg1) with:
                                     gas gas_remaining - 25050 wei
                                    args 'cashsettled'
                                require ext_call.success
                                call address(ext_call.return_data[0]).0x43fb2310 with:
                                     gas gas_remaining - 25050 wei
                                    args holding[stor3].field_1024, holding[stor3].field_0
                            else:
                                if 2 == holding[stor3].field_1280:
                                    call stor1.addressOf(bytes32 rg1) with:
                                         gas gas_remaining - 25050 wei
                                        args 'cashsettled'
                                    require ext_call.success
                                    call address(ext_call.return_data[0]).0x173396bb with:
                                         gas gas_remaining - 25050 wei
                                        args holding[stor3].field_1024, holding[stor3].field_0
                            holding[holding[s].field_0].field_768 -= holding[idx].field_768
                            emit 0x3ecb3e90: holding[holding[s].field_0].field_256, holding[holding[s].field_0].field_512, holding[holding[s].field_0].field_768 - holding[idx].field_768, holding[holding[s].field_0].field_1024, holding[holding[s].field_0].field_1280, 6, holding[holding[s].field_0].field_0
                            mem[mem[64] + 96] = holding[stor3].field_1024
                            mem[mem[64] + 128] = holding[stor3].field_1280
                            emit 0x3ecb3e90: holding[stor3].field_256, holding[stor3].field_512, holding[stor3].field_768, holding[stor3].field_1024, holding[stor3].field_1280, 6, holding[stor3].field_0
                            mem[mem[64]] = arg1
                            mem[mem[64] + 32] = holding[idx].field_768
                            mem[mem[64] + 64] = arg3 * holding[idx].field_768
                            emit 0xba705ad0: arg1, holding[idx].field_768, arg3 * holding[idx].field_768, 2, holding[idx].field_512, arg2
                    s = sha3(idx, 2)
                    idx = idx + 1
                    continue 
                t = 0
                s = 1
                while s < stor3:
                    mem[0] = s
                    mem[32] = 2
                    if arg1 != holding[s].field_256:
                        t = sha3(s, 2)
                        s = s + 1
                        continue 
                    if holding[s].field_512 != arg2:
                        t = sha3(s, 2)
                        s = s + 1
                        continue 
                    if holding[s].field_0 != 0:
                        mem[0] = holding[s].field_0
                        mem[32] = 2
                        holding[holding[s].field_0].field_768 += holding[idx].field_768
                        if holding[0].field_1024 <= 0:
                            holding[0].field_768 -= holding[idx].field_768
                            emit 0x3ecb3e90: holding[0].field_256, holding[0].field_512, holding[0].field_768 - holding[idx].field_768, holding[0].field_1024, holding[0].field_1280, 6, holding[0].field_0
                            mem[mem[64] + 96] = holding[holding[s].field_0].field_1024
                            mem[mem[64] + 128] = holding[holding[s].field_0].field_1280
                            emit 0x3ecb3e90: holding[holding[s].field_0].field_256, holding[holding[s].field_0].field_512, holding[holding[s].field_0].field_768, holding[holding[s].field_0].field_1024, holding[holding[s].field_0].field_1280, 6, holding[holding[s].field_0].field_0
                            mem[mem[64]] = arg1
                            mem[mem[64] + 32] = holding[idx].field_768
                            mem[mem[64] + 64] = arg3 * holding[idx].field_768
                            emit 0xba705ad0: arg1, holding[idx].field_768, arg3 * holding[idx].field_768, 2, holding[idx].field_512, arg2
                        else:
                            if holding[holding[s].field_0].field_1024 <= 0:
                                holding[holding[s].field_0].field_1024 = holding[0].field_1024
                                holding[holding[s].field_0].field_1280 = holding[0].field_1280
                                holding[0].field_1024 = 0
                                if 1 == holding[holding[s].field_0].field_1280:
                                    call stor1.addressOf(bytes32 rg1) with:
                                         gas gas_remaining - 25050 wei
                                        args 'cashsettled'
                                    require ext_call.success
                                    call address(ext_call.return_data[0]).0x43fb2310 with:
                                         gas gas_remaining - 25050 wei
                                        args holding[holding[s].field_0].field_1024, holding[holding[s].field_0].field_0
                                else:
                                    if 2 == holding[holding[s].field_0].field_1280:
                                        call stor1.addressOf(bytes32 rg1) with:
                                             gas gas_remaining - 25050 wei
                                            args 'cashsettled'
                                        require ext_call.success
                                        call address(ext_call.return_data[0]).0x173396bb with:
                                             gas gas_remaining - 25050 wei
                                            args holding[holding[s].field_0].field_1024, holding[holding[s].field_0].field_0
                                holding[0].field_768 -= holding[idx].field_768
                                emit 0x3ecb3e90: holding[0].field_256, holding[0].field_512, holding[0].field_768 - holding[idx].field_768, holding[0].field_1024, holding[0].field_1280, 6, holding[0].field_0
                                mem[mem[64] + 96] = holding[holding[s].field_0].field_1024
                                mem[mem[64] + 128] = holding[holding[s].field_0].field_1280
                                emit 0x3ecb3e90: holding[holding[s].field_0].field_256, holding[holding[s].field_0].field_512, holding[holding[s].field_0].field_768, holding[holding[s].field_0].field_1024, holding[holding[s].field_0].field_1280, 6, holding[holding[s].field_0].field_0
                                mem[mem[64]] = arg1
                                mem[mem[64] + 32] = holding[idx].field_768
                                mem[mem[64] + 64] = arg3 * holding[idx].field_768
                                emit 0xba705ad0: arg1, holding[idx].field_768, arg3 * holding[idx].field_768, 2, holding[idx].field_512, arg2
                    else:
                        stor3++
                        mem[0] = stor3
                        mem[32] = 2
                        holding[stor3].field_256 = arg1
                        holding[stor3].field_512 = arg2 or Mask(96, 160, holding[stor3].field_512)
                        holding[stor3].field_0 = stor3 - 1
                        holding[stor3].field_768 = holding[idx].field_768
                        if holding[0].field_1024 <= 0:
                            holding[0].field_768 -= holding[idx].field_768
                            emit 0x3ecb3e90: holding[0].field_256, holding[0].field_512, holding[0].field_768 - holding[idx].field_768, holding[0].field_1024, holding[0].field_1280, 6, holding[0].field_0
                            mem[mem[64] + 96] = holding[stor3].field_1024
                            mem[mem[64] + 128] = holding[stor3].field_1280
                            emit 0x3ecb3e90: holding[stor3].field_256, holding[stor3].field_512, holding[stor3].field_768, holding[stor3].field_1024, holding[stor3].field_1280, 6, holding[stor3].field_0
                            mem[mem[64]] = arg1
                            mem[mem[64] + 32] = holding[idx].field_768
                            mem[mem[64] + 64] = arg3 * holding[idx].field_768
                            emit 0xba705ad0: arg1, holding[idx].field_768, arg3 * holding[idx].field_768, 2, holding[idx].field_512, arg2
                        else:
                            if holding[stor3].field_1024 <= 0:
                                holding[stor3].field_1024 = holding[0].field_1024
                                holding[stor3].field_1280 = holding[0].field_1280
                                holding[0].field_1024 = 0
                                if 1 == holding[stor3].field_1280:
                                    call stor1.addressOf(bytes32 rg1) with:
                                         gas gas_remaining - 25050 wei
                                        args 'cashsettled'
                                    require ext_call.success
                                    call address(ext_call.return_data[0]).0x43fb2310 with:
                                         gas gas_remaining - 25050 wei
                                        args holding[stor3].field_1024, holding[stor3].field_0
                                else:
                                    if 2 == holding[stor3].field_1280:
                                        call stor1.addressOf(bytes32 rg1) with:
                                             gas gas_remaining - 25050 wei
                                            args 'cashsettled'
                                        require ext_call.success
                                        call address(ext_call.return_data[0]).0x173396bb with:
                                             gas gas_remaining - 25050 wei
                                            args holding[stor3].field_1024, holding[stor3].field_0
                                holding[0].field_768 -= holding[idx].field_768
                                emit 0x3ecb3e90: holding[0].field_256, holding[0].field_512, holding[0].field_768 - holding[idx].field_768, holding[0].field_1024, holding[0].field_1280, 6, holding[0].field_0
                                mem[mem[64] + 96] = holding[stor3].field_1024
                                mem[mem[64] + 128] = holding[stor3].field_1280
                                emit 0x3ecb3e90: holding[stor3].field_256, holding[stor3].field_512, holding[stor3].field_768, holding[stor3].field_1024, holding[stor3].field_1280, 6, holding[stor3].field_0
                                mem[mem[64]] = arg1
                                mem[mem[64] + 32] = holding[idx].field_768
                                mem[mem[64] + 64] = arg3 * holding[idx].field_768
                                emit 0xba705ad0: arg1, holding[idx].field_768, arg3 * holding[idx].field_768, 2, holding[idx].field_512, arg2
                    s = sha3(idx, 2)
                    idx = idx + 1
                    continue 
                stor3++
                mem[0] = stor3
                mem[32] = 2
                holding[stor3].field_256 = arg1
                holding[stor3].field_512 = arg2 or Mask(96, 160, holding[stor3].field_512)
                holding[stor3].field_0 = stor3 - 1
                holding[stor3].field_768 = holding[idx].field_768
                if holding[0].field_1024 <= 0:
                    holding[0].field_768 -= holding[idx].field_768
                    emit 0x3ecb3e90: holding[0].field_256, holding[0].field_512, holding[0].field_768 - holding[idx].field_768, holding[0].field_1024, holding[0].field_1280, 6, holding[0].field_0
                    mem[mem[64] + 96] = holding[stor3].field_1024
                    mem[mem[64] + 128] = holding[stor3].field_1280
                    emit 0x3ecb3e90: holding[stor3].field_256, holding[stor3].field_512, holding[stor3].field_768, holding[stor3].field_1024, holding[stor3].field_1280, 6, holding[stor3].field_0
                    mem[mem[64]] = arg1
                    mem[mem[64] + 32] = holding[idx].field_768
                    mem[mem[64] + 64] = arg3 * holding[idx].field_768
                    emit 0xba705ad0: arg1, holding[idx].field_768, arg3 * holding[idx].field_768, 2, holding[idx].field_512, arg2
                else:
                    if holding[stor3].field_1024 <= 0:
                        holding[stor3].field_1024 = holding[0].field_1024
                        holding[stor3].field_1280 = holding[0].field_1280
                        holding[0].field_1024 = 0
                        if 1 == holding[stor3].field_1280:
                            call stor1.addressOf(bytes32 rg1) with:
                                 gas gas_remaining - 25050 wei
                                args 'cashsettled'
                            require ext_call.success
                            call address(ext_call.return_data[0]).0x43fb2310 with:
                                 gas gas_remaining - 25050 wei
                                args holding[stor3].field_1024, holding[stor3].field_0
                        else:
                            if 2 == holding[stor3].field_1280:
                                call stor1.addressOf(bytes32 rg1) with:
                                     gas gas_remaining - 25050 wei
                                    args 'cashsettled'
                                require ext_call.success
                                call address(ext_call.return_data[0]).0x173396bb with:
                                     gas gas_remaining - 25050 wei
                                    args holding[stor3].field_1024, holding[stor3].field_0
                        holding[0].field_768 -= holding[idx].field_768
                        emit 0x3ecb3e90: holding[0].field_256, holding[0].field_512, holding[0].field_768 - holding[idx].field_768, holding[0].field_1024, holding[0].field_1280, 6, holding[0].field_0
                        mem[mem[64] + 96] = holding[stor3].field_1024
                        mem[mem[64] + 128] = holding[stor3].field_1280
                        emit 0x3ecb3e90: holding[stor3].field_256, holding[stor3].field_512, holding[stor3].field_768, holding[stor3].field_1024, holding[stor3].field_1280, 6, holding[stor3].field_0
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = holding[idx].field_768
                        mem[mem[64] + 64] = arg3 * holding[idx].field_768
                        emit 0xba705ad0: arg1, holding[idx].field_768, arg3 * holding[idx].field_768, 2, holding[idx].field_512, arg2
        s = sha3(idx, 2)
        idx = idx + 1
        continue 
}



}
