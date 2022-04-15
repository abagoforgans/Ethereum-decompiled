contract main {


// =======================  Init code  ======================


mapping of uint8 stor1;

function _fallback() {
    stor1[address(msg.sender)] = 1
    return code.data[71 len 4623]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;

function _fallback() payable {
  stop
}

function sub_ca858b21(?) {
    require bool(stor1[address(msg.sender)]) == 1
    stor0 = arg1
}

function addAdmin(address arg1) {
    require bool(stor1[address(msg.sender)]) == 1
    stor1[address(arg1)] = 1
}

function removeAdmin(address arg1) {
    require bool(stor1[address(msg.sender)]) == 1
    stor1[address(arg1)] = 0
}

function sub_64d0ebbf(?) {
    require bool(stor1[address(msg.sender)]) == 1
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_f1b83630(?) {
    require bool(stor1[address(msg.sender)]) == 1
    require ext_code.size(stor0)
    call stor0.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function tokenTransfer(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
}

function sub_2cf2c0af(?) payable {
    require bool(stor1[address(msg.sender)]) == 1
    require ext_code.size(stor0)
    call stor0.0xd0e30db0 with:
       value arg1 wei
         gas gas_remaining - 9710 wei
    require ext_call.success
}

function sub_4589641b(?) {
    require bool(stor1[address(msg.sender)]) == 1
    require ext_code.size(stor0)
    call stor0.0x9e281a98 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function tokenApprove(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
}

function sub_70d4ed32(?) {
    require bool(stor1[address(msg.sender)]) == 1
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args stor0, arg2
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0x338b5dea with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function sub_0478862b(?) {
    require bool(stor1[address(msg.sender)]) == 1
    require bool(stor1[address(msg.sender)]) == 1
    require ext_code.size(stor0)
    call stor0.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    require bool(stor1[address(msg.sender)]) == 1
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_425898c3(?) {
    require bool(stor1[address(msg.sender)]) == 1
    require bool(stor1[address(msg.sender)]) == 1
    require ext_code.size(stor0)
    call stor0.0x9e281a98 with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg3
    require ext_call.success
}

function sub_61be3a21(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 192] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 224] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 256] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 288] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 320] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 352] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 0
    require 0 < arg1.length
    require 1 < arg1.length
    require 2 < arg1.length
    require 3 < arg1.length
    require 4 < arg1.length
    require 5 < arg1.length
    require 6 < arg1.length
    require 7 < arg1.length
    require 8 < arg1.length
    require 9 < arg1.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 1604] = mem[332 len 20]
    mem[(32 * arg1.length) + (32 * arg2.length) + 1636] = mem[383 len 1]
    require ext_code.size(stor0)
    call stor0.0xfb6e155f with:
         gas gas_remaining - 710 wei
        args mem[140 len 20], mem[160], mem[204 len 20], mem[224], mem[256], mem[288], mem[(32 * arg1.length) + (32 * arg2.length) + 1604 len 64], mem[384], mem[416]
    require ext_call.success
    if mem[140 len 20]:
        if ext_call.return_data[0]:
            require 0 < arg2.length
            require 1 < arg2.length
            require 2 < arg2.length
            require 3 < arg2.length
            require 4 < arg2.length
            require 5 < arg2.length
            require 6 < arg2.length
            require 7 < arg2.length
            require 8 < arg2.length
            require 9 < arg2.length
            mem[(32 * arg1.length) + (32 * arg2.length) + 2436] = mem[(32 * arg1.length) + 364 len 20]
            mem[(32 * arg1.length) + (32 * arg2.length) + 2468] = mem[(32 * arg1.length) + 415 len 1]
            require ext_code.size(stor0)
            call stor0.0xfb6e155f with:
                 gas gas_remaining - 710 wei
                args mem[(32 * arg1.length) + 172 len 20], mem[(32 * arg1.length) + 192], mem[(32 * arg1.length) + 236 len 20], mem[(32 * arg1.length) + 256], mem[(32 * arg1.length) + 288], mem[(32 * arg1.length) + 320], mem[(32 * arg1.length) + (32 * arg2.length) + 2436 len 64], mem[(32 * arg1.length) + 416], mem[(32 * arg1.length) + 448]
            require ext_call.success
            if mem[(32 * arg1.length) + 172 len 20]:
                if ext_call.return_data[0]:
                    require ext_code.size(stor0)
                    call stor0.feeTake() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require mem[224]
                    require -ext_call.return_data[0] + 10^18
                    require mem[160]
                    if ext_call.return_data[0] >= 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18:
                        if 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18:
                            if (10^18 * 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) / mem[160] / 10^18:
                                return 1
                    else:
                        if ext_call.return_data[0]:
                            if (10^18 * ext_call.return_data[0] * mem[224]) - (ext_call.return_data[0] * ext_call.return_data[0] * mem[224]) / mem[160] / 10^18:
                                return 1
            else:
                require mem[(32 * arg1.length) + 192]
                if ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192]:
                    require ext_code.size(stor0)
                    call stor0.feeTake() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require mem[224]
                    require -ext_call.return_data[0] + 10^18
                    require mem[160]
                    if ext_call.return_data[0] >= ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192]:
                        if ext_call.return_data[0] >= 10^18 * ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18:
                            if 10^18 * ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18:
                                if (10^18 * 10^18 * ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) / mem[160] / 10^18:
                                    return 1
                        else:
                            if ext_call.return_data[0]:
                                if (10^18 * ext_call.return_data[0] * mem[224]) - (ext_call.return_data[0] * ext_call.return_data[0] * mem[224]) / mem[160] / 10^18:
                                    return 1
                    else:
                        if ext_call.return_data[0] >= 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18:
                            if 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18:
                                if (10^18 * 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) / mem[160] / 10^18:
                                    return 1
                        else:
                            if ext_call.return_data[0]:
                                if (10^18 * ext_call.return_data[0] * mem[224]) - (ext_call.return_data[0] * ext_call.return_data[0] * mem[224]) / mem[160] / 10^18:
                                    return 1
    else:
        require mem[160]
        if ext_call.return_data[0] * mem[224] / mem[160]:
            require 0 < arg2.length
            require 1 < arg2.length
            require 2 < arg2.length
            require 3 < arg2.length
            require 4 < arg2.length
            require 5 < arg2.length
            require 6 < arg2.length
            require 7 < arg2.length
            require 8 < arg2.length
            require 9 < arg2.length
            mem[(32 * arg1.length) + (32 * arg2.length) + 2436] = mem[(32 * arg1.length) + 364 len 20]
            mem[(32 * arg1.length) + (32 * arg2.length) + 2468] = mem[(32 * arg1.length) + 415 len 1]
            require ext_code.size(stor0)
            call stor0.0xfb6e155f with:
                 gas gas_remaining - 710 wei
                args mem[(32 * arg1.length) + 172 len 20], mem[(32 * arg1.length) + 192], mem[(32 * arg1.length) + 236 len 20], mem[(32 * arg1.length) + 256], mem[(32 * arg1.length) + 288], mem[(32 * arg1.length) + 320], mem[(32 * arg1.length) + (32 * arg2.length) + 2436 len 64], mem[(32 * arg1.length) + 416], mem[(32 * arg1.length) + 448]
            require ext_call.success
            if mem[(32 * arg1.length) + 172 len 20]:
                if ext_call.return_data[0]:
                    require ext_code.size(stor0)
                    call stor0.feeTake() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require mem[224]
                    require -ext_call.return_data[0] + 10^18
                    require mem[160]
                    if ext_call.return_data[0] * mem[224] / mem[160] >= ext_call.return_data[0]:
                        if ext_call.return_data[0] >= 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18:
                            if 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18:
                                if (10^18 * 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) / mem[160] / 10^18:
                                    return 1
                        else:
                            if ext_call.return_data[0]:
                                if (10^18 * ext_call.return_data[0] * mem[224]) - (ext_call.return_data[0] * ext_call.return_data[0] * mem[224]) / mem[160] / 10^18:
                                    return 1
                    else:
                        if ext_call.return_data[0] >= 10^18 * ext_call.return_data[0] * mem[224] / mem[160] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18:
                            if 10^18 * ext_call.return_data[0] * mem[224] / mem[160] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18:
                                if (10^18 * 10^18 * ext_call.return_data[0] * mem[224] / mem[160] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * mem[224] / mem[160] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) / mem[160] / 10^18:
                                    return 1
                        else:
                            if ext_call.return_data[0]:
                                if (10^18 * ext_call.return_data[0] * mem[224]) - (ext_call.return_data[0] * ext_call.return_data[0] * mem[224]) / mem[160] / 10^18:
                                    return 1
            else:
                require mem[(32 * arg1.length) + 192]
                if ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192]:
                    require ext_code.size(stor0)
                    call stor0.feeTake() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require mem[224]
                    require -ext_call.return_data[0] + 10^18
                    require mem[160]
                    if ext_call.return_data[0] * mem[224] / mem[160] >= ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192]:
                        if ext_call.return_data[0] >= 10^18 * ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18:
                            if 10^18 * ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18:
                                if (10^18 * 10^18 * ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) / mem[160] / 10^18:
                                    return 1
                        else:
                            if ext_call.return_data[0]:
                                if (10^18 * ext_call.return_data[0] * mem[224]) - (ext_call.return_data[0] * ext_call.return_data[0] * mem[224]) / mem[160] / 10^18:
                                    return 1
                    else:
                        if ext_call.return_data[0] >= 10^18 * ext_call.return_data[0] * mem[224] / mem[160] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18:
                            if 10^18 * ext_call.return_data[0] * mem[224] / mem[160] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18:
                                if (10^18 * 10^18 * ext_call.return_data[0] * mem[224] / mem[160] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * mem[224] / mem[160] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) / mem[160] / 10^18:
                                    return 1
                        else:
                            if ext_call.return_data[0]:
                                if (10^18 * ext_call.return_data[0] * mem[224]) - (ext_call.return_data[0] * ext_call.return_data[0] * mem[224]) / mem[160] / 10^18:
                                    return 1
    return 0
}

