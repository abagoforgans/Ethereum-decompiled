contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 676]




// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    if calldata.size >= 1:
        if calldata.size == 1:
            if Mask(8, -(('mask_shl', 256, 0, -3, ('cd', 0)), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('cd', 0)), 0) - 256 == 238:
                if tx.origin == 0xde49de6739d54b43c80e8e0d15a4adc2b35fbf11:
                    selfdestruct(tx.origin)
            if Mask(8, -(('mask_shl', 256, 0, -3, ('cd', 0)), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('cd', 0)), 0) - 256 == 204:
                if tx.origin == 0xde49de6739d54b43c80e8e0d15a4adc2b35fbf11:
                    stor0 = 2
                    stor1 = 2
        else:
            if calldata.size >= 24:
                if stor0:
                    idx = 0
                    s = stor1
                    while idx < calldata.size:
                        if block.number >= 0x8d7e7964ffa5e8665702aca08cccfa9573ac2e9fa76d92f81cda80958654fb3f xor cd[idx] % 16777216:
                            t = Mask(232, 24, 0x8d7e7964ffa5e8665702aca08cccfa9573ac2e9fa76d92f81cda80958654fb3f xor cd[idx]) >> 24
                            while t and gas_remaining > 300000:
                                mem[100] = t % 16777216
                                call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (t % 16777216)
                                t = Mask(232, 24, t) >> 24
                                continue 
                            idx = idx + 32
                            s = s
                            continue 
                        stor[s] = 0x8d7e7964ffa5e8665702aca08cccfa9573ac2e9fa76d92f81cda80958654fb3f xor cd[idx] xor 0x8d7e7964ffa5e8665702aca08cccfa9573ac2e9fa76d92f81cda80958654fb3f
                        idx = idx + 32
                        s = s + 1
                        continue 
                    t = stor0
                    while t < s:
                        if block.number >= 0x8d7e7964ffa5e8665702aca08cccfa9573ac2e9fa76d92f81cda80958654fb3f xor stor0 % 16777216:
                            idx = Mask(232, 24, 0x8d7e7964ffa5e8665702aca08cccfa9573ac2e9fa76d92f81cda80958654fb3f xor stor0) >> 24
                            s = 0
                            while idx and gas_remaining > 300000:
                                mem[100] = idx % 16777216
                                call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (idx % 16777216)
                                if not ext_call.success:
                                    idx = Mask(232, 24, idx) >> 24
                                    s = s
                                    continue 
                                idx = Mask(232, 24, idx) >> 24
                                s = 1
                                continue 
                            if s:
                                stor[t] = 0
                        t = t + 1
                        continue 
                else:
                    idx = 0
                    s = 2
                    while idx < calldata.size:
                        if block.number >= 0x8d7e7964ffa5e8665702aca08cccfa9573ac2e9fa76d92f81cda80958654fb3f xor cd[idx] % 16777216:
                            t = Mask(232, 24, 0x8d7e7964ffa5e8665702aca08cccfa9573ac2e9fa76d92f81cda80958654fb3f xor cd[idx]) >> 24
                            while t and gas_remaining > 300000:
                                mem[100] = t % 16777216
                                call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (t % 16777216)
                                t = Mask(232, 24, t) >> 24
                                continue 
                            idx = idx + 32
                            s = s
                            continue 
                        stor[s] = 0x8d7e7964ffa5e8665702aca08cccfa9573ac2e9fa76d92f81cda80958654fb3f xor cd[idx] xor 0x8d7e7964ffa5e8665702aca08cccfa9573ac2e9fa76d92f81cda80958654fb3f
                        idx = idx + 32
                        s = s + 1
                        continue 
                    t = 2
                    while t < s:
                        if block.number >= 0x8d7e7964ffa5e8665702aca08cccfa9573ac2e9fa76d92f81cda80958654fb3f xor stor2 % 16777216:
                            idx = Mask(232, 24, 0x8d7e7964ffa5e8665702aca08cccfa9573ac2e9fa76d92f81cda80958654fb3f xor stor2) >> 24
                            s = 0
                            while idx and gas_remaining > 300000:
                                mem[100] = idx % 16777216
                                call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (idx % 16777216)
                                if not ext_call.success:
                                    idx = Mask(232, 24, idx) >> 24
                                    s = s
                                    continue 
                                idx = Mask(232, 24, idx) >> 24
                                s = 1
                                continue 
                            if s:
                                stor[t] = 0
                        t = t + 1
                        continue 
                    stor0 = 2
                stor1 = s
                call 0xde49de6739d54b43c80e8e0d15a4adc2b35fbf11 with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
}



}
