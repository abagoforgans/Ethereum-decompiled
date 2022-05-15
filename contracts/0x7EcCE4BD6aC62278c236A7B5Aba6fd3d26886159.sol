contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 totalSupply;
mapping of address sub_daeaa133;

function totalSupply() {
    return totalSupply
}

function owner() {
    return owner
}

function sub_daeaa133(?) {
    return sub_daeaa133[arg1]
}

function _fallback() payable {
    revert
}

function sub_59cc34a0(?) {
    require msg.sender == owner
    stor1 = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_2fd8732c(?) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    require ext_code.size(stor1)
    call stor1.ownerOf(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require not sub_daeaa133[arg1]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len 7965] = code.data[2113 len 7965]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 8285 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 8285] = arg3.length
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 8317 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            create contract with 0 wei
                            code: code.data[2113 len 7965], Array(len=msg.sender, data=arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 8285 len arg3.length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 160, arg4 << 248
        else:
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 8317] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 8349 len arg3.length % 32]
            create contract with 0 wei
                            code: code.data[2113 len 7965], Array(len=msg.sender, data=arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 8285 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 160, arg4 << 248
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 8285] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 8317 len arg2.length % 32]
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 8317] = arg3.length
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 8349 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            create contract with 0 wei
                            code: code.data[2113 len 7965], Array(len=msg.sender, data=arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 8285 len arg3.length + floor32(arg2.length) + -ceil32(arg2.length) + 64]), floor32(arg2.length) + 192, arg4 << 248
        else:
            mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 8349] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 8381 len arg3.length % 32]
            create contract with 0 wei
                            code: code.data[2113 len 7965], Array(len=msg.sender, data=arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 8285 len floor32(arg3.length) + floor32(arg2.length) + -ceil32(arg2.length) + 96]), floor32(arg2.length) + 192, arg4 << 248
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_daeaa133[arg1] = address(create.new_address)
    totalSupply++
}



}
