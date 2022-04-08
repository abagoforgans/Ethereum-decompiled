contract main {


// =======================  Init code  ======================


address stor0;
mapping of address stor1;
mapping of uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;

function _fallback() {
    stor0 = 0x6090a6e47849629b7245dfa1ca21d94cd15878ef
    stor5 = 0xdeadff52fc4272121583ec7ce825230551d317d3
    stor3 = 0
    stor4 = 0
    stor1[stor3] = 0x374fd5e2a44caeacbf8dbbcd8e008d96d348ce5a
    stor2[stor3] = 0x4b7893ddc6f076cdfede716cd0cf2d885e5d129bdf75e71cf03ec8f50d9d852b
    return code.data[385 len 1859]
}



// =====================  Runtime code  =====================


address sub_61550f45Address;
mapping of address sub_1d9ee5e6;
mapping of uint256 sub_0a926786;
uint256 v3;
uint256 sub_f2c07be5;
address stor5;

function sub_0a926786(?) {
    return sub_0a926786[arg1]
}

function sub_1d9ee5e6(?) {
    return sub_1d9ee5e6[arg1]
}

function sub_61550f45(?) {
    return sub_61550f45Address
}

function v3() {
    return v3
}

function sub_f2c07be5(?) {
    return sub_f2c07be5
}

function _fallback() payable {
  stop
}

function sub_b643cf2b(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == stor5
    idx = 0
    while uint8(idx) < arg1.length:
        v3++
        require uint8(idx) < arg1.length
        sub_1d9ee5e6[stor3] = mem[(32 * uint8(idx)) + 140 len 20]
        require uint8(idx) < arg2.length
        mem[0] = v3
        mem[32] = 2
        sub_0a926786[stor3] = mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        idx = idx + 1
        continue 
}

function aaa() {
    require ext_code.size(sub_61550f45Address)
    call sub_61550f45Address.sealedBids(address rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args sub_1d9ee5e6[stor4], sub_0a926786[stor4]
    require ext_call.success
    if ext_call.return_data[12 len 20]:
        require ext_code.size(sub_61550f45Address)
        call sub_61550f45Address.cancelBid(address rg1, bytes32 rg2) with:
             gas gas_remaining - 710 wei
            args sub_1d9ee5e6[stor4], sub_0a926786[stor4]
        require ext_call.success
        call 0xdeade017f919060cc7b324b06c5eccb2388ffb42 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    sub_f2c07be5++
}



}
