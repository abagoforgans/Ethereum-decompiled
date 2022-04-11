contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() {
    stor0 = code.data[11334 len 20]
    require ext_code.size(address(code.data[11322 len 32]))
    call address(code.data[11322 len 32]).owner(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args 0x91d1777781884d03a6757a803996e38de2a42967fb37eeaca72729271025a9e2
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).claimWithResolver(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args address(this.address), this.address
    require ext_call.success
    stor1 = ext_call.return_data[0]
    return code.data[392 len 10930]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
mapping of address stor2;

function _fallback() payable {
    revert
}

function name(bytes32 arg1) {
    if arg1 != stor1:
        return ''
    return 'myshibbol.eth'
}

function addr(bytes32 arg1) {
    if arg1 != code.data[7833 len 32]:
        return stor2[arg1]
    return this.address
}

function ABI(bytes32 arg1) {
    if arg1 != code.data[7833 len 32]:
        if arg1 != stor1:
            return 1, Array(len=3022, data=code.data[7865 len 3022], mem[3182 len 18] >> 23808, mem[3250 len 14])
    return 1, 
           Array(len=1333, data=code.data[6500 len 1333], mem[1493 len 11] >> 10240, Mask(168, -10496, mem[1493 len 11]) << 10496)
}

function supportsInterface(bytes4 arg1) {
    if Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x3b3b57de00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x691f343100000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x2203ab5600000000000000000000000000000000000000000000000000000000)
}

function create(string arg1, string arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len 3490] = code.data[3010 len 3490]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 3650] = stor0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 3746] = msg.sender
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 3682] = 128
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 3778] = arg2.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 3810 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 3714] = arg2.length + 160
        mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 3810] = arg1.length
        mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 3842 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        create contract with 0 wei
                        code: code.data[3010 len 3490], stor0, Array(len=msg.sender, data=arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + 3810 len arg1.length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 160
        require create.new_address
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        _429 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32])
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 96
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 288] = arg2.length
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            emit NewToken(Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 288 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]), arg1.length + 128, address(create.new_address), _429);
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 352 len arg2.length % 32]
            emit NewToken(Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 288 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64]), arg1.length + 128, address(create.new_address), _429);
    else:
        mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 3810] = mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 3842 len arg2.length % 32]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 3714] = floor32(arg2.length) + 192
        mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 3842] = arg1.length
        mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 3874 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        create contract with 0 wei
                        code: code.data[3010 len 3490], stor0, Array(len=msg.sender, data=arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[ceil32(arg1.length) + (2 * ceil32(arg2.length)) + 3810 len arg1.length + floor32(arg2.length) + -ceil32(arg2.length) + 64]), floor32(arg2.length) + 192
        require create.new_address
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        _445 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32])
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 96
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 288] = arg2.length
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            emit NewToken(Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 288 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]), arg1.length + 128, address(create.new_address), _445);
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 352 len arg2.length % 32]
            emit NewToken(Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 288 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64]), arg1.length + 128, address(create.new_address), _445);
    return address(create.new_address)
}

