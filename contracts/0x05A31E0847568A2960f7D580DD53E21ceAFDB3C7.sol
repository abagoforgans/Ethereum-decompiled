contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 324]




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    require not msg.value
    call stor1 with:
       value 5 * eth.balance(this.address) / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}



}
