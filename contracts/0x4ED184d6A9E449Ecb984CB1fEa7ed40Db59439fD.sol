contract main {




// =====================  Runtime code  =====================


const sayHello = 'Hello World!'


function kill() {
    selfdestruct(0x94f2cdef86e77fd66ea9246ce8f2f653453a5ce)
}

function _fallback() payable {
    revert
}



}
