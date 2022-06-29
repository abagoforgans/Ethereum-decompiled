contract main {




// =====================  Runtime code  =====================


const VERSION = 1


uint256 stor0;
uint256 stor1;
uint256 sub_dc896657;
array of struct stor3;
mapping of address sub_45ba5b8a;

function sub_45ba5b8a(?) {
    return sub_45ba5b8a[address(arg1)]
}

function sub_dc896657(?) {
    return sub_dc896657
}

function _fallback() payable {
    revert
}

function undelegate() {
    stor1++
    sub_45ba5b8a[msg.sender] = 0
    emit Delegate(stor1, msg.sender, msg.sender);
    emit Undelegate(stor1, msg.sender);
}

function delegate(address arg1) {
    if not arg1:
        revert with 0, 'must delegate to non 0'
    if arg1 == msg.sender:
        revert with 0, 'cant delegate to yourself'
    stor1++
    sub_45ba5b8a[address(msg.sender)] = arg1
    emit Delegate(stor1, msg.sender, arg1);
}

function sub_a8b52c25(?) {
    if stor3[address(arg1)].field_256:
        mem[128] = stor3[address(arg1)][1].field_0
        idx = 128
        s = 0
        while (32 * stor3[address(arg1)].field_256) + 96 > idx:
            mem[idx + 32] = stor3[address(arg1)][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor3[address(arg1)].field_256) + 224 len floor32(stor3[address(arg1)].field_256)] = mem[128 len floor32(stor3[address(arg1)].field_256)]
    return Array(len=stor3[address(arg1)].field_256, data=mem[128 len floor32(stor3[address(arg1)].field_256)], mem[(32 * stor3[address(arg1)].field_256) + floor32(stor3[address(arg1)].field_256) + 224 len (32 * stor3[address(arg1)].field_256) - floor32(stor3[address(arg1)].field_256)]), 
           stor3[address(arg1)].field_0
}

function sub_f8222020(?) {
    if arg1.length > sub_dc896657:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Validators list is over the allowed length'
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'All validator addresses must be non 0'
        s = idx + 1
        while s < arg1.length:
            require idx < arg1.length
            require s < arg1.length
            if mem[(32 * s) + 140 len 20] == mem[(32 * idx) + 140 len 20]:
                revert with 0, 'Duplicate Validators'
            s = s + 1
            continue 
        s = arg1.length
        idx = idx + 1
        continue 
    stor0++
    mem[(32 * arg1.length) + 224 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    stor3[address(msg.sender)].field_0 = block.number
    stor3[address(msg.sender)].field_256 = arg1.length
    if not arg1.length:
        idx = 0
        while stor3[address(msg.sender)].field_256 > idx:
            stor3[address(msg.sender)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg1.length) + 224
        while (64 * arg1.length) + 224 > idx:
            stor3[address(msg.sender)][s + 1].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while stor3[address(msg.sender)].field_256 > idx:
            stor3[address(msg.sender)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    mem[(64 * arg1.length) + 256] = stor0
    mem[(64 * arg1.length) + 224] = 64
    mem[(64 * arg1.length) + 288] = arg1.length
    mem[(64 * arg1.length) + 320 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    emit 0x94a37240: mem[(64 * arg1.length) + 224 len (32 * arg1.length) + 96], msg.sender
}

function sub_e5d01618(?) {
    if not stor3[address(arg1)].field_256:
        mem[(32 * stor3[address(arg1)].field_256) + 128] = stor3[address(arg1)].field_256
        if stor3[address(arg1)].field_256:
            mem[(32 * stor3[address(arg1)].field_256) + 160 len 32 * stor3[address(arg1)].field_256] = code.data[2401 len 32 * stor3[address(arg1)].field_256]
        idx = 0
        while idx < stor3[address(arg1)].field_256:
            require idx < stor3[address(arg1)].field_256
            require idx < stor3[address(arg1)].field_256
            mem[(32 * stor3[address(arg1)].field_256) + (32 * idx) + 160] = address(mem[(32 * idx) + 128])
            idx = idx + 1
            continue 
        mem[(64 * stor3[address(arg1)].field_256) + 192] = stor3[address(arg1)].field_0
        mem[(64 * stor3[address(arg1)].field_256) + 160] = 64
        mem[(64 * stor3[address(arg1)].field_256) + 224] = stor3[address(arg1)].field_256
        mem[(64 * stor3[address(arg1)].field_256) + 256 len floor32(stor3[address(arg1)].field_256)] = mem[(32 * stor3[address(arg1)].field_256) + 160 len floor32(stor3[address(arg1)].field_256)]
        return memory
          from (64 * stor3[address(arg1)].field_256) + 160
           len (161 * stor3[address(arg1)].field_256) + 96
    mem[128] = stor3[address(arg1)][1].field_0
    idx = 128
    s = 0
    while (32 * stor3[address(arg1)].field_256) + 96 > idx:
        mem[idx + 32] = stor3[address(arg1)][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor3[address(arg1)].field_256) + 128] = stor3[address(arg1)].field_256
    if stor3[address(arg1)].field_256:
        mem[(32 * stor3[address(arg1)].field_256) + 160 len 32 * stor3[address(arg1)].field_256] = code.data[2401 len 32 * stor3[address(arg1)].field_256]
    idx = 0
    while idx < stor3[address(arg1)].field_256:
        require idx < stor3[address(arg1)].field_256
        require idx < stor3[address(arg1)].field_256
        mem[(32 * stor3[address(arg1)].field_256) + (32 * idx) + 160] = address(mem[(32 * idx) + 128])
        idx = idx + 1
        continue 
    mem[(64 * stor3[address(arg1)].field_256) + 192] = stor3[address(arg1)].field_0
    mem[(64 * stor3[address(arg1)].field_256) + 160] = 64
    mem[(64 * stor3[address(arg1)].field_256) + 224] = stor3[address(arg1)].field_256
    mem[(64 * stor3[address(arg1)].field_256) + 256 len floor32(stor3[address(arg1)].field_256)] = mem[(32 * stor3[address(arg1)].field_256) + 160 len floor32(stor3[address(arg1)].field_256)]
    return Array(len=stor3[address(arg1)].field_256, data=mem[(64 * stor3[address(arg1)].field_256) + 256 len 32 * stor3[address(arg1)].field_256]), 
           stor3[address(arg1)].field_0
}



}
