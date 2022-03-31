contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 6825]




// =====================  Runtime code  =====================


const abi = Array(len=3222, data=code.data[3560 len 32], code.data[3592 len 3190], mem[3382 len 10] >> 25088, Mask(176, -25344, mem[3382 len 10]) << 25344)

const version = 'v0.6.3'


function _fallback() payable {
    revert
}

function create(address arg1, address arg2, string arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, uint256 arg11) payable {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128 len 2639] = code.data[921 len 2639]
    mem[ceil32(arg3.length) + 2767] = arg1
    mem[ceil32(arg3.length) + 2799] = arg2
    mem[ceil32(arg3.length) + 2863] = arg4
    mem[ceil32(arg3.length) + 2895] = arg5
    mem[ceil32(arg3.length) + 2927] = arg6
    mem[ceil32(arg3.length) + 2959] = arg7
    mem[ceil32(arg3.length) + 2991] = arg8
    mem[ceil32(arg3.length) + 3023] = arg9
    mem[ceil32(arg3.length) + 3055] = arg10
    mem[ceil32(arg3.length) + 3087] = arg11
    mem[ceil32(arg3.length) + 2831] = 352
    mem[ceil32(arg3.length) + 3119] = arg3.length
    if not arg3.length:
        if not arg3.length % 32:
            create contract with 0 wei
                            code: code.data[921 len 2639], address(arg1), address(arg2), Array(len=arg11, data=arg3.length, mem[ceil32(arg3.length) + 3151 len arg3.length]), arg4, arg5, arg6, arg7, arg8, arg9, arg10
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 3151] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 3183 len arg3.length % 32]
            create contract with 0 wei
                            code: code.data[921 len 2639], address(arg1), address(arg2), Array(len=arg11, data=arg3.length, mem[ceil32(arg3.length) + 3151 len floor32(arg3.length) + 32]), arg4, arg5, arg6, arg7, arg8, arg9, arg10
    else:
        mem[ceil32(arg3.length) + 3151] = mem[128]
        mem[ceil32(arg3.length) + 3183 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
        if not arg3.length % 32:
            create contract with 0 wei
                            code: code.data[921 len 2639], address(arg1), address(arg2), Array(len=arg11, data=arg3.length, mem[ceil32(arg3.length) + 3151 len arg3.length]), arg4, arg5, arg6, arg7, arg8, arg9, arg10
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 3151] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 3183 len arg3.length % 32]
            create contract with 0 wei
                            code: code.data[921 len 2639], address(arg1), address(arg2), Array(len=arg11, data=arg3.length, mem[128], mem[ceil32(arg3.length) + 3183 len floor32(arg3.length)]), arg4, arg5, arg6, arg7, arg8, arg9, arg10
    require create.new_address
    return address(create.new_address)
}



}
