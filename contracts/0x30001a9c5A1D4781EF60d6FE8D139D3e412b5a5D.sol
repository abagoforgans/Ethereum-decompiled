contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
address stor6;
address stor7;
address stor8;
address stor9;
address stor10;
address stor11;

function _fallback() payable {
    stor0 = msg.sender
    stor1 = 0x6012c8cf97bead5deae237070f9587f8e7a266d
    stor2 = 0x17528a9314b090a13a97b4f167d7d525625c398d
    stor3 = 0x62460a5567d2823781604dc938e0eaf073d24d9d
    stor4 = 0xe8a576d484c10bed29aed74d16d6958aa05f94aa
    stor5 = 0x682ed78859e2235e03535e11d2396e1e200bf0d4
    stor6 = 0x3b23581691cc2aeee37655f920b04ac2b86d6d92
    stor7 = 0x4777d7bf12066d011e7ee901335305d9240b99ea
    stor8 = 0xc5262a3efccaf4892c65e6f08ddcad50d4ba10df
    stor9 = 0x2777d162ae76f9d28eec984679bb98ff7e054f95
    stor10 = 0x2ffa485cb346bfa76256da7f43af8d05e6225e6c
    stor11 = 0xd62a07ebfdd83002c379bb893d09e7c81492de53
    require not msg.value
    return code.data[1029 len 15021]
}



// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address owner;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
address stor6;
address stor7;
address stor8;
address stor9;
address stor10;
address stor11;

function owner() {
    return owner
}

