contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
mapping of uint8 stor2;
mapping of uint8 stor3;
array of struct stor4;
array of struct stor5;
mapping of uint256 stor6;
mapping of uint256 stor7;
array of uint256 sub_a4d0d5a9;

function owner() {
    return owner
}

function sub_a4d0d5a9(?) {
    return sub_a4d0d5a9[0 len sub_a4d0d5a9.length]
}

function _fallback() payable {
    revert
}

function verify(address arg1) {
    return (bool(stor2[address(arg1)]) == 1)
}

function setAgent(address arg1) {
    require msg.sender == owner
    stor1 = arg1
    emit 0x61a3bd15: arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_dfc23a0a(?) {
    require msg.sender == owner
    sub_a4d0d5a9[] = Array(len=arg1.length, data=arg1[all])
    emit 0x72535d8e: Array(len=arg1.length, data=arg1[all])
}

function sub_32b1c48f(?) {
    if owner != msg.sender:
        require msg.sender == stor1
    stor3[address(arg1)] = 0
    require stor6[address(arg1)] < stor5.length
    stor5[stor6[address(arg1)]].field_0 = 0
    emit 0xd1740ddb: arg1
}

function sub_33a71094(?) {
    if owner != msg.sender:
        require msg.sender == stor1
    stor3[address(arg1)] = 1
    stor6[address(arg1)] = stor5.length
    stor5.length++
    stor5[stor5.length].field_0 = arg1
    emit 0x8b36f5f3: arg1
}

function remove(address arg1) {
    if owner != msg.sender:
        if stor1 != msg.sender:
            require stor3[address(msg.sender)]
    if stor2[address(arg1)]:
        require stor7[address(arg1)] < stor4.length
        stor4[stor7[address(arg1)]].field_0 = 0
    stor2[address(arg1)] = 0
    emit MemberRemoved(arg1);
    return 0
}

function add(address arg1) {
    if owner != msg.sender:
        if stor1 != msg.sender:
            require stor3[address(msg.sender)]
    if not stor2[address(arg1)]:
        stor7[address(arg1)] = stor4.length
        stor4.length++
        stor4[stor4.length].field_0 = arg1
    stor2[address(arg1)] = 1
    emit MemberAdded(arg1);
    return 0
}

function getBuyers() {
    if owner != msg.sender:
        require msg.sender == stor1
    if not stor4.length:
        mem[(32 * stor4.length) + 128] = 32
        mem[(32 * stor4.length) + 160] = stor4.length
        mem[(32 * stor4.length) + 192 len floor32(stor4.length)] = mem[128 len floor32(stor4.length)]
        return memory
          from (32 * stor4.length) + 128
           len (96 * stor4.length) + 64
    mem[128] = address(stor4.field_0)
    idx = 128
    s = 0
    while (32 * stor4.length) + 96 > idx:
        mem[idx + 32] = stor4[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor4.length) + 192 len floor32(stor4.length)] = mem[128 len floor32(stor4.length)]
    return Array(len=stor4.length, data=mem[128 len floor32(stor4.length)], mem[(32 * stor4.length) + floor32(stor4.length) + 192 len (32 * stor4.length) - floor32(stor4.length)]), 
}

function sub_86485797(?) {
    if owner != msg.sender:
        require msg.sender == stor1
    if not stor5.length:
        mem[(32 * stor5.length) + 128] = 32
        mem[(32 * stor5.length) + 160] = stor5.length
        mem[(32 * stor5.length) + 192 len floor32(stor5.length)] = mem[128 len floor32(stor5.length)]
        return memory
          from (32 * stor5.length) + 128
           len (96 * stor5.length) + 64
    mem[128] = address(stor5.field_0)
    idx = 128
    s = 0
    while (32 * stor5.length) + 96 > idx:
        mem[idx + 32] = stor5[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor5.length) + 192 len floor32(stor5.length)] = mem[128 len floor32(stor5.length)]
    return Array(len=stor5.length, data=mem[128 len floor32(stor5.length)], mem[(32 * stor5.length) + floor32(stor5.length) + 192 len (32 * stor5.length) - floor32(stor5.length)]), 
}

function sub_425c4e6f(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if owner != msg.sender:
        if stor1 != msg.sender:
            require stor3[address(msg.sender)]
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        if stor2[mem[(32 * idx) + 140 len 20]]:
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 2
            stor2[mem[(32 * idx) + 140 len 20]] = 1
            require idx < arg1.length
            mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
            emit MemberAdded(mem[(32 * arg1.length) + 128]);
            s = s
            idx = idx + 1
            continue 
        stor7[mem[(32 * idx) + 140 len 20]] = stor4.length
        require idx < arg1.length
        stor4.length++
        stor4[stor4.length].field_0 = mem[(32 * idx) + 140 len 20]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        stor2[mem[(32 * idx) + 140 len 20]] = 1
        require idx < arg1.length
        mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
        emit MemberAdded(mem[(32 * arg1.length) + 128]);
        s = stor4.length
        idx = idx + 1
        continue 
    return 0
}



}
