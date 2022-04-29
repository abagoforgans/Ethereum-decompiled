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
    return code.data[1029 len 2570]
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
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function sub_74523e77(?) {
    mem[96] = 0
    mem[128 len 288] = 0
    if msg.sender == stor2:
        mem[448] = 10
        s = 0
        idx = 0
        while idx < 10:
            if cd[((32 * idx) + 4)] <= 0:
                s = 0
                idx = idx + 1
                continue 
            mem[832] = 0
            mem[804] = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
            require ext_code.size(stor1)
            call stor1.isPregnant(uint256 arg1) with:
                 gas gas_remaining - 710 wei
                args (cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180)
            mem[800] = ext_call.return_data[0]
            require ext_call.success
            if not ext_call.return_data[0]:
                s = 0
                idx = idx + 1
                continue 
            if (cd[((32 * idx) + 4)] - 14567180 / 825612) + 4844000 > block.number:
                s = 0
                idx = idx + 1
                continue 
            if cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180 > 0:
                require idx < 10
                mem[(32 * idx) + 480] = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
            s = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
            idx = idx + 1
            continue 
        s = 0
        idx = 0
        while idx < 10:
            require idx < mem[448]
            if mem[(32 * idx) + 480] <= 0:
                s = s
                idx = idx + 1
                continue 
            mem[800] = 'giveBirth(uint256)'
            require idx < mem[448]
            _638 = mem[(32 * idx) + 480]
            mem[800] = Mask(32, 224, sha3('giveBirth(uint256)'))
            mem[804] = _638
            call stor1 with:
               funct Mask(32, 224, sha3('giveBirth(uint256)')) >> 224
                 gas gas_remaining - 25710 wei
                args _638
            if ext_call.success:
                require idx < mem[448]
                require idx < 10
                mem[(32 * idx) + 96] = mem[(32 * idx) + 480]
            s = ext_call.success
            idx = idx + 1
            continue 
    else:
        if msg.sender == stor3:
            mem[448] = 10
            s = 0
            idx = 0
            while idx < 10:
                if cd[((32 * idx) + 4)] <= 0:
                    s = 0
                    idx = idx + 1
                    continue 
                mem[832] = 0
                mem[804] = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
                require ext_code.size(stor1)
                call stor1.isPregnant(uint256 arg1) with:
                     gas gas_remaining - 710 wei
                    args (cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180)
                mem[800] = ext_call.return_data[0]
                require ext_call.success
                if not ext_call.return_data[0]:
                    s = 0
                    idx = idx + 1
                    continue 
                if (cd[((32 * idx) + 4)] - 14567180 / 825612) + 4844000 > block.number:
                    s = 0
                    idx = idx + 1
                    continue 
                if cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180 > 0:
                    require idx < 10
                    mem[(32 * idx) + 480] = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
                s = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
                idx = idx + 1
                continue 
            s = 0
            idx = 0
            while idx < 10:
                require idx < mem[448]
                if mem[(32 * idx) + 480] <= 0:
                    s = s
                    idx = idx + 1
                    continue 
                mem[800] = 'giveBirth(uint256)'
                require idx < mem[448]
                _646 = mem[(32 * idx) + 480]
                mem[800] = Mask(32, 224, sha3('giveBirth(uint256)'))
                mem[804] = _646
                call stor1 with:
                   funct Mask(32, 224, sha3('giveBirth(uint256)')) >> 224
                     gas gas_remaining - 25710 wei
                    args _646
                if ext_call.success:
                    require idx < mem[448]
                    require idx < 10
                    mem[(32 * idx) + 96] = mem[(32 * idx) + 480]
                s = ext_call.success
                idx = idx + 1
                continue 
        else:
            if msg.sender == stor4:
                mem[448] = 10
                s = 0
                idx = 0
                while idx < 10:
                    if cd[((32 * idx) + 4)] <= 0:
                        s = 0
                        idx = idx + 1
                        continue 
                    mem[832] = 0
                    mem[804] = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
                    require ext_code.size(stor1)
                    call stor1.isPregnant(uint256 arg1) with:
                         gas gas_remaining - 710 wei
                        args (cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180)
                    mem[800] = ext_call.return_data[0]
                    require ext_call.success
                    if not ext_call.return_data[0]:
                        s = 0
                        idx = idx + 1
                        continue 
                    if (cd[((32 * idx) + 4)] - 14567180 / 825612) + 4844000 > block.number:
                        s = 0
                        idx = idx + 1
                        continue 
                    if cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180 > 0:
                        require idx < 10
                        mem[(32 * idx) + 480] = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
                    s = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
                    idx = idx + 1
                    continue 
                s = 0
                idx = 0
                while idx < 10:
                    require idx < mem[448]
                    if mem[(32 * idx) + 480] <= 0:
                        s = s
                        idx = idx + 1
                        continue 
                    mem[800] = 'giveBirth(uint256)'
                    require idx < mem[448]
                    _654 = mem[(32 * idx) + 480]
                    mem[800] = Mask(32, 224, sha3('giveBirth(uint256)'))
                    mem[804] = _654
                    call stor1 with:
                       funct Mask(32, 224, sha3('giveBirth(uint256)')) >> 224
                         gas gas_remaining - 25710 wei
                        args _654
                    if ext_call.success:
                        require idx < mem[448]
                        require idx < 10
                        mem[(32 * idx) + 96] = mem[(32 * idx) + 480]
                    s = ext_call.success
                    idx = idx + 1
                    continue 
            else:
                if msg.sender == stor5:
                    mem[448] = 10
                    s = 0
                    idx = 0
                    while idx < 10:
                        if cd[((32 * idx) + 4)] <= 0:
                            s = 0
                            idx = idx + 1
                            continue 
                        mem[832] = 0
                        mem[804] = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
                        require ext_code.size(stor1)
                        call stor1.isPregnant(uint256 arg1) with:
                             gas gas_remaining - 710 wei
                            args (cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180)
                        mem[800] = ext_call.return_data[0]
                        require ext_call.success
                        if not ext_call.return_data[0]:
                            s = 0
                            idx = idx + 1
                            continue 
                        if (cd[((32 * idx) + 4)] - 14567180 / 825612) + 4844000 > block.number:
                            s = 0
                            idx = idx + 1
                            continue 
                        if cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180 > 0:
                            require idx < 10
                            mem[(32 * idx) + 480] = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
                        s = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
                        idx = idx + 1
                        continue 
                    s = 0
                    idx = 0
                    while idx < 10:
                        require idx < mem[448]
                        if mem[(32 * idx) + 480] <= 0:
                            s = s
                            idx = idx + 1
                            continue 
                        mem[800] = 'giveBirth(uint256)'
                        require idx < mem[448]
                        _662 = mem[(32 * idx) + 480]
                        mem[800] = Mask(32, 224, sha3('giveBirth(uint256)'))
                        mem[804] = _662
                        call stor1 with:
                           funct Mask(32, 224, sha3('giveBirth(uint256)')) >> 224
                             gas gas_remaining - 25710 wei
                            args _662
                        if ext_call.success:
                            require idx < mem[448]
                            require idx < 10
                            mem[(32 * idx) + 96] = mem[(32 * idx) + 480]
                        s = ext_call.success
                        idx = idx + 1
                        continue 
                else:
                    if msg.sender == stor6:
                        mem[448] = 10
                        s = 0
                        idx = 0
                        while idx < 10:
                            if cd[((32 * idx) + 4)] <= 0:
                                s = 0
                                idx = idx + 1
                                continue 
                            mem[832] = 0
                            mem[804] = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
                            require ext_code.size(stor1)
                            call stor1.isPregnant(uint256 arg1) with:
                                 gas gas_remaining - 710 wei
                                args (cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180)
                            mem[800] = ext_call.return_data[0]
                            require ext_call.success
                            if not ext_call.return_data[0]:
                                s = 0
                                idx = idx + 1
                                continue 
                            if (cd[((32 * idx) + 4)] - 14567180 / 825612) + 4844000 > block.number:
                                s = 0
                                idx = idx + 1
                                continue 
                            if cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180 > 0:
                                require idx < 10
                                mem[(32 * idx) + 480] = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
                            s = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
                            idx = idx + 1
                            continue 
                        s = 0
                        idx = 0
                        while idx < 10:
                            require idx < mem[448]
                            if mem[(32 * idx) + 480] <= 0:
                                s = s
                                idx = idx + 1
                                continue 
                            mem[800] = 'giveBirth(uint256)'
                            require idx < mem[448]
                            _670 = mem[(32 * idx) + 480]
                            mem[800] = Mask(32, 224, sha3('giveBirth(uint256)'))
                            mem[804] = _670
                            call stor1 with:
                               funct Mask(32, 224, sha3('giveBirth(uint256)')) >> 224
                                 gas gas_remaining - 25710 wei
                                args _670
                            if ext_call.success:
                                require idx < mem[448]
                                require idx < 10
                                mem[(32 * idx) + 96] = mem[(32 * idx) + 480]
                            s = ext_call.success
                            idx = idx + 1
                            continue 
                    else:
                        if msg.sender == stor7:
                            mem[448] = 10
                            s = 0
                            idx = 0
                            while idx < 10:
                                if cd[((32 * idx) + 4)] <= 0:
                                    s = 0
                                    idx = idx + 1
                                    continue 
                                mem[832] = 0
                                mem[804] = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
                                require ext_code.size(stor1)
                                call stor1.isPregnant(uint256 arg1) with:
                                     gas gas_remaining - 710 wei
                                    args (cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180)
                                mem[800] = ext_call.return_data[0]
                                require ext_call.success
                                if not ext_call.return_data[0]:
                                    s = 0
                                    idx = idx + 1
                                    continue 
                                if (cd[((32 * idx) + 4)] - 14567180 / 825612) + 4844000 > block.number:
                                    s = 0
                                    idx = idx + 1
                                    continue 
                                if cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180 > 0:
                                    require idx < 10
                                    mem[(32 * idx) + 480] = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
                                s = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
                                idx = idx + 1
                                continue 
                            s = 0
                            idx = 0
                            while idx < 10:
                                require idx < mem[448]
                                if mem[(32 * idx) + 480] <= 0:
                                    s = s
                                    idx = idx + 1
                                    continue 
                                mem[800] = 'giveBirth(uint256)'
                                require idx < mem[448]
                                _678 = mem[(32 * idx) + 480]
                                mem[800] = Mask(32, 224, sha3('giveBirth(uint256)'))
                                mem[804] = _678
                                call stor1 with:
                                   funct Mask(32, 224, sha3('giveBirth(uint256)')) >> 224
                                     gas gas_remaining - 25710 wei
                                    args _678
                                if ext_call.success:
                                    require idx < mem[448]
                                    require idx < 10
                                    mem[(32 * idx) + 96] = mem[(32 * idx) + 480]
                                s = ext_call.success
                                idx = idx + 1
                                continue 
                        else:
                            if msg.sender == stor8:
                                mem[448] = 10
                                s = 0
                                idx = 0
                                while idx < 10:
                                    if cd[((32 * idx) + 4)] <= 0:
                                        s = 0
                                        idx = idx + 1
                                        continue 
                                    mem[832] = 0
                                    mem[804] = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
                                    require ext_code.size(stor1)
                                    call stor1.isPregnant(uint256 arg1) with:
                                         gas gas_remaining - 710 wei
                                        args (cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180)
                                    mem[800] = ext_call.return_data[0]
                                    require ext_call.success
                                    if not ext_call.return_data[0]:
                                        s = 0
                                        idx = idx + 1
                                        continue 
                                    if (cd[((32 * idx) + 4)] - 14567180 / 825612) + 4844000 > block.number:
                                        s = 0
                                        idx = idx + 1
                                        continue 
                                    if cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180 > 0:
                                        require idx < 10
                                        mem[(32 * idx) + 480] = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
                                    s = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
                                    idx = idx + 1
                                    continue 
                                s = 0
                                idx = 0
                                while idx < 10:
                                    require idx < mem[448]
                                    if mem[(32 * idx) + 480] <= 0:
                                        s = s
                                        idx = idx + 1
                                        continue 
                                    mem[800] = 'giveBirth(uint256)'
                                    require idx < mem[448]
                                    _686 = mem[(32 * idx) + 480]
                                    mem[800] = Mask(32, 224, sha3('giveBirth(uint256)'))
                                    mem[804] = _686
                                    call stor1 with:
                                       funct Mask(32, 224, sha3('giveBirth(uint256)')) >> 224
                                         gas gas_remaining - 25710 wei
                                        args _686
                                    if ext_call.success:
                                        require idx < mem[448]
                                        require idx < 10
                                        mem[(32 * idx) + 96] = mem[(32 * idx) + 480]
                                    s = ext_call.success
                                    idx = idx + 1
                                    continue 
                            else:
                                if msg.sender == stor9:
                                    mem[448] = 10
                                    s = 0
                                    idx = 0
                                    while idx < 10:
                                        if cd[((32 * idx) + 4)] <= 0:
                                            s = 0
                                            idx = idx + 1
                                            continue 
                                        mem[832] = 0
                                        mem[804] = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
                                        require ext_code.size(stor1)
                                        call stor1.isPregnant(uint256 arg1) with:
                                             gas gas_remaining - 710 wei
                                            args (cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180)
                                        mem[800] = ext_call.return_data[0]
                                        require ext_call.success
                                        if not ext_call.return_data[0]:
                                            s = 0
                                            idx = idx + 1
                                            continue 
                                        if (cd[((32 * idx) + 4)] - 14567180 / 825612) + 4844000 > block.number:
                                            s = 0
                                            idx = idx + 1
                                            continue 
                                        if cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180 > 0:
                                            require idx < 10
                                            mem[(32 * idx) + 480] = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
                                        s = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
                                        idx = idx + 1
                                        continue 
                                    s = 0
                                    idx = 0
                                    while idx < 10:
                                        require idx < mem[448]
                                        if mem[(32 * idx) + 480] <= 0:
                                            s = s
                                            idx = idx + 1
                                            continue 
                                        mem[800] = 'giveBirth(uint256)'
                                        require idx < mem[448]
                                        _694 = mem[(32 * idx) + 480]
                                        mem[800] = Mask(32, 224, sha3('giveBirth(uint256)'))
                                        mem[804] = _694
                                        call stor1 with:
                                           funct Mask(32, 224, sha3('giveBirth(uint256)')) >> 224
                                             gas gas_remaining - 25710 wei
                                            args _694
                                        if ext_call.success:
                                            require idx < mem[448]
                                            require idx < 10
                                            mem[(32 * idx) + 96] = mem[(32 * idx) + 480]
                                        s = ext_call.success
                                        idx = idx + 1
                                        continue 
                                else:
                                    if msg.sender == stor10:
                                        mem[448] = 10
                                        s = 0
                                        idx = 0
                                        while idx < 10:
                                            if cd[((32 * idx) + 4)] <= 0:
                                                s = 0
                                                idx = idx + 1
                                                continue 
                                            mem[832] = 0
                                            mem[804] = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
                                            require ext_code.size(stor1)
                                            call stor1.isPregnant(uint256 arg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180)
                                            mem[800] = ext_call.return_data[0]
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                                s = 0
                                                idx = idx + 1
                                                continue 
                                            if (cd[((32 * idx) + 4)] - 14567180 / 825612) + 4844000 > block.number:
                                                s = 0
                                                idx = idx + 1
                                                continue 
                                            if cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180 > 0:
                                                require idx < 10
                                                mem[(32 * idx) + 480] = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
                                            s = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
                                            idx = idx + 1
                                            continue 
                                        s = 0
                                        idx = 0
                                        while idx < 10:
                                            require idx < mem[448]
                                            if mem[(32 * idx) + 480] <= 0:
                                                s = s
                                                idx = idx + 1
                                                continue 
                                            mem[800] = 'giveBirth(uint256)'
                                            require idx < mem[448]
                                            _702 = mem[(32 * idx) + 480]
                                            mem[800] = Mask(32, 224, sha3('giveBirth(uint256)'))
                                            mem[804] = _702
                                            call stor1 with:
                                               funct Mask(32, 224, sha3('giveBirth(uint256)')) >> 224
                                                 gas gas_remaining - 25710 wei
                                                args _702
                                            if ext_call.success:
                                                require idx < mem[448]
                                                require idx < 10
                                                mem[(32 * idx) + 96] = mem[(32 * idx) + 480]
                                            s = ext_call.success
                                            idx = idx + 1
                                            continue 
                                    else:
                                        require msg.sender == stor11
                                        mem[448] = 10
                                        s = 0
                                        idx = 0
                                        while idx < 10:
                                            if cd[((32 * idx) + 4)] <= 0:
                                                s = 0
                                                idx = idx + 1
                                                continue 
                                            mem[832] = 0
                                            mem[804] = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
                                            require ext_code.size(stor1)
                                            call stor1.isPregnant(uint256 arg1) with:
                                                 gas gas_remaining - 710 wei
                                                args (cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180)
                                            mem[800] = ext_call.return_data[0]
                                            require ext_call.success
                                            if not ext_call.return_data[0]:
                                                s = 0
                                                idx = idx + 1
                                                continue 
                                            if (cd[((32 * idx) + 4)] - 14567180 / 825612) + 4844000 > block.number:
                                                s = 0
                                                idx = idx + 1
                                                continue 
                                            if cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180 > 0:
                                                require idx < 10
                                                mem[(32 * idx) + 480] = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
                                            s = cd[((32 * idx) + 4)] + (-825612 * cd[((32 * idx) + 4)] - 14567180 / 825612) - 14567180
                                            idx = idx + 1
                                            continue 
                                        s = 0
                                        idx = 0
                                        while idx < 10:
                                            require idx < mem[448]
                                            if mem[(32 * idx) + 480] <= 0:
                                                s = s
                                                idx = idx + 1
                                                continue 
                                            mem[800] = 'giveBirth(uint256)'
                                            require idx < mem[448]
                                            _710 = mem[(32 * idx) + 480]
                                            mem[800] = Mask(32, 224, sha3('giveBirth(uint256)'))
                                            mem[804] = _710
                                            call stor1 with:
                                               funct Mask(32, 224, sha3('giveBirth(uint256)')) >> 224
                                                 gas gas_remaining - 25710 wei
                                                args _710
                                            if ext_call.success:
                                                require idx < mem[448]
                                                require idx < 10
                                                mem[(32 * idx) + 96] = mem[(32 * idx) + 480]
                                            s = ext_call.success
                                            idx = idx + 1
                                            continue 
    return memory
      from 96
       len 320
}



}
