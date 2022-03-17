contract main {


// =======================  Init code  ======================


const _fallback = code.data[16 len 78]




// =====================  Runtime code  =====================


function _fallback() payable {
    call 0xd3cda913deb6f67967b99d67acdfa1712c293601 with:
       value eth.balance(this.address) wei
         gas 0 wei
}



}
