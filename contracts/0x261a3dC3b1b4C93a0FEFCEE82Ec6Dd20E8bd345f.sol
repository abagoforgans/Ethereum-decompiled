contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[48 len 1258]
}



// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function getVatomOwner(string arg1) {
    return stor[_36][0 len stor[_36].length]
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function setVAtomOwner(string arg1, string arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    require owner == msg.sender
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = 1
    stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][] = Array(len=arg2.length, data=arg2[all])
}

function _fallback() payable {
    if uint32(call.func_hash) == unknown_0x86c3ceae(?????):
        require not msg.value
        mem[128 len arg1.length] = arg1[all]
        mem[ceil32(arg1.length) + 128] = arg2.length
        mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
        require owner == msg.sender
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = 1
        stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][] = Array(len=arg2.length, data=arg2[all])
    if unknown_0x8da5cb5b(?????) == uint32(call.func_hash):
        require not msg.value
        return owner
    if uint32(call.func_hash) != unknown_0xb5cc84f5(?????):
        require unknown_0xf2fde38b(?????) == uint32(call.func_hash)
        require not msg.value
        require owner == msg.sender
        if address(arg1):
            owner = address(arg1)
    require not msg.value
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 160] = 1
    _57 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32])
    mem[64] = ceil32(arg1.length) + ceil32(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].length) + 192
    mem[ceil32(arg1.length) + 160] = stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].length
    mem[0] = _57
    mem[ceil32(arg1.length) + 192] = stor[sha3(_57)]
    idx = ceil32(arg1.length) + 192
    s = 0
    while ceil32(arg1.length) + stor[_57].length + 160 > idx:
        mem[idx + 32] = stor[s + sha3(_57) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    _93 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[ceil32(arg1.length) + 160]
    _95 = mem[ceil32(arg1.length) + 160]
    mem[mem[64] + 64 len ceil32(mem[ceil32(arg1.length) + 160])] = mem[ceil32(arg1.length) + 192 len ceil32(mem[ceil32(arg1.length) + 160])]
    if not _95 % 32:
        return 32, mem[mem[64] + 32 len _95 + 32]
    mem[floor32(_95) + mem[64] + 64] = mem[floor32(_95) + mem[64] + -(_95 % 32) + 96 len _95 % 32]
    return memory
      from mem[64]
       len floor32(_95) + _93 + -mem[64] + 96
}



}
