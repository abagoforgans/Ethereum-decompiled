contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0x6012c8cf97bead5deae237070f9587f8e7a266d
    require not msg.value
    return code.data[114 len 633]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
  stop
}

function withdraw() {
    require msg.sender == 0xe955fc927bd859a2c2b847dbd67a87a34b9c6339
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_b20e06e0(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _12 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 160] = 0
        mem[(32 * arg1.length) + 132] = _12
        require ext_code.size(stor0)
        call stor0.giveBirth(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args _12
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        continue 
}



}
