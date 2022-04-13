contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint256 stor3;
uint256 stor4;
mapping of uint8 stor6;

function _fallback() {
    mem[96 len -2048] = code.data[2449 len -2048]
    mem[64] = -1952
    stor0 = msg.sender
    if mem[172 len 20]:
        stor0 = mem[172 len 20]
    stor6[address(msg.sender)] = 1
    stor3 = 1
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor2[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor4 = 2
    return code.data[401 len 2048]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint256 totalMember;
uint256 sub_b66c9b42;
mapping of struct sub_492661d5;
mapping of uint8 stor6;

function name() {
    return name[0 len name.length]
}

function sub_492661d5(?) {
    return bool(sub_492661d5[arg1].field_0), sub_492661d5[arg1].field_0, sub_492661d5[arg1].field_256
}

function balanceOf(address arg1) {
    return bool(stor6[arg1])
}

function totalMember() {
    return totalMember
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_b66c9b42(?) {
    return sub_b66c9b42
}

function _fallback() {
    revert
}

function sub_d1ce2780(?) {
    require owner == msg.sender
    sub_b66c9b42 = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function sub_74206590(?) {
    require owner == msg.sender
    stor6[address(arg1)] = 1
    totalMember++
    emit 0xf3af4246: msg.sender, arg1
}

function sub_8f357498(?) {
    sub_492661d5[address(arg1)].field_0 = 1
    sub_492661d5[address(arg1)].field_8 = arg1
    sub_492661d5[address(arg1)].field_256 = 0
    emit 0x9f9c8ed7: arg1
}

function sub_4fb2e3ab(?) {
    require sub_492661d5[address(arg1)].field_0
    require stor6[address(msg.sender)]
    sub_492661d5[address(arg1)].field_256++
    if sub_492661d5[address(arg1)].field_256 + 1 >= sub_b66c9b42:
        stor6[address(arg1)] = 1
        sub_492661d5[address(arg1)].field_0 = 0
        sub_492661d5[address(arg1)].field_8 = arg1
        sub_492661d5[address(arg1)].field_256 = 0
}



}
