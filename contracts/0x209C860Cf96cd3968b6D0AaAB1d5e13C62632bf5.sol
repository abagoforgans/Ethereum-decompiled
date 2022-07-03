contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
mapping of uint8 stor1;
uint16 victimsCount;
address stor2; offset 16
uint256 stor3;

function isContributor(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function victimsCount() {
    return victimsCount
}

function _fallback() payable {
    revert
}

function setContributor(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require address(stor2.field_16) == msg.sender
    stor1[address(arg1)] = uint8(arg2)
    emit 0x2143af77: bool(stor1[address(arg1)]), arg1
}

function modifyVictim(uint16 arg1, string arg2, string arg3) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require stor1[address(msg.sender)]
    require stor0[arg1 << 240].field_768 + stor3 > block.timestamp
    stor0[arg1 << 240][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor0[arg1 << 240][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = stor0[arg1 << 240].field_0
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = 128
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 320] = stor0[arg1 << 240][1].field_0
    idx = ceil32(arg2.length) + ceil32(arg3.length) + 320
    s = 0
    while ceil32(arg2.length) + ceil32(arg3.length) + stor0[arg1 << 240][1].length + 320 > idx + 32:
        mem[idx + 32] = stor0[arg1 << 240][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg2.length) + ceil32(arg3.length) + stor0[arg1 << 240][1].length + (floor32(stor0[arg1 << 240][1].length - 1) + -stor0[arg1 << 240][1].length + 32 % 32) + 320] = stor0[arg1 << 240][2].length
    mem[ceil32(arg2.length) + ceil32(arg3.length) + stor0[arg1 << 240][1].length + (floor32(stor0[arg1 << 240][1].length - 1) + -stor0[arg1 << 240][1].length + 32 % 32) + 352] = stor0[arg1 << 240][2].field_0
    idx = ceil32(arg2.length) + ceil32(arg3.length) + stor0[arg1 << 240][1].length + (floor32(stor0[arg1 << 240][1].length - 1) + -stor0[arg1 << 240][1].length + 32 % 32) + 352
    s = 0
    while ceil32(arg2.length) + ceil32(arg3.length) + stor0[arg1 << 240][1].length + (floor32(stor0[arg1 << 240][1].length - 1) + -stor0[arg1 << 240][1].length + 32 % 32) + stor0[arg1 << 240][2].length + 352 > idx + 32:
        mem[idx + 32] = stor0[arg1 << 240][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0x8da43026: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len ceil32(arg3.length) + -arg3.length + 32], stor0[arg1 << 240][1].length + (floor32(stor0[arg1 << 240][1].length - 1) + -stor0[arg1 << 240][1].length + 32 % 32) + 160, stor0[arg1 << 240].field_768, stor0[arg1 << 240][1].length, mem[ceil32(arg2.length) + ceil32(arg3.length) + 320 len stor0[arg1 << 240][1].length + (floor32(stor0[arg1 << 240][1].length - 1) + -stor0[arg1 << 240][1].length + 32 % 32) + stor0[arg1 << 240][2].length + (floor32(stor0[arg1 << 240][2].length - 1) + -stor0[arg1 << 240][2].length + 32 % 32) + 32]
}