function kill() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function withdraw() {
    if stor2 != msg.sender:
        if stor3 != msg.sender:
            if stor4 != msg.sender:
                if stor5 != msg.sender:
                    if stor6 != msg.sender:
                        if stor7 != msg.sender:
                            if stor8 != msg.sender:
                                if stor9 != msg.sender:
                                    if stor10 != msg.sender:
                                        require msg.sender == stor11
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function exec(uint256 arg1) {
    if stor2 != msg.sender:
        if stor3 != msg.sender:
            if stor4 != msg.sender:
                if stor5 != msg.sender:
                    if stor6 != msg.sender:
                        if stor7 != msg.sender:
                            if stor8 != msg.sender:
                                if stor9 != msg.sender:
                                    if stor10 != msg.sender:
                                        require msg.sender == stor11
    if arg1 <= 0:
        return 0
    require ext_code.size(stor1)
    call stor1.isPregnant(uint256 arg1) with:
         gas gas_remaining - 710 wei
        args (arg1 + (-825612 * arg1 - 14567180 / 825612) - 14567180)
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if (arg1 - 14567180 / 825612) + 4844000 > block.number:
        return 0
    if arg1 + (-825612 * arg1 - 14567180 / 825612) - 14567180 <= 0:
        return 0
    call stor1 with:
       funct Mask(32, 224, sha3('giveBirth(uint256)')) >> 224
         gas gas_remaining - 25710 wei
        args (arg1 + (-825612 * arg1 - 14567180 / 825612) - 14567180)
    if not ext_call.success:
        return 0
    if eth.balance(this.address) > 0:
        if stor2 != msg.sender:
            if stor3 != msg.sender:
                if stor4 != msg.sender:
                    if stor5 != msg.sender:
                        if stor6 != msg.sender:
                            if stor7 != msg.sender:
                                if stor8 != msg.sender:
                                    if stor9 != msg.sender:
                                        if stor10 != msg.sender:
                                            require msg.sender == stor11
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    return 1
}

function sub_006afa0c(?) {
    if stor2 != msg.sender:
        if stor3 != msg.sender:
            if stor4 != msg.sender:
                if stor5 != msg.sender:
                    if stor6 != msg.sender:
                        if stor7 != msg.sender:
                            if stor8 != msg.sender:
                                if stor9 != msg.sender:
                                    if stor10 != msg.sender:
                                        require msg.sender == stor11
    s = 0
    s = 0
    idx = 0
    while idx < 6:
        if cd[((32 * idx) + 4)] <= 0:
            s = 0
            s = s
            idx = idx + 1
            continue 
        mem[128] = 0
        mem[100] = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
        require ext_code.size(stor1)
        call stor1.isPregnant(uint256 arg1) with:
             gas gas_remaining - 710 wei
            args (cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180)
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if not ext_call.return_data[0]:
            s = 0
            s = s
            idx = idx + 1
            continue 
        if (cd[((32 * idx) + 4)] - 14567180 / 825612) + 4844000 > block.number:
            s = 0
            s = s
            idx = idx + 1
            continue 
        if cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180 <= 0:
            s = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
            s = s
            idx = idx + 1
            continue 
        mem[96] = Mask(32, 224, sha3('giveBirth(uint256)'))
        mem[100] = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
        call stor1 with:
           funct Mask(32, 224, sha3('giveBirth(uint256)')) >> 224
             gas gas_remaining - 25710 wei
            args (cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180)
        if not ext_call.success:
            s = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
            s = s
            idx = idx + 1
            continue 
        s = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
        s = s + 1
        idx = idx + 1
        continue 
    if s > 0:
        if eth.balance(this.address) > 0:
            if stor2 != msg.sender:
                if stor3 != msg.sender:
                    if stor4 != msg.sender:
                        if stor5 != msg.sender:
                            if stor6 != msg.sender:
                                if stor7 != msg.sender:
                                    if stor8 != msg.sender:
                                        if stor9 != msg.sender:
                                            if stor10 != msg.sender:
                                                require msg.sender == stor11
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
    return s
}

function sub_0480b5c0(?) {
    if stor2 != msg.sender:
        if stor3 != msg.sender:
            if stor4 != msg.sender:
                if stor5 != msg.sender:
                    if stor6 != msg.sender:
                        if stor7 != msg.sender:
                            if stor8 != msg.sender:
                                if stor9 != msg.sender:
                                    if stor10 != msg.sender:
                                        require msg.sender == stor11
    s = 0
    s = 0
    idx = 0
    while idx < 5:
        if cd[((32 * idx) + 4)] <= 0:
            s = 0
            s = s
            idx = idx + 1
            continue 
        mem[128] = 0
        mem[100] = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
        require ext_code.size(stor1)
        call stor1.isPregnant(uint256 arg1) with:
             gas gas_remaining - 710 wei
            args (cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180)
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if not ext_call.return_data[0]:
            s = 0
            s = s
            idx = idx + 1
            continue 
        if (cd[((32 * idx) + 4)] - 14567180 / 825612) + 4844000 > block.number:
            s = 0
            s = s
            idx = idx + 1
            continue 
        if cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180 <= 0:
            s = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
            s = s
            idx = idx + 1
            continue 
        mem[96] = Mask(32, 224, sha3('giveBirth(uint256)'))
        mem[100] = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
        call stor1 with:
           funct Mask(32, 224, sha3('giveBirth(uint256)')) >> 224
             gas gas_remaining - 25710 wei
            args (cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180)
        if not ext_call.success:
            s = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
            s = s
            idx = idx + 1
            continue 
        s = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
        s = s + 1
        idx = idx + 1
        continue 
    if s > 0:
        if eth.balance(this.address) > 0:
            if stor2 != msg.sender:
                if stor3 != msg.sender:
                    if stor4 != msg.sender:
                        if stor5 != msg.sender:
                            if stor6 != msg.sender:
                                if stor7 != msg.sender:
                                    if stor8 != msg.sender:
                                        if stor9 != msg.sender:
                                            if stor10 != msg.sender:
                                                require msg.sender == stor11
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
    return s
}

function sub_23f46e32(?) {
    if stor2 != msg.sender:
        if stor3 != msg.sender:
            if stor4 != msg.sender:
                if stor5 != msg.sender:
                    if stor6 != msg.sender:
                        if stor7 != msg.sender:
                            if stor8 != msg.sender:
                                if stor9 != msg.sender:
                                    if stor10 != msg.sender:
                                        require msg.sender == stor11
    s = 0
    s = 0
    idx = 0
    while idx < 3:
        if cd[((32 * idx) + 4)] <= 0:
            s = 0
            s = s
            idx = idx + 1
            continue 
        mem[128] = 0
        mem[100] = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
        require ext_code.size(stor1)
        call stor1.isPregnant(uint256 arg1) with:
             gas gas_remaining - 710 wei
            args (cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180)
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if not ext_call.return_data[0]:
            s = 0
            s = s
            idx = idx + 1
            continue 
        if (cd[((32 * idx) + 4)] - 14567180 / 825612) + 4844000 > block.number:
            s = 0
            s = s
            idx = idx + 1
            continue 
        if cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180 <= 0:
            s = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
            s = s
            idx = idx + 1
            continue 
        mem[96] = Mask(32, 224, sha3('giveBirth(uint256)'))
        mem[100] = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
        call stor1 with:
           funct Mask(32, 224, sha3('giveBirth(uint256)')) >> 224
             gas gas_remaining - 25710 wei
            args (cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180)
        if not ext_call.success:
            s = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
            s = s
            idx = idx + 1
            continue 
        s = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
        s = s + 1
        idx = idx + 1
        continue 
    if s > 0:
        if eth.balance(this.address) > 0:
            if stor2 != msg.sender:
                if stor3 != msg.sender:
                    if stor4 != msg.sender:
                        if stor5 != msg.sender:
                            if stor6 != msg.sender:
                                if stor7 != msg.sender:
                                    if stor8 != msg.sender:
                                        if stor9 != msg.sender:
                                            if stor10 != msg.sender:
                                                require msg.sender == stor11
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
    return s
}

function sub_4db2732c(?) {
    if stor2 != msg.sender:
        if stor3 != msg.sender:
            if stor4 != msg.sender:
                if stor5 != msg.sender:
                    if stor6 != msg.sender:
                        if stor7 != msg.sender:
                            if stor8 != msg.sender:
                                if stor9 != msg.sender:
                                    if stor10 != msg.sender:
                                        require msg.sender == stor11
    s = 0
    s = 0
    idx = 0
    while idx < 4:
        if cd[((32 * idx) + 4)] <= 0:
            s = 0
            s = s
            idx = idx + 1
            continue 
        mem[128] = 0
        mem[100] = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
        require ext_code.size(stor1)
        call stor1.isPregnant(uint256 arg1) with:
             gas gas_remaining - 710 wei
            args (cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180)
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if not ext_call.return_data[0]:
            s = 0
            s = s
            idx = idx + 1
            continue 
        if (cd[((32 * idx) + 4)] - 14567180 / 825612) + 4844000 > block.number:
            s = 0
            s = s
            idx = idx + 1
            continue 
        if cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180 <= 0:
            s = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
            s = s
            idx = idx + 1
            continue 
        mem[96] = Mask(32, 224, sha3('giveBirth(uint256)'))
        mem[100] = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
        call stor1 with:
           funct Mask(32, 224, sha3('giveBirth(uint256)')) >> 224
             gas gas_remaining - 25710 wei
            args (cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180)
        if not ext_call.success:
            s = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
            s = s
            idx = idx + 1
            continue 
        s = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
        s = s + 1
        idx = idx + 1
        continue 
    if s > 0:
        if eth.balance(this.address) > 0:
            if stor2 != msg.sender:
                if stor3 != msg.sender:
                    if stor4 != msg.sender:
                        if stor5 != msg.sender:
                            if stor6 != msg.sender:
                                if stor7 != msg.sender:
                                    if stor8 != msg.sender:
                                        if stor9 != msg.sender:
                                            if stor10 != msg.sender:
                                                require msg.sender == stor11
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
    return s
}

function sub_6a6c0967(?) {
    if stor2 != msg.sender:
        if stor3 != msg.sender:
            if stor4 != msg.sender:
                if stor5 != msg.sender:
                    if stor6 != msg.sender:
                        if stor7 != msg.sender:
                            if stor8 != msg.sender:
                                if stor9 != msg.sender:
                                    if stor10 != msg.sender:
                                        require msg.sender == stor11
    s = 0
    s = 0
    idx = 0
    while idx < 7:
        if cd[((32 * idx) + 4)] <= 0:
            s = 0
            s = s
            idx = idx + 1
            continue 
        mem[128] = 0
        mem[100] = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
        require ext_code.size(stor1)
        call stor1.isPregnant(uint256 arg1) with:
             gas gas_remaining - 710 wei
            args (cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180)
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if not ext_call.return_data[0]:
            s = 0
            s = s
            idx = idx + 1
            continue 
        if (cd[((32 * idx) + 4)] - 14567180 / 825612) + 4844000 > block.number:
            s = 0
            s = s
            idx = idx + 1
            continue 
        if cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180 <= 0:
            s = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
            s = s
            idx = idx + 1
            continue 
        mem[96] = Mask(32, 224, sha3('giveBirth(uint256)'))
        mem[100] = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
        call stor1 with:
           funct Mask(32, 224, sha3('giveBirth(uint256)')) >> 224
             gas gas_remaining - 25710 wei
            args (cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180)
        if not ext_call.success:
            s = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
            s = s
            idx = idx + 1
            continue 
        s = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
        s = s + 1
        idx = idx + 1
        continue 
    if s > 0:
        if eth.balance(this.address) > 0:
            if stor2 != msg.sender:
                if stor3 != msg.sender:
                    if stor4 != msg.sender:
                        if stor5 != msg.sender:
                            if stor6 != msg.sender:
                                if stor7 != msg.sender:
                                    if stor8 != msg.sender:
                                        if stor9 != msg.sender:
                                            if stor10 != msg.sender:
                                                require msg.sender == stor11
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
    return s
}

function sub_83134f31(?) {
    if stor2 != msg.sender:
        if stor3 != msg.sender:
            if stor4 != msg.sender:
                if stor5 != msg.sender:
                    if stor6 != msg.sender:
                        if stor7 != msg.sender:
                            if stor8 != msg.sender:
                                if stor9 != msg.sender:
                                    if stor10 != msg.sender:
                                        require msg.sender == stor11
    s = 0
    s = 0
    idx = 0
    while idx < 9:
        if cd[((32 * idx) + 4)] <= 0:
            s = 0
            s = s
            idx = idx + 1
            continue 
        mem[128] = 0
        mem[100] = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
        require ext_code.size(stor1)
        call stor1.isPregnant(uint256 arg1) with:
             gas gas_remaining - 710 wei
            args (cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180)
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if not ext_call.return_data[0]:
            s = 0
            s = s
            idx = idx + 1
            continue 
        if (cd[((32 * idx) + 4)] - 14567180 / 825612) + 4844000 > block.number:
            s = 0
            s = s
            idx = idx + 1
            continue 
        if cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180 <= 0:
            s = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
            s = s
            idx = idx + 1
            continue 
        mem[96] = Mask(32, 224, sha3('giveBirth(uint256)'))
        mem[100] = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
        call stor1 with:
           funct Mask(32, 224, sha3('giveBirth(uint256)')) >> 224
             gas gas_remaining - 25710 wei
            args (cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180)
        if not ext_call.success:
            s = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
            s = s
            idx = idx + 1
            continue 
        s = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
        s = s + 1
        idx = idx + 1
        continue 
    if s > 0:
        if eth.balance(this.address) > 0:
            if stor2 != msg.sender:
                if stor3 != msg.sender:
                    if stor4 != msg.sender:
                        if stor5 != msg.sender:
                            if stor6 != msg.sender:
                                if stor7 != msg.sender:
                                    if stor8 != msg.sender:
                                        if stor9 != msg.sender:
                                            if stor10 != msg.sender:
                                                require msg.sender == stor11
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
    return s
}

function sub_9b070883(?) {
    if stor2 != msg.sender:
        if stor3 != msg.sender:
            if stor4 != msg.sender:
                if stor5 != msg.sender:
                    if stor6 != msg.sender:
                        if stor7 != msg.sender:
                            if stor8 != msg.sender:
                                if stor9 != msg.sender:
                                    if stor10 != msg.sender:
                                        require msg.sender == stor11
    s = 0
    s = 0
    idx = 0
    while idx < 8:
        if cd[((32 * idx) + 4)] <= 0:
            s = 0
            s = s
            idx = idx + 1
            continue 
        mem[128] = 0
        mem[100] = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
        require ext_code.size(stor1)
        call stor1.isPregnant(uint256 arg1) with:
             gas gas_remaining - 710 wei
            args (cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180)
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if not ext_call.return_data[0]:
            s = 0
            s = s
            idx = idx + 1
            continue 
        if (cd[((32 * idx) + 4)] - 14567180 / 825612) + 4844000 > block.number:
            s = 0
            s = s
            idx = idx + 1
            continue 
        if cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180 <= 0:
            s = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
            s = s
            idx = idx + 1
            continue 
        mem[96] = Mask(32, 224, sha3('giveBirth(uint256)'))
        mem[100] = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
        call stor1 with:
           funct Mask(32, 224, sha3('giveBirth(uint256)')) >> 224
             gas gas_remaining - 25710 wei
            args (cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180)
        if not ext_call.success:
            s = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
            s = s
            idx = idx + 1
            continue 
        s = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
        s = s + 1
        idx = idx + 1
        continue 
    if s > 0:
        if eth.balance(this.address) > 0:
            if stor2 != msg.sender:
                if stor3 != msg.sender:
                    if stor4 != msg.sender:
                        if stor5 != msg.sender:
                            if stor6 != msg.sender:
                                if stor7 != msg.sender:
                                    if stor8 != msg.sender:
                                        if stor9 != msg.sender:
                                            if stor10 != msg.sender:
                                                require msg.sender == stor11
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
    return s
}

function sub_cc51d4f1(?) {
    if stor2 != msg.sender:
        if stor3 != msg.sender:
            if stor4 != msg.sender:
                if stor5 != msg.sender:
                    if stor6 != msg.sender:
                        if stor7 != msg.sender:
                            if stor8 != msg.sender:
                                if stor9 != msg.sender:
                                    if stor10 != msg.sender:
                                        require msg.sender == stor11
    s = 0
    s = 0
    idx = 0
    while idx < 2:
        if cd[((32 * idx) + 4)] <= 0:
            s = 0
            s = s
            idx = idx + 1
            continue 
        mem[128] = 0
        mem[100] = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
        require ext_code.size(stor1)
        call stor1.isPregnant(uint256 arg1) with:
             gas gas_remaining - 710 wei
            args (cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180)
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if not ext_call.return_data[0]:
            s = 0
            s = s
            idx = idx + 1
            continue 
        if (cd[((32 * idx) + 4)] - 14567180 / 825612) + 4844000 > block.number:
            s = 0
            s = s
            idx = idx + 1
            continue 
        if cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180 <= 0:
            s = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
            s = s
            idx = idx + 1
            continue 
        mem[96] = Mask(32, 224, sha3('giveBirth(uint256)'))
        mem[100] = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
        call stor1 with:
           funct Mask(32, 224, sha3('giveBirth(uint256)')) >> 224
             gas gas_remaining - 25710 wei
            args (cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180)
        if not ext_call.success:
            s = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
            s = s
            idx = idx + 1
            continue 
        s = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
        s = s + 1
        idx = idx + 1
        continue 
    if s > 0:
        if eth.balance(this.address) > 0:
            if stor2 != msg.sender:
                if stor3 != msg.sender:
                    if stor4 != msg.sender:
                        if stor5 != msg.sender:
                            if stor6 != msg.sender:
                                if stor7 != msg.sender:
                                    if stor8 != msg.sender:
                                        if stor9 != msg.sender:
                                            if stor10 != msg.sender:
                                                require msg.sender == stor11
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
    return s
}

function sub_a1d1080b(?) {
    if stor2 != msg.sender:
        if stor3 != msg.sender:
            if stor4 != msg.sender:
                if stor5 != msg.sender:
                    if stor6 != msg.sender:
                        if stor7 != msg.sender:
                            if stor8 != msg.sender:
                                if stor9 != msg.sender:
                                    if stor10 != msg.sender:
                                        require msg.sender == stor11
    s = 0
    s = 0
    idx = 0
    while idx < 10:
        if cd[((32 * idx) + 4)] <= 0:
            s = 0
            s = s
            idx = idx + 1
            continue 
        mem[128] = 0
        mem[100] = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
        require ext_code.size(stor1)
        call stor1.isPregnant(uint256 arg1) with:
             gas gas_remaining - 710 wei
            args (cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180)
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if not ext_call.return_data[0]:
            s = 0
            s = s
            idx = idx + 1
            continue 
        if (cd[((32 * idx) + 4)] - 14567180 / 825612) + 4844000 > block.number:
            s = 0
            s = s
            idx = idx + 1
            continue 
        if cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180 <= 0:
            s = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
            s = s
            idx = idx + 1
            continue 
        mem[96] = Mask(32, 224, sha3('giveBirth(uint256)'))
        mem[100] = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
        call stor1 with:
           funct Mask(32, 224, sha3('giveBirth(uint256)')) >> 224
             gas gas_remaining - 25710 wei
            args (cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180)
        if not ext_call.success:
            s = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
            s = s
            idx = idx + 1
            continue 
        s = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
        s = s + 1
        idx = idx + 1
        continue 
    if s > 0:
        if eth.balance(this.address) > 0:
            if stor2 != msg.sender:
                if stor3 != msg.sender:
                    if stor4 != msg.sender:
                        if stor5 != msg.sender:
                            if stor6 != msg.sender:
                                if stor7 != msg.sender:
                                    if stor8 != msg.sender:
                                        if stor9 != msg.sender:
                                            if stor10 != msg.sender:
                                                require msg.sender == stor11
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
    return s
}



}
