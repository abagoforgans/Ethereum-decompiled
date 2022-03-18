contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0xdbf03b407c01e7cd3cbea99509d93f8dddc8c6fb
    return code.data[81 len 308]
}



// =====================  Runtime code  =====================


address stor0;

function add_funds() payable {
    emit 0xce032f56: msg.value
}

function _fallback() payable {
    if msg.value >= eth.balance(this.address):
        call stor0 with:
           value msg.value + eth.balance(this.address) wei
             gas 0 wei
    else:
        call stor0 with:
           value 2 * msg.value wei
             gas 0 wei
}



}
