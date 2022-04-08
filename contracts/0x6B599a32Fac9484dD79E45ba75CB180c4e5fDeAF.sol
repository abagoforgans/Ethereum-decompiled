contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0xc99a6f86eb73de783fd5362aa3c9c7eb7f8ea16
    require not msg.value
    return code.data[68 len 358]
}



// =====================  Runtime code  =====================


address m_account;

function m_account() {
    return m_account
}

function _fallback() payable {
    if msg.value <= 0:
    emit Received(msg.sender, address(this.address), msg.value);
    call m_account with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
