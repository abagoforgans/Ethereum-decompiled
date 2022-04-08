contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 9833]




// =====================  Runtime code  =====================


const abi = Array(len=2979, data=code.data[6811 len 32], code.data[6843 len 2947], mem[3139 len 29] >> 23296, mem[3165 len 3])

const version = 'v0.6.0 (1b4435b8)'


function _fallback() payable {
    revert
}

function create(string arg1, string arg2) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len 5914] = code.data[897 len 5914]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 6074] = 64
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 6138] = arg1.length
    if not arg1.length:
        if not arg1.length % 32:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 6106] = arg1.length + 96
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 6170] = arg2.length
            if not arg2.length:
                if not arg2.length % 32:
                    create contract with 0 wei
                                    code: code.data[897 len 5914], Array(len=arg1.length + 96, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 6170 len arg2.length + arg1.length + 32])
                else:
                    mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 6202] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 6234 len arg2.length % 32]
                    create contract with 0 wei
                                    code: code.data[897 len 5914], Array(len=arg1.length + 96, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 6170 len floor32(arg2.length) + arg1.length + 64])
            else:
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 6202] = mem[ceil32(arg1.length) + 160]
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 6234 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                if not arg2.length % 32:
                    create contract with 0 wei
                                    code: code.data[897 len 5914], Array(len=arg1.length + 96, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 6170 len arg2.length + arg1.length + 32])
                else:
                    mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 6202] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 6234 len arg2.length % 32]
                    create contract with 0 wei
                                    code: code.data[897 len 5914], Array(len=arg1.length + 96, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 6170 len arg1.length + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 6234 len floor32(arg2.length)])
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 6170] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 6202 len arg1.length % 32]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 6106] = floor32(arg1.length) + 128
            mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 6202] = arg2.length
            if not arg2.length:
                if not arg2.length % 32:
                    create contract with 0 wei
                                    code: code.data[897 len 5914], Array(len=floor32(arg1.length) + 128, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 6170 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 6234 len arg2.length])
                else:
                    mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 6234] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 6266 len arg2.length % 32]
                    create contract with 0 wei
                                    code: code.data[897 len 5914], Array(len=floor32(arg1.length) + 128, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 6170 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 6234 len floor32(arg2.length) + 32])
            else:
                mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 6234] = mem[ceil32(arg1.length) + 160]
                mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 6266 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                if not arg2.length % 32:
                    create contract with 0 wei
                                    code: code.data[897 len 5914], Array(len=floor32(arg1.length) + 128, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 6170 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 6234 len arg2.length])
                else:
                    mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 6234] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 6266 len arg2.length % 32]
                    create contract with 0 wei
                                    code: code.data[897 len 5914], Array(len=floor32(arg1.length) + 128, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 6170 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 6266 len floor32(arg2.length)])
    else:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 6170] = mem[128]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 6202 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
        if not arg1.length % 32:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 6106] = arg1.length + 96
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 6170] = arg2.length
            if arg2.length:
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 6202] = mem[ceil32(arg1.length) + 160]
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 6234 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
            if not arg2.length % 32:
                create contract with 0 wei
                                code: code.data[897 len 5914], Array(len=arg1.length + 96, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 6202 len arg2.length + arg1.length])
            else:
                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 6202] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 6234 len arg2.length % 32]
                create contract with 0 wei
                                code: code.data[897 len 5914], Array(len=arg1.length + 96, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 6202 len floor32(arg2.length) + arg1.length + 32])
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 6170] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 6202 len arg1.length % 32]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 6106] = floor32(arg1.length) + 128
            mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 6202] = arg2.length
            if not arg2.length:
                if not arg2.length % 32:
                    create contract with 0 wei
                                    code: code.data[897 len 5914], Array(len=floor32(arg1.length) + 128, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 6202 len arg2.length + floor32(arg1.length) + 32])
                else:
                    mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 6234] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 6266 len arg2.length % 32]
                    create contract with 0 wei
                                    code: code.data[897 len 5914], Array(len=floor32(arg1.length) + 128, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 6202 len floor32(arg2.length) + floor32(arg1.length) + 64])
            else:
                mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 6234] = mem[ceil32(arg1.length) + 160]
                mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 6266 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                if not arg2.length % 32:
                    create contract with 0 wei
                                    code: code.data[897 len 5914], Array(len=floor32(arg1.length) + 128, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 6202 len arg2.length + floor32(arg1.length) + 32])
                else:
                    mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 6234] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 6266 len arg2.length % 32]
                    create contract with 0 wei
                                    code: code.data[897 len 5914], Array(len=floor32(arg1.length) + 128, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 6202 len floor32(arg1.length) + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 6266 len floor32(arg2.length)])
    require create.new_address
    return address(create.new_address)
}



}
