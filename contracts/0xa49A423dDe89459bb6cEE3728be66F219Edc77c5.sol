contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 7964]




// =====================  Runtime code  =====================


address seriesFactoryAddress;
address owner;

function seriesFactory() {
    return seriesFactoryAddress
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_95f770fd(?) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg4.length
    mem[ceil32(arg2.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 160] = arg5.length
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 192 len arg5.length] = arg5[all]
    mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 192] = 32
    mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 224] = arg2.length
    if arg2.length:
        mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 256] = mem[128]
        mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 288 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
    emit 0xbc25fc9d: Array(len=arg2.length, data=mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 256 len arg2.length])
    emit 0x1287c70f: msg.value
    emit 0x70d835a8: gas_remaining
    require msg.value >= 10^18
    if arg3:
        if arg2.length <= 0:
            mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 192 len 6702] = code.data[1219 len 6702]
            mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 6894] = 0
            mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 6926] = arg1
            mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 6958] = arg3
            mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7054] = arg6
            mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 6990] = 192
            mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7086] = arg4.length
            if not arg4.length:
                if not arg4.length % 32:
                    mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7022] = arg4.length + 224
                    mem[arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118] = arg5.length
                    if not arg5.length:
                        if not arg5.length % 32:
                            create contract with 0 wei
                                            code: code.data[1219 len 6702], 0, arg1, arg3, 192, arg4.length + 224, address(arg6), arg4.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118 len arg5.length + arg4.length + 32]
                        else:
                            mem[floor32(arg5.length) + arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150] = mem[floor32(arg5.length) + arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 7182 len arg5.length % 32]
                            create contract with 0 wei
                                            code: code.data[1219 len 6702], 0, arg1, arg3, 192, arg4.length + 224, address(arg6), arg4.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118 len floor32(arg5.length) + arg4.length + 64]
                    else:
                        mem[arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150] = mem[ceil32(arg2.length) + ceil32(arg4.length) + 192]
                        mem[arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7182 len floor32(arg5.length - 1)] = mem[ceil32(arg2.length) + ceil32(arg4.length) + 224 len floor32(arg5.length - 1)]
                        if not arg5.length % 32:
                            create contract with 0 wei
                                            code: code.data[1219 len 6702], 0, arg1, arg3, 192, arg4.length + 224, address(arg6), arg4.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118 len arg5.length + arg4.length + 32]
                        else:
                            mem[floor32(arg5.length) + arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150] = mem[floor32(arg5.length) + arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 7182 len arg5.length % 32]
                            create contract with 0 wei
                                            code: code.data[1219 len 6702], 0, arg1, arg3, 192, arg4.length + 224, address(arg6), arg4.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118 len arg4.length + 32], mem[ceil32(arg2.length) + ceil32(arg4.length) + 192], mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + arg4.length + 7182 len floor32(arg5.length)]
                else:
                    mem[floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118] = mem[floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg4.length % 32) + 7150 len arg4.length % 32]
                    mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7022] = floor32(arg4.length) + 256
                    mem[floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150] = arg5.length
                    if not arg5.length:
                        if not arg5.length % 32:
                            create contract with 0 wei
                                            code: code.data[1219 len 6702], 0, arg1, arg3, 192, floor32(arg4.length) + 256, address(arg6), arg4.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118 len floor32(arg4.length) + 32], arg5.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg4.length) + 7182 len arg5.length]
                        else:
                            mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7182] = mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 7214 len arg5.length % 32]
                            create contract with 0 wei
                                            code: code.data[1219 len 6702], 0, arg1, arg3, 192, floor32(arg4.length) + 256, address(arg6), arg4.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118 len floor32(arg4.length) + 32], arg5.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg4.length) + 7182 len floor32(arg5.length) + 32]
                    else:
                        mem[floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7182] = mem[ceil32(arg2.length) + ceil32(arg4.length) + 192]
                        mem[floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7214 len floor32(arg5.length - 1)] = mem[ceil32(arg2.length) + ceil32(arg4.length) + 224 len floor32(arg5.length - 1)]
                        if not arg5.length % 32:
                            create contract with 0 wei
                                            code: code.data[1219 len 6702], 0, arg1, arg3, 192, floor32(arg4.length) + 256, address(arg6), arg4.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118 len floor32(arg4.length) + 32], arg5.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg4.length) + 7182 len arg5.length]
                        else:
                            mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7182] = mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 7214 len arg5.length % 32]
                            create contract with 0 wei
                                            code: code.data[1219 len 6702], 0, arg1, arg3, 192, floor32(arg4.length) + 256, address(arg6), arg4.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118 len floor32(arg4.length) + 32], arg5.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + 192], mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg4.length) + 7214 len floor32(arg5.length)]
            else:
                mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118] = mem[ceil32(arg2.length) + 160]
                mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150 len floor32(arg4.length - 1)] = mem[ceil32(arg2.length) + 192 len floor32(arg4.length - 1)]
                if not arg4.length % 32:
                    mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7022] = arg4.length + 224
                    mem[arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118] = arg5.length
                    if arg5.length:
                        mem[arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150] = mem[ceil32(arg2.length) + ceil32(arg4.length) + 192]
                        mem[arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7182 len floor32(arg5.length - 1)] = mem[ceil32(arg2.length) + ceil32(arg4.length) + 224 len floor32(arg5.length - 1)]
                    if not arg5.length % 32:
                        create contract with 0 wei
                                        code: code.data[1219 len 6702], 0, arg1, arg3, 192, arg4.length + 224, address(arg6), arg4.length, mem[ceil32(arg2.length) + 160], mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150 len arg5.length + arg4.length]
                    else:
                        mem[floor32(arg5.length) + arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150] = mem[floor32(arg5.length) + arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 7182 len arg5.length % 32]
                        create contract with 0 wei
                                        code: code.data[1219 len 6702], 0, arg1, arg3, 192, arg4.length + 224, address(arg6), arg4.length, mem[ceil32(arg2.length) + 160], mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150 len floor32(arg5.length) + arg4.length + 32]
                else:
                    mem[floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118] = mem[floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg4.length % 32) + 7150 len arg4.length % 32]
                    mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7022] = floor32(arg4.length) + 256
                    mem[floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150] = arg5.length
                    if not arg5.length:
                        if not arg5.length % 32:
                            create contract with 0 wei
                                            code: code.data[1219 len 6702], 0, arg1, arg3, 192, floor32(arg4.length) + 256, address(arg6), arg4.length, mem[ceil32(arg2.length) + 160], mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150 len arg5.length + floor32(arg4.length) + 32]
                        else:
                            mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7182] = mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 7214 len arg5.length % 32]
                            create contract with 0 wei
                                            code: code.data[1219 len 6702], 0, arg1, arg3, 192, floor32(arg4.length) + 256, address(arg6), arg4.length, mem[ceil32(arg2.length) + 160], mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150 len floor32(arg5.length) + floor32(arg4.length) + 64]
                    else:
                        mem[floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7182] = mem[ceil32(arg2.length) + ceil32(arg4.length) + 192]
                        mem[floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7214 len floor32(arg5.length - 1)] = mem[ceil32(arg2.length) + ceil32(arg4.length) + 224 len floor32(arg5.length - 1)]
                        if not arg5.length % 32:
                            create contract with 0 wei
                                            code: code.data[1219 len 6702], 0, arg1, arg3, 192, floor32(arg4.length) + 256, address(arg6), arg4.length, mem[ceil32(arg2.length) + 160], mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150 len arg5.length + floor32(arg4.length) + 32]
                        else:
                            mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7182] = mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 7214 len arg5.length % 32]
                            create contract with 0 wei
                                            code: code.data[1219 len 6702], 0, arg1, arg3, 192, floor32(arg4.length) + 256, address(arg6), arg4.length, mem[ceil32(arg2.length) + 160], mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150 len floor32(arg4.length) + 32], mem[ceil32(arg2.length) + ceil32(arg4.length) + 192], mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg4.length) + 7214 len floor32(arg5.length)]
            require create.new_address
            call address(create.new_address) with:
               value msg.value - 10^18 wei
                 gas 2300 * is_zero(value) wei
            return address(create.new_address), 0
        require 0 < arg2.length
        mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 192 len 6702] = code.data[1219 len 6702]
        mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 6894] = Mask(8, 248, mem[128])
        mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 6926] = arg1
        mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 6958] = arg3
        mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7054] = arg6
        mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 6990] = 192
        mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7086] = arg4.length
        if not arg4.length:
            if not arg4.length % 32:
                mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7022] = arg4.length + 224
                mem[arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118] = arg5.length
                if not arg5.length:
                    if not arg5.length % 32:
                        create contract with 0 wei
                                        code: code.data[1219 len 6702], Mask(8, 248, mem[128]), arg1, arg3, Array(len=address(arg6), data=arg4.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118 len arg5.length + arg4.length + 32]), arg4.length + 224
                    else:
                        mem[floor32(arg5.length) + arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150] = mem[floor32(arg5.length) + arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 7182 len arg5.length % 32]
                        create contract with 0 wei
                                        code: code.data[1219 len 6702], Mask(8, 248, mem[128]), arg1, arg3, Array(len=address(arg6), data=arg4.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118 len floor32(arg5.length) + arg4.length + 64]), arg4.length + 224
                else:
                    mem[arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150] = mem[ceil32(arg2.length) + ceil32(arg4.length) + 192]
                    mem[arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7182 len floor32(arg5.length - 1)] = mem[ceil32(arg2.length) + ceil32(arg4.length) + 224 len floor32(arg5.length - 1)]
                    if not arg5.length % 32:
                        create contract with 0 wei
                                        code: code.data[1219 len 6702], Mask(8, 248, mem[128]), arg1, arg3, Array(len=address(arg6), data=arg4.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118 len arg5.length + arg4.length + 32]), arg4.length + 224
                    else:
                        mem[floor32(arg5.length) + arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150] = mem[floor32(arg5.length) + arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 7182 len arg5.length % 32]
                        create contract with 0 wei
                                        code: code.data[1219 len 6702], Mask(8, 248, mem[128]), arg1, arg3, Array(len=address(arg6), data=arg4.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118 len arg4.length + 32], mem[ceil32(arg2.length) + ceil32(arg4.length) + 192], mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + arg4.length + 7182 len floor32(arg5.length)]), arg4.length + 224
            else:
                mem[floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118] = mem[floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg4.length % 32) + 7150 len arg4.length % 32]
                mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7022] = floor32(arg4.length) + 256
                mem[floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150] = arg5.length
                if not arg5.length:
                    if not arg5.length % 32:
                        create contract with 0 wei
                                        code: code.data[1219 len 6702], Mask(8, 248, mem[128]), arg1, arg3, Array(len=address(arg6), data=arg4.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118 len floor32(arg4.length) + 32], arg5.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg4.length) + 7182 len arg5.length]), floor32(arg4.length) + 256
                    else:
                        mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7182] = mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 7214 len arg5.length % 32]
                        create contract with 0 wei
                                        code: code.data[1219 len 6702], Mask(8, 248, mem[128]), arg1, arg3, Array(len=address(arg6), data=arg4.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118 len floor32(arg4.length) + 32], arg5.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg4.length) + 7182 len floor32(arg5.length) + 32]), floor32(arg4.length) + 256
                else:
                    mem[floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7182] = mem[ceil32(arg2.length) + ceil32(arg4.length) + 192]
                    mem[floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7214 len floor32(arg5.length - 1)] = mem[ceil32(arg2.length) + ceil32(arg4.length) + 224 len floor32(arg5.length - 1)]
                    if not arg5.length % 32:
                        create contract with 0 wei
                                        code: code.data[1219 len 6702], Mask(8, 248, mem[128]), arg1, arg3, Array(len=address(arg6), data=arg4.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118 len floor32(arg4.length) + 32], arg5.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg4.length) + 7182 len arg5.length]), floor32(arg4.length) + 256
                    else:
                        mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7182] = mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 7214 len arg5.length % 32]
                        create contract with 0 wei
                                        code: code.data[1219 len 6702], Mask(8, 248, mem[128]), arg1, arg3, Array(len=address(arg6), data=arg4.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118 len floor32(arg4.length) + 32], arg5.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + 192], mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg4.length) + 7214 len floor32(arg5.length)]), floor32(arg4.length) + 256
        else:
            mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118] = mem[ceil32(arg2.length) + 160]
            mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150 len floor32(arg4.length - 1)] = mem[ceil32(arg2.length) + 192 len floor32(arg4.length - 1)]
            if not arg4.length % 32:
                mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7022] = arg4.length + 224
                mem[arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118] = arg5.length
                if arg5.length:
                    mem[arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150] = mem[ceil32(arg2.length) + ceil32(arg4.length) + 192]
                    mem[arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7182 len floor32(arg5.length - 1)] = mem[ceil32(arg2.length) + ceil32(arg4.length) + 224 len floor32(arg5.length - 1)]
                if not arg5.length % 32:
                    create contract with 0 wei
                                    code: code.data[1219 len 6702], Mask(8, 248, mem[128]), arg1, arg3, Array(len=address(arg6), data=arg4.length, mem[ceil32(arg2.length) + 160], mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150 len arg5.length + arg4.length]), arg4.length + 224
                else:
                    mem[floor32(arg5.length) + arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150] = mem[floor32(arg5.length) + arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 7182 len arg5.length % 32]
                    create contract with 0 wei
                                    code: code.data[1219 len 6702], Mask(8, 248, mem[128]), arg1, arg3, Array(len=address(arg6), data=arg4.length, mem[ceil32(arg2.length) + 160], mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150 len floor32(arg5.length) + arg4.length + 32]), arg4.length + 224
            else:
                mem[floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118] = mem[floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg4.length % 32) + 7150 len arg4.length % 32]
                mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7022] = floor32(arg4.length) + 256
                mem[floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150] = arg5.length
                if not arg5.length:
                    if not arg5.length % 32:
                        create contract with 0 wei
                                        code: code.data[1219 len 6702], Mask(8, 248, mem[128]), arg1, arg3, Array(len=address(arg6), data=arg4.length, mem[ceil32(arg2.length) + 160], mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150 len arg5.length + floor32(arg4.length) + 32]), floor32(arg4.length) + 256
                    else:
                        mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7182] = mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 7214 len arg5.length % 32]
                        create contract with 0 wei
                                        code: code.data[1219 len 6702], Mask(8, 248, mem[128]), arg1, arg3, Array(len=address(arg6), data=arg4.length, mem[ceil32(arg2.length) + 160], mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150 len floor32(arg5.length) + floor32(arg4.length) + 64]), floor32(arg4.length) + 256
                else:
                    mem[floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7182] = mem[ceil32(arg2.length) + ceil32(arg4.length) + 192]
                    mem[floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7214 len floor32(arg5.length - 1)] = mem[ceil32(arg2.length) + ceil32(arg4.length) + 224 len floor32(arg5.length - 1)]
                    if not arg5.length % 32:
                        create contract with 0 wei
                                        code: code.data[1219 len 6702], Mask(8, 248, mem[128]), arg1, arg3, Array(len=address(arg6), data=arg4.length, mem[ceil32(arg2.length) + 160], mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150 len arg5.length + floor32(arg4.length) + 32]), floor32(arg4.length) + 256
                    else:
                        mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7182] = mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 7214 len arg5.length % 32]
                        create contract with 0 wei
                                        code: code.data[1219 len 6702], Mask(8, 248, mem[128]), arg1, arg3, Array(len=address(arg6), data=arg4.length, mem[ceil32(arg2.length) + 160], mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150 len floor32(arg4.length) + 32], mem[ceil32(arg2.length) + ceil32(arg4.length) + 192], mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg4.length) + 7214 len floor32(arg5.length)]), floor32(arg4.length) + 256
    else:
        if arg2.length <= 0:
            mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 192 len 6702] = code.data[1219 len 6702]
            mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 6894] = 0
            mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 6926] = arg1
            mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 6958] = 10 * 10^6
            mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7054] = arg6
            mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 6990] = 192
            mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7086] = arg4.length
            if not arg4.length:
                if not arg4.length % 32:
                    mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7022] = arg4.length + 224
                    mem[arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118] = arg5.length
                    if not arg5.length:
                        if not arg5.length % 32:
                            create contract with 0 wei
                                            code: code.data[1219 len 6702], 0, arg1, 10 * 10^6, 192, arg4.length + 224, address(arg6), arg4.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118 len arg5.length + arg4.length + 32]
                        else:
                            mem[floor32(arg5.length) + arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150] = mem[floor32(arg5.length) + arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 7182 len arg5.length % 32]
                            create contract with 0 wei
                                            code: code.data[1219 len 6702], 0, arg1, 10 * 10^6, 192, arg4.length + 224, address(arg6), arg4.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118 len floor32(arg5.length) + arg4.length + 64]
                    else:
                        mem[arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150] = mem[ceil32(arg2.length) + ceil32(arg4.length) + 192]
                        mem[arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7182 len floor32(arg5.length - 1)] = mem[ceil32(arg2.length) + ceil32(arg4.length) + 224 len floor32(arg5.length - 1)]
                        if not arg5.length % 32:
                            create contract with 0 wei
                                            code: code.data[1219 len 6702], 0, arg1, 10 * 10^6, 192, arg4.length + 224, address(arg6), arg4.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118 len arg5.length + arg4.length + 32]
                        else:
                            mem[floor32(arg5.length) + arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150] = mem[floor32(arg5.length) + arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 7182 len arg5.length % 32]
                            create contract with 0 wei
                                            code: code.data[1219 len 6702], 0, arg1, 10 * 10^6, 192, arg4.length + 224, address(arg6), arg4.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118 len arg4.length + 32], mem[ceil32(arg2.length) + ceil32(arg4.length) + 192], mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + arg4.length + 7182 len floor32(arg5.length)]
                else:
                    mem[floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118] = mem[floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg4.length % 32) + 7150 len arg4.length % 32]
                    mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7022] = floor32(arg4.length) + 256
                    mem[floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150] = arg5.length
                    if not arg5.length:
                        if not arg5.length % 32:
                            create contract with 0 wei
                                            code: code.data[1219 len 6702], 0, arg1, 10 * 10^6, 192, floor32(arg4.length) + 256, address(arg6), arg4.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118 len floor32(arg4.length) + 32], arg5.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg4.length) + 7182 len arg5.length]
                        else:
                            mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7182] = mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 7214 len arg5.length % 32]
                            create contract with 0 wei
                                            code: code.data[1219 len 6702], 0, arg1, 10 * 10^6, 192, floor32(arg4.length) + 256, address(arg6), arg4.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118 len floor32(arg4.length) + 32], arg5.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg4.length) + 7182 len floor32(arg5.length) + 32]
                    else:
                        mem[floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7182] = mem[ceil32(arg2.length) + ceil32(arg4.length) + 192]
                        mem[floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7214 len floor32(arg5.length - 1)] = mem[ceil32(arg2.length) + ceil32(arg4.length) + 224 len floor32(arg5.length - 1)]
                        if not arg5.length % 32:
                            create contract with 0 wei
                                            code: code.data[1219 len 6702], 0, arg1, 10 * 10^6, 192, floor32(arg4.length) + 256, address(arg6), arg4.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118 len floor32(arg4.length) + 32], arg5.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg4.length) + 7182 len arg5.length]
                        else:
                            mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7182] = mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 7214 len arg5.length % 32]
                            create contract with 0 wei
                                            code: code.data[1219 len 6702], 0, arg1, 10 * 10^6, 192, floor32(arg4.length) + 256, address(arg6), arg4.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118 len floor32(arg4.length) + 32], arg5.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + 192], mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg4.length) + 7214 len floor32(arg5.length)]
            else:
                mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118] = mem[ceil32(arg2.length) + 160]
                mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150 len floor32(arg4.length - 1)] = mem[ceil32(arg2.length) + 192 len floor32(arg4.length - 1)]
                if not arg4.length % 32:
                    mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7022] = arg4.length + 224
                    mem[arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118] = arg5.length
                    if arg5.length:
                        mem[arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150] = mem[ceil32(arg2.length) + ceil32(arg4.length) + 192]
                        mem[arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7182 len floor32(arg5.length - 1)] = mem[ceil32(arg2.length) + ceil32(arg4.length) + 224 len floor32(arg5.length - 1)]
                    if not arg5.length % 32:
                        create contract with 0 wei
                                        code: code.data[1219 len 6702], 0, arg1, 10 * 10^6, 192, arg4.length + 224, address(arg6), arg4.length, mem[ceil32(arg2.length) + 160], mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150 len arg5.length + arg4.length]
                    else:
                        mem[floor32(arg5.length) + arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150] = mem[floor32(arg5.length) + arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 7182 len arg5.length % 32]
                        create contract with 0 wei
                                        code: code.data[1219 len 6702], 0, arg1, 10 * 10^6, 192, arg4.length + 224, address(arg6), arg4.length, mem[ceil32(arg2.length) + 160], mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150 len floor32(arg5.length) + arg4.length + 32]
                else:
                    mem[floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118] = mem[floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg4.length % 32) + 7150 len arg4.length % 32]
                    mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7022] = floor32(arg4.length) + 256
                    mem[floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150] = arg5.length
                    if not arg5.length:
                        if not arg5.length % 32:
                            create contract with 0 wei
                                            code: code.data[1219 len 6702], 0, arg1, 10 * 10^6, 192, floor32(arg4.length) + 256, address(arg6), arg4.length, mem[ceil32(arg2.length) + 160], mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150 len arg5.length + floor32(arg4.length) + 32]
                        else:
                            mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7182] = mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 7214 len arg5.length % 32]
                            create contract with 0 wei
                                            code: code.data[1219 len 6702], 0, arg1, 10 * 10^6, 192, floor32(arg4.length) + 256, address(arg6), arg4.length, mem[ceil32(arg2.length) + 160], mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150 len floor32(arg5.length) + floor32(arg4.length) + 64]
                    else:
                        mem[floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7182] = mem[ceil32(arg2.length) + ceil32(arg4.length) + 192]
                        mem[floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7214 len floor32(arg5.length - 1)] = mem[ceil32(arg2.length) + ceil32(arg4.length) + 224 len floor32(arg5.length - 1)]
                        if not arg5.length % 32:
                            create contract with 0 wei
                                            code: code.data[1219 len 6702], 0, arg1, 10 * 10^6, 192, floor32(arg4.length) + 256, address(arg6), arg4.length, mem[ceil32(arg2.length) + 160], mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150 len arg5.length + floor32(arg4.length) + 32]
                        else:
                            mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7182] = mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 7214 len arg5.length % 32]
                            create contract with 0 wei
                                            code: code.data[1219 len 6702], 0, arg1, 10 * 10^6, 192, floor32(arg4.length) + 256, address(arg6), arg4.length, mem[ceil32(arg2.length) + 160], mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150 len floor32(arg4.length) + 32], mem[ceil32(arg2.length) + ceil32(arg4.length) + 192], mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg4.length) + 7214 len floor32(arg5.length)]
            require create.new_address
            call address(create.new_address) with:
               value msg.value - 10^18 wei
                 gas 2300 * is_zero(value) wei
            return address(create.new_address), 0
        require 0 < arg2.length
        mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 192 len 6702] = code.data[1219 len 6702]
        mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 6894] = Mask(8, 248, mem[128])
        mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 6926] = arg1
        mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 6958] = 10 * 10^6
        mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7054] = arg6
        mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 6990] = 192
        mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7086] = arg4.length
        if not arg4.length:
            if not arg4.length % 32:
                mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7022] = arg4.length + 224
                mem[arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118] = arg5.length
                if not arg5.length:
                    if not arg5.length % 32:
                        create contract with 0 wei
                                        code: code.data[1219 len 6702], Mask(8, 248, mem[128]), arg1, 10 * 10^6, 192, arg4.length + 224, address(arg6), arg4.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118 len arg5.length + arg4.length + 32]
                    else:
                        mem[floor32(arg5.length) + arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150] = mem[floor32(arg5.length) + arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 7182 len arg5.length % 32]
                        create contract with 0 wei
                                        code: code.data[1219 len 6702], Mask(8, 248, mem[128]), arg1, 10 * 10^6, 192, arg4.length + 224, address(arg6), arg4.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118 len floor32(arg5.length) + arg4.length + 64]
                else:
                    mem[arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150] = mem[ceil32(arg2.length) + ceil32(arg4.length) + 192]
                    mem[arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7182 len floor32(arg5.length - 1)] = mem[ceil32(arg2.length) + ceil32(arg4.length) + 224 len floor32(arg5.length - 1)]
                    if not arg5.length % 32:
                        create contract with 0 wei
                                        code: code.data[1219 len 6702], Mask(8, 248, mem[128]), arg1, 10 * 10^6, 192, arg4.length + 224, address(arg6), arg4.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118 len arg5.length + arg4.length + 32]
                    else:
                        mem[floor32(arg5.length) + arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150] = mem[floor32(arg5.length) + arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 7182 len arg5.length % 32]
                        create contract with 0 wei
                                        code: code.data[1219 len 6702], Mask(8, 248, mem[128]), arg1, 10 * 10^6, 192, arg4.length + 224, address(arg6), arg4.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118 len arg4.length + 32], mem[ceil32(arg2.length) + ceil32(arg4.length) + 192], mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + arg4.length + 7182 len floor32(arg5.length)]
            else:
                mem[floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118] = mem[floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg4.length % 32) + 7150 len arg4.length % 32]
                mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7022] = floor32(arg4.length) + 256
                mem[floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150] = arg5.length
                if not arg5.length:
                    if not arg5.length % 32:
                        create contract with 0 wei
                                        code: code.data[1219 len 6702], Mask(8, 248, mem[128]), arg1, 10 * 10^6, 192, floor32(arg4.length) + 256, address(arg6), arg4.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118 len floor32(arg4.length) + 32], arg5.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg4.length) + 7182 len arg5.length]
                    else:
                        mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7182] = mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 7214 len arg5.length % 32]
                        create contract with 0 wei
                                        code: code.data[1219 len 6702], Mask(8, 248, mem[128]), arg1, 10 * 10^6, 192, floor32(arg4.length) + 256, address(arg6), arg4.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118 len floor32(arg4.length) + 32], arg5.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg4.length) + 7182 len floor32(arg5.length) + 32]
                else:
                    mem[floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7182] = mem[ceil32(arg2.length) + ceil32(arg4.length) + 192]
                    mem[floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7214 len floor32(arg5.length - 1)] = mem[ceil32(arg2.length) + ceil32(arg4.length) + 224 len floor32(arg5.length - 1)]
                    if not arg5.length % 32:
                        create contract with 0 wei
                                        code: code.data[1219 len 6702], Mask(8, 248, mem[128]), arg1, 10 * 10^6, 192, floor32(arg4.length) + 256, address(arg6), arg4.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118 len floor32(arg4.length) + 32], arg5.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg4.length) + 7182 len arg5.length]
                    else:
                        mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7182] = mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 7214 len arg5.length % 32]
                        create contract with 0 wei
                                        code: code.data[1219 len 6702], Mask(8, 248, mem[128]), arg1, 10 * 10^6, 192, floor32(arg4.length) + 256, address(arg6), arg4.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118 len floor32(arg4.length) + 32], arg5.length, mem[ceil32(arg2.length) + ceil32(arg4.length) + 192], mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg4.length) + 7214 len floor32(arg5.length)]
        else:
            mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118] = mem[ceil32(arg2.length) + 160]
            mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150 len floor32(arg4.length - 1)] = mem[ceil32(arg2.length) + 192 len floor32(arg4.length - 1)]
            if not arg4.length % 32:
                mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7022] = arg4.length + 224
                mem[arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118] = arg5.length
                if arg5.length:
                    mem[arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150] = mem[ceil32(arg2.length) + ceil32(arg4.length) + 192]
                    mem[arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7182 len floor32(arg5.length - 1)] = mem[ceil32(arg2.length) + ceil32(arg4.length) + 224 len floor32(arg5.length - 1)]
                if not arg5.length % 32:
                    create contract with 0 wei
                                    code: code.data[1219 len 6702], Mask(8, 248, mem[128]), arg1, 10 * 10^6, 192, arg4.length + 224, address(arg6), arg4.length, mem[ceil32(arg2.length) + 160], mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150 len arg5.length + arg4.length]
                else:
                    mem[floor32(arg5.length) + arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150] = mem[floor32(arg5.length) + arg4.length + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 7182 len arg5.length % 32]
                    create contract with 0 wei
                                    code: code.data[1219 len 6702], Mask(8, 248, mem[128]), arg1, 10 * 10^6, 192, arg4.length + 224, address(arg6), arg4.length, mem[ceil32(arg2.length) + 160], mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150 len floor32(arg5.length) + arg4.length + 32]
            else:
                mem[floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7118] = mem[floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg4.length % 32) + 7150 len arg4.length % 32]
                mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7022] = floor32(arg4.length) + 256
                mem[floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150] = arg5.length
                if not arg5.length:
                    if not arg5.length % 32:
                        create contract with 0 wei
                                        code: code.data[1219 len 6702], Mask(8, 248, mem[128]), arg1, 10 * 10^6, 192, floor32(arg4.length) + 256, address(arg6), arg4.length, mem[ceil32(arg2.length) + 160], mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150 len arg5.length + floor32(arg4.length) + 32]
                    else:
                        mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7182] = mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 7214 len arg5.length % 32]
                        create contract with 0 wei
                                        code: code.data[1219 len 6702], Mask(8, 248, mem[128]), arg1, 10 * 10^6, 192, floor32(arg4.length) + 256, address(arg6), arg4.length, mem[ceil32(arg2.length) + 160], mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150 len floor32(arg5.length) + floor32(arg4.length) + 64]
                else:
                    mem[floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7182] = mem[ceil32(arg2.length) + ceil32(arg4.length) + 192]
                    mem[floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7214 len floor32(arg5.length - 1)] = mem[ceil32(arg2.length) + ceil32(arg4.length) + 224 len floor32(arg5.length - 1)]
                    if not arg5.length % 32:
                        create contract with 0 wei
                                        code: code.data[1219 len 6702], Mask(8, 248, mem[128]), arg1, 10 * 10^6, 192, floor32(arg4.length) + 256, address(arg6), arg4.length, mem[ceil32(arg2.length) + 160], mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150 len arg5.length + floor32(arg4.length) + 32]
                    else:
                        mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7182] = mem[floor32(arg5.length) + floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 7214 len arg5.length % 32]
                        create contract with 0 wei
                                        code: code.data[1219 len 6702], Mask(8, 248, mem[128]), arg1, 10 * 10^6, 192, floor32(arg4.length) + 256, address(arg6), arg4.length, mem[ceil32(arg2.length) + 160], mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 7150 len floor32(arg4.length) + 32], mem[ceil32(arg2.length) + ceil32(arg4.length) + 192], mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg4.length) + 7214 len floor32(arg5.length)]
    require create.new_address
    call address(create.new_address) with:
       value msg.value - 10^18 wei
         gas 2300 * is_zero(value) wei
    return address(create.new_address), Mask(8, 248, mem[128])
}



}
