contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1219]




// =====================  Runtime code  =====================


uint256 sub_175a0b96;
array of struct sub_4ad02ef1;
array of struct sub_43041155;

function sub_175a0b96(?) payable {
    return sub_175a0b96
}

function sub_43041155(?) payable {
    return sub_43041155[0 len sub_43041155.length].field_0
}

function sub_4ad02ef1(?) payable {
    return sub_4ad02ef1[0 len sub_4ad02ef1.length].field_0
}

function _fallback() payable {
  stop
}

function sub_9b481bc2(?) payable {
    sub_175a0b96 = arg1
    sub_4ad02ef1[].field_0 = Array(len=arg2.length, data=arg2[all])
    sub_43041155[].field_0 = Array(len=arg3.length, data=arg3[all])
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
