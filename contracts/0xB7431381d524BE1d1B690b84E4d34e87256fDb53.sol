contract main {


// =======================  Init code  ======================


function _fallback() payable {
    selfdestruct(0x99814f74f156483be4a2e921dde10ff3ef84d3cb)
}



// =====================  Runtime code  =====================




}
