contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor1 = code.data[301 len 32]
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[68 len 233]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function transferMoney(address arg1, uint256 arg2) {
    if stor0 != msg.sender:
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require ext_code.size(stor1)
    call stor1.0xa158bece with:
         gas gas_remaining - 50 wei
        args address(this.address), msg.value
    require ext_call.success
}



}
