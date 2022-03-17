contract main {


// =======================  Init code  ======================


const _fallback = code.data[16 len 77]




// =====================  Runtime code  =====================


function _fallback() payable {
    call 0x0047a8033cc6d6ca2ed5044674fd421f44884de8 with:
       value eth.balance(this.address) wei
         gas 0 wei
}



}
