contract main {




// =====================  Runtime code  =====================


#
#  - sub_3875d3bf(?)
#
address ceoAddress;
mapping of uint8 stor1;
mapping of struct stor2;

function ceoAddress() {
    return ceoAddress
}

function getEmployee(address arg1) {
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function sub_1b320776(?) {
    require msg.sender == ceoAddress
    stor1[address(arg1)] = 1
}

function setCEO(address arg1) {
    require msg.sender == ceoAddress
    require arg1
    ceoAddress = arg1
}

function removeEmployee(address arg1) {
    require msg.sender == ceoAddress
    stor1[address(arg1)] = uint8(bool(stor1[0]))
}

function sub_35c43b82(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg3.length
    mem[ceil32(arg1.length) + 160 len arg3.length] = arg3[all]
    if bool(stor1[address(msg.sender)]) != 1:
        require msg.sender == ceoAddress
    require arg1.length <= 32
    stor2[mem[128]] = uint8(arg2)
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 160] = msg.sender
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 320 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 320] = arg3.length
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 352 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg1.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        emit 0x2f8e865f: msg.sender, Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg3.length) + 320 len arg3.length + arg1.length + -ceil32(arg1.length) + 32]), arg2, arg1.length + 160
    else:
        mem[floor32(arg3.length) + arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 352] = mem[floor32(arg3.length) + arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + -(arg3.length % 32) + 384 len arg3.length % 32]
        emit 0x2f8e865f: msg.sender, Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg3.length) + 320 len floor32(arg3.length) + arg1.length + -ceil32(arg1.length) + 64]), arg2, arg1.length + 160
}



}
