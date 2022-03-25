contract main {


// =======================  Init code  ======================


const _fallback = code.data[16 len 76]




// =====================  Runtime code  =====================


function _fallback() payable {
    emit Received(msg.value);
}



}
