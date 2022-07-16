contract main {




// =====================  Runtime code  =====================


array of address sub_ee910391;
address lastContractAddress;

function lastContractAddress() {
    return lastContractAddress
}

function contracts(uint256 arg1) {
    require arg1 < sub_ee910391.length
    return sub_ee910391[arg1]
}

function getContractCount() {
    return sub_ee910391.length
}

function sub_ee910391(?) {
    require arg1 < sub_ee910391.length
    return sub_ee910391[arg1]
}

function _fallback() payable {
    revert
}

function sub_9b1bc1c5(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len 7232] = code.data[1520 len 7232]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 7520 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 7520] = arg2.length
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 7552 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            create contract with 0 wei
                            code: code.data[1520 len 7232], Array(len=address(arg3), data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 7520 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]), arg1.length + 128
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 7552] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 7584 len arg2.length % 32]
            create contract with 0 wei
                            code: code.data[1520 len 7232], Array(len=address(arg3), data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 7520 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64]), arg1.length + 128
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 7520] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 7552 len arg1.length % 32]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 7552] = arg2.length
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 7584 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            create contract with 0 wei
                            code: code.data[1520 len 7232], Array(len=address(arg3), data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 7520 len arg2.length + floor32(arg1.length) + -ceil32(arg1.length) + 64]), floor32(arg1.length) + 160
        else:
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 7584] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 7616 len arg2.length % 32]
            create contract with 0 wei
                            code: code.data[1520 len 7232], Array(len=address(arg3), data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 7520 len floor32(arg2.length) + floor32(arg1.length) + -ceil32(arg1.length) + 96]), floor32(arg1.length) + 160
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_ee910391.length++
    sub_ee910391[sub_ee910391.length] = address(create.new_address)
    lastContractAddress = address(create.new_address)
    emit 0xdf960b7f: address(create.new_address)
    return address(create.new_address)
}



}
