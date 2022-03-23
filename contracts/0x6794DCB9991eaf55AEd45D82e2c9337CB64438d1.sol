contract main {


// =======================  Init code  ======================


const _fallback = code.data[16 len 28]




// =====================  Runtime code  =====================


function _fallback() payable {
    require msg.value <= 0
}



}
