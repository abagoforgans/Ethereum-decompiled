contract main {


// =======================  Init code  ======================


mapping of uint8 stor0;

function _fallback() {
    stor0[address(this.address)] = 1
    return code.data[65 len 54]
}



// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}



}
