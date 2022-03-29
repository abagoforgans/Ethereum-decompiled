contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[54 len 1187]
}



// =====================  Runtime code  =====================


address owner;
mapping of address stor1;
mapping of address registrations;

function owner() {
    return owner
}

function registrations(bytes32 arg1) {
    return registrations[arg1]
}

function kill() {
    if owner != msg.sender:
    selfdestruct(owner)
}

function _fallback() payable {
    revert 
}

function sub_046efd89(?) {
    return sha3(msg.sender, arg1)
}

function sub_76453a7c(?) {
    require owner == msg.sender
    if not stor1[arg1]:
        stor1[arg1] = msg.sender
        emit 0xd5c77a7d: msg.sender, arg1
}

function sub_535f28fd(?) {
    require owner == msg.sender
    if stor1[arg1] != msg.sender:
        emit 0x42b43d5d: arg1, arg2, sha3(msg.sender, arg2)
    else:
        if arg1 != sha3(msg.sender, arg2):
            emit 0x42b43d5d: arg1, arg2, sha3(msg.sender, arg2)
        else:
            stor1[arg1] = 0
            registrations[arg2] = msg.sender
            emit 0x69b195cb: msg.sender, arg2
}

function sub_b58089d2(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    return memory
      from ceil32(arg1.length) + 128
       len 32
}



}
