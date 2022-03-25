contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
    stor0 = code.data[949 len 20]
    stor1 = msg.sender
    stor2 = code.data[981 len 20]
    return code.data[242 len 695]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
    revert 
}

function refund() {
    if msg.sender == stor0:
        call stor1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    else:
        if msg.sender == stor2:
            call stor1 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
}

function finalize() {
    if msg.sender == stor1:
        call stor0 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    else:
        if msg.sender == stor2:
            call stor0 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
}



}
