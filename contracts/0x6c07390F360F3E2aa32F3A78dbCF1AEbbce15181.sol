contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint8 stor2; offset 152
address stor2;

function _fallback() payable {
    stor0 = 0x26588a9301b0428d95e6fc3a5024fce8bec12d51
    Mask(152, 0, stor2.field_0) = 0x47a8033cc6d6ca2ed5044674fd421f44884de8
    uint8(stor2.field_152) = 0
    stor1 = 0xaf72e3ce56131a9c1a6831b2f0789eb07c962292
    return code.data[208 len 1295]
}



// =====================  Runtime code  =====================


address sub_4c773795Address;
address stor1;

function sub_4c773795(?) payable {
    return sub_4c773795Address
}

function _fallback() payable {
    call stor1 with:
       funct call.data[0 len 4]
         gas gas_remaining - 25050 wei
        args call.data[4 len calldata.size - 4]
}

function sub_149882e3(?) payable {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = 0
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 544
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = 222
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 320 len 222] = code.data[1073 len 222]
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        require s < 222
        mem[ceil32(arg1.length) + ceil32(arg2.length) + s + 320] = Mask(8, 248, mem[idx + 128])
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = arg1.length
    while idx < mem[ceil32(arg1.length) + 128]:
        require idx < mem[ceil32(arg1.length) + 128]
        require s < 222
        mem[ceil32(arg1.length) + ceil32(arg2.length) + s + 320] = Mask(8, 248, mem[ceil32(arg1.length) + idx + 160])
        idx = idx + 1
        s = s + 1
        continue 
    idx = arg1.length + arg2.length
    while idx < mem[ceil32(arg1.length) + ceil32(arg2.length) + 288]:
        require idx < mem[ceil32(arg1.length) + ceil32(arg2.length) + 288]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + idx + 320] = 0
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 288]
    _56 = mem[ceil32(arg1.length) + ceil32(arg2.length) + 288]
    mem[mem[64] + 64 len mem[ceil32(arg1.length) + ceil32(arg2.length) + 288]] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 320 len mem[ceil32(arg1.length) + ceil32(arg2.length) + 288]]
    if not _56 % 32:
        return 32, mem[mem[64] + 32 len _56 + 32]
    mem[floor32(_56) + mem[64] + 64] = mem[floor32(_56) + mem[64] + -(_56 % 32) + 96 len _56 % 32]
    return 32, mem[mem[64] + 32 len floor32(_56) + 64]
}



}
