contract main {


// =======================  Init code  ======================


uint16 stor0; offset 160
address stor0;
uint256 stor1;
uint256 stor2;

function _fallback() {
    address(stor0.field_0) = msg.sender
    uint16(stor0.field_160) = 0
    stor1 = 0
    stor2 = 0
    return code.data[87 len 3160]
}



// =====================  Runtime code  =====================


const sub_63ce1d71(?) = 950000033353 * 10^13

const sub_c6fd8ea4(?) = 19049999966647 * 10^13

const EXP_18 = 18


uint8 stor0; offset 160
uint8 stor0; offset 168
address owner;
uint256 sub_6525284a;
uint256 sub_00c760d0;
mapping of uint256 presaleBalances;
mapping of uint256 saleBalances;

function sub_00c760d0(?) {
    return sub_00c760d0
}

function saleBalances(address arg1) {
    return saleBalances[arg1]
}

function sub_6525284a(?) {
    return sub_6525284a
}

function owner() {
    return owner
}

function sub_9416e404(?) {
    return bool(uint8(stor0.field_160))
}

function presaleBalances(address arg1) {
    return presaleBalances[arg1]
}

function sub_e0296069(?) {
    return bool(uint8(stor0.field_168))
}

function _fallback() payable {
    revert
}

function sub_0f181358(?) {
    require owner == msg.sender
    require 950000033353 * 10^13 == sub_6525284a
    uint8(stor0.field_160) = 1
}

function sub_6f29253a(?) {
    require owner == msg.sender
    require 19049999966647 * 10^13 == sub_00c760d0
    uint8(stor0.field_168) = 1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_74fe803a(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require owner == msg.sender
    require not uint8(stor0.field_168)
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require not saleBalances[mem[(32 * idx) + 140 len 20]]
        require idx < arg2.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] + sub_00c760d0 >= sub_00c760d0
        sub_00c760d0 += mem[(32 * idx) + (32 * arg1.length) + 160]
        require mem[(32 * idx) + (32 * arg1.length) + 160] + sub_00c760d0 <= 19049999966647 * 10^13
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        saleBalances[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        continue 
}

function sub_24cecec9(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require owner == msg.sender
    require not uint8(stor0.field_160)
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require not presaleBalances[mem[(32 * idx) + 140 len 20]]
        require idx < arg2.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] + sub_6525284a >= sub_6525284a
        sub_6525284a += mem[(32 * idx) + (32 * arg1.length) + 160]
        require mem[(32 * idx) + (32 * arg1.length) + 160] + sub_6525284a <= 950000033353 * 10^13
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        presaleBalances[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        continue 
}

function sub_f6e06f3b(?) {
    mem[128 len arg1.length] = arg1[all]
    require owner == msg.sender
    mem[ceil32(arg1.length) + 128] = 'presale'
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    if sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) != sha3('presale'):
        mem[ceil32(arg1.length) + 128] = 'sale'
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        require sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) == sha3('sale')
    mem[ceil32(arg1.length) + 128] = 'presale'
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    if sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) == sha3('presale'):
        require not uint8(stor0.field_160)
        require presaleBalances[address(arg2)]
        require presaleBalances[address(arg2)] <= sub_6525284a
        sub_6525284a -= presaleBalances[address(arg2)]
        presaleBalances[address(arg2)] = 0
    mem[ceil32(arg1.length) + 128] = 'sale'
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    if sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) == sha3('sale'):
        require not uint8(stor0.field_168)
        require saleBalances[address(arg2)]
        require saleBalances[address(arg2)] <= sub_00c760d0
        sub_00c760d0 -= saleBalances[address(arg2)]
        saleBalances[address(arg2)] = 0
}



}
