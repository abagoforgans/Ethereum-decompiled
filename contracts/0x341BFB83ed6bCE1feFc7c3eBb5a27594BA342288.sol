contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = 0
    return code.data[26 len 2412]
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
    require 0 < arg1.length
    require 1 < arg1.length
}

function sub_43779ffb(?) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 0
    require 0 < arg1.length
    require 0 < arg2.length
    mem[ceil32(arg1.length) + 160] = Mask(8, 248, mem[128])
    require 1 < arg1.length
    require 1 < arg2.length
    mem[ceil32(arg1.length) + 161] = Mask(8, 248, mem[129])
    return Array(len=arg2.length, data=mem[ceil32(arg1.length) + 160 len arg2.length])
}



}
