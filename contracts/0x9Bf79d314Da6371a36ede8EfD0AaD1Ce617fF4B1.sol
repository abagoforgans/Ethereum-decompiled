contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 88]




// =====================  Runtime code  =====================


function _fallback() {
    selfdestruct(msg.sender)
}



}
