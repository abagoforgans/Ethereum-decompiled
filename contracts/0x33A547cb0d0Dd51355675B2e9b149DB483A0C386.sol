contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = 0
    return code.data[26 len 3099]
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

function sub_211445e9(?) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 16
    mem[ceil32(arg1.length) + 160] = ' flight altitude'
    mem[ceil32(arg1.length) + 192] = 0
    mem[ceil32(arg1.length) + 352 len 222] = code.data[2877 len 222]
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
    require arg1.length + 16 < 222
    mem[ceil32(arg1.length) + arg1.length + 368] = 0
    mem[ceil32(arg1.length) + 964] = mem[ceil32(arg1.length) + 546 len 28], mem[ceil32(arg1.length) + 994 len 2]
    call 0xd4cb3eb955e03ac64644678fd3d6a7f3104ee70d.0xadf59f99 with:
         gas gas_remaining - 25050 wei
        args 0, 96, 160, 12, 'WolframAlpha', 222, mem[ceil32(arg1.length) + 352 len 192], mem[ceil32(arg1.length) + 964]
    require ext_call.success
}

function sub_43779ffb(?) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 320 len 222] = code.data[2877 len 222]
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
    require arg1.length + arg2.length < 222
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + arg2.length + 320] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 800] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 514 len 28], mem[ceil32(arg1.length) + ceil32(arg2.length) + 830 len 2]
    return Array(len=222, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 320 len 192], mem[ceil32(arg1.length) + ceil32(arg2.length) + 800]), 
}



}
