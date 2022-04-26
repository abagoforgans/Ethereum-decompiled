contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
    stor0 = 0xfc7e364035f52eca68d71dcfb63d1e3769413d69
    stor1 = 0x8ffc991fc4c4fc53329ad296c1afe41470cffbb3
    stor2 = 0x1e6d05543ead73fb1820fadba481aad716845fba
    require not msg.value
    return code.data[284 len 874]
}



// =====================  Runtime code  =====================


address oscarGuindzbergAddress;
address coinfabrikAddress;
address truebitAddress;

function oscarGuindzbergAddress() {
    return oscarGuindzbergAddress
}

function coinfabrikAddress() {
    return coinfabrikAddress
}

function truebitAddress() {
    return truebitAddress
}

function _fallback() payable {
  stop
}

function withdraw() {
    call oscarGuindzbergAddress with:
       value eth.balance(this.address) / 3 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call coinfabrikAddress with:
       value eth.balance(this.address) / 3 wei
         gas 2300 * is_zero(value) wei
    call truebitAddress with:
       value eth.balance(this.address) / 3 wei
         gas 2300 * is_zero(value) wei
}



}
