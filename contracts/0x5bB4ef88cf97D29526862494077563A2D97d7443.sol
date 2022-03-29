contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 813]
}



// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_0fe28774(?) {
    require owner == msg.sender
    emit 0x5475f85e: arg1
}

function sub_9142db42(?) {
    require owner == msg.sender
    emit 0x96ae7e19: arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function sub_d6bf08bc(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = msg.sender
    mem[ceil32(arg1.length) + 160] = 64
    mem[ceil32(arg1.length) + 192] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 224] = mem[128]
        mem[ceil32(arg1.length) + 256 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    emit 0x51371542: msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + 224 len arg1.length])
}



}
