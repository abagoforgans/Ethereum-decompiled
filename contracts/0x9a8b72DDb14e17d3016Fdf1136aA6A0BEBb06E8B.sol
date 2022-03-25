contract main {


// =======================  Init code  ======================


function _fallback() payable {
    selfdestruct(code.data[45 len 20])
}



// =====================  Runtime code  =====================




}
