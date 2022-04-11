contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[97 len 609]
}



// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function transfer(address arg1) payable {
    call arg1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdrawEther() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
