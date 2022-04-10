contract main {


// =======================  Init code  ======================


const _fallback = code.data[33 len 495]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_9f002c94(?) payable {
    mem[(32 * arg2.length) + 128] = Mask(32, 224, sha3('initWallet,(address[], uint)'))
    mem[(32 * arg2.length) + 132 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(64 * arg2.length) + 132] = arg3
    mem[(64 * arg2.length) + 164] = arg4
    call arg1 with:
       funct Mask(32, 224, sha3('initWallet,(address[], uint)')) >> 224
         gas gas_remaining - 3000 wei
        args mem[(32 * arg2.length) + 132 len (96 * arg2.length) + 64]
}



}
