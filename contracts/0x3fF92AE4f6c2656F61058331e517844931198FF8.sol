contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = 0
    return code.data[26 len 3128]
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
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 320 len 222] = code.data[2906 len 222]
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

function sub_211445e9(?) payable {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 16
    mem[ceil32(arg1.length) + 160] = ' flight altitude'
    mem[ceil32(arg1.length) + 192] = 0
    mem[ceil32(arg1.length) + 224] = 0
    mem[ceil32(arg1.length) + 256] = 0
    mem[ceil32(arg1.length) + 288] = 0
    mem[64] = ceil32(arg1.length) + 576
    mem[ceil32(arg1.length) + 320] = 222
    mem[ceil32(arg1.length) + 352 len 222] = code.data[2906 len 222]
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        require s < 222
        mem[ceil32(arg1.length) + s + 352] = Mask(8, 248, mem[idx + 128])
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = arg1.length
    while idx < 16:
        require idx < 16
        require s < 222
        mem[ceil32(arg1.length) + s + 352] = Mask(8, 248, mem[ceil32(arg1.length) + idx + 160])
        idx = idx + 1
        s = s + 1
        continue 
    idx = arg1.length + 16
    while idx < mem[ceil32(arg1.length) + 320]:
        require idx < mem[ceil32(arg1.length) + 320]
        mem[ceil32(arg1.length) + idx + 352] = 0
        idx = idx + 1
        continue 
    mem[mem[64]] = 0xadf59f9900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 0
    mem[mem[64] + 36] = 96
    mem[mem[64] + 100] = 12
    mem[mem[64] + 132] = 'WolframAlpha'
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = mem[ceil32(arg1.length) + 320]
    _68 = mem[ceil32(arg1.length) + 320]
    mem[mem[64] + 196 len mem[ceil32(arg1.length) + 320]] = mem[ceil32(arg1.length) + 352 len mem[ceil32(arg1.length) + 320]]
    if not _68 % 32:
        call 0xd4cb3eb955e03ac64644678fd3d6a7f3104ee70d.0xadf59f99 with:
             gas gas_remaining - 25050 wei
            args 0, 96, 160, 12, 'WolframAlpha', mem[mem[64] + 164 len _68 + 32]
    else:
        mem[floor32(_68) + mem[64] + 196] = mem[floor32(_68) + mem[64] + -(_68 % 32) + 228 len _68 % 32]
        call 0xd4cb3eb955e03ac64644678fd3d6a7f3104ee70d.0xadf59f99 with:
             gas gas_remaining - 25050 wei
            args 0, 96, 160, 12, 'WolframAlpha', mem[mem[64] + 164 len floor32(_68) + 64]
    require ext_call.success
}



}
