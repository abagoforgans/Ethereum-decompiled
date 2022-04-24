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
    return code.data[114 len 2313]
}



// =====================  Runtime code  =====================


#
#  - sub_a7fafab7(?)
#
address stor0;
uint64 stor1; offset 160
address stor1;
mapping of uint256 stor2;

function _fallback() payable {
  stop
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
            u = 0
            v = 0
            w = 0
            while w < stor2[idx + 1 << 192]:
                if gas_remaining < 620000:
                    stor2[idx << 192] = 0
                    mem[0] = sha3(idx << 192, 2)
                    s = sha3(mem[0])
                    while sha3(sha3(idx << 192, 2)) + (stor2[idx << 192] + 3 / 4) > s:
                        stor[s] = 0
                        mem[0] = uint64(idx + 1)
                        mem[32] = 2
                        s = s + 1
                        continue 
                    mem[0] = uint64(idx + 1)
                    mem[32] = 2
                    idx = idx
                    continue 
                require w < stor2[idx + 1 << 192]
                mem[128] = 0
                mem[100] = stor('array', ('div', 0.25, ('var', 5)), ('map', ('mask_shl', 64, 0, 192, ('add', 1, ('var', 0))), ('name', 'stor2', 2)))[uint8(w)]
                require ext_code.size(stor0)
                call stor0.isPregnant(uint256 rg1) with:
                     gas gas_remaining - 710 wei
                    args stor('array', ('div', 0.25, ('var', 5)), ('map', ('mask_shl', 64, 0, 192, ('add', 1, ('var', 0))), ('name', 'stor2', 2)))[uint8(w)]
                mem[96] = ext_call.return_data[0]
                require ext_call.success
                if not ext_call.return_data[0]:
                    mem[0] = uint64(idx + 1)
                    mem[32] = 2
                    s = s
                    t = t
                    u = u
                    v = v
                    w = w + 1
                    continue 
                require w < stor2[idx + 1 << 192]
                mem[416] = 0
                require ext_code.size(stor0)
                call stor0.getKitty(uint256 rg1) with:
                     gas gas_remaining - 710 wei
                    args stor('array', ('div', 0.25, ('var', 5)), ('map', ('mask_shl', 64, 0, 192, ('add', 1, ('var', 0))), ('name', 'stor2', 2)))[uint8(w)]
                mem[96 len 320] = ext_call.return_data[0 len 320]
                require ext_call.success
                if ext_call.return_data[96] <= block.number:
                    require w < stor2[idx + 1 << 192]
                    mem[128] = 0
                    mem[100] = stor('array', ('div', 0.25, ('var', 5)), ('map', ('mask_shl', 64, 0, 192, ('add', 1, ('var', 0))), ('name', 'stor2', 2)))[uint8(w)]
                    require ext_code.size(stor0)
                    call stor0.giveBirth(uint256 rg1) with:
                         gas gas_remaining - 710 wei
                        args stor('array', ('div', 0.25, ('var', 5)), ('map', ('mask_shl', 64, 0, 192, ('add', 1, ('var', 0))), ('name', 'stor2', 2)))[uint8(w)]
                    mem[96] = ext_call.return_data[0]
                    require ext_call.success
                mem[0] = uint64(idx + 1)
                mem[32] = 2
                s = ext_call.return_data[64]
                t = ext_call.return_data[32]
                u = ext_call.return_data[0]
                v = ext_call.return_data[96]
                w = w + 1
                continue 
            mem[32] = 2
            stor2[idx + 1 << 192] = 0
            mem[0] = sha3(idx + 1 << 192, 2)
            s = sha3(sha3(idx + 1 << 192, 2))
            while sha3(sha3(idx + 1 << 192, 2)) + (stor2[idx + 1 << 192] + 3 / 4) > s:
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
