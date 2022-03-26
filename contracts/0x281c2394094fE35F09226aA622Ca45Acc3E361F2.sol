contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 785]




// =====================  Runtime code  =====================


uint256 stor0;
array of struct stor1;
array of struct stor2;

function _fallback() payable {
  stop
}

function sub_ae83c61f(?) payable {
    stor0 = arg1
    stor1[].field_0 = Array(len=arg2.length, data=arg2[all])
    stor2[].field_0 = Array(len=arg3.length, data=arg3[all])
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 288] = uint256(stor1.field_0)
    idx = ceil32(arg2.length) + ceil32(arg3.length) + 288
    s = 0
    while ceil32(arg2.length) + ceil32(arg3.length) + stor1.length + 288 > idx + 32:
        mem[idx + 32] = stor1[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg2.length) + ceil32(arg3.length) + stor1.length + (floor32(stor1.length - 1) + -stor1.length + 32 % 32) + 288] = stor2.length
    mem[ceil32(arg2.length) + ceil32(arg3.length) + stor1.length + (floor32(stor1.length - 1) + -stor1.length + 32 % 32) + 320] = uint256(stor2.field_0)
    idx = ceil32(arg2.length) + ceil32(arg3.length) + stor1.length + (floor32(stor1.length - 1) + -stor1.length + 32 % 32) + 320
    s = 0
    while ceil32(arg2.length) + ceil32(arg3.length) + stor1.length + (floor32(stor1.length - 1) + -stor1.length + 32 % 32) + stor2.length + 320 > idx + 32:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0x9f4f5713: stor0, Array(len=stor1.length, data=mem[ceil32(arg2.length) + ceil32(arg3.length) + 288 len stor1.length + (floor32(stor1.length - 1) + -stor1.length + 32 % 32) + stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 32]), stor1.length + (floor32(stor1.length - 1) + -stor1.length + 32 % 32) + 128
}



}
