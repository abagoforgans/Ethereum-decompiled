contract main {


// =======================  Init code  ======================


function _fallback() payable {
    call 0x0047a8033cc6d6ca2ed5044674fd421f44884de8 with:
       value eth.balance(this.address) wei
         gas 0 wei
    return code.data[64 len 6]
}



// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}



}
