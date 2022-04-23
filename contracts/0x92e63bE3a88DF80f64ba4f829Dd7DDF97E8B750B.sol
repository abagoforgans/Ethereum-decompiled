contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    require not msg.value
    return code.data[57 len 595]
}



// =====================  Runtime code  =====================


const version = '1.0'


address owner;

function Owner() {
    return owner
}

function _fallback() payable {
  stop
}

function withdraw() payable {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function Later(address arg1) payable {
    if msg.value >= eth.balance(this.address):
        call arg1 with:
           value eth.balance(this.address) + msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}



}
