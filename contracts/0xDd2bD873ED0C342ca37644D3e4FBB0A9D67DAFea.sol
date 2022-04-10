contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = 0xc704cc2d3643637c2876b3ebf2319dd9bc0d78eb
    return code.data[114 len 54]
}



// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}



}