function sub_f1274a9f(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 192] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 224] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 256] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 288] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 320] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 352] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 0
    require 0 < arg1.length
    require 1 < arg1.length
    require 2 < arg1.length
    require 3 < arg1.length
    require 4 < arg1.length
    require 5 < arg1.length
    require 6 < arg1.length
    require 7 < arg1.length
    require 8 < arg1.length
    require 9 < arg1.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 1604] = mem[332 len 20]
    mem[(32 * arg1.length) + (32 * arg2.length) + 1636] = mem[383 len 1]
    require ext_code.size(stor0)
    call stor0.0xfb6e155f with:
         gas gas_remaining - 710 wei
        args mem[140 len 20], mem[160], mem[204 len 20], mem[224], mem[256], mem[288], mem[(32 * arg1.length) + (32 * arg2.length) + 1604 len 64], mem[384], mem[416]
    require ext_call.success
    if mem[140 len 20]:
        if not ext_call.return_data[0]:
            return 0
        if 0 < arg2.length:
            if 1 < arg2.length:
                if 2 < arg2.length:
                    if 3 < arg2.length:
                        if 4 < arg2.length:
                            if 5 < arg2.length:
                                if 6 < arg2.length:
                                    if 7 < arg2.length:
                                        if 8 < arg2.length:
                                            if 9 < arg2.length:
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 2436] = mem[(32 * arg1.length) + 364 len 20]
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 2468] = mem[(32 * arg1.length) + 415 len 1]
                                                require ext_code.size(stor0)
                                                call stor0.0xfb6e155f with:
                                                     gas gas_remaining - 710 wei
                                                    args mem[(32 * arg1.length) + 172 len 20], mem[(32 * arg1.length) + 192], mem[(32 * arg1.length) + 236 len 20], mem[(32 * arg1.length) + 256], mem[(32 * arg1.length) + 288], mem[(32 * arg1.length) + 320], mem[(32 * arg1.length) + (32 * arg2.length) + 2436 len 64], mem[(32 * arg1.length) + 416], mem[(32 * arg1.length) + 448]
                                                require ext_call.success
                                                if mem[(32 * arg1.length) + 172 len 20]:
                                                    if not ext_call.return_data[0]:
                                                        return 0
                                                    require ext_code.size(stor0)
                                                    call stor0.feeTake() with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if mem[224]:
                                                        if -ext_call.return_data[0] + 10^18:
                                                            if ext_call.return_data[0] >= 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18:
                                                                if mem[160]:
                                                                    return 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18, 
                                                                           (10^18 * 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) / mem[160] / 10^18
                                                            else:
                                                                if mem[160]:
                                                                    return ext_call.return_data[0], 
                                                                           (10^18 * ext_call.return_data[0] * mem[224]) - (ext_call.return_data[0] * ext_call.return_data[0] * mem[224]) / mem[160] / 10^18
                                                            ('iszero', ('mem', ('range', 160, 32)))
                                                else:
                                                    if mem[(32 * arg1.length) + 192]:
                                                        if not ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192]:
                                                            return 0
                                                        require ext_code.size(stor0)
                                                        call stor0.feeTake() with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        if ext_call.return_data[0] >= ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192]:
                                                            if mem[224]:
                                                                if -ext_call.return_data[0] + 10^18:
                                                                    if ext_call.return_data[0] >= 10^18 * ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18:
                                                                        if mem[160]:
                                                                            return 10^18 * ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18, 
                                                                                   (10^18 * 10^18 * ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) / mem[160] / 10^18
                                                                    else:
                                                                        if mem[160]:
                                                                            return ext_call.return_data[0], 
                                                                                   (10^18 * ext_call.return_data[0] * mem[224]) - (ext_call.return_data[0] * ext_call.return_data[0] * mem[224]) / mem[160] / 10^18
                                                                    ('iszero', ('mem', ('range', 160, 32)))
                                                        else:
                                                            if mem[224]:
                                                                if -ext_call.return_data[0] + 10^18:
                                                                    if ext_call.return_data[0] >= 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18:
                                                                        if mem[160]:
                                                                            return 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18, 
                                                                                   (10^18 * 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) / mem[160] / 10^18
                                                                    else:
                                                                        if mem[160]:
                                                                            return ext_call.return_data[0], 
                                                                                   (10^18 * ext_call.return_data[0] * mem[224]) - (ext_call.return_data[0] * ext_call.return_data[0] * mem[224]) / mem[160] / 10^18
                                                                    ('iszero', ('mem', ('range', 160, 32)))
    else:
        if mem[160]:
            if not ext_call.return_data[0] * mem[224] / mem[160]:
                return 0
            if 0 < arg2.length:
                if 1 < arg2.length:
                    if 2 < arg2.length:
                        if 3 < arg2.length:
                            if 4 < arg2.length:
                                if 5 < arg2.length:
                                    if 6 < arg2.length:
                                        if 7 < arg2.length:
                                            if 8 < arg2.length:
                                                if 9 < arg2.length:
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2436] = mem[(32 * arg1.length) + 364 len 20]
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2468] = mem[(32 * arg1.length) + 415 len 1]
                                                    require ext_code.size(stor0)
                                                    call stor0.0xfb6e155f with:
                                                         gas gas_remaining - 710 wei
                                                        args mem[(32 * arg1.length) + 172 len 20], mem[(32 * arg1.length) + 192], mem[(32 * arg1.length) + 236 len 20], mem[(32 * arg1.length) + 256], mem[(32 * arg1.length) + 288], mem[(32 * arg1.length) + 320], mem[(32 * arg1.length) + (32 * arg2.length) + 2436 len 64], mem[(32 * arg1.length) + 416], mem[(32 * arg1.length) + 448]
                                                    require ext_call.success
                                                    if mem[(32 * arg1.length) + 172 len 20]:
                                                        if not ext_call.return_data[0]:
                                                            return 0
                                                        require ext_code.size(stor0)
                                                        call stor0.feeTake() with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        if ext_call.return_data[0] * mem[224] / mem[160] >= ext_call.return_data[0]:
                                                            if mem[224]:
                                                                if -ext_call.return_data[0] + 10^18:
                                                                    if ext_call.return_data[0] >= 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18:
                                                                        if mem[160]:
                                                                            return 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18, 
                                                                                   (10^18 * 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) / mem[160] / 10^18
                                                                    else:
                                                                        if mem[160]:
                                                                            return ext_call.return_data[0], 
                                                                                   (10^18 * ext_call.return_data[0] * mem[224]) - (ext_call.return_data[0] * ext_call.return_data[0] * mem[224]) / mem[160] / 10^18
                                                                    ('iszero', ('mem', ('range', 160, 32)))
                                                        else:
                                                            if mem[224]:
                                                                if -ext_call.return_data[0] + 10^18:
                                                                    if ext_call.return_data[0] >= 10^18 * ext_call.return_data[0] * mem[224] / mem[160] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18:
                                                                        if mem[160]:
                                                                            return 10^18 * ext_call.return_data[0] * mem[224] / mem[160] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18, 
                                                                                   (10^18 * 10^18 * ext_call.return_data[0] * mem[224] / mem[160] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * mem[224] / mem[160] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) / mem[160] / 10^18
                                                                    else:
                                                                        if mem[160]:
                                                                            return ext_call.return_data[0], 
                                                                                   (10^18 * ext_call.return_data[0] * mem[224]) - (ext_call.return_data[0] * ext_call.return_data[0] * mem[224]) / mem[160] / 10^18
                                                                    ('iszero', ('mem', ('range', 160, 32)))
                                                    else:
                                                        if mem[(32 * arg1.length) + 192]:
                                                            if not ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192]:
                                                                return 0
                                                            require ext_code.size(stor0)
                                                            call stor0.feeTake() with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            if ext_call.return_data[0] * mem[224] / mem[160] >= ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192]:
                                                                if mem[224]:
                                                                    if -ext_call.return_data[0] + 10^18:
                                                                        if ext_call.return_data[0] >= 10^18 * ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18:
                                                                            if mem[160]:
                                                                                return 10^18 * ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18, 
                                                                                       (10^18 * 10^18 * ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) / mem[160] / 10^18
                                                                        else:
                                                                            if mem[160]:
                                                                                return ext_call.return_data[0], 
                                                                                       (10^18 * ext_call.return_data[0] * mem[224]) - (ext_call.return_data[0] * ext_call.return_data[0] * mem[224]) / mem[160] / 10^18
                                                                        ('iszero', ('mem', ('range', 160, 32)))
                                                            else:
                                                                if mem[224]:
                                                                    if -ext_call.return_data[0] + 10^18:
                                                                        if ext_call.return_data[0] >= 10^18 * ext_call.return_data[0] * mem[224] / mem[160] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18:
                                                                            if mem[160]:
                                                                                return 10^18 * ext_call.return_data[0] * mem[224] / mem[160] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18, 
                                                                                       (10^18 * 10^18 * ext_call.return_data[0] * mem[224] / mem[160] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * mem[224] / mem[160] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) / mem[160] / 10^18
                                                                        else:
                                                                            if mem[160]:
                                                                                return ext_call.return_data[0], 
                                                                                       (10^18 * ext_call.return_data[0] * mem[224]) - (ext_call.return_data[0] * ext_call.return_data[0] * mem[224]) / mem[160] / 10^18
                                                                        ('iszero', ('mem', ('range', 160, 32)))
    revert
}

