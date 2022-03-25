contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0x906e5f720b41c67d77f944c67fa4f29987cb9842
    return code.data[54 len 165]
}



// =====================  Runtime code  =====================


address destinationAddress;

function destinationAddress() {
    return destinationAddress
}

function flush() {
    call destinationAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() {
    call destinationAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
