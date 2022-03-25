contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1274]




// =====================  Runtime code  =====================


uint256 sub_62cb2634;
array of struct sub_63ffab31;
array of struct signature;

function signature() payable {
    return signature[0 len signature.length].field_0
}

function sub_62cb2634(?) payable {
    return sub_62cb2634
}

function sub_63ffab31(?) payable {
    return sub_63ffab31[0 len sub_63ffab31.length].field_0
}

function _fallback() payable {
  stop
}

function sub_f1de8ccb(?) payable {
    sub_62cb2634 = arg1
    sub_63ffab31[].field_0 = Array(len=arg2.length, data=arg2[all])
    signature[].field_0 = Array(len=arg3.length, data=arg3[all])
    emit 0xd441edee: sub_62cb2634
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 224] = uint256(sub_63ffab31.field_0)
    idx = ceil32(arg2.length) + ceil32(arg3.length) + 224
    s = 0
    while ceil32(arg2.length) + ceil32(arg3.length) + sub_63ffab31.length + 224 > idx + 32:
        mem[idx + 32] = sub_63ffab31[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0x95d85015: Array(len=sub_63ffab31.length, data=mem[ceil32(arg2.length) + ceil32(arg3.length) + 224 len sub_63ffab31.length + (floor32(sub_63ffab31.length - 1) + -sub_63ffab31.length + 32 % 32)])
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 224] = uint256(signature.field_0)
    idx = ceil32(arg2.length) + ceil32(arg3.length) + 224
    s = 0
    while ceil32(arg2.length) + ceil32(arg3.length) + signature.length + 224 > idx + 32:
        mem[idx + 32] = signature[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0x95d85015: Array(len=signature.length, data=mem[ceil32(arg2.length) + ceil32(arg3.length) + 224 len signature.length + (floor32(signature.length - 1) + -signature.length + 32 % 32)])
}



}
