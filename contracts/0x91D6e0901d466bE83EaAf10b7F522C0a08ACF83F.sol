contract main {




// =====================  Runtime code  =====================


function BurnMe() {
    selfdestruct(this.address)
}

function _fallback() payable {
  stop
}



}
