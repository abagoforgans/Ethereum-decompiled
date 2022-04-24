contract main {


// =======================  Init code  ======================


address stor0;
uint64 stor1; offset 160
address stor1;

function _fallback() payable {
    stor0 = 0x6012c8cf97bead5deae237070f9587f8e7a266d
    uint64(stor1.field_160) = 0
    require not msg.value
    address(stor1.field_0) = msg.sender
    return code.data[114 len 2279]
}



// =====================  Runtime code  =====================


address stor0;
uint64 stor1; offset 160
address stor1;
mapping of struct stor2;

function _fallback() payable {
  stop
}

function sub_caa130d2(?) {
    require address(stor1.field_0) == msg.sender
    uint64(stor1.field_160) = arg1
}

function claimAll() {
    require address(stor1.field_0) == msg.sender
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_8ed4b21a(?) {
    if not uint64(stor1.field_160):
        uint64(stor1.field_160) = uint64(block.number)
    else:
        idx = uint64(stor1.field_160)
        while uint64(idx) < block.number:
            if gas_remaining < 100000:
                uint64(stor1.field_160) = uint64(idx)
                if eth.balance(this.address) > 0:
                    call address(stor1.field_0) with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
            mem[0] = uint64(idx + 1)
            s = 0
            t = 0
            t = 0
            t = 0
            t = 0
            t = 0
            while s < stor2[idx + 1 << 192].field_0:
                if gas_remaining < 620000:
                    stor2[idx << 192].field_0 = 0
                    mem[0] = sha3(idx << 192, 2)
                    s = sha3(mem[0])
                    while sha3(sha3(idx << 192, 2)) + (stor2[idx << 192].field_0 + 3 / 4) > s:
                        stor[s] = 0
                        mem[0] = uint64(idx + 1)
                        mem[32] = 2
                        s = s + 1
                        continue 
                    mem[0] = uint64(idx + 1)
                    mem[32] = 2
                    idx = idx
                    continue 
                require s < stor2[idx + 1 << 192].field_0
                mem[416] = 0
                require ext_code.size(stor0)
                call stor0.getKitty(uint256 rg1) with:
                     gas gas_remaining - 710 wei
                    args stor('array', ('div', 0.25, ('var', 1)), ('map', ('mask_shl', 64, 0, 192, ('add', 1, ('var', 0))), ('name', 'stor2', 2)))[uint8(s)]
                mem[96 len 320] = ext_call.return_data[0 len 320]
                require ext_call.success
                require s < stor2[idx + 1 << 192].field_0
                if stor('array', ('div', 0.25, ('var', 1)), ('map', ('mask_shl', 64, 0, 192, ('add', 1, ('var', 0))), ('name', 'stor2', 2)))[uint8(s)] > 0:
                    if ext_call.return_data[128]:
                        if ext_call.return_data[96] <= block.number:
                            require s < stor2[idx + 1 << 192].field_0
                            mem[128] = 0
                            mem[100] = stor('array', ('div', 0.25, ('var', 1)), ('map', ('mask_shl', 64, 0, 192, ('add', 1, ('var', 0))), ('name', 'stor2', 2)))[uint8(s)]
                            require ext_code.size(stor0)
                            call stor0.giveBirth(uint256 rg1) with:
                                 gas gas_remaining - 710 wei
                                args stor('array', ('div', 0.25, ('var', 1)), ('map', ('mask_shl', 64, 0, 192, ('add', 1, ('var', 0))), ('name', 'stor2', 2)))[uint8(s)]
                            mem[96] = ext_call.return_data[0]
                            require ext_call.success
                mem[0] = uint64(idx + 1)
                mem[32] = 2
                s = s + 1
                t = ext_call.return_data[128]
                t = ext_call.return_data[96]
                t = ext_call.return_data[64]
                t = ext_call.return_data[32]
                t = ext_call.return_data[0]
                continue 
            mem[32] = 2
            stor2[idx + 1 << 192].field_0 = 0
            mem[0] = sha3(idx + 1 << 192, 2)
            s = sha3(sha3(idx + 1 << 192, 2))
            while sha3(sha3(idx + 1 << 192, 2)) + (stor2[idx + 1 << 192].field_0 + 3 / 4) > s:
                stor[s] = 0
                s = s + 1
                continue 
            idx = idx + 1
            continue 
        uint64(stor1.field_160) = uint64(idx)
    if eth.balance(this.address) > 0:
        call address(stor1.field_0) with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
}

function sub_a7fafab7(?) {
    mem[96 len 640] = call.data[36 len 640]
    mem[64] = 1376
    mem[736 len 640] = call.data[676 len 640]
    if arg1 <= 0:
        if not uint64(stor1.field_160):
            uint64(stor1.field_160) = uint64(block.number)
        else:
            idx = uint64(stor1.field_160)
            while uint64(idx) < block.number:
                if gas_remaining < 100000:
                    uint64(stor1.field_160) = uint64(idx)
                    if eth.balance(this.address) > 0:
                        call address(stor1.field_0) with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                mem[0] = uint64(idx + 1)
                s = 0
                t = 0
                t = 0
                t = 0
                t = 0
                t = 0
                while s < stor2[idx + 1 << 192].field_0:
                    if gas_remaining < 620000:
                        stor2[idx << 192].field_0 = 0
                        mem[0] = sha3(idx << 192, 2)
                        s = sha3(mem[0])
                        while sha3(sha3(idx << 192, 2)) + (stor2[idx << 192].field_0 + 3 / 4) > s:
                            stor[s] = 0
                            mem[0] = uint64(idx + 1)
                            mem[32] = 2
                            s = s + 1
                            continue 
                        mem[0] = uint64(idx + 1)
                        mem[32] = 2
                        idx = idx
                        continue 
                    require s < stor2[idx + 1 << 192].field_0
                    mem[1696] = 0
                    require ext_code.size(stor0)
                    call stor0.getKitty(uint256 rg1) with:
                         gas gas_remaining - 710 wei
                        args stor('array', ('div', 0.25, ('var', 1)), ('map', ('mask_shl', 64, 0, 192, ('add', 1, ('var', 0))), ('name', 'stor2', 2)))[uint8(s)]
                    mem[1376 len 320] = ext_call.return_data[0 len 320]
                    require ext_call.success
                    require s < stor2[idx + 1 << 192].field_0
                    if stor('array', ('div', 0.25, ('var', 1)), ('map', ('mask_shl', 64, 0, 192, ('add', 1, ('var', 0))), ('name', 'stor2', 2)))[uint8(s)] > 0:
                        if ext_call.return_data[128]:
                            if ext_call.return_data[96] <= block.number:
                                require s < stor2[idx + 1 << 192].field_0
                                mem[1408] = 0
                                mem[1380] = stor('array', ('div', 0.25, ('var', 1)), ('map', ('mask_shl', 64, 0, 192, ('add', 1, ('var', 0))), ('name', 'stor2', 2)))[uint8(s)]
                                require ext_code.size(stor0)
                                call stor0.giveBirth(uint256 rg1) with:
                                     gas gas_remaining - 710 wei
                                    args stor('array', ('div', 0.25, ('var', 1)), ('map', ('mask_shl', 64, 0, 192, ('add', 1, ('var', 0))), ('name', 'stor2', 2)))[uint8(s)]
                                mem[1376] = ext_call.return_data[0]
                                require ext_call.success
                    mem[0] = uint64(idx + 1)
                    mem[32] = 2
                    s = s + 1
                    t = ext_call.return_data[128]
                    t = ext_call.return_data[96]
                    t = ext_call.return_data[64]
                    t = ext_call.return_data[32]
                    t = ext_call.return_data[0]
                    continue 
                mem[32] = 2
                stor2[idx + 1 << 192].field_0 = 0
                mem[0] = sha3(idx + 1 << 192, 2)
                s = sha3(sha3(idx + 1 << 192, 2))
                while sha3(sha3(idx + 1 << 192, 2)) + (stor2[idx + 1 << 192].field_0 + 3 / 4) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                idx = idx + 1
                continue 
            uint64(stor1.field_160) = uint64(idx)
        if eth.balance(this.address) > 0:
            call address(stor1.field_0) with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
    else:
        if gas_remaining < 620000:
            if not var24001:
                s = var24009
                while gas_remaining >= 300000:
                    require uint8(s) < 20
                    stor2[mem[(32 * uint8(s)) + 760 len 8]].field_0++
                    if not stor2[mem[(32 * uint8(s)) + 760 len 8]].field_0 <= stor2[mem[(32 * uint8(s)) + 760 len 8]].field_0 + 1:
                        t = sha3(sha3(mem[(32 * uint8(s)) + 760 len 8], 2)) + (stor2[mem[(32 * uint8(s)) + 760 len 8]].field_0 + 4 / 4)
                        while sha3(sha3(mem[(32 * uint8(s)) + 760 len 8], 2)) + (stor2[mem[(32 * uint8(s)) + 760 len 8]].field_0 + 3 / 4) > t:
                            stor[t] = 0
                            t = t + 1
                            continue 
                    mem[0] = sha3(mem[(32 * uint8(s)) + 760 len 8], 2)
                    require uint8(s) < 20
                    stor2[mem[(32 * uint8(s)) + 760 len 8]][Mask(254, 0, stor2[mem[(32 * uint8(s)) + 760 len 8]].field_2)].field_0 = mem[(32 * uint8(s)) + 120 len 8] * 256^(8 * stor2[mem[(32 * uint8(s)) + 760 len 8]].field_0 % 4) or !(test266151307() * 256^(8 * stor2[mem[(32 * uint8(s)) + 760 len 8]].field_0 % 4)) and stor2[mem[(32 * uint8(s)) + 760 len 8]][Mask(254, 0, stor2[mem[(32 * uint8(s)) + 760 len 8]].field_2)].field_0
                    t = 0
                    t = 0
                    t = 0
                    t = 0
                    t = 0
                    idx = s
                    while uint8(idx):
                        if gas_remaining < 620000:
                            s = idx - 1
                            continue 
                        require uint8(idx - 1) < 20
                        if mem[(32 * uint8(idx - 1)) + 760 len 8] > block.number:
                            s = idx - 1
                            continue 
                        require uint8(idx - 1) < 20
                        mem[1696] = 0
                        require ext_code.size(stor0)
                        call stor0.getKitty(uint256 rg1) with:
                             gas gas_remaining - 710 wei
                            args mem[(32 * uint8(idx - 1)) + 120 len 8]
                        mem[1376 len 320] = ext_call.return_data[0 len 320]
                        require ext_call.success
                        require uint8(idx - 1) < 20
                        if mem[(32 * uint8(idx - 1)) + 120 len 8] > 0:
                            if ext_call.return_data[128]:
                                if ext_call.return_data[96] <= block.number:
                                    require uint8(idx - 1) < 20
                                    mem[1408] = 0
                                    mem[1380] = mem[(32 * uint8(idx - 1)) + 120 len 8]
                                    require ext_code.size(stor0)
                                    call stor0.giveBirth(uint256 rg1) with:
                                         gas gas_remaining - 710 wei
                                        args mem[(32 * uint8(idx - 1)) + 120 len 8]
                                    mem[1376] = ext_call.return_data[0]
                                    require ext_call.success
                        t = ext_call.return_data[128]
                        t = ext_call.return_data[96]
                        t = ext_call.return_data[64]
                        t = ext_call.return_data[32]
                        t = ext_call.return_data[0]
                        idx = idx - 1
                        continue 
                    if not uint64(stor1.field_160):
                        uint64(stor1.field_160) = uint64(block.number)
                    else:
                        idx = uint64(stor1.field_160)
                        while uint64(idx) < block.number:
                            if gas_remaining < 100000:
                                uint64(stor1.field_160) = uint64(idx)
                                if eth.balance(this.address) > 0:
                                    call address(stor1.field_0) with:
                                       value eth.balance(this.address) wei
                                         gas 2300 * is_zero(value) wei
                            mem[0] = uint64(idx + 1)
                            s = 0
                            t = 0
                            t = 0
                            t = 0
                            t = 0
                            t = 0
                            while s < stor2[idx + 1 << 192].field_0:
                                if gas_remaining < 620000:
                                    stor2[idx << 192].field_0 = 0
                                    mem[0] = sha3(idx << 192, 2)
                                    s = sha3(mem[0])
                                    while sha3(sha3(idx << 192, 2)) + (stor2[idx << 192].field_0 + 3 / 4) > s:
                                        stor[s] = 0
                                        mem[0] = uint64(idx + 1)
                                        mem[32] = 2
                                        s = s + 1
                                        continue 
                                    mem[0] = uint64(idx + 1)
                                    mem[32] = 2
                                    idx = idx
                                    continue 
                                require s < stor2[idx + 1 << 192].field_0
                                mem[1696] = 0
                                require ext_code.size(stor0)
                                call stor0.getKitty(uint256 rg1) with:
                                     gas gas_remaining - 710 wei
                                    args stor('array', ('div', 0.25, ('var', 1)), ('map', ('mask_shl', 64, 0, 192, ('add', 1, ('var', 0))), ('name', 'stor2', 2)))[uint8(s)]
                                mem[1376 len 320] = ext_call.return_data[0 len 320]
                                require ext_call.success
                                require s < stor2[idx + 1 << 192].field_0
                                if stor('array', ('div', 0.25, ('var', 1)), ('map', ('mask_shl', 64, 0, 192, ('add', 1, ('var', 0))), ('name', 'stor2', 2)))[uint8(s)] > 0:
                                    if ext_call.return_data[128]:
                                        if ext_call.return_data[96] <= block.number:
                                            require s < stor2[idx + 1 << 192].field_0
                                            mem[1408] = 0
                                            mem[1380] = stor('array', ('div', 0.25, ('var', 1)), ('map', ('mask_shl', 64, 0, 192, ('add', 1, ('var', 0))), ('name', 'stor2', 2)))[uint8(s)]
                                            require ext_code.size(stor0)
                                            call stor0.giveBirth(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args stor('array', ('div', 0.25, ('var', 1)), ('map', ('mask_shl', 64, 0, 192, ('add', 1, ('var', 0))), ('name', 'stor2', 2)))[uint8(s)]
                                            mem[1376] = ext_call.return_data[0]
                                            require ext_call.success
                                mem[0] = uint64(idx + 1)
                                mem[32] = 2
                                s = s + 1
                                t = ext_call.return_data[128]
                                t = ext_call.return_data[96]
                                t = ext_call.return_data[64]
                                t = ext_call.return_data[32]
                                t = ext_call.return_data[0]
                                continue 
                            mem[32] = 2
                            stor2[idx + 1 << 192].field_0 = 0
                            mem[0] = sha3(idx + 1 << 192, 2)
                            s = sha3(sha3(idx + 1 << 192, 2))
                            while sha3(sha3(idx + 1 << 192, 2)) + (stor2[idx + 1 << 192].field_0 + 3 / 4) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            idx = idx + 1
                            continue 
                        uint64(stor1.field_160) = uint64(idx)
                    if eth.balance(this.address) > 0:
                        call address(stor1.field_0) with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
            else:
                require uint8(var28008) < 20
                _1630 = mem[(32 * var30001) + 96]
                mem[1696] = 0
                mem[1376] = 0xe98b7f4d00000000000000000000000000000000000000000000000000000000
                mem[1380] = uint64(_1630)
                require ext_code.size(stor0)
                call stor0.mem[var32003 len 4] with:
                     gas gas_remaining - 710 wei
                    args mem[var32003 + 4 len var32004 - 4]
                mem[var32005 len 320] = ext_call.return_data[0 len 320]
                require ext_call.success
                _3028 = 0, mem[1412 len 28]
                _3029 = mem[1440]
                _3030 = mem[1472]
                _3031 = mem[1504]
                require uint8(var34011) < 20
                if mem[(32 * uint8(var34011)) + 120 len 8] > 0:
                    if mem[1504]:
                        if mem[1472] <= block.number:
                            require uint8(var34011) < 20
                            require ext_code.size(stor0)
                            call stor0.giveBirth(uint256 rg1) with:
                                 gas gas_remaining - 710 wei
                                args mem[(32 * uint8(var34011)) + 120 len 8]
                            require ext_call.success
                idx = var34011
                while uint8(idx):
                    if gas_remaining >= 620000:
                        require uint8(idx - 1) < 20
                        if mem[(32 * uint8(idx - 1)) + 760 len 8] <= block.number:
                            require uint8(idx - 1) < 20
                            mem[1696] = 0
                            require ext_code.size(stor0)
                            call stor0.getKitty(uint256 rg1) with:
                                 gas gas_remaining - 710 wei
                                args mem[(32 * uint8(idx - 1)) + 120 len 8]
                            mem[1376 len 320] = ext_call.return_data[0 len 320]
                            require ext_call.success
                            var34001 = 1412
                            var34004 = _3031
                            var34005 = _3030
                            var34006 = _3029
                            var34007 = _3028
                            var34008 = 0xe98b7f4d00000000000000000000000000000000000000000000000000000000
                            var34011 = idx - 1
                            continue 
                    if gas_remaining < 300000:
                    require uint8(idx - 1) < 20
                    mem[32] = 2
                    stor2[mem[(32 * uint8(idx - 1)) + 760 len 8]].field_0++
                    if not stor2[mem[(32 * uint8(idx - 1)) + 760 len 8]].field_0 <= stor2[mem[(32 * uint8(idx - 1)) + 760 len 8]].field_0 + 1:
                        s = sha3(sha3(mem[(32 * uint8(idx - 1)) + 760 len 8], 2)) + (stor2[mem[(32 * uint8(idx - 1)) + 760 len 8]].field_0 + 4 / 4)
                        while sha3(sha3(mem[(32 * uint8(idx - 1)) + 760 len 8], 2)) + (stor2[mem[(32 * uint8(idx - 1)) + 760 len 8]].field_0 + 3 / 4) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    mem[0] = sha3(mem[(32 * uint8(idx - 1)) + 760 len 8], 2)
                    require uint8(idx - 1) < 20
                    stor2[mem[(32 * uint8(idx - 1)) + 760 len 8]][Mask(254, 0, stor2[mem[(32 * uint8(idx - 1)) + 760 len 8]].field_2)].field_0 = mem[(32 * uint8(idx - 1)) + 120 len 8] * 256^(8 * stor2[mem[(32 * uint8(idx - 1)) + 760 len 8]].field_0 % 4) or !(test266151307() * 256^(8 * stor2[mem[(32 * uint8(idx - 1)) + 760 len 8]].field_0 % 4)) and stor2[mem[(32 * uint8(idx - 1)) + 760 len 8]][Mask(254, 0, stor2[mem[(32 * uint8(idx - 1)) + 760 len 8]].field_2)].field_0
                    idx = idx - 1
                    continue 
                if not uint64(stor1.field_160):
                    uint64(stor1.field_160) = uint64(block.number)
                else:
                    idx = uint64(stor1.field_160)
                    while uint64(idx) < block.number:
                        if gas_remaining < 100000:
                            uint64(stor1.field_160) = uint64(idx)
                            if eth.balance(this.address) > 0:
                                call address(stor1.field_0) with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                        mem[0] = uint64(idx + 1)
                        s = 0
                        t = 0
                        t = 0
                        t = 0
                        t = 0
                        t = 0
                        while s < stor2[idx + 1 << 192].field_0:
                            if gas_remaining < 620000:
                                stor2[idx << 192].field_0 = 0
                                mem[0] = sha3(idx << 192, 2)
                                s = sha3(mem[0])
                                while sha3(sha3(idx << 192, 2)) + (stor2[idx << 192].field_0 + 3 / 4) > s:
                                    stor[s] = 0
                                    mem[0] = uint64(idx + 1)
                                    mem[32] = 2
                                    s = s + 1
                                    continue 
                                mem[0] = uint64(idx + 1)
                                mem[32] = 2
                                idx = idx
                                continue 
                            require s < stor2[idx + 1 << 192].field_0
                            mem[1696] = 0
                            require ext_code.size(stor0)
                            call stor0.getKitty(uint256 rg1) with:
                                 gas gas_remaining - 710 wei
                                args stor('array', ('div', 0.25, ('var', 1)), ('map', ('mask_shl', 64, 0, 192, ('add', 1, ('var', 0))), ('name', 'stor2', 2)))[uint8(s)]
                            mem[1376 len 320] = ext_call.return_data[0 len 320]
                            require ext_call.success
                            require s < stor2[idx + 1 << 192].field_0
                            if stor('array', ('div', 0.25, ('var', 1)), ('map', ('mask_shl', 64, 0, 192, ('add', 1, ('var', 0))), ('name', 'stor2', 2)))[uint8(s)] > 0:
                                if ext_call.return_data[128]:
                                    if ext_call.return_data[96] <= block.number:
                                        require s < stor2[idx + 1 << 192].field_0
                                        mem[1408] = 0
                                        mem[1380] = stor('array', ('div', 0.25, ('var', 1)), ('map', ('mask_shl', 64, 0, 192, ('add', 1, ('var', 0))), ('name', 'stor2', 2)))[uint8(s)]
                                        require ext_code.size(stor0)
                                        call stor0.giveBirth(uint256 rg1) with:
                                             gas gas_remaining - 710 wei
                                            args stor('array', ('div', 0.25, ('var', 1)), ('map', ('mask_shl', 64, 0, 192, ('add', 1, ('var', 0))), ('name', 'stor2', 2)))[uint8(s)]
                                        mem[1376] = ext_call.return_data[0]
                                        require ext_call.success
                            mem[0] = uint64(idx + 1)
                            mem[32] = 2
                            s = s + 1
                            t = ext_call.return_data[128]
                            t = ext_call.return_data[96]
                            t = ext_call.return_data[64]
                            t = ext_call.return_data[32]
                            t = ext_call.return_data[0]
                            continue 
                        mem[32] = 2
                        stor2[idx + 1 << 192].field_0 = 0
                        mem[0] = sha3(idx + 1 << 192, 2)
                        s = sha3(sha3(idx + 1 << 192, 2))
                        while sha3(sha3(idx + 1 << 192, 2)) + (stor2[idx + 1 << 192].field_0 + 3 / 4) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        idx = idx + 1
                        continue 
                    uint64(stor1.field_160) = uint64(idx)
                if eth.balance(this.address) > 0:
                    call address(stor1.field_0) with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
        else:
            require uint8(var26009) < 20
            if not var30001:
                s = var30009
                while gas_remaining >= 300000:
                    require uint8(s) < 20
                    stor2[mem[(32 * uint8(s)) + 760 len 8]].field_0++
                    if not stor2[mem[(32 * uint8(s)) + 760 len 8]].field_0 <= stor2[mem[(32 * uint8(s)) + 760 len 8]].field_0 + 1:
                        t = sha3(sha3(mem[(32 * uint8(s)) + 760 len 8], 2)) + (stor2[mem[(32 * uint8(s)) + 760 len 8]].field_0 + 4 / 4)
                        while sha3(sha3(mem[(32 * uint8(s)) + 760 len 8], 2)) + (stor2[mem[(32 * uint8(s)) + 760 len 8]].field_0 + 3 / 4) > t:
                            stor[t] = 0
                            t = t + 1
                            continue 
                    mem[0] = sha3(mem[(32 * uint8(s)) + 760 len 8], 2)
                    require uint8(s) < 20
                    stor2[mem[(32 * uint8(s)) + 760 len 8]][Mask(254, 0, stor2[mem[(32 * uint8(s)) + 760 len 8]].field_2)].field_0 = mem[(32 * uint8(s)) + 120 len 8] * 256^(8 * stor2[mem[(32 * uint8(s)) + 760 len 8]].field_0 % 4) or !(test266151307() * 256^(8 * stor2[mem[(32 * uint8(s)) + 760 len 8]].field_0 % 4)) and stor2[mem[(32 * uint8(s)) + 760 len 8]][Mask(254, 0, stor2[mem[(32 * uint8(s)) + 760 len 8]].field_2)].field_0
                    t = var30002
                    t = var30003
                    t = var30004
                    t = var30005
                    t = var30006
                    idx = s
                    while uint8(idx):
                        if gas_remaining < 620000:
                            s = idx - 1
                            continue 
                        require uint8(idx - 1) < 20
                        if mem[(32 * uint8(idx - 1)) + 760 len 8] > block.number:
                            s = idx - 1
                            continue 
                        require uint8(idx - 1) < 20
                        mem[1696] = 0
                        require ext_code.size(stor0)
                        call stor0.getKitty(uint256 rg1) with:
                             gas gas_remaining - 710 wei
                            args mem[(32 * uint8(idx - 1)) + 120 len 8]
                        mem[1376 len 320] = ext_call.return_data[0 len 320]
                        require ext_call.success
                        require uint8(idx - 1) < 20
                        if mem[(32 * uint8(idx - 1)) + 120 len 8] > 0:
                            if ext_call.return_data[128]:
                                if ext_call.return_data[96] <= block.number:
                                    require uint8(idx - 1) < 20
                                    mem[1408] = 0
                                    mem[1380] = mem[(32 * uint8(idx - 1)) + 120 len 8]
                                    require ext_code.size(stor0)
                                    call stor0.giveBirth(uint256 rg1) with:
                                         gas gas_remaining - 710 wei
                                        args mem[(32 * uint8(idx - 1)) + 120 len 8]
                                    mem[1376] = ext_call.return_data[0]
                                    require ext_call.success
                        t = ext_call.return_data[128]
                        t = ext_call.return_data[96]
                        t = ext_call.return_data[64]
                        t = ext_call.return_data[32]
                        t = ext_call.return_data[0]
                        idx = idx - 1
                        continue 
                    if not uint64(stor1.field_160):
                        uint64(stor1.field_160) = uint64(block.number)
                    else:
                        idx = uint64(stor1.field_160)
                        while uint64(idx) < block.number:
                            if gas_remaining < 100000:
                                uint64(stor1.field_160) = uint64(idx)
                                if eth.balance(this.address) > 0:
                                    call address(stor1.field_0) with:
                                       value eth.balance(this.address) wei
                                         gas 2300 * is_zero(value) wei
                            mem[0] = uint64(idx + 1)
                            s = 0
                            t = 0
                            t = 0
                            t = 0
                            t = 0
                            t = 0
                            while s < stor2[idx + 1 << 192].field_0:
                                if gas_remaining < 620000:
                                    stor2[idx << 192].field_0 = 0
                                    mem[0] = sha3(idx << 192, 2)
                                    s = sha3(mem[0])
                                    while sha3(sha3(idx << 192, 2)) + (stor2[idx << 192].field_0 + 3 / 4) > s:
                                        stor[s] = 0
                                        mem[0] = uint64(idx + 1)
                                        mem[32] = 2
                                        s = s + 1
                                        continue 
                                    mem[0] = uint64(idx + 1)
                                    mem[32] = 2
                                    idx = idx
                                    continue 
                                require s < stor2[idx + 1 << 192].field_0
                                mem[1696] = 0
                                require ext_code.size(stor0)
                                call stor0.getKitty(uint256 rg1) with:
                                     gas gas_remaining - 710 wei
                                    args stor('array', ('div', 0.25, ('var', 1)), ('map', ('mask_shl', 64, 0, 192, ('add', 1, ('var', 0))), ('name', 'stor2', 2)))[uint8(s)]
                                mem[1376 len 320] = ext_call.return_data[0 len 320]
                                require ext_call.success
                                require s < stor2[idx + 1 << 192].field_0
                                if stor('array', ('div', 0.25, ('var', 1)), ('map', ('mask_shl', 64, 0, 192, ('add', 1, ('var', 0))), ('name', 'stor2', 2)))[uint8(s)] > 0:
                                    if ext_call.return_data[128]:
                                        if ext_call.return_data[96] <= block.number:
                                            require s < stor2[idx + 1 << 192].field_0
                                            mem[1408] = 0
                                            mem[1380] = stor('array', ('div', 0.25, ('var', 1)), ('map', ('mask_shl', 64, 0, 192, ('add', 1, ('var', 0))), ('name', 'stor2', 2)))[uint8(s)]
                                            require ext_code.size(stor0)
                                            call stor0.giveBirth(uint256 rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args stor('array', ('div', 0.25, ('var', 1)), ('map', ('mask_shl', 64, 0, 192, ('add', 1, ('var', 0))), ('name', 'stor2', 2)))[uint8(s)]
                                            mem[1376] = ext_call.return_data[0]
                                            require ext_call.success
                                mem[0] = uint64(idx + 1)
                                mem[32] = 2
                                s = s + 1
                                t = ext_call.return_data[128]
                                t = ext_call.return_data[96]
                                t = ext_call.return_data[64]
                                t = ext_call.return_data[32]
                                t = ext_call.return_data[0]
                                continue 
                            mem[32] = 2
                            stor2[idx + 1 << 192].field_0 = 0
                            mem[0] = sha3(idx + 1 << 192, 2)
                            s = sha3(sha3(idx + 1 << 192, 2))
                            while sha3(sha3(idx + 1 << 192, 2)) + (stor2[idx + 1 << 192].field_0 + 3 / 4) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            idx = idx + 1
                            continue 
                        uint64(stor1.field_160) = uint64(idx)
                    if eth.balance(this.address) > 0:
                        call address(stor1.field_0) with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
            else:
                require uint8(var32008) < 20
                _3037 = mem[(32 * var34001) + 96]
                mem[1696] = 0
                mem[1376] = 0xe98b7f4d00000000000000000000000000000000000000000000000000000000
                mem[1380] = uint64(_3037)
                require ext_code.size(stor0)
                call stor0.mem[var36003 len 4] with:
                     gas gas_remaining - 710 wei
                    args mem[var36003 + 4 len var36004 - 4]
                mem[var36005 len 320] = ext_call.return_data[0 len 320]
                require ext_call.success
                _4273 = 0, mem[1412 len 28]
                _4274 = mem[1440]
                _4275 = mem[1472]
                _4276 = mem[1504]
                require uint8(var38011) < 20
                if mem[(32 * uint8(var38011)) + 120 len 8] > 0:
                    if mem[1504]:
                        if mem[1472] <= block.number:
                            require uint8(var38011) < 20
                            require ext_code.size(stor0)
                            call stor0.giveBirth(uint256 rg1) with:
                                 gas gas_remaining - 710 wei
                                args mem[(32 * uint8(var38011)) + 120 len 8]
                            require ext_call.success
                idx = var38011
                while uint8(idx):
                    if gas_remaining >= 620000:
                        require uint8(idx - 1) < 20
                        if mem[(32 * uint8(idx - 1)) + 760 len 8] <= block.number:
                            require uint8(idx - 1) < 20
                            mem[1696] = 0
                            require ext_code.size(stor0)
                            call stor0.getKitty(uint256 rg1) with:
                                 gas gas_remaining - 710 wei
                                args mem[(32 * uint8(idx - 1)) + 120 len 8]
                            mem[1376 len 320] = ext_call.return_data[0 len 320]
                            require ext_call.success
                            var38001 = 1412
                            var38004 = _4276
                            var38005 = _4275
                            var38006 = _4274
                            var38007 = _4273
                            var38008 = 0xe98b7f4d00000000000000000000000000000000000000000000000000000000
                            var38011 = idx - 1
                            continue 
                    if gas_remaining < 300000:
                    require uint8(idx - 1) < 20
                    mem[32] = 2
                    stor2[mem[(32 * uint8(idx - 1)) + 760 len 8]].field_0++
                    if not stor2[mem[(32 * uint8(idx - 1)) + 760 len 8]].field_0 <= stor2[mem[(32 * uint8(idx - 1)) + 760 len 8]].field_0 + 1:
                        s = sha3(sha3(mem[(32 * uint8(idx - 1)) + 760 len 8], 2)) + (stor2[mem[(32 * uint8(idx - 1)) + 760 len 8]].field_0 + 4 / 4)
                        while sha3(sha3(mem[(32 * uint8(idx - 1)) + 760 len 8], 2)) + (stor2[mem[(32 * uint8(idx - 1)) + 760 len 8]].field_0 + 3 / 4) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    mem[0] = sha3(mem[(32 * uint8(idx - 1)) + 760 len 8], 2)
                    require uint8(idx - 1) < 20
                    stor2[mem[(32 * uint8(idx - 1)) + 760 len 8]][Mask(254, 0, stor2[mem[(32 * uint8(idx - 1)) + 760 len 8]].field_2)].field_0 = mem[(32 * uint8(idx - 1)) + 120 len 8] * 256^(8 * stor2[mem[(32 * uint8(idx - 1)) + 760 len 8]].field_0 % 4) or !(test266151307() * 256^(8 * stor2[mem[(32 * uint8(idx - 1)) + 760 len 8]].field_0 % 4)) and stor2[mem[(32 * uint8(idx - 1)) + 760 len 8]][Mask(254, 0, stor2[mem[(32 * uint8(idx - 1)) + 760 len 8]].field_2)].field_0
                    idx = idx - 1
                    continue 
                if not uint64(stor1.field_160):
                    uint64(stor1.field_160) = uint64(block.number)
                else:
                    idx = uint64(stor1.field_160)
                    while uint64(idx) < block.number:
                        if gas_remaining < 100000:
                            uint64(stor1.field_160) = uint64(idx)
                            if eth.balance(this.address) > 0:
                                call address(stor1.field_0) with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                        mem[0] = uint64(idx + 1)
                        s = 0
                        t = 0
                        t = 0
                        t = 0
                        t = 0
                        t = 0
                        while s < stor2[idx + 1 << 192].field_0:
                            if gas_remaining < 620000:
                                stor2[idx << 192].field_0 = 0
                                mem[0] = sha3(idx << 192, 2)
                                s = sha3(mem[0])
                                while sha3(sha3(idx << 192, 2)) + (stor2[idx << 192].field_0 + 3 / 4) > s:
                                    stor[s] = 0
                                    mem[0] = uint64(idx + 1)
                                    mem[32] = 2
                                    s = s + 1
                                    continue 
                                mem[0] = uint64(idx + 1)
                                mem[32] = 2
                                idx = idx
                                continue 
                            require s < stor2[idx + 1 << 192].field_0
                            mem[1696] = 0
                            require ext_code.size(stor0)
                            call stor0.getKitty(uint256 rg1) with:
                                 gas gas_remaining - 710 wei
                                args stor('array', ('div', 0.25, ('var', 1)), ('map', ('mask_shl', 64, 0, 192, ('add', 1, ('var', 0))), ('name', 'stor2', 2)))[uint8(s)]
                            mem[1376 len 320] = ext_call.return_data[0 len 320]
                            require ext_call.success
                            require s < stor2[idx + 1 << 192].field_0
                            if stor('array', ('div', 0.25, ('var', 1)), ('map', ('mask_shl', 64, 0, 192, ('add', 1, ('var', 0))), ('name', 'stor2', 2)))[uint8(s)] > 0:
                                if ext_call.return_data[128]:
                                    if ext_call.return_data[96] <= block.number:
                                        require s < stor2[idx + 1 << 192].field_0
                                        mem[1408] = 0
                                        mem[1380] = stor('array', ('div', 0.25, ('var', 1)), ('map', ('mask_shl', 64, 0, 192, ('add', 1, ('var', 0))), ('name', 'stor2', 2)))[uint8(s)]
                                        require ext_code.size(stor0)
                                        call stor0.giveBirth(uint256 rg1) with:
                                             gas gas_remaining - 710 wei
                                            args stor('array', ('div', 0.25, ('var', 1)), ('map', ('mask_shl', 64, 0, 192, ('add', 1, ('var', 0))), ('name', 'stor2', 2)))[uint8(s)]
                                        mem[1376] = ext_call.return_data[0]
                                        require ext_call.success
                            mem[0] = uint64(idx + 1)
                            mem[32] = 2
                            s = s + 1
                            t = ext_call.return_data[128]
                            t = ext_call.return_data[96]
                            t = ext_call.return_data[64]
                            t = ext_call.return_data[32]
                            t = ext_call.return_data[0]
                            continue 
                        mem[32] = 2
                        stor2[idx + 1 << 192].field_0 = 0
                        mem[0] = sha3(idx + 1 << 192, 2)
                        s = sha3(sha3(idx + 1 << 192, 2))
                        while sha3(sha3(idx + 1 << 192, 2)) + (stor2[idx + 1 << 192].field_0 + 3 / 4) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        idx = idx + 1
                        continue 
                    uint64(stor1.field_160) = uint64(idx)
                if eth.balance(this.address) > 0:
                    call address(stor1.field_0) with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
}



}
