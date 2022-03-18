contract main {


// =======================  Init code  ======================


const _fallback = code.data[16 len 84]




// =====================  Runtime code  =====================


function _fallback() payable {
    emit Deposit(msg.value, msg.sender);
}



}
