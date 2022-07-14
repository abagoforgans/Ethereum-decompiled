contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
uint8 stor1;
address stor1;
address foundationAddress; offset 8
address beneficiaryAddress;
array of address sub_471553e5;
array of address sub_21b25c1d;
array of struct sub_adc7602c;
array of struct sub_753d644e;
mapping of uint256 sub_5707cdcc;
mapping of uint8 stor99;
array of struct stor2588077117166263351284689902931333654327841381007133193817924669990258558652;

function sub_21b25c1d(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_21b25c1d.length
    return sub_21b25c1d[arg1]
}

function beneficiary() {
    return beneficiaryAddress
}

function foundation() {
    return foundationAddress
}

function isPauser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor0[address(arg1)])
}

function sub_471553e5(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_471553e5.length
    return sub_471553e5[arg1]
}

function sub_5707cdcc(?) {
    require calldata.size - 4 >= 64
    return sub_5707cdcc[arg1][arg2]
}

function paused() {
    return bool(uint8(stor1.field_0))
}

function sub_753d644e(?) {
    return uint256(sub_753d644e[arg1][arg2][0 len sub_753d644e[arg1][arg2].length].field_0)
}

function sub_adc7602c(?) {
    return uint256(sub_adc7602c[arg1][arg2][0 len sub_adc7602c[arg1][arg2].length].field_0)
}

function destruct() {
    if foundationAddress != msg.sender:
        revert with 0, 'foundation required'
    idx = 0
    while idx < sub_471553e5.length:
        mem[0] = 3
        require ext_code.size(sub_471553e5[idx])
        staticcall sub_471553e5[idx].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[100] = beneficiaryAddress
        mem[132] = ext_call.return_data[0]
        require ext_code.size(sub_471553e5[idx])
        call sub_471553e5[idx].0xa9059cbb with:
             gas gas_remaining wei
            args beneficiaryAddress, ext_call.return_data[0]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    idx = 0
    while idx < sub_21b25c1d.length:
        mem[0] = 4
        mem[96] = 0x330aa40d00000000000000000000000000000000000000000000000000000000
        mem[100] = beneficiaryAddress
        require ext_code.size(sub_21b25c1d[idx])
        call sub_21b25c1d[idx].0x330aa40d with:
             gas gas_remaining wei
            args beneficiaryAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    selfdestruct(beneficiaryAddress)
}

function _fallback() payable {
    revert with 0, 'not allowed to send value'
}

