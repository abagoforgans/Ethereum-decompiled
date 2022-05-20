contract main {




// =====================  Runtime code  =====================


address owner;
uint256 fee;
address stor2;

function owner() {
    return owner
}

function fee() {
    return fee
}

function _fallback() payable {
    revert
}

function setFee(uint256 arg1) {
    require msg.sender == owner
    fee = arg1
}

function setFundAddress(address arg1) {
    require msg.sender == owner
    stor2 = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_287cb591(?) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    require msg.value >= fee
    call stor2 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len 5334] = code.data[2076 len 5334]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 5654 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 5654] = arg2.length
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 5686 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            create contract with 0 wei
                            code: code.data[2076 len 5334], Array(len=arg3, data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 5654 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]), arg1.length + 160, msg.sender
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 5686] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 5718 len arg2.length % 32]
            create contract with 0 wei
                            code: code.data[2076 len 5334], Array(len=arg3, data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 5654 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64]), arg1.length + 160, msg.sender
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 5654] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 5686 len arg1.length % 32]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 5686] = arg2.length
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 5718 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            create contract with 0 wei
                            code: code.data[2076 len 5334], Array(len=arg3, data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 5654 len arg2.length + floor32(arg1.length) + -ceil32(arg1.length) + 64]), floor32(arg1.length) + 192, msg.sender
        else:
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 5718] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 5750 len arg2.length % 32]
            create contract with 0 wei
                            code: code.data[2076 len 5334], Array(len=arg3, data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 5654 len floor32(arg2.length) + floor32(arg1.length) + -ceil32(arg1.length) + 96]), floor32(arg1.length) + 192, msg.sender
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
}



}
