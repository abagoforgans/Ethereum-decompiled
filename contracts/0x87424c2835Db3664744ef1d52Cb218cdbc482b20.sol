contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 1008]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function announce(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len 600] = code.data[365 len 600]
    mem[ceil32(arg1.length) + 728] = 32
    mem[ceil32(arg1.length) + 760] = arg1.length
    if not arg1.length:
        if not arg1.length % 32:
            create contract with 0 wei
                            code: code.data[365 len 600], 32, arg1.length, mem[ceil32(arg1.length) + 792 len arg1.length]
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + 792] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 824 len arg1.length % 32]
            create contract with 0 wei
                            code: code.data[365 len 600], 32, arg1.length, mem[ceil32(arg1.length) + 792 len floor32(arg1.length) + 32]
    else:
        mem[ceil32(arg1.length) + 792] = mem[128]
        mem[ceil32(arg1.length) + 824 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
        if not arg1.length % 32:
            create contract with 0 wei
                            code: code.data[365 len 600], 32, arg1.length, mem[ceil32(arg1.length) + 792 len arg1.length]
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + 792] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 824 len arg1.length % 32]
            create contract with 0 wei
                            code: code.data[365 len 600], 32, arg1.length, mem[128], mem[ceil32(arg1.length) + 824 len floor32(arg1.length)]
    require create.new_address
    emit 0x58d5d6ee: address(create.new_address)
}



}
