contract main {


// =======================  Init code  ======================


const _fallback = code.data[16 len 168]




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function split(address[] arg1) payable {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require block.hash(block.number - 1) % arg1.length < arg1.length
    call mem[(32 * block.hash(block.number - 1) % arg1.length) + 140 len 20] with:
       value msg.value wei
         gas 0 wei
    require ext_call.success
}



}
