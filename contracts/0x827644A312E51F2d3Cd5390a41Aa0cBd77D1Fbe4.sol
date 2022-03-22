contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 266]




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function send(address arg1, bytes arg2) payable {
    emit Message(Array(len=arg2.length, data=arg2[all]), arg1);
}



}
