contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 150]




// =====================  Runtime code  =====================


function BurnMe() {
    selfdestruct(this.address)
}

function _fallback() payable {
  stop
}



}
