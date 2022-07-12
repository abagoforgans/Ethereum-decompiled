contract main {




// =====================  Runtime code  =====================


const sub_cfc305d1(?) = 300


array of struct sub_87036be8;
array of struct sub_142750d7;
array of struct sub_013a5dda;
address foundationAddress;
address sub_3fa582c6Address;
address sub_a5f69349Address;
address sub_71953291Address;
uint256 startTime;
mapping of uint256 stor8;

function sub_013a5dda(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_013a5dda.length
    return sub_013a5dda[arg1].field_0
}

function sub_142750d7(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_142750d7.length
    return sub_142750d7[arg1].field_0
}

function sub_3fa582c6(?) {
    return sub_3fa582c6Address
}

function sub_71953291(?) {
    return sub_71953291Address
}

function sub_87036be8(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_87036be8.length
    return sub_87036be8[arg1].field_0
}

function sub_a5f69349(?) {
    return sub_a5f69349Address
}

function FoundationAddress() {
    return foundationAddress
}

function StartTime() {
    return startTime
}

function _fallback() payable {
    mem[64] = 96
    if foundationAddress != msg.sender:
        if sub_3fa582c6Address != msg.sender:
            require msg.sender == sub_a5f69349Address
    require not msg.value
    require block.timestamp > startTime
    mem[100] = this.address
    require ext_code.size(sub_71953291Address)
    staticcall sub_71953291Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    if msg.sender == foundationAddress:
        mem[64] = (32 * sub_87036be8.length) + 128
        mem[96] = sub_87036be8.length
        if not sub_87036be8.length:
            require startTime <= block.timestamp
            if block.timestamp - startTime / 300 >= sub_87036be8.length:
                require sub_87036be8.length - 1 < sub_87036be8.length
                require stor8[address(msg.sender)] <= mem[(32 * sub_87036be8.length - 1) + 128]
                if mem[(32 * sub_87036be8.length - 1) + 128] - stor8[address(msg.sender)]:
                    if mem[(32 * sub_87036be8.length - 1) + 128] - stor8[address(msg.sender)] <= ext_call.return_data[0] / 10^10:
                        if mem[(32 * sub_87036be8.length - 1) + 128] - stor8[address(msg.sender)] > 0:
                            require mem[(32 * sub_87036be8.length - 1) + 128] >= stor8[address(msg.sender)]
                            stor8[address(msg.sender)] = mem[(32 * sub_87036be8.length - 1) + 128]
                            if mem[(32 * sub_87036be8.length - 1) + 128] - stor8[address(msg.sender)]:
                                require mem[(32 * sub_87036be8.length - 1) + 128] - stor8[address(msg.sender)]
                                require (10^10 * mem[(32 * sub_87036be8.length - 1) + 128]) - (10^10 * stor8[address(msg.sender)]) / mem[(32 * sub_87036be8.length - 1) + 128] - stor8[address(msg.sender)] == 10^10
                            require ext_code.size(sub_71953291Address)
                            call sub_71953291Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (10^10 * mem[(32 * sub_87036be8.length - 1) + 128]) - (10^10 * stor8[address(msg.sender)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                    else:
                        if ext_call.return_data[0] / 10^18 > 0:
                            require stor8[address(msg.sender)] + (ext_call.return_data[0] / 10^18) >= stor8[address(msg.sender)]
                            stor8[address(msg.sender)] += ext_call.return_data[0] / 10^18
                            if ext_call.return_data[0] / 10^18:
                                require ext_call.return_data[0] / 10^18
                                require 10^10 * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] / 10^18 == 10^10
                            require ext_code.size(sub_71953291Address)
                            call sub_71953291Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 10^10 * ext_call.return_data[0] / 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
            else:
                mem[0] = msg.sender
                mem[32] = 8
                require block.timestamp - startTime / 300 < sub_87036be8.length
                require stor8[address(msg.sender)] <= mem[(32 * block.timestamp - startTime / 300) + 128]
                if mem[(32 * block.timestamp - startTime / 300) + 128] - stor8[address(msg.sender)]:
                    if mem[(32 * block.timestamp - startTime / 300) + 128] - stor8[address(msg.sender)] <= ext_call.return_data[0] / 10^10:
                        if mem[(32 * block.timestamp - startTime / 300) + 128] - stor8[address(msg.sender)] > 0:
                            require mem[(32 * block.timestamp - startTime / 300) + 128] >= stor8[address(msg.sender)]
                            stor8[address(msg.sender)] = mem[(32 * block.timestamp - startTime / 300) + 128]
                            if mem[(32 * block.timestamp - startTime / 300) + 128] - stor8[address(msg.sender)]:
                                require mem[(32 * block.timestamp - startTime / 300) + 128] - stor8[address(msg.sender)]
                                require (10^10 * mem[(32 * block.timestamp - startTime / 300) + 128]) - (10^10 * stor8[address(msg.sender)]) / mem[(32 * block.timestamp - startTime / 300) + 128] - stor8[address(msg.sender)] == 10^10
                            require ext_code.size(sub_71953291Address)
                            call sub_71953291Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (10^10 * mem[(32 * block.timestamp - startTime / 300) + 128]) - (10^10 * stor8[address(msg.sender)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                    else:
                        if ext_call.return_data[0] / 10^18 > 0:
                            require stor8[address(msg.sender)] + (ext_call.return_data[0] / 10^18) >= stor8[address(msg.sender)]
                            stor8[address(msg.sender)] += ext_call.return_data[0] / 10^18
                            if ext_call.return_data[0] / 10^18:
                                require ext_call.return_data[0] / 10^18
                                require 10^10 * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] / 10^18 == 10^10
                            require ext_code.size(sub_71953291Address)
                            call sub_71953291Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 10^10 * ext_call.return_data[0] / 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
        else:
            mem[128] = uint256(sub_87036be8.field_0)
            idx = 128
            s = 0
            while (32 * sub_87036be8.length) + 96 > idx:
                mem[idx + 32] = sub_87036be8[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require startTime <= block.timestamp
            if block.timestamp - startTime / 300 < sub_87036be8.length:
                mem[0] = msg.sender
                mem[32] = 8
                require block.timestamp - startTime / 300 < sub_87036be8.length
                require stor8[address(msg.sender)] <= mem[(32 * block.timestamp - startTime / 300) + 128]
                if mem[(32 * block.timestamp - startTime / 300) + 128] - stor8[address(msg.sender)]:
                    if mem[(32 * block.timestamp - startTime / 300) + 128] - stor8[address(msg.sender)] <= ext_call.return_data[0] / 10^10:
                        if mem[(32 * block.timestamp - startTime / 300) + 128] - stor8[address(msg.sender)] > 0:
                            require mem[(32 * block.timestamp - startTime / 300) + 128] >= stor8[address(msg.sender)]
                            stor8[address(msg.sender)] = mem[(32 * block.timestamp - startTime / 300) + 128]
                            if mem[(32 * block.timestamp - startTime / 300) + 128] - stor8[address(msg.sender)]:
                                require mem[(32 * block.timestamp - startTime / 300) + 128] - stor8[address(msg.sender)]
                                require (10^10 * mem[(32 * block.timestamp - startTime / 300) + 128]) - (10^10 * stor8[address(msg.sender)]) / mem[(32 * block.timestamp - startTime / 300) + 128] - stor8[address(msg.sender)] == 10^10
                            require ext_code.size(sub_71953291Address)
                            call sub_71953291Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (10^10 * mem[(32 * block.timestamp - startTime / 300) + 128]) - (10^10 * stor8[address(msg.sender)])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                    else:
                        if ext_call.return_data[0] / 10^18 > 0:
                            require stor8[address(msg.sender)] + (ext_call.return_data[0] / 10^18) >= stor8[address(msg.sender)]
                            stor8[address(msg.sender)] += ext_call.return_data[0] / 10^18
                            if ext_call.return_data[0] / 10^18:
                                require ext_call.return_data[0] / 10^18
                                require 10^10 * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] / 10^18 == 10^10
                            require ext_code.size(sub_71953291Address)
                            call sub_71953291Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 10^10 * ext_call.return_data[0] / 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
            else:
                require sub_87036be8.length - 1 < sub_87036be8.length
                require stor8[address(msg.sender)] <= mem[(32 * sub_87036be8.length - 1) + 128]
                if mem[(32 * sub_87036be8.length - 1) + 128] - stor8[address(msg.sender)]:
                    if mem[(32 * sub_87036be8.length - 1) + 128] - stor8[address(msg.sender)] > ext_call.return_data[0] / 10^10:
                        if ext_call.return_data[0] / 10^18 > 0:
                            require stor8[address(msg.sender)] + (ext_call.return_data[0] / 10^18) >= stor8[address(msg.sender)]
                            stor8[address(msg.sender)] += ext_call.return_data[0] / 10^18
                            if ext_call.return_data[0] / 10^18:
                                require ext_call.return_data[0] / 10^18
                                require 10^10 * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] / 10^18 == 10^10
                            require ext_code.size(sub_71953291Address)
                            call sub_71953291Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 10^10 * ext_call.return_data[0] / 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                    else:
                        if mem[(32 * sub_87036be8.length - 1) + 128] - stor8[address(msg.sender)] > 0:
                            require mem[(32 * sub_87036be8.length - 1) + 128] >= stor8[address(msg.sender)]
                            stor8[address(msg.sender)] = mem[(32 * sub_87036be8.length - 1) + 128]
                            if mem[(32 * sub_87036be8.length - 1) + 128] - stor8[address(msg.sender)]:
                                require mem[(32 * sub_87036be8.length - 1) + 128] - stor8[address(msg.sender)]
                                require (10^10 * mem[(32 * sub_87036be8.length - 1) + 128]) - (10^10 * stor8[address(msg.sender)]) / mem[(32 * sub_87036be8.length - 1) + 128] - stor8[address(msg.sender)] == 10^10
                            mem[(32 * sub_87036be8.length) + 128] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                            mem[(32 * sub_87036be8.length) + 132] = msg.sender
                            mem[(32 * sub_87036be8.length) + 164] = (10^10 * mem[(32 * sub_87036be8.length - 1) + 128]) - (10^10 * stor8[address(msg.sender)])
                            require ext_code.size(sub_71953291Address)
                            call sub_71953291Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, mem[(32 * sub_87036be8.length) + 164]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
    else:
        if msg.sender == sub_3fa582c6Address:
            mem[64] = (32 * sub_142750d7.length) + 128
            mem[96] = sub_142750d7.length
            if not sub_142750d7.length:
                require startTime <= block.timestamp
                if block.timestamp - startTime / 300 >= sub_142750d7.length:
                    require sub_142750d7.length - 1 < sub_142750d7.length
                    require stor8[address(msg.sender)] <= mem[(32 * sub_142750d7.length - 1) + 128]
                    if mem[(32 * sub_142750d7.length - 1) + 128] - stor8[address(msg.sender)]:
                        if mem[(32 * sub_142750d7.length - 1) + 128] - stor8[address(msg.sender)] <= ext_call.return_data[0] / 10^10:
                            if mem[(32 * sub_142750d7.length - 1) + 128] - stor8[address(msg.sender)] > 0:
                                require mem[(32 * sub_142750d7.length - 1) + 128] >= stor8[address(msg.sender)]
                                stor8[address(msg.sender)] = mem[(32 * sub_142750d7.length - 1) + 128]
                                if mem[(32 * sub_142750d7.length - 1) + 128] - stor8[address(msg.sender)]:
                                    require mem[(32 * sub_142750d7.length - 1) + 128] - stor8[address(msg.sender)]
                                    require (10^10 * mem[(32 * sub_142750d7.length - 1) + 128]) - (10^10 * stor8[address(msg.sender)]) / mem[(32 * sub_142750d7.length - 1) + 128] - stor8[address(msg.sender)] == 10^10
                                require ext_code.size(sub_71953291Address)
                                call sub_71953291Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (10^10 * mem[(32 * sub_142750d7.length - 1) + 128]) - (10^10 * stor8[address(msg.sender)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                        else:
                            if ext_call.return_data[0] / 10^18 > 0:
                                require stor8[address(msg.sender)] + (ext_call.return_data[0] / 10^18) >= stor8[address(msg.sender)]
                                stor8[address(msg.sender)] += ext_call.return_data[0] / 10^18
                                if ext_call.return_data[0] / 10^18:
                                    require ext_call.return_data[0] / 10^18
                                    require 10^10 * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] / 10^18 == 10^10
                                require ext_code.size(sub_71953291Address)
                                call sub_71953291Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^10 * ext_call.return_data[0] / 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                else:
                    mem[0] = msg.sender
                    mem[32] = 8
                    require block.timestamp - startTime / 300 < sub_142750d7.length
                    require stor8[address(msg.sender)] <= mem[(32 * block.timestamp - startTime / 300) + 128]
                    if mem[(32 * block.timestamp - startTime / 300) + 128] - stor8[address(msg.sender)]:
                        if mem[(32 * block.timestamp - startTime / 300) + 128] - stor8[address(msg.sender)] <= ext_call.return_data[0] / 10^10:
                            if mem[(32 * block.timestamp - startTime / 300) + 128] - stor8[address(msg.sender)] > 0:
                                require mem[(32 * block.timestamp - startTime / 300) + 128] >= stor8[address(msg.sender)]
                                stor8[address(msg.sender)] = mem[(32 * block.timestamp - startTime / 300) + 128]
                                if mem[(32 * block.timestamp - startTime / 300) + 128] - stor8[address(msg.sender)]:
                                    require mem[(32 * block.timestamp - startTime / 300) + 128] - stor8[address(msg.sender)]
                                    require (10^10 * mem[(32 * block.timestamp - startTime / 300) + 128]) - (10^10 * stor8[address(msg.sender)]) / mem[(32 * block.timestamp - startTime / 300) + 128] - stor8[address(msg.sender)] == 10^10
                                require ext_code.size(sub_71953291Address)
                                call sub_71953291Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (10^10 * mem[(32 * block.timestamp - startTime / 300) + 128]) - (10^10 * stor8[address(msg.sender)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                        else:
                            if ext_call.return_data[0] / 10^18 > 0:
                                require stor8[address(msg.sender)] + (ext_call.return_data[0] / 10^18) >= stor8[address(msg.sender)]
                                stor8[address(msg.sender)] += ext_call.return_data[0] / 10^18
                                if ext_call.return_data[0] / 10^18:
                                    require ext_call.return_data[0] / 10^18
                                    require 10^10 * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] / 10^18 == 10^10
                                require ext_code.size(sub_71953291Address)
                                call sub_71953291Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^10 * ext_call.return_data[0] / 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
            else:
                mem[128] = uint256(sub_142750d7.field_0)
                idx = 128
                s = 0
                while (32 * sub_142750d7.length) + 96 > idx:
                    mem[idx + 32] = sub_142750d7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require startTime <= block.timestamp
                if block.timestamp - startTime / 300 < sub_142750d7.length:
                    mem[0] = msg.sender
                    mem[32] = 8
                    require block.timestamp - startTime / 300 < sub_142750d7.length
                    require stor8[address(msg.sender)] <= mem[(32 * block.timestamp - startTime / 300) + 128]
                    if mem[(32 * block.timestamp - startTime / 300) + 128] - stor8[address(msg.sender)]:
                        if mem[(32 * block.timestamp - startTime / 300) + 128] - stor8[address(msg.sender)] <= ext_call.return_data[0] / 10^10:
                            if mem[(32 * block.timestamp - startTime / 300) + 128] - stor8[address(msg.sender)] > 0:
                                require mem[(32 * block.timestamp - startTime / 300) + 128] >= stor8[address(msg.sender)]
                                stor8[address(msg.sender)] = mem[(32 * block.timestamp - startTime / 300) + 128]
                                if mem[(32 * block.timestamp - startTime / 300) + 128] - stor8[address(msg.sender)]:
                                    require mem[(32 * block.timestamp - startTime / 300) + 128] - stor8[address(msg.sender)]
                                    require (10^10 * mem[(32 * block.timestamp - startTime / 300) + 128]) - (10^10 * stor8[address(msg.sender)]) / mem[(32 * block.timestamp - startTime / 300) + 128] - stor8[address(msg.sender)] == 10^10
                                require ext_code.size(sub_71953291Address)
                                call sub_71953291Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (10^10 * mem[(32 * block.timestamp - startTime / 300) + 128]) - (10^10 * stor8[address(msg.sender)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                        else:
                            if ext_call.return_data[0] / 10^18 > 0:
                                require stor8[address(msg.sender)] + (ext_call.return_data[0] / 10^18) >= stor8[address(msg.sender)]
                                stor8[address(msg.sender)] += ext_call.return_data[0] / 10^18
                                if ext_call.return_data[0] / 10^18:
                                    require ext_call.return_data[0] / 10^18
                                    require 10^10 * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] / 10^18 == 10^10
                                require ext_code.size(sub_71953291Address)
                                call sub_71953291Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^10 * ext_call.return_data[0] / 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                else:
                    require sub_142750d7.length - 1 < sub_142750d7.length
                    require stor8[address(msg.sender)] <= mem[(32 * sub_142750d7.length - 1) + 128]
                    if mem[(32 * sub_142750d7.length - 1) + 128] - stor8[address(msg.sender)]:
                        if mem[(32 * sub_142750d7.length - 1) + 128] - stor8[address(msg.sender)] > ext_call.return_data[0] / 10^10:
                            if ext_call.return_data[0] / 10^18 > 0:
                                require stor8[address(msg.sender)] + (ext_call.return_data[0] / 10^18) >= stor8[address(msg.sender)]
                                stor8[address(msg.sender)] += ext_call.return_data[0] / 10^18
                                if ext_call.return_data[0] / 10^18:
                                    require ext_call.return_data[0] / 10^18
                                    require 10^10 * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] / 10^18 == 10^10
                                require ext_code.size(sub_71953291Address)
                                call sub_71953291Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^10 * ext_call.return_data[0] / 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                        else:
                            if mem[(32 * sub_142750d7.length - 1) + 128] - stor8[address(msg.sender)] > 0:
                                require mem[(32 * sub_142750d7.length - 1) + 128] >= stor8[address(msg.sender)]
                                stor8[address(msg.sender)] = mem[(32 * sub_142750d7.length - 1) + 128]
                                if mem[(32 * sub_142750d7.length - 1) + 128] - stor8[address(msg.sender)]:
                                    require mem[(32 * sub_142750d7.length - 1) + 128] - stor8[address(msg.sender)]
                                    require (10^10 * mem[(32 * sub_142750d7.length - 1) + 128]) - (10^10 * stor8[address(msg.sender)]) / mem[(32 * sub_142750d7.length - 1) + 128] - stor8[address(msg.sender)] == 10^10
                                mem[(32 * sub_142750d7.length) + 128] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                mem[(32 * sub_142750d7.length) + 132] = msg.sender
                                mem[(32 * sub_142750d7.length) + 164] = (10^10 * mem[(32 * sub_142750d7.length - 1) + 128]) - (10^10 * stor8[address(msg.sender)])
                                require ext_code.size(sub_71953291Address)
                                call sub_71953291Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, mem[(32 * sub_142750d7.length) + 164]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
        else:
            if sub_a5f69349Address != msg.sender:
                require startTime <= block.timestamp
                if block.timestamp - startTime / 300 >= ext_call.return_data[0]:
                    require ext_call.return_data[0] - 1 < ext_call.return_data[0]
                    require stor8[address(msg.sender)] <= mem[(32 * ext_call.return_data[0] - 1) + 128]
                    if mem[(32 * ext_call.return_data[0] - 1) + 128] - stor8[address(msg.sender)]:
                        if mem[(32 * ext_call.return_data[0] - 1) + 128] - stor8[address(msg.sender)] <= ext_call.return_data[0] / 10^10:
                            if mem[(32 * ext_call.return_data[0] - 1) + 128] - stor8[address(msg.sender)] > 0:
                                require mem[(32 * ext_call.return_data[0] - 1) + 128] >= stor8[address(msg.sender)]
                                stor8[address(msg.sender)] = mem[(32 * ext_call.return_data[0] - 1) + 128]
                                if mem[(32 * ext_call.return_data[0] - 1) + 128] - stor8[address(msg.sender)]:
                                    require mem[(32 * ext_call.return_data[0] - 1) + 128] - stor8[address(msg.sender)]
                                    require (10^10 * mem[(32 * ext_call.return_data[0] - 1) + 128]) - (10^10 * stor8[address(msg.sender)]) / mem[(32 * ext_call.return_data[0] - 1) + 128] - stor8[address(msg.sender)] == 10^10
                                require ext_code.size(sub_71953291Address)
                                call sub_71953291Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (10^10 * mem[(32 * ext_call.return_data[0] - 1) + 128]) - (10^10 * stor8[address(msg.sender)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                        else:
                            if ext_call.return_data[0] / 10^18 > 0:
                                require stor8[address(msg.sender)] + (ext_call.return_data[0] / 10^18) >= stor8[address(msg.sender)]
                                stor8[address(msg.sender)] += ext_call.return_data[0] / 10^18
                                if ext_call.return_data[0] / 10^18:
                                    require ext_call.return_data[0] / 10^18
                                    require 10^10 * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] / 10^18 == 10^10
                                require ext_code.size(sub_71953291Address)
                                call sub_71953291Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^10 * ext_call.return_data[0] / 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                else:
                    mem[0] = msg.sender
                    mem[32] = 8
                    require block.timestamp - startTime / 300 < ext_call.return_data[0]
                    require stor8[address(msg.sender)] <= mem[(32 * block.timestamp - startTime / 300) + 128]
                    if mem[(32 * block.timestamp - startTime / 300) + 128] - stor8[address(msg.sender)]:
                        if mem[(32 * block.timestamp - startTime / 300) + 128] - stor8[address(msg.sender)] <= ext_call.return_data[0] / 10^10:
                            if mem[(32 * block.timestamp - startTime / 300) + 128] - stor8[address(msg.sender)] > 0:
                                require mem[(32 * block.timestamp - startTime / 300) + 128] >= stor8[address(msg.sender)]
                                stor8[address(msg.sender)] = mem[(32 * block.timestamp - startTime / 300) + 128]
                                if mem[(32 * block.timestamp - startTime / 300) + 128] - stor8[address(msg.sender)]:
                                    require mem[(32 * block.timestamp - startTime / 300) + 128] - stor8[address(msg.sender)]
                                    require (10^10 * mem[(32 * block.timestamp - startTime / 300) + 128]) - (10^10 * stor8[address(msg.sender)]) / mem[(32 * block.timestamp - startTime / 300) + 128] - stor8[address(msg.sender)] == 10^10
                                require ext_code.size(sub_71953291Address)
                                call sub_71953291Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (10^10 * mem[(32 * block.timestamp - startTime / 300) + 128]) - (10^10 * stor8[address(msg.sender)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                        else:
                            if ext_call.return_data[0] / 10^18 > 0:
                                require stor8[address(msg.sender)] + (ext_call.return_data[0] / 10^18) >= stor8[address(msg.sender)]
                                stor8[address(msg.sender)] += ext_call.return_data[0] / 10^18
                                if ext_call.return_data[0] / 10^18:
                                    require ext_call.return_data[0] / 10^18
                                    require 10^10 * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] / 10^18 == 10^10
                                require ext_code.size(sub_71953291Address)
                                call sub_71953291Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^10 * ext_call.return_data[0] / 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
            else:
                mem[64] = (32 * sub_013a5dda.length) + 128
                mem[96] = sub_013a5dda.length
                if not sub_013a5dda.length:
                    require startTime <= block.timestamp
                    if block.timestamp - startTime / 300 >= sub_013a5dda.length:
                        require sub_013a5dda.length - 1 < sub_013a5dda.length
                        require stor8[address(msg.sender)] <= mem[(32 * sub_013a5dda.length - 1) + 128]
                        if mem[(32 * sub_013a5dda.length - 1) + 128] - stor8[address(msg.sender)]:
                            if mem[(32 * sub_013a5dda.length - 1) + 128] - stor8[address(msg.sender)] <= ext_call.return_data[0] / 10^10:
                                if mem[(32 * sub_013a5dda.length - 1) + 128] - stor8[address(msg.sender)] > 0:
                                    require mem[(32 * sub_013a5dda.length - 1) + 128] >= stor8[address(msg.sender)]
                                    stor8[address(msg.sender)] = mem[(32 * sub_013a5dda.length - 1) + 128]
                                    if mem[(32 * sub_013a5dda.length - 1) + 128] - stor8[address(msg.sender)]:
                                        require mem[(32 * sub_013a5dda.length - 1) + 128] - stor8[address(msg.sender)]
                                        require (10^10 * mem[(32 * sub_013a5dda.length - 1) + 128]) - (10^10 * stor8[address(msg.sender)]) / mem[(32 * sub_013a5dda.length - 1) + 128] - stor8[address(msg.sender)] == 10^10
                                    require ext_code.size(sub_71953291Address)
                                    call sub_71953291Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (10^10 * mem[(32 * sub_013a5dda.length - 1) + 128]) - (10^10 * stor8[address(msg.sender)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                            else:
                                if ext_call.return_data[0] / 10^18 > 0:
                                    require stor8[address(msg.sender)] + (ext_call.return_data[0] / 10^18) >= stor8[address(msg.sender)]
                                    stor8[address(msg.sender)] += ext_call.return_data[0] / 10^18
                                    if ext_call.return_data[0] / 10^18:
                                        require ext_call.return_data[0] / 10^18
                                        require 10^10 * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] / 10^18 == 10^10
                                    require ext_code.size(sub_71953291Address)
                                    call sub_71953291Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^10 * ext_call.return_data[0] / 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                    else:
                        mem[0] = msg.sender
                        mem[32] = 8
                        require block.timestamp - startTime / 300 < sub_013a5dda.length
                        require stor8[address(msg.sender)] <= mem[(32 * block.timestamp - startTime / 300) + 128]
                        if mem[(32 * block.timestamp - startTime / 300) + 128] - stor8[address(msg.sender)]:
                            if mem[(32 * block.timestamp - startTime / 300) + 128] - stor8[address(msg.sender)] <= ext_call.return_data[0] / 10^10:
                                if mem[(32 * block.timestamp - startTime / 300) + 128] - stor8[address(msg.sender)] > 0:
                                    require mem[(32 * block.timestamp - startTime / 300) + 128] >= stor8[address(msg.sender)]
                                    stor8[address(msg.sender)] = mem[(32 * block.timestamp - startTime / 300) + 128]
                                    if mem[(32 * block.timestamp - startTime / 300) + 128] - stor8[address(msg.sender)]:
                                        require mem[(32 * block.timestamp - startTime / 300) + 128] - stor8[address(msg.sender)]
                                        require (10^10 * mem[(32 * block.timestamp - startTime / 300) + 128]) - (10^10 * stor8[address(msg.sender)]) / mem[(32 * block.timestamp - startTime / 300) + 128] - stor8[address(msg.sender)] == 10^10
                                    require ext_code.size(sub_71953291Address)
                                    call sub_71953291Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (10^10 * mem[(32 * block.timestamp - startTime / 300) + 128]) - (10^10 * stor8[address(msg.sender)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                            else:
                                if ext_call.return_data[0] / 10^18 > 0:
                                    require stor8[address(msg.sender)] + (ext_call.return_data[0] / 10^18) >= stor8[address(msg.sender)]
                                    stor8[address(msg.sender)] += ext_call.return_data[0] / 10^18
                                    if ext_call.return_data[0] / 10^18:
                                        require ext_call.return_data[0] / 10^18
                                        require 10^10 * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] / 10^18 == 10^10
                                    require ext_code.size(sub_71953291Address)
                                    call sub_71953291Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^10 * ext_call.return_data[0] / 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                else:
                    mem[128] = uint256(sub_013a5dda.field_0)
                    idx = 128
                    s = 0
                    while (32 * sub_013a5dda.length) + 96 > idx:
                        mem[idx + 32] = sub_013a5dda[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require startTime <= block.timestamp
                    if block.timestamp - startTime / 300 < sub_013a5dda.length:
                        mem[0] = msg.sender
                        mem[32] = 8
                        require block.timestamp - startTime / 300 < sub_013a5dda.length
                        require stor8[address(msg.sender)] <= mem[(32 * block.timestamp - startTime / 300) + 128]
                        if mem[(32 * block.timestamp - startTime / 300) + 128] - stor8[address(msg.sender)]:
                            if mem[(32 * block.timestamp - startTime / 300) + 128] - stor8[address(msg.sender)] <= ext_call.return_data[0] / 10^10:
                                if mem[(32 * block.timestamp - startTime / 300) + 128] - stor8[address(msg.sender)] > 0:
                                    require mem[(32 * block.timestamp - startTime / 300) + 128] >= stor8[address(msg.sender)]
                                    stor8[address(msg.sender)] = mem[(32 * block.timestamp - startTime / 300) + 128]
                                    if mem[(32 * block.timestamp - startTime / 300) + 128] - stor8[address(msg.sender)]:
                                        require mem[(32 * block.timestamp - startTime / 300) + 128] - stor8[address(msg.sender)]
                                        require (10^10 * mem[(32 * block.timestamp - startTime / 300) + 128]) - (10^10 * stor8[address(msg.sender)]) / mem[(32 * block.timestamp - startTime / 300) + 128] - stor8[address(msg.sender)] == 10^10
                                    require ext_code.size(sub_71953291Address)
                                    call sub_71953291Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (10^10 * mem[(32 * block.timestamp - startTime / 300) + 128]) - (10^10 * stor8[address(msg.sender)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                            else:
                                if ext_call.return_data[0] / 10^18 > 0:
                                    require stor8[address(msg.sender)] + (ext_call.return_data[0] / 10^18) >= stor8[address(msg.sender)]
                                    stor8[address(msg.sender)] += ext_call.return_data[0] / 10^18
                                    if ext_call.return_data[0] / 10^18:
                                        require ext_call.return_data[0] / 10^18
                                        require 10^10 * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] / 10^18 == 10^10
                                    require ext_code.size(sub_71953291Address)
                                    call sub_71953291Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^10 * ext_call.return_data[0] / 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                    else:
                        require sub_013a5dda.length - 1 < sub_013a5dda.length
                        require stor8[address(msg.sender)] <= mem[(32 * sub_013a5dda.length - 1) + 128]
                        if mem[(32 * sub_013a5dda.length - 1) + 128] - stor8[address(msg.sender)]:
                            if mem[(32 * sub_013a5dda.length - 1) + 128] - stor8[address(msg.sender)] > ext_call.return_data[0] / 10^10:
                                if ext_call.return_data[0] / 10^18 > 0:
                                    require stor8[address(msg.sender)] + (ext_call.return_data[0] / 10^18) >= stor8[address(msg.sender)]
                                    stor8[address(msg.sender)] += ext_call.return_data[0] / 10^18
                                    if ext_call.return_data[0] / 10^18:
                                        require ext_call.return_data[0] / 10^18
                                        require 10^10 * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] / 10^18 == 10^10
                                    require ext_code.size(sub_71953291Address)
                                    call sub_71953291Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 10^10 * ext_call.return_data[0] / 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                            else:
                                if mem[(32 * sub_013a5dda.length - 1) + 128] - stor8[address(msg.sender)] > 0:
                                    require mem[(32 * sub_013a5dda.length - 1) + 128] >= stor8[address(msg.sender)]
                                    stor8[address(msg.sender)] = mem[(32 * sub_013a5dda.length - 1) + 128]
                                    if mem[(32 * sub_013a5dda.length - 1) + 128] - stor8[address(msg.sender)]:
                                        require mem[(32 * sub_013a5dda.length - 1) + 128] - stor8[address(msg.sender)]
                                        require (10^10 * mem[(32 * sub_013a5dda.length - 1) + 128]) - (10^10 * stor8[address(msg.sender)]) / mem[(32 * sub_013a5dda.length - 1) + 128] - stor8[address(msg.sender)] == 10^10
                                    mem[(32 * sub_013a5dda.length) + 128] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                                    mem[(32 * sub_013a5dda.length) + 132] = msg.sender
                                    mem[(32 * sub_013a5dda.length) + 164] = (10^10 * mem[(32 * sub_013a5dda.length - 1) + 128]) - (10^10 * stor8[address(msg.sender)])
                                    require ext_code.size(sub_71953291Address)
                                    call sub_71953291Address.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, mem[(32 * sub_013a5dda.length) + 164]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
}



}
