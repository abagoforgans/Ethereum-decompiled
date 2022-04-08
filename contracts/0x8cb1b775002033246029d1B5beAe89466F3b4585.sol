contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0xc99a6f86eb73de783fd5362aa3c9c7eb7f8ea16
    require not msg.value
    return code.data[68 len 434]
}



// =====================  Runtime code  =====================


address m_account;

function m_account() {
    return m_account
}

function _fallback() payable {
    require msg.value > 0
    require calldata.size == 4
    emit Received(address(msg.sender), Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.value);
    call m_account with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