function renouncePauser() {
    require msg.sender
    require stor0[address(msg.sender)]
    stor0[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function unpause() {
    require msg.sender
    require stor0[address(msg.sender)]
    require uint8(stor1.field_0)
    uint8(stor1.field_0) = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender
    require stor0[address(msg.sender)]
    require not uint8(stor1.field_0)
    uint8(stor1.field_0) = 1
    emit Paused(msg.sender);
}

function addPauser(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    require not stor0[address(arg1)]
    stor0[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function sub_320432d4(?) {
    require calldata.size - 4 >= 32
    if foundationAddress != msg.sender:
        revert with 0, 'foundation required'
    if not arg1:
        revert with 0, 'empty address'
    emit FoundationTransferred(address(stor1.field_0), arg1);
    require foundationAddress
    require stor0[address(stor1.field_0)]
    stor0[address(stor1.field_0)] = 0
    emit PauserRemoved(foundationAddress);
    require arg1
    require not stor0[address(arg1)]
    stor0[address(arg1)] = 1
    emit PauserAdded(arg1);
    foundationAddress = arg1
}

function sub_ab48c349(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], Mask(8 * -(arg1.length % 32) + 32, -(8 * -(arg1.length % 32) + 32) + 256, 0) << (8 * -(arg1.length % 32) + 32) - 256 and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 7
    mem[ceil32(arg1.length) + 128] = bool(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)])
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_c8acc18f(?) {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require not uint8(stor1.field_0)
    if foundationAddress != msg.sender:
        revert with 0, 'foundation required'
    if not stor5B8C[arg1].length:
        revert with 0, 'unregistered token'
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 7
    if stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)]:
        revert with 0, 'duplicate proof'
    if arg4 < sub_5707cdcc[0][arg1]:
        revert with 0, 'value less than min amount'
    mem[32] = 0x5b8ccbb9d4d8fb16ea74ce3c29a41f1b461fbdaff4714a0d9a8eb05499746bc
    mem[64] = ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + 160
    mem[ceil32(arg2.length) + 128] = stor5B8C[arg1].length
    mem[0] = sha3(arg1, 0x5b8ccbb9d4d8fb16ea74ce3c29a41f1b461fbdaff4714a0d9a8eb05499746bc)
    mem[ceil32(arg2.length) + 160] = uint256(stor5B8C[arg1].field_0)
    idx = ceil32(arg2.length) + 160
    s = 0
    while ceil32(arg2.length) + stor5B8C[arg1].length + 128 > idx:
        mem[idx + 32] = uint256(stor5B8C[arg1][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + 224] = arg4
    mem[ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + 160] = 96
    mem[ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + 256] = arg2.length
    mem[ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + 288 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + 192] = arg2.length + 128
    mem[arg2.length + ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + 288] = stor5B8C[arg1].length
    mem[arg2.length + ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + 320 len ceil32(stor5B8C[arg1].length)] = mem[ceil32(arg2.length) + 160 len ceil32(stor5B8C[arg1].length)]
    if not stor5B8C[arg1].length % 32:
        emit 0x8af2d969: Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(stor5B8C[arg1].length) + 288 len stor5B8C[arg1].length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 128, arg4, arg1, 0, arg3
    else:
        mem[floor32(stor5B8C[arg1].length) + arg2.length + ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + 320] = mem[floor32(stor5B8C[arg1].length) + arg2.length + ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + -stor5B8C[arg1].length % 32 + 352 len stor5B8C[arg1].length % 32]
        emit 0x8af2d969: Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(stor5B8C[arg1].length) + 288 len floor32(stor5B8C[arg1].length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 128, arg4, arg1, 0, arg3
    mem[ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + floor32(arg2.length) + 160] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + floor32(arg2.length) + 160] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + arg2.length + 160] = 7
    stor[mem[ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] = 1
    call arg3 with:
       value arg4 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_95ccedcd(?) {
    require calldata.size - 4 >= 160
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require not uint8(stor1.field_0)
    if foundationAddress != msg.sender:
        revert with 0, 'foundation required'
    if not sub_753d644e[address(arg3)][arg1].length:
        revert with 0, 'unregistered token'
    if arg5 < sub_5707cdcc[address(arg3)][arg1]:
        revert with 0, 'value less than min amount'
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 7
    if stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)]:
        revert with 0, 'duplicate proof'
    mem[32] = sha3(address(arg3), 6)
    mem[64] = ceil32(arg2.length) + ceil32(sub_753d644e[address(arg3)][arg1].length) + 160
    mem[ceil32(arg2.length) + 128] = sub_753d644e[address(arg3)][arg1].length
    mem[0] = sha3(arg1, sha3(address(arg3), 6))
    mem[ceil32(arg2.length) + 160] = uint256(sub_753d644e[address(arg3)][arg1].field_0)
    idx = ceil32(arg2.length) + 160
    s = 0
    while ceil32(arg2.length) + sub_753d644e[address(arg3)][arg1].length + 128 > idx:
        mem[idx + 32] = uint256(sub_753d644e[address(arg3)][arg1][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg2.length) + ceil32(sub_753d644e[address(arg3)][arg1].length) + 224] = arg5
    mem[ceil32(arg2.length) + ceil32(sub_753d644e[address(arg3)][arg1].length) + 160] = 96
    mem[ceil32(arg2.length) + ceil32(sub_753d644e[address(arg3)][arg1].length) + 256] = arg2.length
    mem[ceil32(arg2.length) + ceil32(sub_753d644e[address(arg3)][arg1].length) + 288 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[ceil32(arg2.length) + ceil32(sub_753d644e[address(arg3)][arg1].length) + 192] = arg2.length + 128
    mem[arg2.length + ceil32(arg2.length) + ceil32(sub_753d644e[address(arg3)][arg1].length) + 288] = sub_753d644e[address(arg3)][arg1].length
    mem[arg2.length + ceil32(arg2.length) + ceil32(sub_753d644e[address(arg3)][arg1].length) + 320 len ceil32(sub_753d644e[address(arg3)][arg1].length)] = mem[ceil32(arg2.length) + 160 len ceil32(sub_753d644e[address(arg3)][arg1].length)]
    if not sub_753d644e[address(arg3)][arg1].length % 32:
        emit 0xcc810d23: Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(sub_753d644e[address(arg3)][arg1].length) + 288 len sub_753d644e[address(arg3)][arg1].length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 128, arg5, arg1, arg3, arg4
    else:
        mem[floor32(sub_753d644e[address(arg3)][arg1].length) + arg2.length + ceil32(arg2.length) + ceil32(sub_753d644e[address(arg3)][arg1].length) + 320] = mem[floor32(sub_753d644e[address(arg3)][arg1].length) + arg2.length + ceil32(arg2.length) + ceil32(sub_753d644e[address(arg3)][arg1].length) + -sub_753d644e[address(arg3)][arg1].length % 32 + 352 len sub_753d644e[address(arg3)][arg1].length % 32]
        emit 0xcc810d23: Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(sub_753d644e[address(arg3)][arg1].length) + 288 len floor32(sub_753d644e[address(arg3)][arg1].length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 128, arg5, arg1, arg3, arg4
    mem[ceil32(arg2.length) + ceil32(sub_753d644e[address(arg3)][arg1].length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + ceil32(sub_753d644e[address(arg3)][arg1].length) + floor32(arg2.length) + 160] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(sub_753d644e[address(arg3)][arg1].length) + floor32(arg2.length) + 160] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + ceil32(sub_753d644e[address(arg3)][arg1].length) + arg2.length + 160] = 7
    stor[mem[ceil32(arg2.length) + ceil32(stor6[address(arg3)][arg1].length) + 192 len arg2.length]][96] = 1
    require ext_code.size(arg3)
    call arg3.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg4), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_72003131(?) {
    require calldata.size - 4 >= 160
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require not uint8(stor1.field_0)
    if foundationAddress != msg.sender:
        revert with 0, 'foundation required'
    if not sub_adc7602c[address(arg3)][arg1].length:
        revert with 0, 'unregistered token'
    if arg5 < sub_5707cdcc[address(arg3)][arg1]:
        revert with 0, 'value less than min amount'
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 7
    if stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)]:
        revert with 0, 'duplicate proof'
    mem[32] = sha3(address(arg3), 5)
    mem[64] = ceil32(arg2.length) + ceil32(sub_adc7602c[address(arg3)][arg1].length) + 160
    mem[ceil32(arg2.length) + 128] = sub_adc7602c[address(arg3)][arg1].length
    mem[0] = sha3(arg1, sha3(address(arg3), 5))
    mem[ceil32(arg2.length) + 160] = uint256(sub_adc7602c[address(arg3)][arg1].field_0)
    idx = ceil32(arg2.length) + 160
    s = 0
    while ceil32(arg2.length) + sub_adc7602c[address(arg3)][arg1].length + 128 > idx:
        mem[idx + 32] = uint256(sub_adc7602c[address(arg3)][arg1][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg2.length) + ceil32(sub_adc7602c[address(arg3)][arg1].length) + 224] = arg5
    mem[ceil32(arg2.length) + ceil32(sub_adc7602c[address(arg3)][arg1].length) + 160] = 96
    mem[ceil32(arg2.length) + ceil32(sub_adc7602c[address(arg3)][arg1].length) + 256] = arg2.length
    mem[ceil32(arg2.length) + ceil32(sub_adc7602c[address(arg3)][arg1].length) + 288 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[ceil32(arg2.length) + ceil32(sub_adc7602c[address(arg3)][arg1].length) + 192] = arg2.length + 128
    mem[arg2.length + ceil32(arg2.length) + ceil32(sub_adc7602c[address(arg3)][arg1].length) + 288] = sub_adc7602c[address(arg3)][arg1].length
    mem[arg2.length + ceil32(arg2.length) + ceil32(sub_adc7602c[address(arg3)][arg1].length) + 320 len ceil32(sub_adc7602c[address(arg3)][arg1].length)] = mem[ceil32(arg2.length) + 160 len ceil32(sub_adc7602c[address(arg3)][arg1].length)]
    if not sub_adc7602c[address(arg3)][arg1].length % 32:
        emit 0x8af2d969: Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(sub_adc7602c[address(arg3)][arg1].length) + 288 len sub_adc7602c[address(arg3)][arg1].length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 128, arg5, arg1, arg3, arg4
        mem[ceil32(arg2.length) + ceil32(sub_adc7602c[address(arg3)][arg1].length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + ceil32(sub_adc7602c[address(arg3)][arg1].length) + floor32(arg2.length) + 160] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(sub_adc7602c[address(arg3)][arg1].length) + floor32(arg2.length) + 160] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
        mem[ceil32(arg2.length) + ceil32(sub_adc7602c[address(arg3)][arg1].length) + arg2.length + 160] = 7
        stor[mem[ceil32(arg2.length) + ceil32(stor5[address(arg3)][arg1].length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] = 1
    else:
        mem[floor32(sub_adc7602c[address(arg3)][arg1].length) + arg2.length + ceil32(arg2.length) + ceil32(sub_adc7602c[address(arg3)][arg1].length) + 320] = mem[floor32(sub_adc7602c[address(arg3)][arg1].length) + arg2.length + ceil32(arg2.length) + ceil32(sub_adc7602c[address(arg3)][arg1].length) + -sub_adc7602c[address(arg3)][arg1].length % 32 + 352 len sub_adc7602c[address(arg3)][arg1].length % 32]
        emit 0x8af2d969: Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(sub_adc7602c[address(arg3)][arg1].length) + 288 len floor32(sub_adc7602c[address(arg3)][arg1].length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 128, arg5, arg1, arg3, arg4
        mem[ceil32(arg2.length) + ceil32(sub_adc7602c[address(arg3)][arg1].length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + ceil32(sub_adc7602c[address(arg3)][arg1].length) + floor32(arg2.length) + 160] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(sub_adc7602c[address(arg3)][arg1].length) + floor32(arg2.length) + 160] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
        mem[ceil32(arg2.length) + ceil32(sub_adc7602c[address(arg3)][arg1].length) + arg2.length + 160] = 7
        stor[mem[ceil32(arg2.length) + ceil32(stor5[address(arg3)][arg1].length) + 192 len arg2.length]][96] = 1
    require ext_code.size(arg3)
    call arg3.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg4), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function sub_ed2183b6(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require not uint8(stor1.field_0)
    if not stor5B8C[arg1].length:
        revert with 0, 'unregistered token'
    if msg.value < sub_5707cdcc[0][arg1]:
        revert with 0, 'value less than min amount'
    mem[32] = 0x5b8ccbb9d4d8fb16ea74ce3c29a41f1b461fbdaff4714a0d9a8eb05499746bc
    mem[64] = ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + 160
    mem[ceil32(arg2.length) + 128] = stor5B8C[arg1].length
    mem[0] = sha3(arg1, 0x5b8ccbb9d4d8fb16ea74ce3c29a41f1b461fbdaff4714a0d9a8eb05499746bc)
    mem[ceil32(arg2.length) + 160] = uint256(stor5B8C[arg1].field_0)
    idx = ceil32(arg2.length) + 160
    s = 0
    while ceil32(arg2.length) + stor5B8C[arg1].length + 128 > idx:
        mem[idx + 32] = uint256(stor5B8C[arg1][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + floor32(arg2.length) + 160] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + floor32(arg2.length) + 160] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
    _198 = sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + floor32(arg2.length) + 160 len arg2.length % 32])
    _199 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    mem[ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
    mem[ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 160] = mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32) + 256, mem[ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 160])
    _263 = sha3(mem[ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + 160 len _199])
    mem[ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + 160] = 0
    mem[ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + 256] = msg.value
    mem[ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + 192] = 128
    mem[ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + 288] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    mem[ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + 320 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
    if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
        mem[ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + 224] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 160
        mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + 320] = arg2.length
        mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + 352 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            emit 0xec313504: mem[ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + 160 len arg2.length + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 192], arg1, _263, _198
        else:
            mem[floor32(arg2.length) + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + 352] = mem[floor32(arg2.length) + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + -(arg2.length % 32) + 384 len arg2.length % 32]
            emit 0xec313504: mem[ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + 160 len floor32(arg2.length) + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 224], arg1, _263, _198
    else:
        mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + 320] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 352 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
        mem[ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + 224] = floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 192
        mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + 352] = arg2.length
        mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + 384 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            emit 0xec313504: mem[ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + 160 len arg2.length + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 224], arg1, _263, _198
        else:
            mem[floor32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + 384] = mem[floor32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + -(arg2.length % 32) + 416 len arg2.length % 32]
            emit 0xec313504: mem[ceil32(arg2.length) + ceil32(stor5B8C[arg1].length) + 160 len floor32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 256], arg1, _263, _198
}

