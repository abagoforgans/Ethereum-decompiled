contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 336]




// =====================  Runtime code  =====================


function withdraw() {
    call 0xf86c3e89f010ff8880e3cbce5e4f1e00e3d713a6 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    call 0x8b2f07dfbaedbe629fc39a2038703b6030bdcce4 with:
       value 10^18 wei
         gas 0 wei
    require ext_call.success
    call 0xc63bc57301389ac101b000ceb60524152381148d with:
       value 10^14 wei
         gas 0 wei
}



}
