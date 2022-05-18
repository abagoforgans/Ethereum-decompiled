contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;

function _fallback() payable {
    mem[96 len -3166] = code.data[3421 len -3166]
    mem[64] = -3070
    stor0 = msg.sender
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    return code.data[255 len 3166]
}



// =====================  Runtime code  =====================


address mediatorAddress;
array of struct user;

function user() {
    return user[0 len user.length].field_0
}

function mediator() {
    return mediatorAddress
}

function cancel() {
    require mediatorAddress == msg.sender
    selfdestruct(mediatorAddress)
}

function _fallback() payable {
    call mediatorAddress with:
       value msg.value / 10 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function refund(address arg1) {
    require mediatorAddress == msg.sender
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_11eab55f(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    require mediatorAddress == msg.sender
    require arg3 <= eth.balance(this.address)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len 1364] = code.data[1759 len 1364]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 1620] = arg3
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 1652] = mediatorAddress
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 1524] = 160
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 1684] = user.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 1716] = uint256(user.field_0)
    idx = ceil32(arg1.length) + ceil32(arg2.length) + 1716
    s = 0
    while ceil32(arg1.length) + ceil32(arg2.length) + user.length + 1716 > idx + 32:
        mem[idx + 32] = user[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 1556] = user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 192
    mem[ceil32(arg1.length) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 1716] = arg1.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 1748 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 1588] = arg1.length + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 224
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 1748] = arg2.length
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 1780 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            create contract with ('param', 'arg3') wei
                            code: code.data[1759 len 1364], Array(len=mediatorAddress, data=user.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 1716 len user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 32], Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 1748 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]), user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 192, arg1.length + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 224, arg3
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 1780] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + -(arg2.length % 32) + 1812 len arg2.length % 32]
            create contract with ('param', 'arg3') wei
                            code: code.data[1759 len 1364], Array(len=mediatorAddress, data=user.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 1716 len user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 32], Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 1748 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64]), user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 192, arg1.length + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 224, arg3
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 1748] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + -(arg1.length % 32) + 1780 len arg1.length % 32]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 1588] = floor32(arg1.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 256
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 1780] = arg2.length
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 1812 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            create contract with ('param', 'arg3') wei
                            code: code.data[1759 len 1364], Array(len=mediatorAddress, data=user.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 1716 len user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 32], Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 1748 len arg2.length + floor32(arg1.length) + -ceil32(arg1.length) + 64]), user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 192, floor32(arg1.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 256, arg3
        else:
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 1812] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + -(arg2.length % 32) + 1844 len arg2.length % 32]
            create contract with ('param', 'arg3') wei
                            code: code.data[1759 len 1364], Array(len=mediatorAddress, data=user.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 1716 len user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 32], Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 1748 len floor32(arg2.length) + floor32(arg1.length) + -ceil32(arg1.length) + 96]), user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 192, floor32(arg1.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 256, arg3
    require create.new_address
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = address(create.new_address)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 352] = uint256(user.field_0)
    idx = ceil32(arg1.length) + ceil32(arg2.length) + 352
    s = 0
    while ceil32(arg1.length) + ceil32(arg2.length) + user.length + 352 > idx + 32:
        mem[idx + 32] = user[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 352] = arg1.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 384 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 384] = arg2.length
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 416 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            emit 0xd5fc741f: address(create.new_address), Array(len=user.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 32], Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 384 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]), user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 192, arg1.length + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 224, arg3
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 416] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + -(arg2.length % 32) + 448 len arg2.length % 32]
            emit 0xd5fc741f: address(create.new_address), Array(len=user.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 32], Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 384 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64]), user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 192, arg1.length + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 224, arg3
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 384] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + -(arg1.length % 32) + 416 len arg1.length % 32]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 416] = arg2.length
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 448 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            emit 0xd5fc741f: address(create.new_address), Array(len=user.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 32], Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 384 len arg2.length + floor32(arg1.length) + -ceil32(arg1.length) + 64]), user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 192, floor32(arg1.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 256, arg3
        else:
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 448] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + -(arg2.length % 32) + 480 len arg2.length % 32]
            emit 0xd5fc741f: address(create.new_address), Array(len=user.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 32], Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 384 len floor32(arg2.length) + floor32(arg1.length) + -ceil32(arg1.length) + 96]), user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 192, floor32(arg1.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 256, arg3
}



}