function create(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160] = 14
    mem[ceil32(arg1.length) + 288 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 320 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[(2 * arg1.length) + ceil32(arg1.length) + 288 len 0] = None
    mem[ceil32(arg1.length) + (32 * arg1.length + 14) + 288 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + (32 * arg1.length + 14) + floor32(arg1.length) + -(arg1.length % 32) + 320 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    _2383 = sha3(code.data[7833 len 32], sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + (32 * arg1.length + 14) + floor32(arg1.length) + 288 len arg1.length % 32]))
    require ext_code.size(stor0)
    call stor0.owner(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args sha3(code.data[7833 len 32], sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + (32 * arg1.length + 14) + floor32(arg1.length) + 288 len arg1.length % 32]))
    require ext_call.success
    require not address(ext_call.return_data[0])
    mem[ceil32(arg1.length) + (32 * arg1.length + 14) + 288 len 3490] = code.data[3010 len 3490]
    mem[ceil32(arg1.length) + (32 * arg1.length + 14) + 3778] = stor0
    mem[ceil32(arg1.length) + (32 * arg1.length + 14) + 3874] = msg.sender
    mem[ceil32(arg1.length) + (32 * arg1.length + 14) + 3810] = 128
    mem[ceil32(arg1.length) + (32 * arg1.length + 14) + 3906] = arg1.length + 14
    mem[ceil32(arg1.length) + (32 * arg1.length + 14) + 3938 len floor32(arg1.length + 45)] = call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 288 len (arg1.length % 32) + 18], Mask(112, 0, '.myshibbol.eth'), mem[ceil32(arg1.length) + arg1.length + 320 len floor32(arg1.length + 45) + -arg1.length - 32]
    if not arg1.length + 14 % 32:
        mem[ceil32(arg1.length) + (32 * arg1.length + 14) + 3842] = arg1.length + 174
        mem[arg1.length + ceil32(arg1.length) + (32 * arg1.length + 14) + 3952] = arg1.length
        create contract with 0 wei
                        code: code.data[3010 len 3490], stor0, Array(len=msg.sender, data=arg1.length + 14, Mask(8 * arg1.length + 14, -(8 * arg1.length + 14) + 256, mem[ceil32(arg1.length) + floor32(arg1.length) + 288 len (arg1.length % 32) + 18], Mask(112, 0, '.myshibbol.eth'), mem[ceil32(arg1.length) + arg1.length + 320 len floor32(arg1.length + 45) + -arg1.length - 32]) << (8 * arg1.length + 14) - 256, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256), arg1.length + 174
        require create.new_address
        mem[ceil32(arg1.length) + (32 * arg1.length + 14) + 288 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + (32 * arg1.length + 14) + floor32(arg1.length) + -(arg1.length % 32) + 320 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        _4617 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + (32 * arg1.length + 14) + floor32(arg1.length) + 288 len arg1.length % 32])
        mem[ceil32(arg1.length) + (32 * arg1.length + 14) + 352] = address(create.new_address)
        mem[ceil32(arg1.length) + (32 * arg1.length + 14) + 288] = 96
        mem[ceil32(arg1.length) + (32 * arg1.length + 14) + 384] = arg1.length
        mem[ceil32(arg1.length) + (32 * arg1.length + 14) + 416 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        mem[ceil32(arg1.length) + (32 * arg1.length + 14) + 320] = arg1.length + 128
        mem[arg1.length + ceil32(arg1.length) + (32 * arg1.length + 14) + 416] = arg1.length + 14
        mem[arg1.length + ceil32(arg1.length) + (32 * arg1.length + 14) + 448 len floor32(arg1.length + 45)] = call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 288 len (arg1.length % 32) + 18], Mask(112, 0, '.myshibbol.eth'), mem[ceil32(arg1.length) + arg1.length + 320 len floor32(arg1.length + 45) + -arg1.length - 32]
        if not arg1.length + 14 % 32:
            emit NewToken(Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + (32 * arg1.length + 14) + 416 len (2 * arg1.length) + -ceil32(arg1.length) + 46]), arg1.length + 128, address(create.new_address), _4617);
        else:
            emit NewToken(Array(len=mem[ceil32(arg1.length) + (32 * arg1.length + 14) + floor32(arg1.length) + 320 len (arg1.length % 32) + 96], data=arg1.length + 14, Mask(8 * floor32(arg1.length + 45), -(8 * floor32(arg1.length + 45)) + 256, mem[ceil32(arg1.length) + floor32(arg1.length) + 288 len (arg1.length % 32) + 18], Mask(112, 0, '.myshibbol.eth'), mem[ceil32(arg1.length) + arg1.length + 320 len floor32(arg1.length + 45) + -arg1.length - 32]) << (8 * floor32(arg1.length + 45)) - 256, mem[ceil32(arg1.length) + (32 * arg1.length + 14) + arg1.length + floor32(arg1.length + 45) + 448 len floor32(arg1.length + 14) + -floor32(arg1.length + 45) + 32]), mem[ceil32(arg1.length) + (32 * arg1.length + 14) + 320 len floor32(arg1.length) - (arg1.length % 32)], mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32], _4617);
    else:
        mem[floor32(arg1.length + 14) + ceil32(arg1.length) + (32 * arg1.length + 14) + 3938] = mem[floor32(arg1.length + 14) + ceil32(arg1.length) + (32 * arg1.length + 14) + -(arg1.length + 14 % 32) + 3970 len arg1.length + 14 % 32]
        mem[ceil32(arg1.length) + (32 * arg1.length + 14) + 3842] = floor32(arg1.length + 14) + 192
        mem[floor32(arg1.length + 14) + ceil32(arg1.length) + (32 * arg1.length + 14) + 3970] = arg1.length
        create contract with 0 wei
                        code: code.data[3010 len 3490], stor0, Array(len=msg.sender, data=arg1.length + 14, Mask(8 * floor32(arg1.length + 45), -(8 * floor32(arg1.length + 45)) + 256, mem[ceil32(arg1.length) + floor32(arg1.length) + 288 len (arg1.length % 32) + 18], Mask(112, 0, '.myshibbol.eth'), mem[ceil32(arg1.length) + arg1.length + 320 len floor32(arg1.length + 45) + -arg1.length - 32]) << (8 * floor32(arg1.length + 45)) - 256, Mask(8 * -floor32(arg1.length + 45) + floor32(arg1.length + 14) + 64, 0, arg1.length), Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256), floor32(arg1.length + 14) + 192
        require create.new_address
        mem[ceil32(arg1.length) + (32 * arg1.length + 14) + 288 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + (32 * arg1.length + 14) + floor32(arg1.length) + -(arg1.length % 32) + 320 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        _4633 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + (32 * arg1.length + 14) + floor32(arg1.length) + 288 len arg1.length % 32])
        mem[ceil32(arg1.length) + (32 * arg1.length + 14) + 352] = address(create.new_address)
        mem[ceil32(arg1.length) + (32 * arg1.length + 14) + 288] = 96
        mem[ceil32(arg1.length) + (32 * arg1.length + 14) + 384] = arg1.length
        mem[ceil32(arg1.length) + (32 * arg1.length + 14) + 416 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        mem[ceil32(arg1.length) + (32 * arg1.length + 14) + 320] = arg1.length + 128
        mem[arg1.length + ceil32(arg1.length) + (32 * arg1.length + 14) + 416] = arg1.length + 14
        mem[arg1.length + ceil32(arg1.length) + (32 * arg1.length + 14) + 448 len floor32(arg1.length + 45)] = call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 288 len (arg1.length % 32) + 18], Mask(112, 0, '.myshibbol.eth'), mem[ceil32(arg1.length) + arg1.length + 320 len floor32(arg1.length + 45) + -arg1.length - 32]
        if not arg1.length + 14 % 32:
            emit NewToken(Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + (32 * arg1.length + 14) + 416 len (2 * arg1.length) + -ceil32(arg1.length) + 46]), arg1.length + 128, address(create.new_address), _4633);
        else:
            emit NewToken(Array(len=mem[ceil32(arg1.length) + (32 * arg1.length + 14) + floor32(arg1.length) + 320 len (arg1.length % 32) + 96], data=arg1.length + 14, Mask(8 * floor32(arg1.length + 45), -(8 * floor32(arg1.length + 45)) + 256, mem[ceil32(arg1.length) + floor32(arg1.length) + 288 len (arg1.length % 32) + 18], Mask(112, 0, '.myshibbol.eth'), mem[ceil32(arg1.length) + arg1.length + 320 len floor32(arg1.length + 45) + -arg1.length - 32]) << (8 * floor32(arg1.length + 45)) - 256, mem[ceil32(arg1.length) + (32 * arg1.length + 14) + arg1.length + floor32(arg1.length + 45) + 448 len floor32(arg1.length + 14) + -floor32(arg1.length + 45) + 32]), mem[ceil32(arg1.length) + (32 * arg1.length + 14) + 320 len floor32(arg1.length) - (arg1.length % 32)], mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32], _4633);
    mem[ceil32(arg1.length) + (32 * arg1.length + 14) + 288 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + (32 * arg1.length + 14) + floor32(arg1.length) + -(arg1.length % 32) + 320 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    require ext_code.size(stor0)
    call stor0.setSubnodeOwner(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 710 wei
        args code.data[7833 len 32], sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + (32 * arg1.length + 14) + floor32(arg1.length) + 288 len arg1.length % 32]), this.address
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.setResolver(bytes32 rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args _2383, this.address
    require ext_call.success
    stor2[_2383] = address(create.new_address)
    return address(create.new_address)
}



}
