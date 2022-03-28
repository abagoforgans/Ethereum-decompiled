contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 331]




// =====================  Runtime code  =====================


address stor0;

function owned() {
    stor0 = msg.sender
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == stor0)
}



}
