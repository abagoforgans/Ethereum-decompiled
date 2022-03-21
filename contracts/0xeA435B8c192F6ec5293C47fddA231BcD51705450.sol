contract main {


// =======================  Init code  ======================


function _fallback() payable {
    call msg.sender with:
       value msg.value / 2 wei
         gas 0 wei
    return code.data[47 len 6]
}



// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}



}