function victims(uint16 arg1) {
    require calldata.size - 4 >= 32
    mem[32] = 0
    mem[96] = stor0[arg1][1].length
    mem[128] = stor0[arg1][1].field_0
    idx = 128
    s = 0
    while stor0[arg1][1].length + 96 > idx:
        mem[idx + 32] = stor0[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 160
    mem[ceil32(stor0[arg1][1].length) + 128] = stor0[arg1][2].length
    mem[0] = sha3(arg1, 0) + 2
    mem[ceil32(stor0[arg1][1].length) + 160] = stor0[arg1][2].field_0
    idx = ceil32(stor0[arg1][1].length) + 160
    s = 0
    while ceil32(stor0[arg1][1].length) + stor0[arg1][2].length + 128 > idx:
        mem[idx + 32] = stor0[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 160] = stor0[arg1].field_0
    mem[ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 256] = stor0[arg1].field_768
    mem[ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 192] = 128
    mem[ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 288] = stor0[arg1][1].length
    mem[ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 320 len ceil32(stor0[arg1][1].length)] = mem[128 len ceil32(stor0[arg1][1].length)]
    mem[ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 224] = stor0[arg1][1].length + 160
    mem[stor0[arg1][1].length + ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 320] = stor0[arg1][2].length
    mem[stor0[arg1][1].length + ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 352 len ceil32(stor0[arg1][2].length)] = mem[ceil32(stor0[arg1][1].length) + 160 len ceil32(stor0[arg1][2].length)]
    if not stor0[arg1][2].length % 32:
        return stor0[arg1].field_0, 
               Array(len=stor0[arg1][1].length, data=mem[128 len ceil32(stor0[arg1][1].length)], mem[(2 * ceil32(stor0[arg1][1].length)) + ceil32(stor0[arg1][2].length) + 320 len stor0[arg1][2].length + stor0[arg1][1].length + -ceil32(stor0[arg1][1].length) + 32]),
               stor0[arg1][1].length + 160,
               stor0[arg1].field_768
    mem[floor32(stor0[arg1][2].length) + stor0[arg1][1].length + ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + 352] = mem[floor32(stor0[arg1][2].length) + stor0[arg1][1].length + ceil32(stor0[arg1][1].length) + ceil32(stor0[arg1][2].length) + -stor0[arg1][2].length % 32 + 384 len stor0[arg1][2].length % 32]
    return stor0[arg1].field_0, 
           Array(len=stor0[arg1][1].length, data=mem[128 len ceil32(stor0[arg1][1].length)], mem[(2 * ceil32(stor0[arg1][1].length)) + ceil32(stor0[arg1][2].length) + 320 len floor32(stor0[arg1][2].length) + stor0[arg1][1].length + -ceil32(stor0[arg1][1].length) + 64]),
           stor0[arg1][1].length + 160,
           stor0[arg1].field_768
}

function getVictim(uint16 arg1) {
    require calldata.size - 4 >= 32
    mem[96] = 0
    mem[128] = 96
    mem[160] = 96
    mem[192] = 0
    mem[32] = 0
    mem[224] = stor0[arg1 << 240].field_0
    mem[352] = stor0[arg1 << 240][1].length
    mem[384] = stor0[arg1 << 240][1].field_0
    idx = 384
    s = 0
    while stor0[arg1 << 240][1].length + 352 > idx:
        mem[idx + 32] = stor0[arg1 << 240][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[256] = 352
    mem[64] = ceil32(stor0[arg1 << 240][1].length) + ceil32(stor0[arg1 << 240][2].length) + 416
    mem[ceil32(stor0[arg1 << 240][1].length) + 384] = stor0[arg1 << 240][2].length
    mem[0] = sha3(arg1 << 240, 0) + 2
    mem[ceil32(stor0[arg1 << 240][1].length) + 416] = stor0[arg1 << 240][2].field_0
    idx = ceil32(stor0[arg1 << 240][1].length) + 416
    s = 0
    while ceil32(stor0[arg1 << 240][1].length) + stor0[arg1 << 240][2].length + 384 > idx:
        mem[idx + 32] = stor0[arg1 << 240][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[288] = ceil32(stor0[arg1 << 240][1].length) + 384
    mem[320] = stor0[arg1 << 240].field_768
    mem[ceil32(stor0[arg1 << 240][1].length) + ceil32(stor0[arg1 << 240][2].length) + 416] = arg1
    mem[ceil32(stor0[arg1 << 240][1].length) + ceil32(stor0[arg1 << 240][2].length) + 448] = 96
    mem[ceil32(stor0[arg1 << 240][1].length) + ceil32(stor0[arg1 << 240][2].length) + 512] = stor0[arg1 << 240][1].length
    mem[ceil32(stor0[arg1 << 240][1].length) + ceil32(stor0[arg1 << 240][2].length) + 544 len ceil32(stor0[arg1 << 240][1].length)] = mem[384 len ceil32(stor0[arg1 << 240][1].length)]
    mem[ceil32(stor0[arg1 << 240][1].length) + ceil32(stor0[arg1 << 240][2].length) + 480] = stor0[arg1 << 240][1].length + 128
    mem[stor0[arg1 << 240][1].length + ceil32(stor0[arg1 << 240][1].length) + ceil32(stor0[arg1 << 240][2].length) + 544] = stor0[arg1 << 240][2].length
    mem[stor0[arg1 << 240][1].length + ceil32(stor0[arg1 << 240][1].length) + ceil32(stor0[arg1 << 240][2].length) + 576 len ceil32(stor0[arg1 << 240][2].length)] = mem[ceil32(stor0[arg1 << 240][1].length) + 416 len ceil32(stor0[arg1 << 240][2].length)]
    if not stor0[arg1 << 240][2].length % 32:
        return arg1 << 240, 
               Array(len=stor0[arg1 << 240][1].length, data=mem[384 len ceil32(stor0[arg1 << 240][1].length)], mem[(2 * ceil32(stor0[arg1 << 240][1].length)) + ceil32(stor0[arg1 << 240][2].length) + 544 len stor0[arg1 << 240][2].length + stor0[arg1 << 240][1].length + -ceil32(stor0[arg1 << 240][1].length) + 32]),
               stor0[arg1 << 240][1].length + 128
    mem[floor32(stor0[arg1 << 240][2].length) + stor0[arg1 << 240][1].length + ceil32(stor0[arg1 << 240][1].length) + ceil32(stor0[arg1 << 240][2].length) + 576] = mem[floor32(stor0[arg1 << 240][2].length) + stor0[arg1 << 240][1].length + ceil32(stor0[arg1 << 240][1].length) + ceil32(stor0[arg1 << 240][2].length) + -stor0[arg1 << 240][2].length % 32 + 608 len stor0[arg1 << 240][2].length % 32]
    return arg1 << 240, 
           Array(len=stor0[arg1 << 240][1].length, data=mem[384 len ceil32(stor0[arg1 << 240][1].length)], mem[(2 * ceil32(stor0[arg1 << 240][1].length)) + ceil32(stor0[arg1 << 240][2].length) + 544 len floor32(stor0[arg1 << 240][2].length) + stor0[arg1 << 240][1].length + -ceil32(stor0[arg1 << 240][1].length) + 64]),
           stor0[arg1 << 240][1].length + 128
}

function addVictim(string arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    require stor1[address(msg.sender)]
    victimsCount = uint16(victimsCount + 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = victimsCount
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 320] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 352] = ceil32(arg1.length) + 128
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 384] = block.timestamp
    stor0[uint16(stor2.field_0)].field_0 = victimsCount
    stor0[uint16(stor2.field_0)][1][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor0[uint16(stor2.field_0)][2][].field_0 = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    stor0[uint16(stor2.field_0)].field_768 = block.timestamp
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 576] = stor0[uint16(stor2.field_0)][1].field_0
    idx = ceil32(arg1.length) + ceil32(arg2.length) + 576
    s = 0
    while ceil32(arg1.length) + ceil32(arg2.length) + stor0[uint16(stor2.field_0)][1].length + 576 > idx + 32:
        mem[idx + 32] = stor0[uint16(stor2.field_0)][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(arg2.length) + stor0[uint16(stor2.field_0)][1].length + (floor32(stor0[uint16(stor2.field_0)][1].length - 1) + -stor0[uint16(stor2.field_0)][1].length + 32 % 32) + 576] = stor0[uint16(stor2.field_0)][2].length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + stor0[uint16(stor2.field_0)][1].length + (floor32(stor0[uint16(stor2.field_0)][1].length - 1) + -stor0[uint16(stor2.field_0)][1].length + 32 % 32) + 608] = stor0[uint16(stor2.field_0)][2].field_0
    idx = ceil32(arg1.length) + ceil32(arg2.length) + stor0[uint16(stor2.field_0)][1].length + (floor32(stor0[uint16(stor2.field_0)][1].length - 1) + -stor0[uint16(stor2.field_0)][1].length + 32 % 32) + 608
    s = 0
    while ceil32(arg1.length) + ceil32(arg2.length) + stor0[uint16(stor2.field_0)][1].length + (floor32(stor0[uint16(stor2.field_0)][1].length - 1) + -stor0[uint16(stor2.field_0)][1].length + 32 % 32) + stor0[uint16(stor2.field_0)][2].length + 608 > idx + 32:
        mem[idx + 32] = stor0[uint16(stor2.field_0)][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0x143a7bad: stor0[uint16(stor2.field_0)].field_0, Array(len=stor0[uint16(stor2.field_0)][1].length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 576 len stor0[uint16(stor2.field_0)][1].length + (floor32(stor0[uint16(stor2.field_0)][1].length - 1) + -stor0[uint16(stor2.field_0)][1].length + 32 % 32) + stor0[uint16(stor2.field_0)][2].length + (floor32(stor0[uint16(stor2.field_0)][2].length - 1) + -stor0[uint16(stor2.field_0)][2].length + 32 % 32) + 32]), stor0[uint16(stor2.field_0)][1].length + (floor32(stor0[uint16(stor2.field_0)][1].length - 1) + -stor0[uint16(stor2.field_0)][1].length + 32 % 32) + 160, stor0[uint16(stor2.field_0)].field_768
}



}
