contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = code.data[434 len 20]
    stor1 = code.data[466 len 20]
    return code.data[101 len 321]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function destroy() {
    if stor1 != msg.sender:
    selfdestruct(stor1)
}

function sub_10178310(?) payable {
  stop
}

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
    require ext_call.success
}



}
