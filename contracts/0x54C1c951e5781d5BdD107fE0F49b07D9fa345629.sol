contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
    stor0 = msg.sender
    stor1 = 0x5ed8cee6b63b1c6afce3ad7c92f4fd7e1b8fad9f
    stor2 = 0xd8da6bf26964af9d7eed9e03e53415d37aa96045
    return code.data[113 len 355]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
    revert
}

function refund() {
    require stor1 == msg.sender
    require stor2 == msg.sender
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function finalize() {
    require stor0 == msg.sender
    require stor2 == msg.sender
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}



}
