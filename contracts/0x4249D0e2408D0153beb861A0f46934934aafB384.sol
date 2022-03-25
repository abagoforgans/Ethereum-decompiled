contract main {


// =======================  Init code  ======================


array of address stor0;
uint256 stor1;

function _fallback() payable {
    mem[96] = 0xfcbfb5fe11fd9fd2901ee8476ff5ba90119263ca
    mem[128] = 0x3b9aecb7a07356a79ad754b60099e1d342716820
    mem[160] = 0x5a72c0ba6ebec005d332ff7b5b62f2769f4f49e6
    mem[192] = 0x24f86136ce2cf28fba61b7ab8de6171cfdb52e80
    mem[224] = 0x7349c4ae4864a9e443b40991fcfcc21d5e9491eb
    stor0.length = 5
    s = 0
    idx = 96
    while 256 > idx:
        uint256(stor0[s]) = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 5
    while stor0.length > idx:
        address(stor0[idx]) = 0
        idx = idx + 1
        continue 
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[386 len 2864]
}



// =====================  Runtime code  =====================


array of struct stor0;
address stor1;

function kill() {
    if stor1 != msg.sender:
    require 0 < stor0.length
    call address(stor0.field_0) with:
       value eth.balance(this.address) / 5 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require 1 < stor0.length
    call address(stor0.field_256) with:
       value eth.balance(this.address) / 5 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require 2 < stor0.length
    call address(stor0.field_512) with:
       value eth.balance(this.address) / 5 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require 3 < stor0.length
    call address(stor0.field_768) with:
       value eth.balance(this.address) / 5 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require 4 < stor0.length
    call address(stor0.field_1024) with:
       value eth.balance(this.address) / 5 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    selfdestruct(stor1)
}

function _fallback() payable {
    revert 
}

function getAddresses() {
    if stor0.length:
        mem[160] = address(stor0.field_0)
        idx = 160
        s = 0
        while (32 * stor0.length) + 128 > idx:
            mem[idx + 32] = stor0[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor0.length, data=mem[160 len 32 * stor0.length])
}

function donate() {
    require 0 < stor0.length
    call address(stor0.field_0) with:
       value msg.value / 5 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require 1 < stor0.length
    call address(stor0.field_256) with:
       value msg.value / 5 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require 2 < stor0.length
    call address(stor0.field_512) with:
       value msg.value / 5 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require 3 < stor0.length
    call address(stor0.field_768) with:
       value msg.value / 5 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require 4 < stor0.length
    call address(stor0.field_1024) with:
       value msg.value / 5 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Donation(msg.sender, msg.value);
}

function payOut() {
    idx = 0
    s = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            idx = idx + 1
            s = s
            continue 
        require 0 < stor0.length
        call address(stor0.field_0) with:
           value eth.balance(this.address) / 5 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require 1 < stor0.length
        call address(stor0.field_256) with:
           value eth.balance(this.address) / 5 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require 2 < stor0.length
        call address(stor0.field_512) with:
           value eth.balance(this.address) / 5 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require 3 < stor0.length
        call address(stor0.field_768) with:
           value eth.balance(this.address) / 5 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require 4 < stor0.length
        mem[0] = 0
        call address(stor0.field_1024) with:
           value eth.balance(this.address) / 5 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        idx = idx + 1
        s = eth.balance(this.address) / 5
        continue 
}



}
