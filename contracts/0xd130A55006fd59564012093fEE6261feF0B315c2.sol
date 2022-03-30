contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;

function _fallback() {
    stor0 = code.data[477 len 20]
    stor1 = code.data[509 len 20]
    stor2 = code.data[529 len 32]
    return code.data[113 len 352]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor2;

function _fallback() payable {
    emit Deposit(msg.sender, msg.value);
}

function withdraw() {
    if stor0 != msg.sender:
        require stor1 == msg.sender
    call stor0 with:
       value stor2 * eth.balance(this.address) / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}



}
