contract main {




// =====================  Runtime code  =====================


address owner_;
mapping of address sub_d11c64d6;
array of struct stor2;
array of struct sub_148e8284;

function sub_148e8284(?) {
    return sub_148e8284[address(arg1)].field_0
}

function sub_d11c64d6(?) {
    return sub_d11c64d6[address(arg1)]
}

function owner_() {
    return owner_
}

function _fallback() payable {
    revert
}

function sub_bebf41a1(?) {
    if not sub_d11c64d6[address(arg1)]:
        return 0
    if 0x85709a550f90f1b55575f4941e8dbd3801a98a7e == arg1:
        return 0
    return 1
}

function transferOwnership(address arg1) {
    if owner_ != msg.sender:
        revert with 0, 'you are not the admin'
    require arg1
    emit LogOwnershipTransferred(owner_, arg1);
    owner_ = arg1
}

function sub_4b611028(?) {
    idx = 512
    s = 0
    while 928 > idx + 32:
        mem[idx + 32] = stor2[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor2[address(arg1)].field_0, mem[544 len 384]
}

function sub_ef5b3a80(?) {
    idx = 512
    s = 0
    while 928 > idx + 32:
        mem[idx + 32] = sub_148e8284[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_148e8284[address(arg1)].field_0, mem[544 len 384]
}

function sub_7c61cc48(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if owner_ != msg.sender:
        revert with 0, 'you are not the admin'
    require 20 >= arg1.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'the address cannot be 0'
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        sub_d11c64d6[mem[(32 * idx) + 140 len 20]] = 0x85709a550f90f1b55575f4941e8dbd3801a98a7e
        idx = idx + 1
        continue 
    mem[(32 * arg1.length) + 128] = 32
    s = 0
    while arg1.length < 32 * arg1.length:
        mem[(34 * arg1.length) + 192] = mem[arg1.length + 128]
        s = arg1.length + 32
        continue 
    emit 0xe66c4dea: Array(len=arg1.length, data=mem[(32 * arg1.length) + 192 len 32 * arg1.length])
}

function register(address arg1) {
    require sub_d11c64d6[address(arg1)]
    require arg1 != 0x85709a550f90f1b55575f4941e8dbd3801a98a7e
    if sub_d11c64d6[msg.sender]:
        revert with 0, 'You can only register once.'
    sub_d11c64d6[msg.sender] = arg1
    s = 0
    idx = 0
    s = msg.sender
    while uint8(idx) < 13:
        if not sub_d11c64d6[address(s)]:
            emit 0xbf49918f: msg.sender, arg1
        if 0x85709a550f90f1b55575f4941e8dbd3801a98a7e == sub_d11c64d6[address(s)]:
            emit 0xbf49918f: msg.sender, arg1
        require uint8(idx) < 13
        stor2[msg.sender][uint8(idx)].field_0 = sub_d11c64d6[address(s)]
        mem[0] = sub_d11c64d6[address(s)]
        mem[32] = 3
        sub_148e8284[stor1[address(s)]][uint8(idx)].field_0++
        s = sub_d11c64d6[address(s)]
        idx = idx + 1
        s = sub_d11c64d6[address(s)]
        continue 
    emit 0xbf49918f: msg.sender, arg1
}



}
