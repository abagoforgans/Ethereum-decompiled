contract main {




// =====================  Runtime code  =====================


function burn() {
    selfdestruct(this.address)
}

function _fallback() payable {
    revert
}



}
