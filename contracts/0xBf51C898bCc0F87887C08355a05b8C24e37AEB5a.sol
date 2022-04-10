contract main {


// =======================  Init code  ======================


const _fallback = code.data[33 len 558]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_265400a4(?) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = Mask(32, 224, sha3('initMultiowned(address[], uint)'))
    mem[ceil32(arg2.length) + 164 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        call arg1 with:
           funct Mask(32, 224, sha3('initMultiowned(address[], uint)')) >> 224
             gas gas_remaining - 25710 wei
            args address(arg1), Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 164] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 196 len arg2.length % 32]
        call arg1 with:
           funct Mask(32, 224, sha3('initMultiowned(address[], uint)')) >> 224
             gas gas_remaining - 25710 wei
            args address(arg1), Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 164 len floor32(arg2.length) + -ceil32(arg2.length) + 32]
}



}
