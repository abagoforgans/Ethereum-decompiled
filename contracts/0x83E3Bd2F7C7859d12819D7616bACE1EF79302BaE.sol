contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = 0
    call 0xd4cb3eb955e03ac64644678fd3d6a7f3104ee70d.0xadf59f99 with:
         gas gas_remaining - 25050 wei
        args 0, 0, 96, 160, 3, 'URL', 251, code.data[2923 len 251], mem[543 len 5]
    require ext_call.success
    return code.data[261 len 2662]
}



// =====================  Runtime code  =====================


#
#  - callback()
#  - indexOf(string arg1, string arg2)
#
uint256 sub_2684d75f;

function sub_2684d75f(?) payable {
    return sub_2684d75f
}

function kill() payable {
    if 0x47a8033cc6d6ca2ed5044674fd421f44884de8 != msg.sender:
    selfdestruct(0x47a8033cc6d6ca2ed5044674fd421f44884de8)
}

function _fallback() payable {
  stop
}

function sub_43779ffb(?) payable {
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
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 320 len 222] = 0x562020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020
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
    while idx < arg2.length:
        require idx < arg2.length
        require s < 222
        mem[ceil32(arg1.length) + ceil32(arg2.length) + s + 320] = Mask(8, 248, mem[ceil32(arg1.length) + idx + 160])
        idx = idx + 1
        s = s + 1
        continue 
    idx = arg1.length + mem[ceil32(arg1.length) + 128]
    while idx < mem[ceil32(arg1.length) + ceil32(arg2.length) + 288]:
        require idx < mem[ceil32(arg1.length) + ceil32(arg2.length) + 288]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + idx + 320] = 0
        idx = idx + 1
        continue 
    _54 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 288]
    _56 = mem[ceil32(arg1.length) + ceil32(arg2.length) + 288]
    mem[mem[64] + 64 len mem[ceil32(arg1.length) + ceil32(arg2.length) + 288]] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 320 len mem[ceil32(arg1.length) + ceil32(arg2.length) + 288]]
    if not _56 % 32:
        return 32, mem[mem[64] + 32 len _56 + 32]
    mem[floor32(_56) + mem[64] + 64] = mem[floor32(_56) + mem[64] + -(_56 % 32) + 96 len _56 % 32]
    return memory
      from mem[64]
       len floor32(_56) + _54 + -mem[64] + 96
}



}
