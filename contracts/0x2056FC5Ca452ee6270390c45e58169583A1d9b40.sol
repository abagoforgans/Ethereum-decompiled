contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[802 len 20]
    return code.data[95 len 695]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
  stop
}

function redeem() {
    require stor0 == msg.sender
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_43d87b4b(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    while uint16(idx) < arg1.length:
        require uint16(idx) < arg1.length
        _21 = mem[(32 * uint16(idx)) + 128]
        mem[(32 * arg1.length) + 160] = 0
        mem[(32 * arg1.length) + 132] = uint32(_21)
        require ext_code.size(stor1)
        call stor1.isPregnant(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args uint32(_21)
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0]:
            require uint16(idx + 1) < arg1.length
            if mem[(32 * uint16(idx + 1)) + 156 len 4] > block.number:
            require uint16(idx) < arg1.length
            _30 = mem[(32 * uint16(idx)) + 128]
            mem[(32 * arg1.length) + 160] = 0
            mem[(32 * arg1.length) + 132] = uint32(_30)
            require ext_code.size(stor1)
            call stor1.giveBirth(uint256 rg1) with:
                 gas gas_remaining - 710 wei
                args uint32(_30)
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            require ext_call.success
        idx = idx + 2
        continue 
}



}