function sub_1841de46(?) {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[64] = ceil32(arg3.length) + ceil32(arg4.length) + 160
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + arg4.length + 160] = 0
    require not uint8(stor1.field_0)
    if foundationAddress != msg.sender:
        revert with 0, 'foundation required'
    mem[32] = sha3(address(arg1), 6)
    mem[0] = sha3(arg2, sha3(address(arg1), 6))
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = uint256(sub_753d644e[address(arg1)][arg2].field_0)
    idx = ceil32(arg3.length) + ceil32(arg4.length) + 160
    s = 0
    while ceil32(arg3.length) + ceil32(arg4.length) + sub_753d644e[address(arg1)][arg2].length + 160 > idx + 32:
        mem[idx + 32] = uint256(sub_753d644e[address(arg1)][arg2][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    if sha3(mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len sub_753d644e[address(arg1)][arg2].length]) != sha3(arg3[all]):
        revert with 0, 'wrong old src'
    _355 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 160] = mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) + 256, mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 160])
    _592 = sha3(mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len _355])
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 224] = arg5
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = 96
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 256] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 288 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
    if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 128
        mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + ceil32(arg3.length) + ceil32(arg4.length) + 288] = arg3.length
        mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + ceil32(arg3.length) + ceil32(arg4.length) + 320 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            emit 0xbee4580f: mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len arg3.length + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 160], arg2, arg1, _592
        else:
            mem[floor32(arg3.length) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + ceil32(arg3.length) + ceil32(arg4.length) + 320] = mem[floor32(arg3.length) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 352 len arg3.length % 32]
            emit 0xbee4580f: mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(arg3.length) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 192], arg2, arg1, _592
        uint256(sub_753d644e[address(arg1)][arg2][].field_0) = Array(len=Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)], data=mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]])
        sub_5707cdcc[address(arg1)][arg2] = arg5
        if not arg3.length:
            sub_21b25c1d.length++
            sub_21b25c1d[sub_21b25c1d.length] = arg1
    else:
        mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + ceil32(arg4.length) + 288] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 320 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 160
        mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + ceil32(arg4.length) + 320] = arg3.length
        mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + ceil32(arg4.length) + 352 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            emit 0xbee4580f: mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len arg3.length + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 192], arg2, arg1, _592
        else:
            mem[floor32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = mem[floor32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 384 len arg3.length % 32]
            emit 0xbee4580f: mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 224], arg2, arg1, _592
        uint256(sub_753d644e[address(arg1)][arg2][].field_0) = Array(len=Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)], data=mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]])
        sub_5707cdcc[address(arg1)][arg2] = arg5
        if not arg3.length:
            sub_21b25c1d.length++
            sub_21b25c1d[sub_21b25c1d.length] = arg1
}

