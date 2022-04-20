contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[92 len 1693]
}



// =====================  Runtime code  =====================


address stor0;
array of address stor1;

function _fallback() payable {
    revert 
}

function issueCertificate(string arg1, string arg2, string arg3) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg3.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg3.length] = arg3[all]
    if msg.sender == stor0:
        stor1.length++
        if not stor1.length > stor1.length + 1:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192 len 676] = code.data[974 len 676]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 868] = 96
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 964] = arg1.length
            if not arg1.length:
                if not arg1.length % 32:
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 900] = arg1.length + 128
                    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996] = arg2.length
                    if not arg2.length:
                        if not arg2.length % 32:
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 932] = arg2.length + arg1.length + 160
                            mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028] = arg3.length
                            if not arg3.length:
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + arg1.length + 160, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len arg2.length + arg1.length + 32], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + arg1.length + 1060 len arg3.length]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1092 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + arg1.length + 160, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len arg2.length + arg1.length + 32], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + arg1.length + 1060 len floor32(arg3.length) + 32]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                            else:
                                mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192]
                                mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092 len floor32(arg3.length - 1)] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len floor32(arg3.length - 1)]
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + arg1.length + 160, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len arg2.length + arg1.length + 32], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + arg1.length + 1060 len arg3.length]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1092 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + arg1.length + 160, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len arg2.length + arg1.length + 32], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 192], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + arg1.length + 1092 len floor32(arg3.length)]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                        else:
                            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 1060 len arg2.length % 32]
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 932] = floor32(arg2.length) + arg1.length + 192
                            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = arg3.length
                            if not arg3.length:
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + arg1.length + 192, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len floor32(arg2.length) + arg1.length + 64], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + arg1.length + 1092 len arg3.length]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1124 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + arg1.length + 192, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len floor32(arg2.length) + arg1.length + 64], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + arg1.length + 1092 len floor32(arg3.length) + 32]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                            else:
                                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192]
                                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1124 len floor32(arg3.length - 1)] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len floor32(arg3.length - 1)]
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + arg1.length + 192, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len floor32(arg2.length) + arg1.length + 64], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + arg1.length + 1092 len arg3.length]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1124 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + arg1.length + 192, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len floor32(arg2.length) + arg1.length + 64], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 192], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + arg1.length + 1124 len floor32(arg3.length)]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                    else:
                        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028] = mem[ceil32(arg1.length) + 160]
                        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                        if not arg2.length % 32:
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 932] = arg2.length + arg1.length + 160
                            mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028] = arg3.length
                            if not arg3.length:
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + arg1.length + 160, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len arg1.length + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 1060 len arg3.length + arg2.length]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1092 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + arg1.length + 160, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len arg1.length + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 1060 len floor32(arg3.length) + arg2.length + 32]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                            else:
                                mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192]
                                mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092 len floor32(arg3.length - 1)] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len floor32(arg3.length - 1)]
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + arg1.length + 160, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len arg1.length + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 1060 len arg3.length + arg2.length]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1092 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + arg1.length + 160, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len arg1.length + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 1060 len floor32(arg3.length) + arg2.length + 32]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                        else:
                            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 1060 len arg2.length % 32]
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 932] = floor32(arg2.length) + arg1.length + 192
                            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = arg3.length
                            if not arg3.length:
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + arg1.length + 192, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len arg1.length + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 1060 len arg3.length + floor32(arg2.length) + 32]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1124 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + arg1.length + 192, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len arg1.length + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 1060 len floor32(arg3.length) + floor32(arg2.length) + 64]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                            else:
                                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192]
                                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1124 len floor32(arg3.length - 1)] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len floor32(arg3.length - 1)]
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + arg1.length + 192, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len arg1.length + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 1060 len arg3.length + floor32(arg2.length) + 32]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1124 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + arg1.length + 192, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len arg1.length + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 1060 len floor32(arg2.length) + 32], mem[ceil32(arg1.length) + ceil32(arg2.length) + 192], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + floor32(arg2.length) + 1124 len floor32(arg3.length)]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                else:
                    mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg1.length % 32) + 1028 len arg1.length % 32]
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 900] = floor32(arg1.length) + 160
                    mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028] = arg2.length
                    if not arg2.length:
                        if not arg2.length % 32:
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 932] = arg2.length + floor32(arg1.length) + 192
                            mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = arg3.length
                            if not arg3.length:
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + floor32(arg1.length) + 192, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1060 len arg3.length + arg2.length + 32]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1124 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + floor32(arg1.length) + 192, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1060 len floor32(arg3.length) + arg2.length + 64]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                            else:
                                mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192]
                                mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1124 len floor32(arg3.length - 1)] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len floor32(arg3.length - 1)]
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + floor32(arg1.length) + 192, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1060 len arg3.length + arg2.length + 32]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1124 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + floor32(arg1.length) + 192, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1060 len arg2.length + 32], mem[ceil32(arg1.length) + ceil32(arg2.length) + 192], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + arg2.length + 1124 len floor32(arg3.length)]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                        else:
                            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 1092 len arg2.length % 32]
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 932] = floor32(arg2.length) + floor32(arg1.length) + 224
                            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = arg3.length
                            if not arg3.length:
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + floor32(arg1.length) + 224, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1060 len floor32(arg2.length) + 32], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + floor32(arg2.length) + 1124 len arg3.length]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1124] = mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1156 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + floor32(arg1.length) + 224, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1060 len floor32(arg2.length) + 32], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + floor32(arg2.length) + 1124 len floor32(arg3.length) + 32]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                            else:
                                mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1124] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192]
                                mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1156 len floor32(arg3.length - 1)] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len floor32(arg3.length - 1)]
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + floor32(arg1.length) + 224, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1060 len floor32(arg2.length) + 32], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + floor32(arg2.length) + 1124 len arg3.length]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1124] = mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1156 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + floor32(arg1.length) + 224, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1060 len floor32(arg2.length) + 32], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 192], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + floor32(arg2.length) + 1156 len floor32(arg3.length)]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                    else:
                        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = mem[ceil32(arg1.length) + 160]
                        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                        if not arg2.length % 32:
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 932] = arg2.length + floor32(arg1.length) + 192
                            mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = arg3.length
                            if not arg3.length:
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + floor32(arg1.length) + 192, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1092 len arg3.length + arg2.length]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1124 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + floor32(arg1.length) + 192, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1092 len floor32(arg3.length) + arg2.length + 32]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                            else:
                                mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192]
                                mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1124 len floor32(arg3.length - 1)] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len floor32(arg3.length - 1)]
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + floor32(arg1.length) + 192, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1092 len arg3.length + arg2.length]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1124 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + floor32(arg1.length) + 192, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1092 len floor32(arg3.length) + arg2.length + 32]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                        else:
                            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 1092 len arg2.length % 32]
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 932] = floor32(arg2.length) + floor32(arg1.length) + 224
                            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = arg3.length
                            if not arg3.length:
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + floor32(arg1.length) + 224, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1092 len arg3.length + floor32(arg2.length) + 32]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1124] = mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1156 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + floor32(arg1.length) + 224, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1092 len floor32(arg3.length) + floor32(arg2.length) + 64]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                            else:
                                mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1124] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192]
                                mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1156 len floor32(arg3.length - 1)] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len floor32(arg3.length - 1)]
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + floor32(arg1.length) + 224, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1092 len arg3.length + floor32(arg2.length) + 32]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1124] = mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1156 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + floor32(arg1.length) + 224, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1092 len floor32(arg2.length) + 32], mem[ceil32(arg1.length) + ceil32(arg2.length) + 192], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + floor32(arg2.length) + 1156 len floor32(arg3.length)]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
            else:
                mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996] = mem[128]
                mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
                if not arg1.length % 32:
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 900] = arg1.length + 128
                    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996] = arg2.length
                    if not arg2.length:
                        if not arg2.length % 32:
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 932] = arg2.length + arg1.length + 160
                            mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028] = arg3.length
                            if not arg3.length:
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + arg1.length + 160, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len arg3.length + arg2.length + arg1.length + 32]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1092 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + arg1.length + 160, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg3.length) + arg2.length + arg1.length + 64]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                            else:
                                mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192]
                                mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092 len floor32(arg3.length - 1)] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len floor32(arg3.length - 1)]
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + arg1.length + 160, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len arg3.length + arg2.length + arg1.length + 32]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1092 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + arg1.length + 160, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len arg2.length + arg1.length + 32], mem[ceil32(arg1.length) + ceil32(arg2.length) + 192], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + arg1.length + 1092 len floor32(arg3.length)]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                        else:
                            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 1060 len arg2.length % 32]
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 932] = floor32(arg2.length) + arg1.length + 192
                            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = arg3.length
                            if not arg3.length:
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + arg1.length + 192, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg2.length) + arg1.length + 32], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + arg1.length + 1092 len arg3.length]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1124 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + arg1.length + 192, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg2.length) + arg1.length + 32], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + arg1.length + 1092 len floor32(arg3.length) + 32]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                            else:
                                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192]
                                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1124 len floor32(arg3.length - 1)] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len floor32(arg3.length - 1)]
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + arg1.length + 192, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg2.length) + arg1.length + 32], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + arg1.length + 1092 len arg3.length]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1124 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + arg1.length + 192, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg2.length) + arg1.length + 32], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 192], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + arg1.length + 1124 len floor32(arg3.length)]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                    else:
                        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028] = mem[ceil32(arg1.length) + 160]
                        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                        if not arg2.length % 32:
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 932] = arg2.length + arg1.length + 160
                            mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028] = arg3.length
                            if not arg3.length:
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + arg1.length + 160, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len arg3.length + arg2.length + arg1.length + 32]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1092 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + arg1.length + 160, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg3.length) + arg2.length + arg1.length + 64]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                            else:
                                mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192]
                                mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092 len floor32(arg3.length - 1)] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len floor32(arg3.length - 1)]
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + arg1.length + 160, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len arg3.length + arg2.length + arg1.length + 32]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1092 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + arg1.length + 160, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len arg2.length + arg1.length + 32], mem[ceil32(arg1.length) + ceil32(arg2.length) + 192], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + arg1.length + 1092 len floor32(arg3.length)]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                        else:
                            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 1060 len arg2.length % 32]
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 932] = floor32(arg2.length) + arg1.length + 192
                            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = arg3.length
                            if not arg3.length:
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + arg1.length + 192, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg2.length) + arg1.length + 32], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + arg1.length + 1092 len arg3.length]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1124 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + arg1.length + 192, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg2.length) + arg1.length + 32], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + arg1.length + 1092 len floor32(arg3.length) + 32]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                            else:
                                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192]
                                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1124 len floor32(arg3.length - 1)] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len floor32(arg3.length - 1)]
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + arg1.length + 192, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg2.length) + arg1.length + 32], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + arg1.length + 1092 len arg3.length]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1124 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + arg1.length + 192, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg2.length) + arg1.length + 32], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 192], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + arg1.length + 1124 len floor32(arg3.length)]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                else:
                    mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg1.length % 32) + 1028 len arg1.length % 32]
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 900] = floor32(arg1.length) + 160
                    mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028] = arg2.length
                    if not arg2.length:
                        if not arg2.length % 32:
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 932] = arg2.length + floor32(arg1.length) + 192
                            mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = arg3.length
                            if not arg3.length:
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + floor32(arg1.length) + 192, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len arg2.length + floor32(arg1.length) + 32], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + floor32(arg1.length) + 1092 len arg3.length]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1124 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + floor32(arg1.length) + 192, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len arg2.length + floor32(arg1.length) + 32], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + floor32(arg1.length) + 1092 len floor32(arg3.length) + 32]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                            else:
                                mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192]
                                mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1124 len floor32(arg3.length - 1)] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len floor32(arg3.length - 1)]
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + floor32(arg1.length) + 192, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len arg2.length + floor32(arg1.length) + 32], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + floor32(arg1.length) + 1092 len arg3.length]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1124 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + floor32(arg1.length) + 192, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len arg2.length + floor32(arg1.length) + 32], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 192], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + floor32(arg1.length) + 1124 len floor32(arg3.length)]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                        else:
                            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 1092 len arg2.length % 32]
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 932] = floor32(arg2.length) + floor32(arg1.length) + 224
                            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = arg3.length
                            if not arg3.length:
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + floor32(arg1.length) + 224, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg2.length) + floor32(arg1.length) + 64], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + 1124 len arg3.length]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1124] = mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1156 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + floor32(arg1.length) + 224, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg2.length) + floor32(arg1.length) + 64], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + 1124 len floor32(arg3.length) + 32]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                            else:
                                mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1124] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192]
                                mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1156 len floor32(arg3.length - 1)] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len floor32(arg3.length - 1)]
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + floor32(arg1.length) + 224, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg2.length) + floor32(arg1.length) + 64], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + 1124 len arg3.length]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1124] = mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1156 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + floor32(arg1.length) + 224, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg2.length) + floor32(arg1.length) + 64], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 192], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + 1156 len floor32(arg3.length)]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                    else:
                        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = mem[ceil32(arg1.length) + 160]
                        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                        if not arg2.length % 32:
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 932] = arg2.length + floor32(arg1.length) + 192
                            mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = arg3.length
                            if not arg3.length:
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + floor32(arg1.length) + 192, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg1.length) + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1092 len arg3.length + arg2.length]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1124 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + floor32(arg1.length) + 192, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg1.length) + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1092 len floor32(arg3.length) + arg2.length + 32]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                            else:
                                mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192]
                                mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1124 len floor32(arg3.length - 1)] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len floor32(arg3.length - 1)]
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + floor32(arg1.length) + 192, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg1.length) + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1092 len arg3.length + arg2.length]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1124 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + floor32(arg1.length) + 192, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg1.length) + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1092 len floor32(arg3.length) + arg2.length + 32]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                        else:
                            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 1092 len arg2.length % 32]
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 932] = floor32(arg2.length) + floor32(arg1.length) + 224
                            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = arg3.length
                            if not arg3.length:
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + floor32(arg1.length) + 224, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg1.length) + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1092 len arg3.length + floor32(arg2.length) + 32]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1124] = mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1156 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + floor32(arg1.length) + 224, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg1.length) + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1092 len floor32(arg3.length) + floor32(arg2.length) + 64]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                            else:
                                mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1124] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192]
                                mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1156 len floor32(arg3.length - 1)] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len floor32(arg3.length - 1)]
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + floor32(arg1.length) + 224, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg1.length) + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1092 len arg3.length + floor32(arg2.length) + 32]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1124] = mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1156 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + floor32(arg1.length) + 224, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg1.length) + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1092 len floor32(arg2.length) + 32], mem[ceil32(arg1.length) + ceil32(arg2.length) + 192], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + floor32(arg2.length) + 1156 len floor32(arg3.length)]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
        else:
            idx = stor1.length + 1
            while stor1.length > idx:
                uint256(stor1[idx]) = 0
                idx = idx + 1
                continue 
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192 len 676] = code.data[974 len 676]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 868] = 96
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 964] = arg1.length
            if not arg1.length:
                if not arg1.length % 32:
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 900] = arg1.length + 128
                    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996] = arg2.length
                    if not arg2.length:
                        if not arg2.length % 32:
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 932] = arg2.length + arg1.length + 160
                            mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028] = arg3.length
                            if not arg3.length:
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + arg1.length + 160, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len arg2.length + arg1.length + 32], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + arg1.length + 1060 len arg3.length]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1092 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + arg1.length + 160, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len arg2.length + arg1.length + 32], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + arg1.length + 1060 len floor32(arg3.length) + 32]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                            else:
                                mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192]
                                mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092 len floor32(arg3.length - 1)] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len floor32(arg3.length - 1)]
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + arg1.length + 160, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len arg2.length + arg1.length + 32], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + arg1.length + 1060 len arg3.length]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1092 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + arg1.length + 160, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len arg2.length + arg1.length + 32], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 192], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + arg1.length + 1092 len floor32(arg3.length)]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                        else:
                            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 1060 len arg2.length % 32]
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 932] = floor32(arg2.length) + arg1.length + 192
                            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = arg3.length
                            if not arg3.length:
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + arg1.length + 192, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len floor32(arg2.length) + arg1.length + 64], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + arg1.length + 1092 len arg3.length]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1124 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + arg1.length + 192, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len floor32(arg2.length) + arg1.length + 64], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + arg1.length + 1092 len floor32(arg3.length) + 32]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                            else:
                                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192]
                                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1124 len floor32(arg3.length - 1)] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len floor32(arg3.length - 1)]
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + arg1.length + 192, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len floor32(arg2.length) + arg1.length + 64], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + arg1.length + 1092 len arg3.length]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1124 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + arg1.length + 192, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len floor32(arg2.length) + arg1.length + 64], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 192], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + arg1.length + 1124 len floor32(arg3.length)]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                    else:
                        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028] = mem[ceil32(arg1.length) + 160]
                        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                        if not arg2.length % 32:
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 932] = arg2.length + arg1.length + 160
                            mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028] = arg3.length
                            if not arg3.length:
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + arg1.length + 160, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len arg1.length + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 1060 len arg3.length + arg2.length]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1092 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + arg1.length + 160, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len arg1.length + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 1060 len floor32(arg3.length) + arg2.length + 32]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                            else:
                                mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192]
                                mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092 len floor32(arg3.length - 1)] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len floor32(arg3.length - 1)]
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + arg1.length + 160, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len arg1.length + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 1060 len arg3.length + arg2.length]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1092 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + arg1.length + 160, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len arg1.length + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 1060 len floor32(arg3.length) + arg2.length + 32]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                        else:
                            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 1060 len arg2.length % 32]
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 932] = floor32(arg2.length) + arg1.length + 192
                            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = arg3.length
                            if not arg3.length:
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + arg1.length + 192, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len arg1.length + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 1060 len arg3.length + floor32(arg2.length) + 32]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1124 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + arg1.length + 192, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len arg1.length + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 1060 len floor32(arg3.length) + floor32(arg2.length) + 64]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                            else:
                                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192]
                                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1124 len floor32(arg3.length - 1)] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len floor32(arg3.length - 1)]
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + arg1.length + 192, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len arg1.length + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 1060 len arg3.length + floor32(arg2.length) + 32]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1124 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + arg1.length + 192, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len arg1.length + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + 1060 len floor32(arg2.length) + 32], mem[ceil32(arg1.length) + ceil32(arg2.length) + 192], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg1.length + floor32(arg2.length) + 1124 len floor32(arg3.length)]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                else:
                    mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg1.length % 32) + 1028 len arg1.length % 32]
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 900] = floor32(arg1.length) + 160
                    mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028] = arg2.length
                    if not arg2.length:
                        if not arg2.length % 32:
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 932] = arg2.length + floor32(arg1.length) + 192
                            mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = arg3.length
                            if not arg3.length:
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + floor32(arg1.length) + 192, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1060 len arg3.length + arg2.length + 32]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1124 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + floor32(arg1.length) + 192, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1060 len floor32(arg3.length) + arg2.length + 64]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                            else:
                                mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192]
                                mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1124 len floor32(arg3.length - 1)] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len floor32(arg3.length - 1)]
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + floor32(arg1.length) + 192, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1060 len arg3.length + arg2.length + 32]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1124 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + floor32(arg1.length) + 192, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1060 len arg2.length + 32], mem[ceil32(arg1.length) + ceil32(arg2.length) + 192], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + arg2.length + 1124 len floor32(arg3.length)]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                        else:
                            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 1092 len arg2.length % 32]
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 932] = floor32(arg2.length) + floor32(arg1.length) + 224
                            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = arg3.length
                            if not arg3.length:
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + floor32(arg1.length) + 224, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1060 len floor32(arg2.length) + 32], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + floor32(arg2.length) + 1124 len arg3.length]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1124] = mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1156 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + floor32(arg1.length) + 224, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1060 len floor32(arg2.length) + 32], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + floor32(arg2.length) + 1124 len floor32(arg3.length) + 32]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                            else:
                                mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1124] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192]
                                mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1156 len floor32(arg3.length - 1)] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len floor32(arg3.length - 1)]
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + floor32(arg1.length) + 224, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1060 len floor32(arg2.length) + 32], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + floor32(arg2.length) + 1124 len arg3.length]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1124] = mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1156 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + floor32(arg1.length) + 224, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1060 len floor32(arg2.length) + 32], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 192], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + floor32(arg2.length) + 1156 len floor32(arg3.length)]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                    else:
                        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = mem[ceil32(arg1.length) + 160]
                        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                        if not arg2.length % 32:
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 932] = arg2.length + floor32(arg1.length) + 192
                            mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = arg3.length
                            if not arg3.length:
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + floor32(arg1.length) + 192, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1092 len arg3.length + arg2.length]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1124 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + floor32(arg1.length) + 192, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1092 len floor32(arg3.length) + arg2.length + 32]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                            else:
                                mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192]
                                mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1124 len floor32(arg3.length - 1)] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len floor32(arg3.length - 1)]
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + floor32(arg1.length) + 192, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1092 len arg3.length + arg2.length]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1124 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + floor32(arg1.length) + 192, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1092 len floor32(arg3.length) + arg2.length + 32]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                        else:
                            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 1092 len arg2.length % 32]
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 932] = floor32(arg2.length) + floor32(arg1.length) + 224
                            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = arg3.length
                            if not arg3.length:
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + floor32(arg1.length) + 224, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1092 len arg3.length + floor32(arg2.length) + 32]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1124] = mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1156 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + floor32(arg1.length) + 224, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1092 len floor32(arg3.length) + floor32(arg2.length) + 64]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                            else:
                                mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1124] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192]
                                mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1156 len floor32(arg3.length - 1)] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len floor32(arg3.length - 1)]
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + floor32(arg1.length) + 224, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1092 len arg3.length + floor32(arg2.length) + 32]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1124] = mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1156 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + floor32(arg1.length) + 224, data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1092 len floor32(arg2.length) + 32], mem[ceil32(arg1.length) + ceil32(arg2.length) + 192], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + floor32(arg2.length) + 1156 len floor32(arg3.length)]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
            else:
                mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996] = mem[128]
                mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
                if not arg1.length % 32:
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 900] = arg1.length + 128
                    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996] = arg2.length
                    if not arg2.length:
                        if not arg2.length % 32:
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 932] = arg2.length + arg1.length + 160
                            mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028] = arg3.length
                            if not arg3.length:
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + arg1.length + 160, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len arg3.length + arg2.length + arg1.length + 32]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1092 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + arg1.length + 160, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg3.length) + arg2.length + arg1.length + 64]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                            else:
                                mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192]
                                mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092 len floor32(arg3.length - 1)] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len floor32(arg3.length - 1)]
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + arg1.length + 160, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len arg3.length + arg2.length + arg1.length + 32]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1092 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + arg1.length + 160, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len arg2.length + arg1.length + 32], mem[ceil32(arg1.length) + ceil32(arg2.length) + 192], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + arg1.length + 1092 len floor32(arg3.length)]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                        else:
                            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 1060 len arg2.length % 32]
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 932] = floor32(arg2.length) + arg1.length + 192
                            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = arg3.length
                            if not arg3.length:
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + arg1.length + 192, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg2.length) + arg1.length + 32], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + arg1.length + 1092 len arg3.length]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1124 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + arg1.length + 192, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg2.length) + arg1.length + 32], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + arg1.length + 1092 len floor32(arg3.length) + 32]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                            else:
                                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192]
                                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1124 len floor32(arg3.length - 1)] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len floor32(arg3.length - 1)]
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + arg1.length + 192, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg2.length) + arg1.length + 32], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + arg1.length + 1092 len arg3.length]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1124 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + arg1.length + 192, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg2.length) + arg1.length + 32], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 192], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + arg1.length + 1124 len floor32(arg3.length)]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                    else:
                        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028] = mem[ceil32(arg1.length) + 160]
                        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                        if not arg2.length % 32:
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 932] = arg2.length + arg1.length + 160
                            mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028] = arg3.length
                            if not arg3.length:
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + arg1.length + 160, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len arg3.length + arg2.length + arg1.length + 32]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1092 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + arg1.length + 160, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg3.length) + arg2.length + arg1.length + 64]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                            else:
                                mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192]
                                mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092 len floor32(arg3.length - 1)] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len floor32(arg3.length - 1)]
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + arg1.length + 160, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len arg3.length + arg2.length + arg1.length + 32]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1092 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + arg1.length + 160, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len arg2.length + arg1.length + 32], mem[ceil32(arg1.length) + ceil32(arg2.length) + 192], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + arg1.length + 1092 len floor32(arg3.length)]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                        else:
                            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 1060 len arg2.length % 32]
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 932] = floor32(arg2.length) + arg1.length + 192
                            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = arg3.length
                            if not arg3.length:
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + arg1.length + 192, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg2.length) + arg1.length + 32], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + arg1.length + 1092 len arg3.length]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1124 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + arg1.length + 192, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg2.length) + arg1.length + 32], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + arg1.length + 1092 len floor32(arg3.length) + 32]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                            else:
                                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192]
                                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1124 len floor32(arg3.length - 1)] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len floor32(arg3.length - 1)]
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + arg1.length + 192, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg2.length) + arg1.length + 32], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + arg1.length + 1092 len arg3.length]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1124 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + arg1.length + 192, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg2.length) + arg1.length + 32], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 192], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + arg1.length + 1124 len floor32(arg3.length)]), arg1.length + 128
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                else:
                    mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 996] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg1.length % 32) + 1028 len arg1.length % 32]
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 900] = floor32(arg1.length) + 160
                    mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028] = arg2.length
                    if not arg2.length:
                        if not arg2.length % 32:
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 932] = arg2.length + floor32(arg1.length) + 192
                            mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = arg3.length
                            if not arg3.length:
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + floor32(arg1.length) + 192, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len arg2.length + floor32(arg1.length) + 32], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + floor32(arg1.length) + 1092 len arg3.length]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1124 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + floor32(arg1.length) + 192, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len arg2.length + floor32(arg1.length) + 32], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + floor32(arg1.length) + 1092 len floor32(arg3.length) + 32]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                            else:
                                mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192]
                                mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1124 len floor32(arg3.length - 1)] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len floor32(arg3.length - 1)]
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + floor32(arg1.length) + 192, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len arg2.length + floor32(arg1.length) + 32], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + floor32(arg1.length) + 1092 len arg3.length]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1124 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + floor32(arg1.length) + 192, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len arg2.length + floor32(arg1.length) + 32], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 192], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + floor32(arg1.length) + 1124 len floor32(arg3.length)]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                        else:
                            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 1092 len arg2.length % 32]
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 932] = floor32(arg2.length) + floor32(arg1.length) + 224
                            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = arg3.length
                            if not arg3.length:
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + floor32(arg1.length) + 224, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg2.length) + floor32(arg1.length) + 64], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + 1124 len arg3.length]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1124] = mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1156 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + floor32(arg1.length) + 224, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg2.length) + floor32(arg1.length) + 64], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + 1124 len floor32(arg3.length) + 32]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                            else:
                                mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1124] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192]
                                mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1156 len floor32(arg3.length - 1)] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len floor32(arg3.length - 1)]
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + floor32(arg1.length) + 224, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg2.length) + floor32(arg1.length) + 64], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + 1124 len arg3.length]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1124] = mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1156 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + floor32(arg1.length) + 224, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg2.length) + floor32(arg1.length) + 64], arg3.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 192], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + 1156 len floor32(arg3.length)]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                    else:
                        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = mem[ceil32(arg1.length) + 160]
                        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                        if not arg2.length % 32:
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 932] = arg2.length + floor32(arg1.length) + 192
                            mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = arg3.length
                            if not arg3.length:
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + floor32(arg1.length) + 192, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg1.length) + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1092 len arg3.length + arg2.length]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1124 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + floor32(arg1.length) + 192, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg1.length) + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1092 len floor32(arg3.length) + arg2.length + 32]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                            else:
                                mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192]
                                mem[arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1124 len floor32(arg3.length - 1)] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len floor32(arg3.length - 1)]
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + floor32(arg1.length) + 192, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg1.length) + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1092 len arg3.length + arg2.length]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = mem[floor32(arg3.length) + arg2.length + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1124 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=arg2.length + floor32(arg1.length) + 192, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg1.length) + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1092 len floor32(arg3.length) + arg2.length + 32]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                        else:
                            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1060] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 1092 len arg2.length % 32]
                            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 932] = floor32(arg2.length) + floor32(arg1.length) + 224
                            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1092] = arg3.length
                            if not arg3.length:
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + floor32(arg1.length) + 224, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg1.length) + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1092 len arg3.length + floor32(arg2.length) + 32]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1124] = mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1156 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + floor32(arg1.length) + 224, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg1.length) + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1092 len floor32(arg3.length) + floor32(arg2.length) + 64]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                            else:
                                mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1124] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192]
                                mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1156 len floor32(arg3.length - 1)] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len floor32(arg3.length - 1)]
                                if not arg3.length % 32:
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + floor32(arg1.length) + 224, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg1.length) + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1092 len arg3.length + floor32(arg2.length) + 32]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
                                else:
                                    mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1124] = mem[floor32(arg3.length) + floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 1156 len arg3.length % 32]
                                    create contract with 0 wei
                                                    code: code.data[974 len 676], Array(len=floor32(arg2.length) + floor32(arg1.length) + 224, data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 1028 len floor32(arg1.length) + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + 1092 len floor32(arg2.length) + 32], mem[ceil32(arg1.length) + ceil32(arg2.length) + 192], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg1.length) + floor32(arg2.length) + 1156 len floor32(arg3.length)]), floor32(arg1.length) + 160
                                    require create.new_address
                                    address(stor1[stor1.length]) = address(create.new_address)
                                    return 1
    else:
        return 0
}



}
