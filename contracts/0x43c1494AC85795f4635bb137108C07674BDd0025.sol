contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = 0
    return code.data[26 len 2957]
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

function sub_1b6bb719(?) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg3.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg3.length] = arg3[all]
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        require s < arg3.length
        mem[ceil32(arg1.length) + ceil32(arg2.length) + s + 192] = Mask(8, 248, mem[idx + 128])
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = arg1.length
    while idx < arg2.length:
        require idx < arg2.length
        require s < arg3.length
        mem[ceil32(arg1.length) + ceil32(arg2.length) + s + 192] = Mask(8, 248, mem[ceil32(arg1.length) + idx + 160])
        idx = idx + 1
        s = s + 1
        continue 
    return Array(len=arg3.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg3.length])
}

function sub_211445e9(?) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 16
    mem[ceil32(arg1.length) + 160] = ' flight altitude'
    mem[ceil32(arg1.length) + 192] = 52
    mem[ceil32(arg1.length) + 224] = '                                '
    mem[ceil32(arg1.length) + 256] = '                    '
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        require s < 52
        mem[ceil32(arg1.length) + s + 224] = Mask(8, 248, mem[idx + 128])
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = arg1.length
    while idx < 16:
        require idx < 16
        require s < 52
        mem[ceil32(arg1.length) + s + 224] = Mask(8, 248, mem[ceil32(arg1.length) + idx + 160])
        idx = idx + 1
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + 644] = mem[ceil32(arg1.length) + 268 len 8], mem[ceil32(arg1.length) + 664 len 12]
    call 0xd4cb3eb955e03ac64644678fd3d6a7f3104ee70d.0xadf59f99 with:
         gas gas_remaining - 25050 wei
        args 0, 96, 160, 12, 'WolframAlpha', 52, mem[ceil32(arg1.length) + 224], mem[ceil32(arg1.length) + 644]
    require ext_call.success
}



}
