contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 262]




// =====================  Runtime code  =====================


address stor0;

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function mortal() {
    stor0 = msg.sender
}



}
