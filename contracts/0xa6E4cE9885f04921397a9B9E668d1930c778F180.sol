contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = code.data[420 len 32]
    return code.data[92 len 328]
}



// =====================  Runtime code  =====================


address stor0;

function transferMoney(address arg1, uint256 arg2) payable {
    call arg1 with:
       value arg2 wei
         gas 0 wei
}

function _fallback() payable {
    call stor0.0xa158bece with:
         gas gas_remaining - 25050 wei
        args address(this.address), msg.value
    require ext_call.success
}



}