function sub_635fa857(?) {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[64] = ceil32(arg3.length) + ceil32(arg4.length) + 160
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + arg4.length + 160] = 0
    require not uint8(stor1.field_0)
    if foundationAddress != msg.sender:
        revert with 0, 'foundation required'
    mem[32] = sha3(address(arg1), 5)
    mem[0] = sha3(arg2, sha3(address(arg1), 5))
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = uint256(sub_adc7602c[address(arg1)][arg2].field_0)
    idx = ceil32(arg3.length) + ceil32(arg4.length) + 160
    s = 0
    while ceil32(arg3.length) + ceil32(arg4.length) + sub_adc7602c[address(arg1)][arg2].length + 160 > idx + 32:
        mem[idx + 32] = uint256(sub_adc7602c[address(arg1)][arg2][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    if sha3(mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len sub_adc7602c[address(arg1)][arg2].length]) != sha3(arg3[all]):
        revert with 0, 'wrong old dest'
    _355 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 160] = mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) + 256, mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 160])
    _592 = sha3(mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len _355])
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 224] = arg5
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = 96
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 256] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 288 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
    if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 128
        mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + ceil32(arg3.length) + ceil32(arg4.length) + 288] = arg3.length
        mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + ceil32(arg3.length) + ceil32(arg4.length) + 320 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            emit 0xee0dd04c: mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len arg3.length + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 160], arg2, arg1, _592
        else:
            mem[floor32(arg3.length) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + ceil32(arg3.length) + ceil32(arg4.length) + 320] = mem[floor32(arg3.length) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 352 len arg3.length % 32]
            emit 0xee0dd04c: mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(arg3.length) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 192], arg2, arg1, _592
        uint256(sub_adc7602c[address(arg1)][arg2][].field_0) = Array(len=Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)], data=mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]])
        sub_5707cdcc[address(arg1)][arg2] = arg5
        if arg1:
            if not arg3.length:
                sub_471553e5.length++
                sub_471553e5[sub_471553e5.length] = arg1
    else:
        mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + ceil32(arg4.length) + 288] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 320 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 160
        mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + ceil32(arg4.length) + 320] = arg3.length
        mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + ceil32(arg4.length) + 352 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            emit 0xee0dd04c: mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len arg3.length + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 192], arg2, arg1, _592
        else:
            mem[floor32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + ceil32(arg4.length) + 352] = mem[floor32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 384 len arg3.length % 32]
            emit 0xee0dd04c: mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 224], arg2, arg1, _592
        uint256(sub_adc7602c[address(arg1)][arg2][].field_0) = Array(len=Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)], data=mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]])
        sub_5707cdcc[address(arg1)][arg2] = arg5
        if arg1:
            if not arg3.length:
                sub_471553e5.length++
                sub_471553e5[sub_471553e5.length] = arg1
}

