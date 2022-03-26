contract main {


// =======================  Init code  ======================


const _fallback = code.data[24 len 1442]




// =====================  Runtime code  =====================


uint256 sub_175a0b96;
array of struct sub_4ad02ef1;
array of struct sub_43041155;

function sub_175a0b96(?) {
    return sub_175a0b96
}

function sub_43041155(?) {
    return sub_43041155[0 len sub_43041155.length].field_0
}

function sub_4ad02ef1(?) {
    return sub_4ad02ef1[0 len sub_4ad02ef1.length].field_0
}

function _fallback() payable {
    revert 
}

function sub_9b481bc2(?) {
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    sub_175a0b96 = arg1
    sub_4ad02ef1[].field_0 = Array(len=arg2.length, data=arg2[all])
    sub_43041155.length = (2 * arg3.length) + 1
    s = 0
    idx = ceil32(arg2.length) + 160
    while ceil32(arg2.length) + arg3.length + 160 > idx:
        sub_43041155[s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if sub_43041155.length + 31 / 32 > Mask(251, 0, arg3.length + 31) >> 5:
        sub_43041155[Mask(251, 0, arg3.length + 31) >> 5].field_0 = 0
        idx = (Mask(251, 0, arg3.length + 31) >> 5) + 1
        while sub_43041155.length + 31 / 32 > idx:
            sub_43041155[idx].field_0 = 0
            idx = idx + 1
            continue 
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 288] = uint256(sub_4ad02ef1.field_0)
    idx = ceil32(arg2.length) + ceil32(arg3.length) + 288
    s = 0
    while ceil32(arg2.length) + ceil32(arg3.length) + sub_4ad02ef1.length + 288 > idx + 32:
        mem[idx + 32] = sub_4ad02ef1[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg2.length) + ceil32(arg3.length) + sub_4ad02ef1.length + (floor32(sub_4ad02ef1.length - 1) + -sub_4ad02ef1.length + 32 % 32) + 288] = sub_43041155.length
    mem[ceil32(arg2.length) + ceil32(arg3.length) + sub_4ad02ef1.length + (floor32(sub_4ad02ef1.length - 1) + -sub_4ad02ef1.length + 32 % 32) + 320] = uint256(sub_43041155.field_0)
    idx = ceil32(arg2.length) + ceil32(arg3.length) + sub_4ad02ef1.length + (floor32(sub_4ad02ef1.length - 1) + -sub_4ad02ef1.length + 32 % 32) + 320
    s = 0
    while ceil32(arg2.length) + ceil32(arg3.length) + sub_4ad02ef1.length + (floor32(sub_4ad02ef1.length - 1) + -sub_4ad02ef1.length + 32 % 32) + sub_43041155.length + 320 > idx + 32:
        mem[idx + 32] = sub_43041155[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0x9f4f5713: sub_175a0b96, Array(len=sub_4ad02ef1.length, data=mem[ceil32(arg2.length) + ceil32(arg3.length) + 288 len sub_4ad02ef1.length + (floor32(sub_4ad02ef1.length - 1) + -sub_4ad02ef1.length + 32 % 32) + sub_43041155.length + (floor32(sub_43041155.length - 1) + -sub_43041155.length + 32 % 32) + 32]), sub_4ad02ef1.length + (floor32(sub_4ad02ef1.length - 1) + -sub_4ad02ef1.length + 32 % 32) + 128
}



}
