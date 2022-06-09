contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[471 len 20]
    return code.data[104 len 355]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function SendTokens(uint256 arg1) {
    if stor0 == msg.sender:
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args stor0, arg1
        require ext_call.success
}



}
