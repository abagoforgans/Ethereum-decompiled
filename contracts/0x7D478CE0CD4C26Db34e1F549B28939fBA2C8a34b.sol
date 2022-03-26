contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = 0x2e8b83a5e633eff0a8259777c1f22499e878a2fe
    stor1 = 0x472ecdc63f64073a126f6bf4734b895be1842365
    call 0x2e8b83a5e633eff0a8259777c1f22499e878a2fe with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    call stor1 with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    return code.data[162 len 8]
}



// =====================  Runtime code  =====================


function _fallback() payable {
    revert 
}



}