function sub_dac6ad06(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 192] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 224] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 256] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 288] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 320] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 352] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 0
    require 0 < arg1.length
    require 1 < arg1.length
    require 2 < arg1.length
    require 3 < arg1.length
    require 4 < arg1.length
    require 5 < arg1.length
    require 6 < arg1.length
    require 7 < arg1.length
    require 8 < arg1.length
    require 9 < arg1.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 1604] = mem[332 len 20]
    mem[(32 * arg1.length) + (32 * arg2.length) + 1636] = mem[383 len 1]
    require ext_code.size(stor0)
    call stor0.0xfb6e155f with:
         gas gas_remaining - 710 wei
        args mem[140 len 20], mem[160], mem[204 len 20], mem[224], mem[256], mem[288], mem[(32 * arg1.length) + (32 * arg2.length) + 1604 len 64], mem[384], mem[416]
    require ext_call.success
    if mem[140 len 20]:
        if 0 < arg2.length:
            if 1 < arg2.length:
                if 2 < arg2.length:
                    if 3 < arg2.length:
                        if 4 < arg2.length:
                            if 5 < arg2.length:
                                if 6 < arg2.length:
                                    if 7 < arg2.length:
                                        if 8 < arg2.length:
                                            if 9 < arg2.length:
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 2436] = mem[(32 * arg1.length) + 364 len 20]
                                                mem[(32 * arg1.length) + (32 * arg2.length) + 2468] = mem[(32 * arg1.length) + 415 len 1]
                                                require ext_code.size(stor0)
                                                call stor0.0xfb6e155f with:
                                                     gas gas_remaining - 710 wei
                                                    args mem[(32 * arg1.length) + 172 len 20], mem[(32 * arg1.length) + 192], mem[(32 * arg1.length) + 236 len 20], mem[(32 * arg1.length) + 256], mem[(32 * arg1.length) + 288], mem[(32 * arg1.length) + 320], mem[(32 * arg1.length) + (32 * arg2.length) + 2436 len 64], mem[(32 * arg1.length) + 416], mem[(32 * arg1.length) + 448]
                                                require ext_call.success
                                                if mem[(32 * arg1.length) + 172 len 20]:
                                                    require ext_code.size(stor0)
                                                    call stor0.feeTake() with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if mem[224]:
                                                        if -ext_call.return_data[0] + 10^18:
                                                            if ext_call.return_data[0] >= 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18:
                                                                if mem[160]:
                                                                    require ext_code.size(stor0)
                                                                    call stor0.feeTake() with:
                                                                         gas gas_remaining - 710 wei
                                                                    require ext_call.success
                                                                    if mem[(32 * arg1.length) + 192]:
                                                                        return ext_call.return_data[0], 
                                                                               ext_call.return_data[0],
                                                                               ((10^18 * (10^18 * 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) / mem[160] / 10^18 * mem[(32 * arg1.length) + 256]) - (ext_call.return_data[0] * (10^18 * 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) / mem[160] / 10^18 * mem[(32 * arg1.length) + 256]) / mem[(32 * arg1.length) + 192] / 10^18) - (10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18)
                                                            else:
                                                                if mem[160]:
                                                                    require ext_code.size(stor0)
                                                                    call stor0.feeTake() with:
                                                                         gas gas_remaining - 710 wei
                                                                    require ext_call.success
                                                                    if mem[(32 * arg1.length) + 192]:
                                                                        return ext_call.return_data[0], 
                                                                               ext_call.return_data[0],
                                                                               ((10^18 * (10^18 * ext_call.return_data[0] * mem[224]) - (ext_call.return_data[0] * ext_call.return_data[0] * mem[224]) / mem[160] / 10^18 * mem[(32 * arg1.length) + 256]) - (ext_call.return_data[0] * (10^18 * ext_call.return_data[0] * mem[224]) - (ext_call.return_data[0] * ext_call.return_data[0] * mem[224]) / mem[160] / 10^18 * mem[(32 * arg1.length) + 256]) / mem[(32 * arg1.length) + 192] / 10^18) - ext_call.return_data[0]
                                                else:
                                                    if mem[(32 * arg1.length) + 192]:
                                                        require ext_code.size(stor0)
                                                        call stor0.feeTake() with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        if ext_call.return_data[0] >= ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192]:
                                                            if mem[224]:
                                                                if -ext_call.return_data[0] + 10^18:
                                                                    if ext_call.return_data[0] >= 10^18 * ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18:
                                                                        if mem[160]:
                                                                            require ext_code.size(stor0)
                                                                            call stor0.feeTake() with:
                                                                                 gas gas_remaining - 710 wei
                                                                            require ext_call.success
                                                                            if mem[(32 * arg1.length) + 192]:
                                                                                return ext_call.return_data[0], 
                                                                                       ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192],
                                                                                       ((10^18 * (10^18 * 10^18 * ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) / mem[160] / 10^18 * mem[(32 * arg1.length) + 256]) - (ext_call.return_data[0] * (10^18 * 10^18 * ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) / mem[160] / 10^18 * mem[(32 * arg1.length) + 256]) / mem[(32 * arg1.length) + 192] / 10^18) - (10^18 * ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18)
                                                                    else:
                                                                        if mem[160]:
                                                                            require ext_code.size(stor0)
                                                                            call stor0.feeTake() with:
                                                                                 gas gas_remaining - 710 wei
                                                                            require ext_call.success
                                                                            if mem[(32 * arg1.length) + 192]:
                                                                                return ext_call.return_data[0], 
                                                                                       ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192],
                                                                                       ((10^18 * (10^18 * ext_call.return_data[0] * mem[224]) - (ext_call.return_data[0] * ext_call.return_data[0] * mem[224]) / mem[160] / 10^18 * mem[(32 * arg1.length) + 256]) - (ext_call.return_data[0] * (10^18 * ext_call.return_data[0] * mem[224]) - (ext_call.return_data[0] * ext_call.return_data[0] * mem[224]) / mem[160] / 10^18 * mem[(32 * arg1.length) + 256]) / mem[(32 * arg1.length) + 192] / 10^18) - ext_call.return_data[0]
                                                        else:
                                                            if mem[224]:
                                                                if -ext_call.return_data[0] + 10^18:
                                                                    if ext_call.return_data[0] >= 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18:
                                                                        if mem[160]:
                                                                            require ext_code.size(stor0)
                                                                            call stor0.feeTake() with:
                                                                                 gas gas_remaining - 710 wei
                                                                            require ext_call.success
                                                                            if mem[(32 * arg1.length) + 192]:
                                                                                return ext_call.return_data[0], 
                                                                                       ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192],
                                                                                       ((10^18 * (10^18 * 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) / mem[160] / 10^18 * mem[(32 * arg1.length) + 256]) - (ext_call.return_data[0] * (10^18 * 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) / mem[160] / 10^18 * mem[(32 * arg1.length) + 256]) / mem[(32 * arg1.length) + 192] / 10^18) - (10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18)
                                                                    else:
                                                                        if mem[160]:
                                                                            require ext_code.size(stor0)
                                                                            call stor0.feeTake() with:
                                                                                 gas gas_remaining - 710 wei
                                                                            require ext_call.success
                                                                            if mem[(32 * arg1.length) + 192]:
                                                                                return ext_call.return_data[0], 
                                                                                       ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192],
                                                                                       ((10^18 * (10^18 * ext_call.return_data[0] * mem[224]) - (ext_call.return_data[0] * ext_call.return_data[0] * mem[224]) / mem[160] / 10^18 * mem[(32 * arg1.length) + 256]) - (ext_call.return_data[0] * (10^18 * ext_call.return_data[0] * mem[224]) - (ext_call.return_data[0] * ext_call.return_data[0] * mem[224]) / mem[160] / 10^18 * mem[(32 * arg1.length) + 256]) / mem[(32 * arg1.length) + 192] / 10^18) - ext_call.return_data[0]
    else:
        if mem[160]:
            if 0 < arg2.length:
                if 1 < arg2.length:
                    if 2 < arg2.length:
                        if 3 < arg2.length:
                            if 4 < arg2.length:
                                if 5 < arg2.length:
                                    if 6 < arg2.length:
                                        if 7 < arg2.length:
                                            if 8 < arg2.length:
                                                if 9 < arg2.length:
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2436] = mem[(32 * arg1.length) + 364 len 20]
                                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2468] = mem[(32 * arg1.length) + 415 len 1]
                                                    require ext_code.size(stor0)
                                                    call stor0.0xfb6e155f with:
                                                         gas gas_remaining - 710 wei
                                                        args mem[(32 * arg1.length) + 172 len 20], mem[(32 * arg1.length) + 192], mem[(32 * arg1.length) + 236 len 20], mem[(32 * arg1.length) + 256], mem[(32 * arg1.length) + 288], mem[(32 * arg1.length) + 320], mem[(32 * arg1.length) + (32 * arg2.length) + 2436 len 64], mem[(32 * arg1.length) + 416], mem[(32 * arg1.length) + 448]
                                                    require ext_call.success
                                                    if mem[(32 * arg1.length) + 172 len 20]:
                                                        require ext_code.size(stor0)
                                                        call stor0.feeTake() with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        if ext_call.return_data[0] * mem[224] / mem[160] >= ext_call.return_data[0]:
                                                            if mem[224]:
                                                                if -ext_call.return_data[0] + 10^18:
                                                                    if ext_call.return_data[0] >= 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18:
                                                                        if mem[160]:
                                                                            require ext_code.size(stor0)
                                                                            call stor0.feeTake() with:
                                                                                 gas gas_remaining - 710 wei
                                                                            require ext_call.success
                                                                            if mem[(32 * arg1.length) + 192]:
                                                                                return ext_call.return_data[0] * mem[224] / mem[160], 
                                                                                       ext_call.return_data[0],
                                                                                       ((10^18 * (10^18 * 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) / mem[160] / 10^18 * mem[(32 * arg1.length) + 256]) - (ext_call.return_data[0] * (10^18 * 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) / mem[160] / 10^18 * mem[(32 * arg1.length) + 256]) / mem[(32 * arg1.length) + 192] / 10^18) - (10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18)
                                                                    else:
                                                                        if mem[160]:
                                                                            require ext_code.size(stor0)
                                                                            call stor0.feeTake() with:
                                                                                 gas gas_remaining - 710 wei
                                                                            require ext_call.success
                                                                            if mem[(32 * arg1.length) + 192]:
                                                                                return ext_call.return_data[0] * mem[224] / mem[160], 
                                                                                       ext_call.return_data[0],
                                                                                       ((10^18 * (10^18 * ext_call.return_data[0] * mem[224]) - (ext_call.return_data[0] * ext_call.return_data[0] * mem[224]) / mem[160] / 10^18 * mem[(32 * arg1.length) + 256]) - (ext_call.return_data[0] * (10^18 * ext_call.return_data[0] * mem[224]) - (ext_call.return_data[0] * ext_call.return_data[0] * mem[224]) / mem[160] / 10^18 * mem[(32 * arg1.length) + 256]) / mem[(32 * arg1.length) + 192] / 10^18) - ext_call.return_data[0]
                                                        else:
                                                            if mem[224]:
                                                                if -ext_call.return_data[0] + 10^18:
                                                                    if ext_call.return_data[0] >= 10^18 * ext_call.return_data[0] * mem[224] / mem[160] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18:
                                                                        if mem[160]:
                                                                            require ext_code.size(stor0)
                                                                            call stor0.feeTake() with:
                                                                                 gas gas_remaining - 710 wei
                                                                            require ext_call.success
                                                                            if mem[(32 * arg1.length) + 192]:
                                                                                return ext_call.return_data[0] * mem[224] / mem[160], 
                                                                                       ext_call.return_data[0],
                                                                                       ((10^18 * (10^18 * 10^18 * ext_call.return_data[0] * mem[224] / mem[160] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * mem[224] / mem[160] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) / mem[160] / 10^18 * mem[(32 * arg1.length) + 256]) - (ext_call.return_data[0] * (10^18 * 10^18 * ext_call.return_data[0] * mem[224] / mem[160] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * mem[224] / mem[160] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) / mem[160] / 10^18 * mem[(32 * arg1.length) + 256]) / mem[(32 * arg1.length) + 192] / 10^18) - (10^18 * ext_call.return_data[0] * mem[224] / mem[160] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18)
                                                                    else:
                                                                        if mem[160]:
                                                                            require ext_code.size(stor0)
                                                                            call stor0.feeTake() with:
                                                                                 gas gas_remaining - 710 wei
                                                                            require ext_call.success
                                                                            if mem[(32 * arg1.length) + 192]:
                                                                                return ext_call.return_data[0] * mem[224] / mem[160], 
                                                                                       ext_call.return_data[0],
                                                                                       ((10^18 * (10^18 * ext_call.return_data[0] * mem[224]) - (ext_call.return_data[0] * ext_call.return_data[0] * mem[224]) / mem[160] / 10^18 * mem[(32 * arg1.length) + 256]) - (ext_call.return_data[0] * (10^18 * ext_call.return_data[0] * mem[224]) - (ext_call.return_data[0] * ext_call.return_data[0] * mem[224]) / mem[160] / 10^18 * mem[(32 * arg1.length) + 256]) / mem[(32 * arg1.length) + 192] / 10^18) - ext_call.return_data[0]
                                                    else:
                                                        if mem[(32 * arg1.length) + 192]:
                                                            require ext_code.size(stor0)
                                                            call stor0.feeTake() with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            if ext_call.return_data[0] * mem[224] / mem[160] >= ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192]:
                                                                if mem[224]:
                                                                    if -ext_call.return_data[0] + 10^18:
                                                                        if ext_call.return_data[0] >= 10^18 * ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18:
                                                                            if mem[160]:
                                                                                require ext_code.size(stor0)
                                                                                call stor0.feeTake() with:
                                                                                     gas gas_remaining - 710 wei
                                                                                require ext_call.success
                                                                                if mem[(32 * arg1.length) + 192]:
                                                                                    return ext_call.return_data[0] * mem[224] / mem[160], 
                                                                                           ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192],
                                                                                           ((10^18 * (10^18 * 10^18 * ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) / mem[160] / 10^18 * mem[(32 * arg1.length) + 256]) - (ext_call.return_data[0] * (10^18 * 10^18 * ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) / mem[160] / 10^18 * mem[(32 * arg1.length) + 256]) / mem[(32 * arg1.length) + 192] / 10^18) - (10^18 * ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18)
                                                                        else:
                                                                            if mem[160]:
                                                                                require ext_code.size(stor0)
                                                                                call stor0.feeTake() with:
                                                                                     gas gas_remaining - 710 wei
                                                                                require ext_call.success
                                                                                if mem[(32 * arg1.length) + 192]:
                                                                                    return ext_call.return_data[0] * mem[224] / mem[160], 
                                                                                           ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192],
                                                                                           ((10^18 * (10^18 * ext_call.return_data[0] * mem[224]) - (ext_call.return_data[0] * ext_call.return_data[0] * mem[224]) / mem[160] / 10^18 * mem[(32 * arg1.length) + 256]) - (ext_call.return_data[0] * (10^18 * ext_call.return_data[0] * mem[224]) - (ext_call.return_data[0] * ext_call.return_data[0] * mem[224]) / mem[160] / 10^18 * mem[(32 * arg1.length) + 256]) / mem[(32 * arg1.length) + 192] / 10^18) - ext_call.return_data[0]
                                                            else:
                                                                if mem[224]:
                                                                    if -ext_call.return_data[0] + 10^18:
                                                                        if ext_call.return_data[0] >= 10^18 * ext_call.return_data[0] * mem[224] / mem[160] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18:
                                                                            if mem[160]:
                                                                                require ext_code.size(stor0)
                                                                                call stor0.feeTake() with:
                                                                                     gas gas_remaining - 710 wei
                                                                                require ext_call.success
                                                                                if mem[(32 * arg1.length) + 192]:
                                                                                    return ext_call.return_data[0] * mem[224] / mem[160], 
                                                                                           ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192],
                                                                                           ((10^18 * (10^18 * 10^18 * ext_call.return_data[0] * mem[224] / mem[160] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * mem[224] / mem[160] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) / mem[160] / 10^18 * mem[(32 * arg1.length) + 256]) - (ext_call.return_data[0] * (10^18 * 10^18 * ext_call.return_data[0] * mem[224] / mem[160] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * mem[224] / mem[160] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) / mem[160] / 10^18 * mem[(32 * arg1.length) + 256]) / mem[(32 * arg1.length) + 192] / 10^18) - (10^18 * ext_call.return_data[0] * mem[224] / mem[160] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18)
                                                                        else:
                                                                            if mem[160]:
                                                                                require ext_code.size(stor0)
                                                                                call stor0.feeTake() with:
                                                                                     gas gas_remaining - 710 wei
                                                                                require ext_call.success
                                                                                if mem[(32 * arg1.length) + 192]:
                                                                                    return ext_call.return_data[0] * mem[224] / mem[160], 
                                                                                           ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192],
                                                                                           ((10^18 * (10^18 * ext_call.return_data[0] * mem[224]) - (ext_call.return_data[0] * ext_call.return_data[0] * mem[224]) / mem[160] / 10^18 * mem[(32 * arg1.length) + 256]) - (ext_call.return_data[0] * (10^18 * ext_call.return_data[0] * mem[224]) - (ext_call.return_data[0] * ext_call.return_data[0] * mem[224]) / mem[160] / 10^18 * mem[(32 * arg1.length) + 256]) / mem[(32 * arg1.length) + 192] / 10^18) - ext_call.return_data[0]
    revert
}

