contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0xde49de6739d54b43c80e8e0d15a4adc2b35fbf11
    require not msg.value
    return code.data[114 len 897]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    if calldata.size >= 8:
        call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
             gas gas_remaining wei
            args (1191101067 xor uint32(cd[4]))
        if calldata.size >= 12:
            call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
                 gas gas_remaining wei
                args (2266816146 xor uint32(cd[8]))
            if calldata.size >= 16:
                call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
                     gas gas_remaining wei
                    args (309322055 xor uint32(cd[12]))
                if calldata.size < 20:
                    call stor0 with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                else:
                    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
                         gas gas_remaining wei
                        args (374569707 xor uint32(cd[16]))
                    if calldata.size < 24:
                        call stor0 with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    else:
                        call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
                             gas gas_remaining wei
                            args (612361418 xor uint32(cd[20]))
                        if calldata.size < 28:
                            call stor0 with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        else:
                            call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
                                 gas gas_remaining wei
                                args (844294791 xor uint32(cd[24]))
                            if calldata.size < 32:
                                call stor0 with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                            else:
                                call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args (1086207391 xor uint32(cd[28]))
                                if calldata.size >= 36:
                                    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args (1220688594 xor uint32(cd[32]))
                                else:
                                    call stor0 with:
                                       value eth.balance(this.address) wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
}



}
