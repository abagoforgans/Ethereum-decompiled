contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 293]




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function getSender() {
    stor0 = msg.sender
    return stor0
}



}
