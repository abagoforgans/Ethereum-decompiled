contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
address stor2;

function _fallback() payable {
    stor0 = 0x6012c8cf97bead5deae237070f9587f8e7a266d
    stor1 = 0x70a0823100000000000000000000000000000000000000000000000000000000
    stor2 = 0xde49de6739d54b43c80e8e0d15a4adc2b35fbf11
    require not msg.value
    return code.data[127 len 198]
}



// =====================  Runtime code  =====================


uint256 stor0;
uint32 stor1; offset 224
address stor2;

function _fallback() payable {
    if calldata.size >= 8:
        call stor0 with:
           funct stor1
             gas gas_remaining wei
            args (1191101067 xor arg1)
        call stor2 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}



}
