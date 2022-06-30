contract main {




// =====================  Runtime code  =====================


#
#  - addVersion(uint64[3] arg1, address arg2, bytes arg3)
#
address owner;
mapping of struct contract;
mapping of uint256 stor2;
uint64 stor3;

function getContract(uint64[3] arg1) {
    return contract[0][Mask(128, 128, uint64(call.data[36]), uint64(call.data[68]), 0, 0) >> 128].field_256
}

function owner() {
    return owner
}

function getVersion(uint64[3] arg1) {
    mem[280] = contract[0][Mask(128, 128, uint64(call.data[36]), uint64(call.data[68]), 0, 0) >> 128][2].field_0
    idx = 280
    s = 0
    while contract[0][Mask(128, 128, uint64(call.data[36]), uint64(call.data[68]), 0, 0) >> 128][2].length + 248 > idx:
        mem[idx + 32] = contract[0][Mask(128, 128, uint64(call.data[36]), uint64(call.data[68]), 0, 0) >> 128][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return contract[0][Mask(128, 128, uint64(call.data[36]), uint64(call.data[68]), 0, 0) >> 128].field_256, 
           Array(len=contract[0][Mask(128, 128, uint64(call.data[36]), uint64(call.data[68]), 0, 0) >> 128][2].length, data=mem[280 len contract[0][Mask(128, 128, uint64(call.data[36]), uint64(call.data[68]), 0, 0) >> 128][2].length])
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

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function hasVersion(uint64[3] arg1) {
    return not not contract[0][Mask(128, 128, uint64(call.data[36]), uint64(call.data[68]), 0, 0) >> 128].field_256
}

function getLatest() {
    mem[96 len 96] = code.data[5716 len 96]
    mem[192 len 96] = code.data[5716 len 96]
    mem[0] = stor2[stor3]
    mem[32] = 1
    mem[288] = contract[stor2[stor3]].field_0
    idx = 288
    s = 0
    while 384 > idx + 32:
        mem[idx + 32] = contract[stor2[stor3]].field_8 * (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s)
        idx = idx + 32
        s = (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s)
        continue 
    mem[64] = ceil32(contract[stor2[stor3]][2].length) + 416
    mem[384] = contract[stor2[stor3]][2].length
    mem[416] = contract[stor2[stor3]][2].field_0
    idx = 416
    s = 0
    while contract[stor2[stor3]][2].length + 384 > idx:
        mem[idx + 32] = contract[stor2[stor3]][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(contract[stor2[stor3]][2].length) + 416 len 96] = contract[stor2[stor3]].field_0, mem[320 len 64]
    mem[ceil32(contract[stor2[stor3]][2].length) + 512] = contract[stor2[stor3]].field_256
    mem[ceil32(contract[stor2[stor3]][2].length) + 544] = 160
    mem[ceil32(contract[stor2[stor3]][2].length) + 576] = contract[stor2[stor3]][2].length
    mem[ceil32(contract[stor2[stor3]][2].length) + 608 len ceil32(contract[stor2[stor3]][2].length)] = mem[416 len ceil32(contract[stor2[stor3]][2].length)]
    if not contract[stor2[stor3]][2].length % 32:
        return mem[320 len 64] >> 512, 
               contract[stor2[stor3]].field_256,
               160,
               contract[stor2[stor3]][2].length,
               mem[416 len contract[stor2[stor3]][2].length]
    mem[floor32(contract[stor2[stor3]][2].length) + ceil32(contract[stor2[stor3]][2].length) + 608] = mem[floor32(contract[stor2[stor3]][2].length) + ceil32(contract[stor2[stor3]][2].length) + -contract[stor2[stor3]][2].length % 32 + 640 len contract[stor2[stor3]][2].length % 32]
    return mem[320 len 64] >> 512, 
           contract[stor2[stor3]].field_256,
           160,
           contract[stor2[stor3]][2].length,
           mem[416 len ceil32(contract[stor2[stor3]][2].length)],
           mem[(2 * ceil32(contract[stor2[stor3]][2].length)) + 608 len floor32(contract[stor2[stor3]][2].length) + -ceil32(contract[stor2[stor3]][2].length) + 32]
}

function getLatestByMajor(uint64 arg1) {
    mem[96 len 96] = code.data[5716 len 96]
    mem[0] = stor2[arg1 << 192]
    mem[32] = 1
    mem[192] = contract[stor2[arg1 << 192]].field_0
    idx = 192
    s = 0
    while 288 > idx + 32:
        mem[idx + 32] = contract[stor2[arg1 << 192]].field_8 * (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s)
        idx = idx + 32
        s = (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s)
        continue 
    mem[64] = ceil32(contract[stor2[arg1 << 192]][2].length) + 320
    mem[288] = contract[stor2[arg1 << 192]][2].length
    mem[320] = contract[stor2[arg1 << 192]][2].field_0
    idx = 320
    s = 0
    while contract[stor2[arg1 << 192]][2].length + 288 > idx:
        mem[idx + 32] = contract[stor2[arg1 << 192]][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(contract[stor2[arg1 << 192]][2].length) + 320 len 96] = contract[stor2[arg1 << 192]].field_0, mem[224 len 64]
    mem[ceil32(contract[stor2[arg1 << 192]][2].length) + 416] = contract[stor2[arg1 << 192]].field_256
    mem[ceil32(contract[stor2[arg1 << 192]][2].length) + 448] = 160
    mem[ceil32(contract[stor2[arg1 << 192]][2].length) + 480] = contract[stor2[arg1 << 192]][2].length
    mem[ceil32(contract[stor2[arg1 << 192]][2].length) + 512 len ceil32(contract[stor2[arg1 << 192]][2].length)] = mem[320 len ceil32(contract[stor2[arg1 << 192]][2].length)]
    if not contract[stor2[arg1 << 192]][2].length % 32:
        return mem[224 len 64] >> 512, 
               contract[stor2[arg1 << 192]].field_256,
               160,
               contract[stor2[arg1 << 192]][2].length,
               mem[320 len contract[stor2[arg1 << 192]][2].length]
    mem[floor32(contract[stor2[arg1 << 192]][2].length) + ceil32(contract[stor2[arg1 << 192]][2].length) + 512] = mem[floor32(contract[stor2[arg1 << 192]][2].length) + ceil32(contract[stor2[arg1 << 192]][2].length) + -contract[stor2[arg1 << 192]][2].length % 32 + 544 len contract[stor2[arg1 << 192]][2].length % 32]
    return mem[224 len 64] >> 512, 
           contract[stor2[arg1 << 192]].field_256,
           160,
           contract[stor2[arg1 << 192]][2].length,
           mem[320 len ceil32(contract[stor2[arg1 << 192]][2].length)],
           mem[(2 * ceil32(contract[stor2[arg1 << 192]][2].length)) + 512 len floor32(contract[stor2[arg1 << 192]][2].length) + -ceil32(contract[stor2[arg1 << 192]][2].length) + 32]
}



}
