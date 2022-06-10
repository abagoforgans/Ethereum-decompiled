contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    call msg.sender with:
       value eth.balance(this.address) - msg.value wei
         gas 2300 * is_zero(value) wei
}



}
