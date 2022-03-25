contract main {


// =======================  Init code  ======================


const _fallback = code.data[16 len 80]




// =====================  Runtime code  =====================


function _fallback() payable {
    require not msg.value
    emit Received(msg.value);
}



}
