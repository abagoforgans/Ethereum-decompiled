contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    require not msg.value
    return code.data[94 len 649]
}



// =====================  Runtime code  =====================


address owner;

function Owner() {
    return owner
}

function _fallback() payable {
  stop
}

function withdraw() payable {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function multiplicate(address arg1) payable {
    if msg.value >= eth.balance(this.address):
        call arg1 with:
           value eth.balance(this.address) + msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}



}
