contract main {




// =====================  Runtime code  =====================


address owner;
address sub_160d102fAddress;

function sub_160d102f(?) {
    return sub_160d102fAddress
}

function owner() {
    return owner
}

function destruct() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_fa012ef1(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_160d102fAddress = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_2d2d6712(?) {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + 192
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg5.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg5.length] = arg5[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg5.length + 192] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + 192 len 10850] = code.data[2684 len 10850]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + 11106] = sub_160d102fAddress
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + 11138] = arg3
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + 11170] = arg4
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + 11234] = msg.sender
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + 11042] = 224
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + 11266] = arg1.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + 11298 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + 11074] = arg1.length + 256
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + 11298] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + 11330 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + 11202] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + arg1.length + 288
            mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + 11330] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]
            _142 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]
            mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + 11362 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)])]
            if not _142 % 32:
                create contract with 0 wei
                                code: mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + 192 len _142 + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + arg1.length + 11170]
            else:
                mem[floor32(_142) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + 11362] = mem[floor32(_142) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + -(_142 % 32) + 11394 len _142 % 32]
                create contract with 0 wei
                                code: mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + 192 len floor32(_142) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + arg1.length + 11202]
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + 11330] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 11362 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + 11202] = floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + 320
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + 11362] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]
            _148 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + 11394 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)])]
            if not _148 % 32:
                create contract with 0 wei
                                code: mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + 192 len _148 + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + 11202]
            else:
                mem[floor32(_148) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + 11394] = mem[floor32(_148) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + -(_148 % 32) + 11426 len _148 % 32]
                create contract with 0 wei
                                code: mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + 192 len floor32(_148) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + 11234]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + 11298] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + -(arg1.length % 32) + 11330 len arg1.length % 32]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + 11074] = floor32(arg1.length) + 288
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + 11330] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + 11362 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + 11202] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + floor32(arg1.length) + 320
            mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + 11362] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]
            _145 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]
            mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + 11394 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)])]
            if not _145 % 32:
                create contract with 0 wei
                                code: mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + 192 len _145 + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + floor32(arg1.length) + 11202]
            else:
                mem[floor32(_145) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + 11394] = mem[floor32(_145) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + -(_145 % 32) + 11426 len _145 % 32]
                create contract with 0 wei
                                code: mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + 192 len floor32(_145) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + floor32(arg1.length) + 11234]
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + 11362] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 11394 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + 11202] = floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + 352
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + 11394] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]
            _150 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + 11426 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)])]
            if not _150 % 32:
                create contract with 0 wei
                                code: mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + 192 len _150 + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + 11234]
            else:
                mem[floor32(_150) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + 11426] = mem[floor32(_150) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + -(_150 % 32) + 11458 len _150 % 32]
                create contract with 0 wei
                                code: mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + 192 len floor32(_150) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + 11266]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + 192] = address(create.new_address)
    emit 0x4803d35a: Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg1.length) + ceil32(arg2.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg5.length) + 192] = 0
    return Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), 
           mem[ceil32(arg1.length) + ceil32(arg2.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)]
}



}
