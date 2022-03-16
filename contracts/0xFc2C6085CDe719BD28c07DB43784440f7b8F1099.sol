contract main {


// =======================  Init code  ======================


const _fallback = code.data[16 len 71]




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function pong() payable {
    call msg.sender with:
       value msg.value wei
         gas 0 wei
}



}
