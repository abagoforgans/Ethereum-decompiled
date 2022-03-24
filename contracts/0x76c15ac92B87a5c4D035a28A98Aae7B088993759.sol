contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = code.data[202 len 32]
    return code.data[52 len 150]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    call stor0 with:
       value msg.value wei
         gas 0 wei
    require ext_call.success
    emit Deposit(stor0, msg.value);
}



}
