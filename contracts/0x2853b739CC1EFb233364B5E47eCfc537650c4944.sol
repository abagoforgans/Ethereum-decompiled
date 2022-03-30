contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 6835]




// =====================  Runtime code  =====================


const abi = Array(len=3222, data=code.data[3570 len 32], code.data[3602 len 3190], mem[3382 len 10] >> 25088, Mask(176, -25344, mem[3382 len 10]) << 25344)

const version = 'v0.6.3'


function _fallback() payable {
    revert
}

function create(address arg1, address arg2, string arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, uint256 arg11) payable {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128 len 2649] = code.data[921 len 2649]
    mem[ceil32(arg3.length) + 2777] = arg1
    mem[ceil32(arg3.length) + 2809] = arg2
    mem[ceil32(arg3.length) + 2873] = arg4
    mem[ceil32(arg3.length) + 2905] = arg5
    mem[ceil32(arg3.length) + 2937] = arg6
    mem[ceil32(arg3.length) + 2969] = arg7
    mem[ceil32(arg3.length) + 3001] = arg8
    mem[ceil32(arg3.length) + 3033] = arg9
    mem[ceil32(arg3.length) + 3065] = arg10
    mem[ceil32(arg3.length) + 3097] = arg11
    mem[ceil32(arg3.length) + 2841] = 352
    mem[ceil32(arg3.length) + 3129] = arg3.length
    if not arg3.length:
        if not arg3.length % 32:
            create contract with 0 wei
                            code: code.data[921 len 2649], address(arg1), address(arg2), Array(len=arg11, data=arg3.length, mem[ceil32(arg3.length) + 3161 len arg3.length]), arg4, arg5, arg6, arg7, arg8, arg9, arg10
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 3161] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 3193 len arg3.length % 32]
            create contract with 0 wei
                            code: code.data[921 len 2649], address(arg1), address(arg2), Array(len=arg11, data=arg3.length, mem[ceil32(arg3.length) + 3161 len floor32(arg3.length) + 32]), arg4, arg5, arg6, arg7, arg8, arg9, arg10
    else:
        mem[ceil32(arg3.length) + 3161] = mem[128]
        mem[ceil32(arg3.length) + 3193 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
        if not arg3.length % 32:
            create contract with 0 wei
                            code: code.data[921 len 2649], address(arg1), address(arg2), Array(len=arg11, data=arg3.length, mem[ceil32(arg3.length) + 3161 len arg3.length]), arg4, arg5, arg6, arg7, arg8, arg9, arg10
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 3161] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 3193 len arg3.length % 32]
            create contract with 0 wei
                            code: code.data[921 len 2649], address(arg1), address(arg2), Array(len=arg11, data=arg3.length, mem[128], mem[ceil32(arg3.length) + 3193 len floor32(arg3.length)]), arg4, arg5, arg6, arg7, arg8, arg9, arg10
    require create.new_address
    return address(create.new_address)
}



}