function sub_983ed490(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 192] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 224] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 256] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 288] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 320] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 352] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 384] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 416] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + 448] = 0
    require bool(stor1[address(msg.sender)]) == 1
    require 0 < arg1.length
    require 1 < arg1.length
    require 2 < arg1.length
    require 3 < arg1.length
    require 4 < arg1.length
    require 5 < arg1.length
    require 6 < arg1.length
    require 7 < arg1.length
    require 8 < arg1.length
    require 9 < arg1.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 1604] = mem[332 len 20]
    mem[(32 * arg1.length) + (32 * arg2.length) + 1636] = mem[383 len 1]
    require ext_code.size(stor0)
    call stor0.0xfb6e155f with:
         gas gas_remaining - 710 wei
        args mem[140 len 20], mem[160], mem[204 len 20], mem[224], mem[256], mem[288], mem[(32 * arg1.length) + (32 * arg2.length) + 1604 len 64], mem[384], mem[416]
    require ext_call.success
    if mem[140 len 20]:
        if ext_call.return_data[0]:
            require 0 < arg2.length
            require 1 < arg2.length
            require 2 < arg2.length
            require 3 < arg2.length
            require 4 < arg2.length
            require 5 < arg2.length
            require 6 < arg2.length
            require 7 < arg2.length
            require 8 < arg2.length
            require 9 < arg2.length
            mem[(32 * arg1.length) + (32 * arg2.length) + 2436] = mem[(32 * arg1.length) + 364 len 20]
            mem[(32 * arg1.length) + (32 * arg2.length) + 2468] = mem[(32 * arg1.length) + 415 len 1]
            require ext_code.size(stor0)
            call stor0.0xfb6e155f with:
                 gas gas_remaining - 710 wei
                args mem[(32 * arg1.length) + 172 len 20], mem[(32 * arg1.length) + 192], mem[(32 * arg1.length) + 236 len 20], mem[(32 * arg1.length) + 256], mem[(32 * arg1.length) + 288], mem[(32 * arg1.length) + 320], mem[(32 * arg1.length) + (32 * arg2.length) + 2436 len 64], mem[(32 * arg1.length) + 416], mem[(32 * arg1.length) + 448]
            require ext_call.success
            if mem[(32 * arg1.length) + 172 len 20]:
                if ext_call.return_data[0]:
                    require ext_code.size(stor0)
                    call stor0.feeTake() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require mem[224]
                    require -ext_call.return_data[0] + 10^18
                    require mem[160]
                    if ext_call.return_data[0] >= 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18:
                        if 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18:
                            if (10^18 * 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) / mem[160] / 10^18:
                                mem[(32 * arg1.length) + (32 * arg2.length) + 2852] = mem[332 len 20]
                                mem[(32 * arg1.length) + (32 * arg2.length) + 2884] = mem[383 len 1]
                                require ext_code.size(stor0)
                                call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                                     gas gas_remaining - 710 wei
                                    args mem[140 len 20], mem[160], mem[204 len 20], mem[224], mem[256], mem[288], mem[(32 * arg1.length) + (32 * arg2.length) + 2852 len 64], mem[384], mem[416], 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18
                                require ext_call.success
                                mem[(32 * arg1.length) + (32 * arg2.length) + 2852] = mem[(32 * arg1.length) + 364 len 20]
                                mem[(32 * arg1.length) + (32 * arg2.length) + 2884] = mem[(32 * arg1.length) + 415 len 1]
                                require ext_code.size(stor0)
                                call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                                     gas gas_remaining - 710 wei
                                    args mem[(32 * arg1.length) + 172 len 20], mem[(32 * arg1.length) + 192], mem[(32 * arg1.length) + 236 len 20], mem[(32 * arg1.length) + 256], mem[(32 * arg1.length) + 288], mem[(32 * arg1.length) + 320], mem[(32 * arg1.length) + (32 * arg2.length) + 2852 len 64], mem[(32 * arg1.length) + 416], mem[(32 * arg1.length) + 448], (10^18 * 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) / mem[160] / 10^18
                                require ext_call.success
                    else:
                        if ext_call.return_data[0]:
                            if (10^18 * ext_call.return_data[0] * mem[224]) - (ext_call.return_data[0] * ext_call.return_data[0] * mem[224]) / mem[160] / 10^18:
                                mem[(32 * arg1.length) + (32 * arg2.length) + 2852] = mem[332 len 20]
                                mem[(32 * arg1.length) + (32 * arg2.length) + 2884] = mem[383 len 1]
                                require ext_code.size(stor0)
                                call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                                     gas gas_remaining - 710 wei
                                    args mem[140 len 20], mem[160], mem[204 len 20], mem[224], mem[256], mem[288], mem[(32 * arg1.length) + (32 * arg2.length) + 2852 len 64], mem[384], mem[416], ext_call.return_data[0]
                                require ext_call.success
                                mem[(32 * arg1.length) + (32 * arg2.length) + 2852] = mem[(32 * arg1.length) + 364 len 20]
                                mem[(32 * arg1.length) + (32 * arg2.length) + 2884] = mem[(32 * arg1.length) + 415 len 1]
                                require ext_code.size(stor0)
                                call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                                     gas gas_remaining - 710 wei
                                    args mem[(32 * arg1.length) + 172 len 20], mem[(32 * arg1.length) + 192], mem[(32 * arg1.length) + 236 len 20], mem[(32 * arg1.length) + 256], mem[(32 * arg1.length) + 288], mem[(32 * arg1.length) + 320], mem[(32 * arg1.length) + (32 * arg2.length) + 2852 len 64], mem[(32 * arg1.length) + 416], mem[(32 * arg1.length) + 448], (10^18 * ext_call.return_data[0] * mem[224]) - (ext_call.return_data[0] * ext_call.return_data[0] * mem[224]) / mem[160] / 10^18
                                require ext_call.success
            else:
                require mem[(32 * arg1.length) + 192]
                if ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192]:
                    require ext_code.size(stor0)
                    call stor0.feeTake() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require mem[224]
                    require -ext_call.return_data[0] + 10^18
                    require mem[160]
                    if ext_call.return_data[0] >= ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192]:
                        if ext_call.return_data[0] >= 10^18 * ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18:
                            if 10^18 * ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18:
                                if (10^18 * 10^18 * ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) / mem[160] / 10^18:
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2852] = mem[332 len 20]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2884] = mem[383 len 1]
                                    require ext_code.size(stor0)
                                    call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                                         gas gas_remaining - 710 wei
                                        args mem[140 len 20], mem[160], mem[204 len 20], mem[224], mem[256], mem[288], mem[(32 * arg1.length) + (32 * arg2.length) + 2852 len 64], mem[384], mem[416], 10^18 * ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18
                                    require ext_call.success
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2852] = mem[(32 * arg1.length) + 364 len 20]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2884] = mem[(32 * arg1.length) + 415 len 1]
                                    require ext_code.size(stor0)
                                    call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                                         gas gas_remaining - 710 wei
                                        args mem[(32 * arg1.length) + 172 len 20], mem[(32 * arg1.length) + 192], mem[(32 * arg1.length) + 236 len 20], mem[(32 * arg1.length) + 256], mem[(32 * arg1.length) + 288], mem[(32 * arg1.length) + 320], mem[(32 * arg1.length) + (32 * arg2.length) + 2852 len 64], mem[(32 * arg1.length) + 416], mem[(32 * arg1.length) + 448], (10^18 * 10^18 * ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) / mem[160] / 10^18
                                    require ext_call.success
                        else:
                            if ext_call.return_data[0]:
                                if (10^18 * ext_call.return_data[0] * mem[224]) - (ext_call.return_data[0] * ext_call.return_data[0] * mem[224]) / mem[160] / 10^18:
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2852] = mem[332 len 20]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2884] = mem[383 len 1]
                                    require ext_code.size(stor0)
                                    call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                                         gas gas_remaining - 710 wei
                                        args mem[140 len 20], mem[160], mem[204 len 20], mem[224], mem[256], mem[288], mem[(32 * arg1.length) + (32 * arg2.length) + 2852 len 64], mem[384], mem[416], ext_call.return_data[0]
                                    require ext_call.success
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2852] = mem[(32 * arg1.length) + 364 len 20]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2884] = mem[(32 * arg1.length) + 415 len 1]
                                    require ext_code.size(stor0)
                                    call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                                         gas gas_remaining - 710 wei
                                        args mem[(32 * arg1.length) + 172 len 20], mem[(32 * arg1.length) + 192], mem[(32 * arg1.length) + 236 len 20], mem[(32 * arg1.length) + 256], mem[(32 * arg1.length) + 288], mem[(32 * arg1.length) + 320], mem[(32 * arg1.length) + (32 * arg2.length) + 2852 len 64], mem[(32 * arg1.length) + 416], mem[(32 * arg1.length) + 448], (10^18 * ext_call.return_data[0] * mem[224]) - (ext_call.return_data[0] * ext_call.return_data[0] * mem[224]) / mem[160] / 10^18
                                    require ext_call.success
                    else:
                        if ext_call.return_data[0] >= 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18:
                            if 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18:
                                if (10^18 * 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) / mem[160] / 10^18:
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2852] = mem[332 len 20]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2884] = mem[383 len 1]
                                    require ext_code.size(stor0)
                                    call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                                         gas gas_remaining - 710 wei
                                        args mem[140 len 20], mem[160], mem[204 len 20], mem[224], mem[256], mem[288], mem[(32 * arg1.length) + (32 * arg2.length) + 2852 len 64], mem[384], mem[416], 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18
                                    require ext_call.success
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2852] = mem[(32 * arg1.length) + 364 len 20]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2884] = mem[(32 * arg1.length) + 415 len 1]
                                    require ext_code.size(stor0)
                                    call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                                         gas gas_remaining - 710 wei
                                        args mem[(32 * arg1.length) + 172 len 20], mem[(32 * arg1.length) + 192], mem[(32 * arg1.length) + 236 len 20], mem[(32 * arg1.length) + 256], mem[(32 * arg1.length) + 288], mem[(32 * arg1.length) + 320], mem[(32 * arg1.length) + (32 * arg2.length) + 2852 len 64], mem[(32 * arg1.length) + 416], mem[(32 * arg1.length) + 448], (10^18 * 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) / mem[160] / 10^18
                                    require ext_call.success
                        else:
                            if ext_call.return_data[0]:
                                if (10^18 * ext_call.return_data[0] * mem[224]) - (ext_call.return_data[0] * ext_call.return_data[0] * mem[224]) / mem[160] / 10^18:
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2852] = mem[332 len 20]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2884] = mem[383 len 1]
                                    require ext_code.size(stor0)
                                    call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                                         gas gas_remaining - 710 wei
                                        args mem[140 len 20], mem[160], mem[204 len 20], mem[224], mem[256], mem[288], mem[(32 * arg1.length) + (32 * arg2.length) + 2852 len 64], mem[384], mem[416], ext_call.return_data[0]
                                    require ext_call.success
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2852] = mem[(32 * arg1.length) + 364 len 20]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2884] = mem[(32 * arg1.length) + 415 len 1]
                                    require ext_code.size(stor0)
                                    call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                                         gas gas_remaining - 710 wei
                                        args mem[(32 * arg1.length) + 172 len 20], mem[(32 * arg1.length) + 192], mem[(32 * arg1.length) + 236 len 20], mem[(32 * arg1.length) + 256], mem[(32 * arg1.length) + 288], mem[(32 * arg1.length) + 320], mem[(32 * arg1.length) + (32 * arg2.length) + 2852 len 64], mem[(32 * arg1.length) + 416], mem[(32 * arg1.length) + 448], (10^18 * ext_call.return_data[0] * mem[224]) - (ext_call.return_data[0] * ext_call.return_data[0] * mem[224]) / mem[160] / 10^18
                                    require ext_call.success
    else:
        require mem[160]
        if ext_call.return_data[0] * mem[224] / mem[160]:
            require 0 < arg2.length
            require 1 < arg2.length
            require 2 < arg2.length
            require 3 < arg2.length
            require 4 < arg2.length
            require 5 < arg2.length
            require 6 < arg2.length
            require 7 < arg2.length
            require 8 < arg2.length
            require 9 < arg2.length
            mem[(32 * arg1.length) + (32 * arg2.length) + 2436] = mem[(32 * arg1.length) + 364 len 20]
            mem[(32 * arg1.length) + (32 * arg2.length) + 2468] = mem[(32 * arg1.length) + 415 len 1]
            require ext_code.size(stor0)
            call stor0.0xfb6e155f with:
                 gas gas_remaining - 710 wei
                args mem[(32 * arg1.length) + 172 len 20], mem[(32 * arg1.length) + 192], mem[(32 * arg1.length) + 236 len 20], mem[(32 * arg1.length) + 256], mem[(32 * arg1.length) + 288], mem[(32 * arg1.length) + 320], mem[(32 * arg1.length) + (32 * arg2.length) + 2436 len 64], mem[(32 * arg1.length) + 416], mem[(32 * arg1.length) + 448]
            require ext_call.success
            if mem[(32 * arg1.length) + 172 len 20]:
                if ext_call.return_data[0]:
                    require ext_code.size(stor0)
                    call stor0.feeTake() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require mem[224]
                    require -ext_call.return_data[0] + 10^18
                    require mem[160]
                    if ext_call.return_data[0] * mem[224] / mem[160] >= ext_call.return_data[0]:
                        if ext_call.return_data[0] >= 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18:
                            if 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18:
                                if (10^18 * 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) / mem[160] / 10^18:
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2852] = mem[332 len 20]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2884] = mem[383 len 1]
                                    require ext_code.size(stor0)
                                    call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                                         gas gas_remaining - 710 wei
                                        args mem[140 len 20], mem[160], mem[204 len 20], mem[224], mem[256], mem[288], mem[(32 * arg1.length) + (32 * arg2.length) + 2852 len 64], mem[384], mem[416], 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18
                                    require ext_call.success
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2852] = mem[(32 * arg1.length) + 364 len 20]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2884] = mem[(32 * arg1.length) + 415 len 1]
                                    require ext_code.size(stor0)
                                    call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                                         gas gas_remaining - 710 wei
                                        args mem[(32 * arg1.length) + 172 len 20], mem[(32 * arg1.length) + 192], mem[(32 * arg1.length) + 236 len 20], mem[(32 * arg1.length) + 256], mem[(32 * arg1.length) + 288], mem[(32 * arg1.length) + 320], mem[(32 * arg1.length) + (32 * arg2.length) + 2852 len 64], mem[(32 * arg1.length) + 416], mem[(32 * arg1.length) + 448], (10^18 * 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) / mem[160] / 10^18
                                    require ext_call.success
                        else:
                            if ext_call.return_data[0]:
                                if (10^18 * ext_call.return_data[0] * mem[224]) - (ext_call.return_data[0] * ext_call.return_data[0] * mem[224]) / mem[160] / 10^18:
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2852] = mem[332 len 20]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2884] = mem[383 len 1]
                                    require ext_code.size(stor0)
                                    call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                                         gas gas_remaining - 710 wei
                                        args mem[140 len 20], mem[160], mem[204 len 20], mem[224], mem[256], mem[288], mem[(32 * arg1.length) + (32 * arg2.length) + 2852 len 64], mem[384], mem[416], ext_call.return_data[0]
                                    require ext_call.success
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2852] = mem[(32 * arg1.length) + 364 len 20]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2884] = mem[(32 * arg1.length) + 415 len 1]
                                    require ext_code.size(stor0)
                                    call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                                         gas gas_remaining - 710 wei
                                        args mem[(32 * arg1.length) + 172 len 20], mem[(32 * arg1.length) + 192], mem[(32 * arg1.length) + 236 len 20], mem[(32 * arg1.length) + 256], mem[(32 * arg1.length) + 288], mem[(32 * arg1.length) + 320], mem[(32 * arg1.length) + (32 * arg2.length) + 2852 len 64], mem[(32 * arg1.length) + 416], mem[(32 * arg1.length) + 448], (10^18 * ext_call.return_data[0] * mem[224]) - (ext_call.return_data[0] * ext_call.return_data[0] * mem[224]) / mem[160] / 10^18
                                    require ext_call.success
                    else:
                        if ext_call.return_data[0] >= 10^18 * ext_call.return_data[0] * mem[224] / mem[160] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18:
                            if 10^18 * ext_call.return_data[0] * mem[224] / mem[160] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18:
                                if (10^18 * 10^18 * ext_call.return_data[0] * mem[224] / mem[160] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * mem[224] / mem[160] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) / mem[160] / 10^18:
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2852] = mem[332 len 20]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2884] = mem[383 len 1]
                                    require ext_code.size(stor0)
                                    call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                                         gas gas_remaining - 710 wei
                                        args mem[140 len 20], mem[160], mem[204 len 20], mem[224], mem[256], mem[288], mem[(32 * arg1.length) + (32 * arg2.length) + 2852 len 64], mem[384], mem[416], 10^18 * ext_call.return_data[0] * mem[224] / mem[160] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18
                                    require ext_call.success
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2852] = mem[(32 * arg1.length) + 364 len 20]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2884] = mem[(32 * arg1.length) + 415 len 1]
                                    require ext_code.size(stor0)
                                    call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                                         gas gas_remaining - 710 wei
                                        args mem[(32 * arg1.length) + 172 len 20], mem[(32 * arg1.length) + 192], mem[(32 * arg1.length) + 236 len 20], mem[(32 * arg1.length) + 256], mem[(32 * arg1.length) + 288], mem[(32 * arg1.length) + 320], mem[(32 * arg1.length) + (32 * arg2.length) + 2852 len 64], mem[(32 * arg1.length) + 416], mem[(32 * arg1.length) + 448], (10^18 * 10^18 * ext_call.return_data[0] * mem[224] / mem[160] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * mem[224] / mem[160] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) / mem[160] / 10^18
                                    require ext_call.success
                        else:
                            if ext_call.return_data[0]:
                                if (10^18 * ext_call.return_data[0] * mem[224]) - (ext_call.return_data[0] * ext_call.return_data[0] * mem[224]) / mem[160] / 10^18:
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2852] = mem[332 len 20]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2884] = mem[383 len 1]
                                    require ext_code.size(stor0)
                                    call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                                         gas gas_remaining - 710 wei
                                        args mem[140 len 20], mem[160], mem[204 len 20], mem[224], mem[256], mem[288], mem[(32 * arg1.length) + (32 * arg2.length) + 2852 len 64], mem[384], mem[416], ext_call.return_data[0]
                                    require ext_call.success
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2852] = mem[(32 * arg1.length) + 364 len 20]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2884] = mem[(32 * arg1.length) + 415 len 1]
                                    require ext_code.size(stor0)
                                    call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                                         gas gas_remaining - 710 wei
                                        args mem[(32 * arg1.length) + 172 len 20], mem[(32 * arg1.length) + 192], mem[(32 * arg1.length) + 236 len 20], mem[(32 * arg1.length) + 256], mem[(32 * arg1.length) + 288], mem[(32 * arg1.length) + 320], mem[(32 * arg1.length) + (32 * arg2.length) + 2852 len 64], mem[(32 * arg1.length) + 416], mem[(32 * arg1.length) + 448], (10^18 * ext_call.return_data[0] * mem[224]) - (ext_call.return_data[0] * ext_call.return_data[0] * mem[224]) / mem[160] / 10^18
                                    require ext_call.success
            else:
                require mem[(32 * arg1.length) + 192]
                if ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192]:
                    require ext_code.size(stor0)
                    call stor0.feeTake() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require mem[224]
                    require -ext_call.return_data[0] + 10^18
                    require mem[160]
                    if ext_call.return_data[0] * mem[224] / mem[160] >= ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192]:
                        if ext_call.return_data[0] >= 10^18 * ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18:
                            if 10^18 * ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18:
                                if (10^18 * 10^18 * ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) / mem[160] / 10^18:
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2852] = mem[332 len 20]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2884] = mem[383 len 1]
                                    require ext_code.size(stor0)
                                    call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                                         gas gas_remaining - 710 wei
                                        args mem[140 len 20], mem[160], mem[204 len 20], mem[224], mem[256], mem[288], mem[(32 * arg1.length) + (32 * arg2.length) + 2852 len 64], mem[384], mem[416], 10^18 * ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18
                                    require ext_call.success
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2852] = mem[(32 * arg1.length) + 364 len 20]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2884] = mem[(32 * arg1.length) + 415 len 1]
                                    require ext_code.size(stor0)
                                    call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                                         gas gas_remaining - 710 wei
                                        args mem[(32 * arg1.length) + 172 len 20], mem[(32 * arg1.length) + 192], mem[(32 * arg1.length) + 236 len 20], mem[(32 * arg1.length) + 256], mem[(32 * arg1.length) + 288], mem[(32 * arg1.length) + 320], mem[(32 * arg1.length) + (32 * arg2.length) + 2852 len 64], mem[(32 * arg1.length) + 416], mem[(32 * arg1.length) + 448], (10^18 * 10^18 * ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * mem[(32 * arg1.length) + 256] / mem[(32 * arg1.length) + 192] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) / mem[160] / 10^18
                                    require ext_call.success
                        else:
                            if ext_call.return_data[0]:
                                if (10^18 * ext_call.return_data[0] * mem[224]) - (ext_call.return_data[0] * ext_call.return_data[0] * mem[224]) / mem[160] / 10^18:
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2852] = mem[332 len 20]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2884] = mem[383 len 1]
                                    require ext_code.size(stor0)
                                    call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                                         gas gas_remaining - 710 wei
                                        args mem[140 len 20], mem[160], mem[204 len 20], mem[224], mem[256], mem[288], mem[(32 * arg1.length) + (32 * arg2.length) + 2852 len 64], mem[384], mem[416], ext_call.return_data[0]
                                    require ext_call.success
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2852] = mem[(32 * arg1.length) + 364 len 20]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2884] = mem[(32 * arg1.length) + 415 len 1]
                                    require ext_code.size(stor0)
                                    call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                                         gas gas_remaining - 710 wei
                                        args mem[(32 * arg1.length) + 172 len 20], mem[(32 * arg1.length) + 192], mem[(32 * arg1.length) + 236 len 20], mem[(32 * arg1.length) + 256], mem[(32 * arg1.length) + 288], mem[(32 * arg1.length) + 320], mem[(32 * arg1.length) + (32 * arg2.length) + 2852 len 64], mem[(32 * arg1.length) + 416], mem[(32 * arg1.length) + 448], (10^18 * ext_call.return_data[0] * mem[224]) - (ext_call.return_data[0] * ext_call.return_data[0] * mem[224]) / mem[160] / 10^18
                                    require ext_call.success
                    else:
                        if ext_call.return_data[0] >= 10^18 * ext_call.return_data[0] * mem[224] / mem[160] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18:
                            if 10^18 * ext_call.return_data[0] * mem[224] / mem[160] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18:
                                if (10^18 * 10^18 * ext_call.return_data[0] * mem[224] / mem[160] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * mem[224] / mem[160] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) / mem[160] / 10^18:
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2852] = mem[332 len 20]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2884] = mem[383 len 1]
                                    require ext_code.size(stor0)
                                    call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                                         gas gas_remaining - 710 wei
                                        args mem[140 len 20], mem[160], mem[204 len 20], mem[224], mem[256], mem[288], mem[(32 * arg1.length) + (32 * arg2.length) + 2852 len 64], mem[384], mem[416], 10^18 * ext_call.return_data[0] * mem[224] / mem[160] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18
                                    require ext_call.success
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2852] = mem[(32 * arg1.length) + 364 len 20]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2884] = mem[(32 * arg1.length) + 415 len 1]
                                    require ext_code.size(stor0)
                                    call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                                         gas gas_remaining - 710 wei
                                        args mem[(32 * arg1.length) + 172 len 20], mem[(32 * arg1.length) + 192], mem[(32 * arg1.length) + 236 len 20], mem[(32 * arg1.length) + 256], mem[(32 * arg1.length) + 288], mem[(32 * arg1.length) + 320], mem[(32 * arg1.length) + (32 * arg2.length) + 2852 len 64], mem[(32 * arg1.length) + 416], mem[(32 * arg1.length) + 448], (10^18 * 10^18 * ext_call.return_data[0] * mem[224] / mem[160] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) - (ext_call.return_data[0] * 10^18 * ext_call.return_data[0] * mem[224] / mem[160] * mem[160] / mem[224] / -ext_call.return_data[0] + 10^18 * mem[224]) / mem[160] / 10^18
                                    require ext_call.success
                        else:
                            if ext_call.return_data[0]:
                                if (10^18 * ext_call.return_data[0] * mem[224]) - (ext_call.return_data[0] * ext_call.return_data[0] * mem[224]) / mem[160] / 10^18:
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2852] = mem[332 len 20]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2884] = mem[383 len 1]
                                    require ext_code.size(stor0)
                                    call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                                         gas gas_remaining - 710 wei
                                        args mem[140 len 20], mem[160], mem[204 len 20], mem[224], mem[256], mem[288], mem[(32 * arg1.length) + (32 * arg2.length) + 2852 len 64], mem[384], mem[416], ext_call.return_data[0]
                                    require ext_call.success
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2852] = mem[(32 * arg1.length) + 364 len 20]
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 2884] = mem[(32 * arg1.length) + 415 len 1]
                                    require ext_code.size(stor0)
                                    call stor0.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                                         gas gas_remaining - 710 wei
                                        args mem[(32 * arg1.length) + 172 len 20], mem[(32 * arg1.length) + 192], mem[(32 * arg1.length) + 236 len 20], mem[(32 * arg1.length) + 256], mem[(32 * arg1.length) + 288], mem[(32 * arg1.length) + 320], mem[(32 * arg1.length) + (32 * arg2.length) + 2852 len 64], mem[(32 * arg1.length) + 416], mem[(32 * arg1.length) + 448], (10^18 * ext_call.return_data[0] * mem[224]) - (ext_call.return_data[0] * ext_call.return_data[0] * mem[224]) / mem[160] / 10^18
                                    require ext_call.success
}



}
