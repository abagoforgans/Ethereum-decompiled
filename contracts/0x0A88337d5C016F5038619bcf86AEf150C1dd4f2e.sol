contract main {


// =======================  Init code  ======================


const _fallback = code.data[16 len 79]




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function send(address arg1, uint256 arg2) payable {
    call arg1 with:
       value arg2 wei
         gas 0 wei
}



}
