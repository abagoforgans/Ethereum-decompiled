contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = code.data[883 len 32]
    stor1 = msg.sender or Mask(96, 160, stor1)
    stor2 = code.data[915 len 32]
    return code.data[188 len 695]
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
