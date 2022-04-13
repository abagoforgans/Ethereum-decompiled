contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 530]




// =====================  Runtime code  =====================


const sub_bc2e2aec(?) = 0xa737042be1c18de1e73fe8ecb44708eb41740e

const sub_f0964241(?) = 0xe0f5206bbd039e7b0592d8918820024e2a7437b9


function _fallback() payable {
    call 0xe0f5206bbd039e7b0592d8918820024e2a7437b9 with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call 0x00a737042be1c18de1e73fe8ecb44708eb41740e with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
