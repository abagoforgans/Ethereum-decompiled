contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = code.data[334 len 20]
    stor1 = code.data[366 len 20]
    return code.data[100 len 222]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert 
}

function Withdraw() {
    call stor0 with:
       value mulmod(eth.balance(this.address), 4, 5) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor1 with:
       value eth.balance(this.address) - mulmod(eth.balance(this.address), 4, 5) wei
         gas 2300 * is_zero(value) wei
    revert 
}



}
