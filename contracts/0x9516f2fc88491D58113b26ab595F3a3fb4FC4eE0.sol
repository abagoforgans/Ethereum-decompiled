contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1540]




// =====================  Runtime code  =====================


array of struct sub_11c171ba;
array of struct sub_33c0f099;

function sub_11c171ba(?) payable {
    return sub_11c171ba[0 len sub_11c171ba.length].field_0
}

function sub_33c0f099(?) payable {
    return sub_33c0f099[0 len sub_33c0f099.length].field_0
}

function _fallback() payable {
  stop
}

function setHash(string arg1, string arg2) payable {
    sub_11c171ba[].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_33c0f099[].field_0 = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = uint256(sub_11c171ba.field_0)
    idx = ceil32(arg1.length) + ceil32(arg2.length) + 256
    s = 0
    while ceil32(arg1.length) + ceil32(arg2.length) + sub_11c171ba.length + 256 > idx + 32:
        mem[idx + 32] = sub_11c171ba[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(arg2.length) + sub_11c171ba.length + (floor32(sub_11c171ba.length - 1) + -sub_11c171ba.length + 32 % 32) + 256] = sub_33c0f099.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + sub_11c171ba.length + (floor32(sub_11c171ba.length - 1) + -sub_11c171ba.length + 32 % 32) + 288] = uint256(sub_33c0f099.field_0)
    idx = ceil32(arg1.length) + ceil32(arg2.length) + sub_11c171ba.length + (floor32(sub_11c171ba.length - 1) + -sub_11c171ba.length + 32 % 32) + 288
    s = 0
    while ceil32(arg1.length) + ceil32(arg2.length) + sub_11c171ba.length + (floor32(sub_11c171ba.length - 1) + -sub_11c171ba.length + 32 % 32) + sub_33c0f099.length + 288 > idx + 32:
        mem[idx + 32] = sub_33c0f099[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0xac4df532: Array(len=sub_11c171ba.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 256 len sub_11c171ba.length + (floor32(sub_11c171ba.length - 1) + -sub_11c171ba.length + 32 % 32) + sub_33c0f099.length + (floor32(sub_33c0f099.length - 1) + -sub_33c0f099.length + 32 % 32) + 32]), sub_11c171ba.length + (floor32(sub_11c171ba.length - 1) + -sub_11c171ba.length + 32 % 32) + 96
}



}
