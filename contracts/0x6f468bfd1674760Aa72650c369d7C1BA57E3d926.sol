contract main {


// =======================  Init code  ======================


const _fallback = code.data[33 len 484]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_8b3cba7b(?) {
    mem[(32 * arg2.length) + 128] = Mask(32, 224, sha3('initMultiowned(address[], uint)'))
    mem[(32 * arg2.length) + 132 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(64 * arg2.length) + 132] = arg3
    call arg1 with:
       funct Mask(32, 224, sha3('initMultiowned(address[], uint)')) >> 224
         gas msg.value wei
        args mem[(32 * arg2.length) + 132 len (96 * arg2.length) + 32]
}



}
