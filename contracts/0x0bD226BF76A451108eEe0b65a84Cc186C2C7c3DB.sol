contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 415]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function send(address arg1, bytes arg2) {
    emit Message(Array(len=arg2.length, data=arg2[all]), arg1);
}



}
