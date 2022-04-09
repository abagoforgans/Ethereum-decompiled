contract main {


// =======================  Init code  ======================


function _fallback() {
    call 0x394be54fa757c8ad748b42883c6607d791f35830 with:
       value msg.value / 5 wei
         gas 2300 * is_zero(value) wei
    call 0xe432a37dd64212cbcd3e0f153ad529d29f0f490d with:
       value msg.value / 5 wei
         gas 2300 * is_zero(value) wei
    call 0x42ed4caa6826f98cb90c7b4596e428dc2c9a00f5 with:
       value 3 * msg.value / 5 wei
         gas 2300 * is_zero(value) wei
    return code.data[315 len 54]
}



// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}



}