function sub_c01a2360(?) {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require not uint8(stor1.field_0)
    if not sub_753d644e[address(arg2)][arg1].length:
        revert with 0, 'unregistered token'
    if arg4 < sub_5707cdcc[address(arg2)][arg1]:
        revert with 0, 'value less than min amount'
    mem[32] = sha3(address(arg2), 6)
    mem[64] = ceil32(arg3.length) + ceil32(sub_753d644e[address(arg2)][arg1].length) + 160
    mem[ceil32(arg3.length) + 128] = sub_753d644e[address(arg2)][arg1].length
    mem[0] = sha3(arg1, sha3(address(arg2), 6))
    mem[ceil32(arg3.length) + 160] = uint256(sub_753d644e[address(arg2)][arg1].field_0)
    idx = ceil32(arg3.length) + 160
    s = 0
    while ceil32(arg3.length) + sub_753d644e[address(arg2)][arg1].length + 128 > idx:
        mem[idx + 32] = uint256(sub_753d644e[address(arg2)][arg1][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg3.length) + ceil32(sub_753d644e[address(arg2)][arg1].length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + ceil32(sub_753d644e[address(arg2)][arg1].length) + floor32(arg3.length) + 160] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + ceil32(sub_753d644e[address(arg2)][arg1].length) + floor32(arg3.length) + 160] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
    _249 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + ceil32(sub_753d644e[address(arg2)][arg1].length) + floor32(arg3.length) + 160 len arg3.length % 32])
    _250 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
    mem[ceil32(arg3.length) + ceil32(sub_753d644e[address(arg2)][arg1].length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
    mem[ceil32(arg3.length) + ceil32(sub_753d644e[address(arg2)][arg1].length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 160] = mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) + 256, mem[ceil32(arg3.length) + ceil32(sub_753d644e[address(arg2)][arg1].length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 160])
    _338 = sha3(mem[ceil32(arg3.length) + ceil32(sub_753d644e[address(arg2)][arg1].length) + 160 len _250])
    mem[ceil32(arg3.length) + ceil32(sub_753d644e[address(arg2)][arg1].length) + 160] = arg2
    mem[ceil32(arg3.length) + ceil32(sub_753d644e[address(arg2)][arg1].length) + 256] = arg4
    mem[ceil32(arg3.length) + ceil32(sub_753d644e[address(arg2)][arg1].length) + 192] = 128
    mem[ceil32(arg3.length) + ceil32(sub_753d644e[address(arg2)][arg1].length) + 288] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
    mem[ceil32(arg3.length) + ceil32(sub_753d644e[address(arg2)][arg1].length) + 320 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
    if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
        mem[ceil32(arg3.length) + ceil32(sub_753d644e[address(arg2)][arg1].length) + 224] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 160
        mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + ceil32(arg3.length) + ceil32(sub_753d644e[address(arg2)][arg1].length) + 320] = arg3.length
        mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + ceil32(arg3.length) + ceil32(sub_753d644e[address(arg2)][arg1].length) + 352 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            emit 0x4f458ec9: mem[ceil32(arg3.length) + ceil32(sub_753d644e[address(arg2)][arg1].length) + 160 len arg3.length + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 192], arg1, _338, _249
        else:
            mem[floor32(arg3.length) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + ceil32(arg3.length) + ceil32(sub_753d644e[address(arg2)][arg1].length) + 352] = mem[floor32(arg3.length) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + ceil32(arg3.length) + ceil32(sub_753d644e[address(arg2)][arg1].length) + -(arg3.length % 32) + 384 len arg3.length % 32]
            emit 0x4f458ec9: mem[ceil32(arg3.length) + ceil32(sub_753d644e[address(arg2)][arg1].length) + 160 len floor32(arg3.length) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 224], arg1, _338, _249
    else:
        mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + ceil32(sub_753d644e[address(arg2)][arg1].length) + 320] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + ceil32(sub_753d644e[address(arg2)][arg1].length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 352 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
        mem[ceil32(arg3.length) + ceil32(sub_753d644e[address(arg2)][arg1].length) + 224] = floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 192
        mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + ceil32(sub_753d644e[address(arg2)][arg1].length) + 352] = arg3.length
        mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + ceil32(sub_753d644e[address(arg2)][arg1].length) + 384 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            emit 0x4f458ec9: mem[ceil32(arg3.length) + ceil32(sub_753d644e[address(arg2)][arg1].length) + 160 len arg3.length + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 224], arg1, _338, _249
        else:
            mem[floor32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + ceil32(sub_753d644e[address(arg2)][arg1].length) + 384] = mem[floor32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + ceil32(sub_753d644e[address(arg2)][arg1].length) + -(arg3.length % 32) + 416 len arg3.length % 32]
            emit 0x4f458ec9: mem[ceil32(arg3.length) + ceil32(sub_753d644e[address(arg2)][arg1].length) + 160 len floor32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 256], arg1, _338, _249
    require ext_code.size(arg2)
    call arg2.burn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b76c104e(?) {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require not uint8(stor1.field_0)
    if not sub_adc7602c[address(arg1)][arg2].length:
        revert with 0, 'unregistered token'
    if arg4 < sub_5707cdcc[address(arg1)][arg2]:
        revert with 0, 'value less than min amount'
    mem[32] = sha3(address(arg1), 5)
    mem[64] = ceil32(arg3.length) + ceil32(sub_adc7602c[address(arg1)][arg2].length) + 160
    mem[ceil32(arg3.length) + 128] = sub_adc7602c[address(arg1)][arg2].length
    mem[0] = sha3(arg2, sha3(address(arg1), 5))
    mem[ceil32(arg3.length) + 160] = uint256(sub_adc7602c[address(arg1)][arg2].field_0)
    idx = ceil32(arg3.length) + 160
    s = 0
    while ceil32(arg3.length) + sub_adc7602c[address(arg1)][arg2].length + 128 > idx:
        mem[idx + 32] = uint256(sub_adc7602c[address(arg1)][arg2][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg3.length) + ceil32(sub_adc7602c[address(arg1)][arg2].length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + ceil32(sub_adc7602c[address(arg1)][arg2].length) + floor32(arg3.length) + 160] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + ceil32(sub_adc7602c[address(arg1)][arg2].length) + floor32(arg3.length) + 160] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], Mask(8 * -(arg3.length % 32) + 32, -(8 * -(arg3.length % 32) + 32) + 256, 0) << (8 * -(arg3.length % 32) + 32) - 256 and !(256^(-(arg3.length % 32) + 32) - 1)
    _297 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + ceil32(sub_adc7602c[address(arg1)][arg2].length) + floor32(arg3.length) + 160 len arg3.length % 32])
    _298 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
    mem[ceil32(arg3.length) + ceil32(sub_adc7602c[address(arg1)][arg2].length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
    mem[ceil32(arg3.length) + ceil32(sub_adc7602c[address(arg1)][arg2].length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 160] = mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) + 256, mem[ceil32(arg3.length) + ceil32(sub_adc7602c[address(arg1)][arg2].length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 160])
    _410 = sha3(mem[ceil32(arg3.length) + ceil32(sub_adc7602c[address(arg1)][arg2].length) + 160 len _298])
    mem[ceil32(arg3.length) + ceil32(sub_adc7602c[address(arg1)][arg2].length) + 160] = arg1
    mem[ceil32(arg3.length) + ceil32(sub_adc7602c[address(arg1)][arg2].length) + 256] = arg4
    mem[ceil32(arg3.length) + ceil32(sub_adc7602c[address(arg1)][arg2].length) + 192] = 128
    mem[ceil32(arg3.length) + ceil32(sub_adc7602c[address(arg1)][arg2].length) + 288] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
    mem[ceil32(arg3.length) + ceil32(sub_adc7602c[address(arg1)][arg2].length) + 320 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
    if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
        mem[ceil32(arg3.length) + ceil32(sub_adc7602c[address(arg1)][arg2].length) + 224] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 160
        mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + ceil32(arg3.length) + ceil32(sub_adc7602c[address(arg1)][arg2].length) + 320] = arg3.length
        mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + ceil32(arg3.length) + ceil32(sub_adc7602c[address(arg1)][arg2].length) + 352 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            emit 0xec313504: mem[ceil32(arg3.length) + ceil32(sub_adc7602c[address(arg1)][arg2].length) + 160 len arg3.length + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 192], arg2, _410, _297
        else:
            mem[floor32(arg3.length) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + ceil32(arg3.length) + ceil32(sub_adc7602c[address(arg1)][arg2].length) + 352] = mem[floor32(arg3.length) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + ceil32(arg3.length) + ceil32(sub_adc7602c[address(arg1)][arg2].length) + -(arg3.length % 32) + 384 len arg3.length % 32]
            emit 0xec313504: mem[ceil32(arg3.length) + ceil32(sub_adc7602c[address(arg1)][arg2].length) + 160 len floor32(arg3.length) + Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 224], arg2, _410, _297
    else:
        mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + ceil32(sub_adc7602c[address(arg1)][arg2].length) + 320] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + ceil32(sub_adc7602c[address(arg1)][arg2].length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 352 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
        mem[ceil32(arg3.length) + ceil32(sub_adc7602c[address(arg1)][arg2].length) + 224] = floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 192
        mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + ceil32(sub_adc7602c[address(arg1)][arg2].length) + 352] = arg3.length
        mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + ceil32(sub_adc7602c[address(arg1)][arg2].length) + 384 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            emit 0xec313504: mem[ceil32(arg3.length) + ceil32(sub_adc7602c[address(arg1)][arg2].length) + 160 len arg3.length + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 224], arg2, _410, _297
        else:
            mem[floor32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + ceil32(sub_adc7602c[address(arg1)][arg2].length) + 384] = mem[floor32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + ceil32(sub_adc7602c[address(arg1)][arg2].length) + -(arg3.length % 32) + 416 len arg3.length % 32]
            emit 0xec313504: mem[ceil32(arg3.length) + ceil32(sub_adc7602c[address(arg1)][arg2].length) + 160 len floor32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 256], arg2, _410, _297
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}



}
