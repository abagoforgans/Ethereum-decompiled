contract main {


// =======================  Init code  ======================


const _fallback = code.data[29 len 129]




// =====================  Runtime code  =====================


function die() {
    selfdestruct(0)
}

function _fallback() payable {
    revert
}



}
