contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 3398]




// =====================  Runtime code  =====================


array of struct created;

function created(address arg1, uint256 arg2) payable {
    require arg2 < created[arg1].field_0
    return created[arg1][arg2].field_0
}

function _fallback() payable {
  stop
}

function createdByMe() payable {
    if created[address(msg.sender)].field_0:
        mem[160] = created[address(msg.sender)].field_0
        idx = 160
        s = 0
        while (32 * created[address(msg.sender)].field_0) + 160 > idx + 32:
            mem[idx + 32] = created[address(msg.sender)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=created[address(msg.sender)].field_0, data=mem[160 len 32 * created[address(msg.sender)].field_0])
}

function createHumanStandardToken(uint256 arg1, string arg2, uint8 arg3, string arg4) payable {
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 2766 len arg2.length] = arg2[all]
    if not arg2.length % 32:
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 2798 len arg4.length] = arg4[all]
        if not arg4.length % 32:
            create contract with 0 wei
                            code: code.data[952 len 2446], arg1, Array(len=arg2.length + 160, data=arg2.length, arg2[all], arg4.length, arg4[all]), arg3 << 248
        else:
            mem[floor32(arg4.length) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 2798] = mem[floor32(arg4.length) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + -(arg4.length % 32) + 2830 len arg4.length % 32]
            create contract with 0 wei
                            code: code.data[952 len 2446], arg1, Array(len=arg2.length + 160, data=arg2.length, arg2[all], arg4.length, arg4[all], mem[ceil32(arg2.length) + ceil32(arg4.length) + arg2.length + arg4.length + 2798 len -(arg4.length % 32) + 32]), arg3 << 248
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 2766] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + -(arg2.length % 32) + 2798 len arg2.length % 32]
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 2830 len arg4.length] = arg4[all]
        if not arg4.length % 32:
            create contract with 0 wei
                            code: code.data[952 len 2446], arg1, Array(len=floor32(arg2.length) + 192, data=arg2.length, arg2[all], mem[ceil32(arg2.length) + ceil32(arg4.length) + arg2.length + 2766 len -(arg2.length % 32) + 32], arg4.length, arg4[all]), arg3 << 248
        else:
            mem[floor32(arg4.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 2830] = mem[floor32(arg4.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + -(arg4.length % 32) + 2862 len arg4.length % 32]
            create contract with 0 wei
                            code: code.data[952 len 2446], arg1, Array(len=floor32(arg2.length) + 192, data=arg2.length, arg2[all], mem[ceil32(arg2.length) + ceil32(arg4.length) + arg2.length + 2766 len -(arg2.length % 32) + 32], arg4.length, arg4[all], mem[ceil32(arg2.length) + ceil32(arg4.length) + floor32(arg2.length) + arg4.length + 2830 len -(arg4.length % 32) + 32]), arg3 << 248
    call address(create.new_address).0xa9059cbb with:
         gas gas_remaining - 25050 wei
        args msg.sender, arg1
    require ext_call.success
    created[address(msg.sender)].field_0++
    if not created[address(msg.sender)].field_0 <= created[address(msg.sender)].field_0 + 1:
        idx = created[address(msg.sender)].field_0 + 1
        while created[address(msg.sender)].field_0 > idx:
            created[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
    created[address(msg.sender)][created[address(msg.sender)].field_0].field_0 = create.new_address or Mask(96, 160, created[address(msg.sender)][created[address(msg.sender)].field_0].field_0)
    return address(create.new_address)
}



}
