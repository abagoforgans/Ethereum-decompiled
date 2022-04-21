contract main {


// =======================  Init code  ======================


array of address stor0;
mapping of uint8 stor1;
array of uint256 stor2;

function _fallback() {
    create contract with 0 wei
                    code: code.data[8202 len 4518], 275000 * 3600, 128, 4, 192, 24, 'Applied Blockchain Token' << 64, 3, 'ABT' % 16777216
    require create.new_address
    uint256(stor0[address(msg.sender)])++
    if not uint256(stor0[address(msg.sender)]) <= uint256(stor0[address(msg.sender)]) + 1:
        idx = uint256(stor0[address(msg.sender)]) + 1
        while uint256(stor0[address(msg.sender)]) > idx:
            uint256(stor0[address(msg.sender)][idx]) = 0
            idx = idx + 1
            continue 
    address(stor0[address(msg.sender)][uint256(stor0[address(msg.sender)])]) = address(create.new_address)
    stor1[address(create.new_address)] = 1
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, 275000 * 3600
    require ext_call.success
    stor2[] = Array(len=ext_code.size(create.new_address), data=ext_code.copy(create.new_address, 0 len ext_code.size(create.new_address)))
    return code.data[1301 len 6901]
}



// =====================  Runtime code  =====================


array of address created;
mapping of uint8 stor1;
array of struct humanStandardByteCode;

function created(address arg1, uint256 arg2) {
    require arg2 < uint256(created[arg1])
    return address(created[arg1][arg2])
}

function humanStandardByteCode() {
    return humanStandardByteCode[0 len humanStandardByteCode.length].field_0
}

function isHumanToken(address arg1) {
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function verifyHumanStandardToken(address arg1) {
    mem[96] = 0
    mem[128] = 0
    mem[64] = ceil32(ext_code.size(arg1)) + 161
    mem[160] = ext_code.size(arg1)
    mem[192 len ext_code.size(arg1)] = ext_code.copy(arg1, 0 len ext_code.size(arg1))
    if ext_code.size(arg1) != humanStandardByteCode.length:
        return 0
    idx = 0
    while idx < ext_code.size(arg1):
        require idx < humanStandardByteCode.length
        if not bool(humanStandardByteCode.length):
            require idx < ext_code.size(arg1)
            if Mask(8, 248, mem[idx + 192]) == Mask(8, -(('field', 3, ('stor', ('length', ('name', 'humanStandardByteCode', 2)))), 0) + 256, idx) << (('field', 3, ('stor', ('length', ('name', 'humanStandardByteCode', 2)))), 0) - 8:
                idx = idx + 1
                continue 
        else:
            mem[0] = 2
            require idx < ext_code.size(arg1)
            if Mask(8, 248, mem[idx + 192]) == Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('var', 0)), ('name', 'humanStandardByteCode', 2)))), 0) + 256, idx % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('var', 0)), ('name', 'humanStandardByteCode', 2)))), 0) - 8:
                idx = idx + 1
                continue 
        return 0
    return 1
}

function createHumanStandardToken(uint256 arg1, string arg2, uint8 arg3, string arg4) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg4.length
    mem[ceil32(arg2.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 160 len 4518] = code.data[2340 len 4518]
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 4838 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 4838] = arg4.length
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 4870 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            create contract with 0 wei
                            code: code.data[2340 len 4518], arg1, Array(len=arg2.length + 160, data=arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg4.length) + 4838 len arg4.length + arg2.length + -ceil32(arg2.length) + 32]), arg3 << 248
        else:
            mem[floor32(arg4.length) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 4870] = mem[floor32(arg4.length) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + -(arg4.length % 32) + 4902 len arg4.length % 32]
            create contract with 0 wei
                            code: code.data[2340 len 4518], arg1, Array(len=arg2.length + 160, data=arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg4.length) + 4838 len floor32(arg4.length) + arg2.length + -ceil32(arg2.length) + 64]), arg3 << 248
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 4838] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + -(arg2.length % 32) + 4870 len arg2.length % 32]
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 4870] = arg4.length
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 4902 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            create contract with 0 wei
                            code: code.data[2340 len 4518], arg1, Array(len=floor32(arg2.length) + 192, data=arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg4.length) + 4838 len arg4.length + floor32(arg2.length) + -ceil32(arg2.length) + 64]), arg3 << 248
        else:
            mem[floor32(arg4.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 4902] = mem[floor32(arg4.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + -(arg4.length % 32) + 4934 len arg4.length % 32]
            create contract with 0 wei
                            code: code.data[2340 len 4518], arg1, Array(len=floor32(arg2.length) + 192, data=arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg4.length) + 4838 len floor32(arg4.length) + floor32(arg2.length) + -ceil32(arg2.length) + 96]), arg3 << 248
    require create.new_address
    uint256(created[address(msg.sender)])++
    if not uint256(created[address(msg.sender)]) <= uint256(created[address(msg.sender)]) + 1:
        idx = uint256(created[address(msg.sender)]) + 1
        while uint256(created[address(msg.sender)]) > idx:
            uint256(created[address(msg.sender)][idx]) = 0
            idx = idx + 1
            continue 
    address(created[address(msg.sender)][uint256(created[address(msg.sender)])]) = address(create.new_address)
    stor1[address(create.new_address)] = 1
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    return address(create.new_address)
}



}
