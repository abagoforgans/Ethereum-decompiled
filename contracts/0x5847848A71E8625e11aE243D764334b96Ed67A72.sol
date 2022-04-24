contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = 0x6012c8cf97bead5deae237070f9587f8e7a266d
    require not msg.value
    stor1 = msg.sender
    return code.data[95 len 913]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
  stop
}

function claimAll() {
    require stor1 == msg.sender
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_a7fafab7(?) {
    mem[96 len 640] = call.data[36 len 640]
    mem[64] = 1376
    mem[736 len 640] = call.data[676 len 640]
    if arg1 <= 0:
        if eth.balance(this.address) > 0:
            call stor1 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
    else:
        if gas_remaining < 620000:
            if not var13001:
                s = var13006
                while gas_remaining >= 300000:
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
                            if ext_call.return_data[0]:
                                if ext_call.return_data[32]:
                                    require uint8(idx - 1) < 20
                                    mem[1408] = 0
                                    mem[1380] = mem[(32 * uint8(idx - 1)) + 120 len 8]
                                    require ext_code.size(stor0)
                                    call stor0.giveBirth(uint256 rg1) with:
                                         gas gas_remaining - 710 wei
                                        args mem[(32 * uint8(idx - 1)) + 120 len 8]
                                    mem[1376] = ext_call.return_data[0]
                                    require ext_call.success
                        t = ext_call.return_data[32]
                        t = ext_call.return_data[0]
                        idx = idx - 1
                        continue 
                    if eth.balance(this.address) > 0:
                        call stor1 with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
            else:
                require uint8(var28005) < 20
                _230 = mem[(32 * var30001) + 96]
                mem[1696] = 0
                mem[1376] = 0xe98b7f4d00000000000000000000000000000000000000000000000000000000
                mem[1380] = uint64(_230)
                require ext_code.size(stor0)
                call stor0.mem[var32003 len 4] with:
                     gas gas_remaining - 710 wei
                    args mem[var32003 + 4 len var32004 - 4]
                mem[var32005 len 320] = ext_call.return_data[0 len 320]
                require ext_call.success
                _471 = 0, mem[1412 len 28]
                require uint8(var34008) < 20
                if mem[(32 * uint8(var34008)) + 120 len 8] > 0:
                    if 0, mem[1412 len 28]:
                        require uint8(var34008) < 20
                        require ext_code.size(stor0)
                        call stor0.giveBirth(uint256 rg1) with:
                             gas gas_remaining - 710 wei
                            args mem[(32 * uint8(var34008)) + 120 len 8]
                        require ext_call.success
                idx = var34008
                while uint8(idx):
                    if gas_remaining < 620000:
                        if gas_remaining >= 300000:
                            idx = idx - 1
                            continue 
                    require uint8(idx - 1) < 20
                    if mem[(32 * uint8(idx - 1)) + 760 len 8] > block.number:
                        if gas_remaining >= 300000:
                            idx = idx - 1
                            continue 
                    require uint8(idx - 1) < 20
                    mem[1696] = 0
                    require ext_code.size(stor0)
                    call stor0.getKitty(uint256 rg1) with:
                         gas gas_remaining - 710 wei
                        args mem[(32 * uint8(idx - 1)) + 120 len 8]
                    mem[1376 len 320] = ext_call.return_data[0 len 320]
                    require ext_call.success
                    var34001 = 1412
                    var34004 = _471
                    var34005 = 0xe98b7f4d00000000000000000000000000000000000000000000000000000000
                    var34008 = idx - 1
                    continue 
                if eth.balance(this.address) > 0:
                    call stor1 with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
        else:
            require uint8(var26006) < 20
            if not var30001:
                s = var30006
                while gas_remaining >= 300000:
                    t = var30002
                    t = var30003
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
                            if ext_call.return_data[0]:
                                if ext_call.return_data[32]:
                                    require uint8(idx - 1) < 20
                                    mem[1408] = 0
                                    mem[1380] = mem[(32 * uint8(idx - 1)) + 120 len 8]
                                    require ext_code.size(stor0)
                                    call stor0.giveBirth(uint256 rg1) with:
                                         gas gas_remaining - 710 wei
                                        args mem[(32 * uint8(idx - 1)) + 120 len 8]
                                    mem[1376] = ext_call.return_data[0]
                                    require ext_call.success
                        t = ext_call.return_data[32]
                        t = ext_call.return_data[0]
                        idx = idx - 1
                        continue 
                    if eth.balance(this.address) > 0:
                        call stor1 with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
            else:
                require uint8(var32005) < 20
                _480 = mem[(32 * var34001) + 96]
                mem[1696] = 0
                mem[1376] = 0xe98b7f4d00000000000000000000000000000000000000000000000000000000
                mem[1380] = uint64(_480)
                require ext_code.size(stor0)
                call stor0.mem[var36003 len 4] with:
                     gas gas_remaining - 710 wei
                    args mem[var36003 + 4 len var36004 - 4]
                mem[var36005 len 320] = ext_call.return_data[0 len 320]
                require ext_call.success
                _666 = 0, mem[1412 len 28]
                require uint8(var38008) < 20
                if mem[(32 * uint8(var38008)) + 120 len 8] > 0:
                    if 0, mem[1412 len 28]:
                        require uint8(var38008) < 20
                        require ext_code.size(stor0)
                        call stor0.giveBirth(uint256 rg1) with:
                             gas gas_remaining - 710 wei
                            args mem[(32 * uint8(var38008)) + 120 len 8]
                        require ext_call.success
                idx = var38008
                while uint8(idx):
                    if gas_remaining < 620000:
                        if gas_remaining >= 300000:
                            idx = idx - 1
                            continue 
                    require uint8(idx - 1) < 20
                    if mem[(32 * uint8(idx - 1)) + 760 len 8] > block.number:
                        if gas_remaining >= 300000:
                            idx = idx - 1
                            continue 
                    require uint8(idx - 1) < 20
                    mem[1696] = 0
                    require ext_code.size(stor0)
                    call stor0.getKitty(uint256 rg1) with:
                         gas gas_remaining - 710 wei
                        args mem[(32 * uint8(idx - 1)) + 120 len 8]
                    mem[1376 len 320] = ext_call.return_data[0 len 320]
                    require ext_call.success
                    var38001 = 1412
                    var38004 = _666
                    var38005 = 0xe98b7f4d00000000000000000000000000000000000000000000000000000000
                    var38008 = idx - 1
                    continue 
                if eth.balance(this.address) > 0:
                    call stor1 with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
}



}
