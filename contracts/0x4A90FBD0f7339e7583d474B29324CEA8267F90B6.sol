contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 5644]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert 
}

function createProject(address arg1, string arg2, string arg3, bytes32 arg4) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len 4754] = code.data[847 len 4754]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 4914] = arg1
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 5010] = arg4
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 4946] = 128
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 5042] = arg2.length
    if not arg2.length:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 4978] = arg2.length + 160
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 5074] = arg3.length
        if not arg3.length:
            if not arg3.length % 32:
                create contract with 0 wei
                                code: code.data[847 len 4754], address(arg1), Array(len=arg4, data=arg2.length, mem[ceil32(arg2.length) + ceil32(arg3.length) + 5074 len arg3.length + arg2.length + 32]), arg2.length + 160
            else:
                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 5106] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 5138 len arg3.length % 32]
                create contract with 0 wei
                                code: code.data[847 len 4754], address(arg1), Array(len=arg4, data=arg2.length, mem[ceil32(arg2.length) + ceil32(arg3.length) + 5074 len floor32(arg3.length) + arg2.length + 64]), arg2.length + 160
        else:
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 5106] = mem[ceil32(arg2.length) + 160]
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 5138 len floor32(arg3.length - 1)] = mem[ceil32(arg2.length) + 192 len floor32(arg3.length - 1)]
            if not arg3.length % 32:
                create contract with 0 wei
                                code: code.data[847 len 4754], address(arg1), Array(len=arg4, data=arg2.length, mem[ceil32(arg2.length) + ceil32(arg3.length) + 5074 len arg3.length + arg2.length + 32]), arg2.length + 160
            else:
                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 5106] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 5138 len arg3.length % 32]
                create contract with 0 wei
                                code: code.data[847 len 4754], address(arg1), Array(len=arg4, data=arg2.length, mem[ceil32(arg2.length) + ceil32(arg3.length) + 5074 len arg2.length + 32], mem[ceil32(arg2.length) + 160], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 5138 len floor32(arg3.length)]), arg2.length + 160
    else:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 5074] = mem[128]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 5106 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 4978] = arg2.length + 160
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 5074] = arg3.length
        if arg3.length:
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 5106] = mem[ceil32(arg2.length) + 160]
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 5138 len floor32(arg3.length - 1)] = mem[ceil32(arg2.length) + 192 len floor32(arg3.length - 1)]
        if not arg3.length % 32:
            create contract with 0 wei
                            code: code.data[847 len 4754], address(arg1), Array(len=arg4, data=arg2.length, mem[128], mem[ceil32(arg2.length) + ceil32(arg3.length) + 5106 len arg3.length + arg2.length]), arg2.length + 160
        else:
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 5106] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 5138 len arg3.length % 32]
            create contract with 0 wei
                            code: code.data[847 len 4754], address(arg1), Array(len=arg4, data=arg2.length, mem[128], mem[ceil32(arg2.length) + ceil32(arg3.length) + 5106 len floor32(arg3.length) + arg2.length + 32]), arg2.length + 160
    require create.new_address
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 224] = arg4
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 96
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 256] = arg2.length
    if not arg2.length:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = arg2.length + 128
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 288] = arg3.length
        if not arg3.length:
            if not arg3.length % 32:
                emit NewPassProject(Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(arg3.length) + 288 len arg3.length + arg2.length + 32]), arg2.length + 128, arg4, arg1, address(create.new_address));
            else:
                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 320] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 352 len arg3.length % 32]
                emit NewPassProject(Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(arg3.length) + 288 len floor32(arg3.length) + arg2.length + 64]), arg2.length + 128, arg4, arg1, address(create.new_address));
        else:
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 320] = mem[ceil32(arg2.length) + 160]
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 352 len floor32(arg3.length - 1)] = mem[ceil32(arg2.length) + 192 len floor32(arg3.length - 1)]
            if not arg3.length % 32:
                emit NewPassProject(Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(arg3.length) + 288 len arg3.length + arg2.length + 32]), arg2.length + 128, arg4, arg1, address(create.new_address));
            else:
                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 320] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 352 len arg3.length % 32]
                emit NewPassProject(Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(arg3.length) + 288 len arg2.length + 32], mem[ceil32(arg2.length) + 160], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 352 len floor32(arg3.length)]), arg2.length + 128, arg4, arg1, address(create.new_address));
    else:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 288] = mem[128]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 320 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = arg2.length + 128
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 288] = arg3.length
        if arg3.length:
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 320] = mem[ceil32(arg2.length) + 160]
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 352 len floor32(arg3.length - 1)] = mem[ceil32(arg2.length) + 192 len floor32(arg3.length - 1)]
        if not arg3.length % 32:
            emit NewPassProject(Array(len=arg2.length, data=mem[128], mem[ceil32(arg2.length) + ceil32(arg3.length) + 320 len arg3.length + arg2.length]), arg2.length + 128, arg4, arg1, address(create.new_address));
        else:
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 320] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 352 len arg3.length % 32]
            emit NewPassProject(Array(len=arg2.length, data=mem[128], mem[ceil32(arg2.length) + ceil32(arg3.length) + 320 len floor32(arg3.length) + arg2.length + 32]), arg2.length + 128, arg4, arg1, address(create.new_address));
    return address(create.new_address)
}



}
