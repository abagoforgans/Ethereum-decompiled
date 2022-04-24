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
    return code.data[114 len 1668]
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
            mem[0] = uint64(idx + 1)
            mem[32] = 2
            s = 0
            while s < stor2[idx + 1 << 192]:
                if gas_remaining < 320000:
                    mem[0] = uint64(idx + 1)
                    mem[32] = 2
                    idx = idx
                    continue 
                require s < stor2[idx + 1 << 192]
                mem[128] = 0
                mem[100] = stor('array', ('div', 0.25, ('var', 1)), ('map', ('mask_shl', 64, 0, 192, ('add', 1, ('var', 0))), ('name', 'stor2', 2)))[uint8(s)]
                require ext_code.size(stor0)
                call stor0.isPregnant(uint256 rg1) with:
                     gas gas_remaining - 710 wei
                    args stor('array', ('div', 0.25, ('var', 1)), ('map', ('mask_shl', 64, 0, 192, ('add', 1, ('var', 0))), ('name', 'stor2', 2)))[uint8(s)]
                mem[96] = ext_call.return_data[0]
                require ext_call.success
                if ext_call.return_data[0]:
                    require s < stor2[idx + 1 << 192]
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
