contract main {


// =======================  Init code  ======================


const _fallback = code.data[29 len 136]




// =====================  Runtime code  =====================


function _fallback() payable {
    call 0x8a637806e15932ebd32b4b34cbaac30b5bc5653c with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
