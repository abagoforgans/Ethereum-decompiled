contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = code.data[405 len 20]
    stor1 = code.data[437 len 20]
    return code.data[101 len 292]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function destroy() {
    if stor1 != msg.sender:
    selfdestruct(stor1)
}

function _fallback() payable {
  stop
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
