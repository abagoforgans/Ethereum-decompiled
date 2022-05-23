contract main {




// =====================  Runtime code  =====================


const sayHello = 'Hello World!'


function kill() {
    selfdestruct(this.address)
}

function _fallback() payable {
    revert
}



}
