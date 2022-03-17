contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = 0
    return code.data[26 len 3112]
}



// =====================  Runtime code  =====================


#
#  - callback()
#  - indexOf(string arg1, string arg2)
#
uint256 sub_2684d75f;
array of struct stor1;

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
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 256
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        require s < stor1.length
        if not bool(stor1.length):
            stor1.length = mem[idx + 128 len 1] * 256^(-s + 31) or !(255 * 256^(-s + 31)) and stor1.length
        else:
            mem[0] = 1
            stor1[0.03125 / s].field_0 = mem[idx + 128 len 1] * 256^(-(s % 32) + 31) or !(255 * 256^(-(s % 32) + 31)) and stor1[0.03125 / s].field_0
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    t = s
    while idx < arg2.length:
        require idx < arg2.length
        require t < stor1.length
        if not bool(stor1.length):
            stor1.length = mem[ceil32(arg1.length) + idx + 160 len 1] * 256^(-t + 31) or !(255 * 256^(-t + 31)) and stor1.length
        else:
            mem[0] = 1
            stor1[0.03125 / t].field_0 = mem[ceil32(arg1.length) + idx + 160 len 1] * 256^(-(t % 32) + 31) or !(255 * 256^(-(t % 32) + 31)) and stor1[0.03125 / t].field_0
        idx = idx + 1
        t = t + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = uint256(stor1.field_0)
    idx = ceil32(arg1.length) + ceil32(arg2.length) + 288
    s = 0
    while ceil32(arg1.length) + ceil32(arg2.length) + stor1.length + 256 > idx:
        mem[idx + 32] = stor1[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len stor1.length])
}

function sub_211445e9(?) payable {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 16
    mem[ceil32(arg1.length) + 160] = ' flight altitude'
    mem[ceil32(arg1.length) + 192] = 0
    mem[ceil32(arg1.length) + 224] = 0
    mem[64] = ceil32(arg1.length) + 288
    mem[ceil32(arg1.length) + 256] = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        require s < stor1.length
        if not bool(stor1.length):
            stor1.length = mem[idx + 128 len 1] * 256^(-s + 31) or !(255 * 256^(-s + 31)) and stor1.length
        else:
            mem[0] = 1
            stor1[0.03125 / s].field_0 = mem[idx + 128 len 1] * 256^(-(s % 32) + 31) or !(255 * 256^(-(s % 32) + 31)) and stor1[0.03125 / s].field_0
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    t = s
    while idx < 16:
        require idx < 16
        require t < stor1.length
        if not bool(stor1.length):
            stor1.length = mem[ceil32(arg1.length) + idx + 160 len 1] * 256^(-t + 31) or !(255 * 256^(-t + 31)) and stor1.length
        else:
            mem[0] = 1
            stor1[0.03125 / t].field_0 = mem[ceil32(arg1.length) + idx + 160 len 1] * 256^(-(t % 32) + 31) or !(255 * 256^(-(t % 32) + 31)) and stor1[0.03125 / t].field_0
        idx = idx + 1
        t = t + 1
        continue 
    mem[64] = ceil32(arg1.length) + ceil32(stor1.length) + 320
    mem[ceil32(arg1.length) + 288] = stor1.length
    mem[ceil32(arg1.length) + 320] = uint256(stor1.field_0)
    idx = ceil32(arg1.length) + 320
    s = 0
    while ceil32(arg1.length) + stor1.length + 288 > idx:
        mem[idx + 32] = stor1[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(stor1.length) + 320] = 0xadf59f9900000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + ceil32(stor1.length) + 324] = 0
    mem[ceil32(arg1.length) + ceil32(stor1.length) + 356] = 96
    mem[ceil32(arg1.length) + ceil32(stor1.length) + 420] = 12
    mem[ceil32(arg1.length) + ceil32(stor1.length) + 452] = 'WolframAlpha'
    mem[ceil32(arg1.length) + ceil32(stor1.length) + 388] = 160
    mem[ceil32(arg1.length) + ceil32(stor1.length) + 484] = stor1.length
    mem[ceil32(arg1.length) + ceil32(stor1.length) + 516 len stor1.length] = mem[ceil32(arg1.length) + 320 len stor1.length]
    if not stor1.length % 32:
        call 0xd4cb3eb955e03ac64644678fd3d6a7f3104ee70d.0xadf59f99 with:
             gas gas_remaining - 25050 wei
            args 0, 96, 160, 12, 'WolframAlpha', stor1.length, mem[ceil32(arg1.length) + 320 len stor1.length]
    else:
        mem[floor32(stor1.length) + ceil32(arg1.length) + ceil32(stor1.length) + 516] = mem[floor32(stor1.length) + ceil32(arg1.length) + ceil32(stor1.length) + -stor1.length % 32 + 548 len stor1.length % 32]
        call 0xd4cb3eb955e03ac64644678fd3d6a7f3104ee70d.0xadf59f99 with:
             gas gas_remaining - 25050 wei
            args 0, 96, 160, 12, 'WolframAlpha', stor1.length, mem[ceil32(arg1.length) + ceil32(stor1.length) + 516 len floor32(stor1.length) + 32]
    require ext_call.success
}



}
