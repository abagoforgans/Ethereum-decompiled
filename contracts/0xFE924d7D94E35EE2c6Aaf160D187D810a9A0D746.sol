contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 5790]




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of address sub_8875aad8;

function verify(address arg1) {
    return bool(stor0[address(arg1)])
}

function sub_8875aad8(?) {
    return sub_8875aad8[arg1]
}

function _fallback() {
    revert 
}

function sub_74f1f496(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len 4895] = code.data[852 len 4895]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 5055] = msg.sender
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 5087] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 5151] = arg1.length
    if not arg1.length:
        if not arg1.length % 32:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 5119] = arg1.length + 128
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 5183] = arg2.length
            if not arg2.length:
                if not arg2.length % 32:
                    create contract with 0 wei
                                    code: code.data[852 len 4895], msg.sender, Array(len=arg1.length + 128, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 5183 len arg2.length + arg1.length + 32])
                else:
                    mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 5215] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 5247 len arg2.length % 32]
                    create contract with 0 wei
                                    code: code.data[852 len 4895], msg.sender, Array(len=arg1.length + 128, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 5183 len floor32(arg2.length) + arg1.length + 64])
            else:
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 5215] = mem[ceil32(arg1.length) + 160]
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 5247 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                if not arg2.length % 32:
                    create contract with 0 wei
                                    code: code.data[852 len 4895], msg.sender, Array(len=arg1.length + 128, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 5183 len arg2.length + arg1.length + 32])
                else:
                    mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 5215] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 5247 len arg2.length % 32]
                    create contract with 0 wei
                                    code: code.data[852 len 4895], msg.sender, Array(len=arg1.length + 128, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 5183 len arg1.length + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 5247 len floor32(arg2.length)])
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 5183] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 5215 len arg1.length % 32]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 5119] = floor32(arg1.length) + 160
            mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 5215] = arg2.length
            if not arg2.length:
                if not arg2.length % 32:
                    create contract with 0 wei
                                    code: code.data[852 len 4895], msg.sender, Array(len=floor32(arg1.length) + 160, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 5183 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 5247 len arg2.length])
                else:
                    mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 5247] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 5279 len arg2.length % 32]
                    create contract with 0 wei
                                    code: code.data[852 len 4895], msg.sender, Array(len=floor32(arg1.length) + 160, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 5183 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 5247 len floor32(arg2.length) + 32])
            else:
                mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 5247] = mem[ceil32(arg1.length) + 160]
                mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 5279 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                if not arg2.length % 32:
                    create contract with 0 wei
                                    code: code.data[852 len 4895], msg.sender, Array(len=floor32(arg1.length) + 160, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 5183 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 5247 len arg2.length])
                else:
                    mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 5247] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 5279 len arg2.length % 32]
                    create contract with 0 wei
                                    code: code.data[852 len 4895], msg.sender, Array(len=floor32(arg1.length) + 160, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 5183 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 5279 len floor32(arg2.length)])
    else:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 5183] = mem[128]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 5215 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
        if not arg1.length % 32:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 5119] = arg1.length + 128
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 5183] = arg2.length
            if arg2.length:
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 5215] = mem[ceil32(arg1.length) + 160]
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 5247 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
            if not arg2.length % 32:
                create contract with 0 wei
                                code: code.data[852 len 4895], msg.sender, Array(len=arg1.length + 128, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 5215 len arg2.length + arg1.length])
            else:
                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 5215] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 5247 len arg2.length % 32]
                create contract with 0 wei
                                code: code.data[852 len 4895], msg.sender, Array(len=arg1.length + 128, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 5215 len floor32(arg2.length) + arg1.length + 32])
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 5183] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 5215 len arg1.length % 32]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 5119] = floor32(arg1.length) + 160
            mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 5215] = arg2.length
            if not arg2.length:
                if not arg2.length % 32:
                    create contract with 0 wei
                                    code: code.data[852 len 4895], msg.sender, Array(len=floor32(arg1.length) + 160, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 5215 len arg2.length + floor32(arg1.length) + 32])
                else:
                    mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 5247] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 5279 len arg2.length % 32]
                    create contract with 0 wei
                                    code: code.data[852 len 4895], msg.sender, Array(len=floor32(arg1.length) + 160, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 5215 len floor32(arg2.length) + floor32(arg1.length) + 64])
            else:
                mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 5247] = mem[ceil32(arg1.length) + 160]
                mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 5279 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                if not arg2.length % 32:
                    create contract with 0 wei
                                    code: code.data[852 len 4895], msg.sender, Array(len=floor32(arg1.length) + 160, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 5215 len arg2.length + floor32(arg1.length) + 32])
                else:
                    mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 5247] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 5279 len arg2.length % 32]
                    create contract with 0 wei
                                    code: code.data[852 len 4895], msg.sender, Array(len=floor32(arg1.length) + 160, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 5215 len floor32(arg1.length) + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 5279 len floor32(arg2.length)])
    require create.new_address
    sub_8875aad8[address(msg.sender)] = address(create.new_address)
    stor0[address(create.new_address)] = 1
    emit 0x4bbb10c1: msg.sender, address(create.new_address)
    return address(create.new_address)
}



}
