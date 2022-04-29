contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0x38aae7e326eb7cf7d4e526a793a5ce33279b3b04
    require not msg.value
    return code.data[113 len 270]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    if msg.value > 0:
        call stor0 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Deposit(msg.sender, msg.value);
}



}
