contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 12278]




// =====================  Runtime code  =====================


const abi = Array(len=3527, data=code.data[8708 len 32], code.data[8740 len 3495], mem[3687 len 25] >> 27648, mem[3737 len 7])

const version = 'v0.6.3'


function _fallback() payable {
    revert
}

function create(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len 7966] = code.data[742 len 7966]
    mem[ceil32(arg1.length) + 8094] = 32
    mem[ceil32(arg1.length) + 8126] = arg1.length
    if not arg1.length:
        if not arg1.length % 32:
            create contract with 0 wei
                            code: code.data[742 len 7966], 32, arg1.length, mem[ceil32(arg1.length) + 8158 len arg1.length]
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + 8158] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 8190 len arg1.length % 32]
            create contract with 0 wei
                            code: code.data[742 len 7966], 32, arg1.length, mem[ceil32(arg1.length) + 8158 len floor32(arg1.length) + 32]
    else:
        mem[ceil32(arg1.length) + 8158] = mem[128]
        mem[ceil32(arg1.length) + 8190 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
        if not arg1.length % 32:
            create contract with 0 wei
                            code: code.data[742 len 7966], 32, arg1.length, mem[ceil32(arg1.length) + 8158 len arg1.length]
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + 8158] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 8190 len arg1.length % 32]
            create contract with 0 wei
                            code: code.data[742 len 7966], 32, arg1.length, mem[128], mem[ceil32(arg1.length) + 8190 len floor32(arg1.length)]
    require create.new_address
    return address(create.new_address)
}



}
