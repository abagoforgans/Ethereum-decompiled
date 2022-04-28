contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0x6012c8cf97bead5deae237070f9587f8e7a266d
    require not msg.value
    return code.data[114 len 776]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
  stop
}

function sub_48dcf0be(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= block.number
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _23 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 160] = 0
        mem[(32 * arg1.length) + 132] = _23
        require ext_code.size(stor0)
        call stor0.isReadyToBreed(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args _23
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        if not ext_call.return_data[0]:
            require idx < arg1.length
            _30 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 160] = 0
            mem[(32 * arg1.length) + 132] = _30
            require ext_code.size(stor0)
            call stor0.giveBirth(uint256 rg1) with:
                 gas gas_remaining - 710 wei
                args _30
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            require ext_call.success
        idx = idx + 1
        continue 
    call 0x33ef5d2b08069d3925b44d8b1cdfe08c9cb601d1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
