contract main {




// =====================  Runtime code  =====================


#
#  - sub_28b254a6(?)
#
mapping of address stor0;
array of uint256 stor1;

function _fallback() payable {
    revert
}

function sub_703dbb5f(?) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg3.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg3.length] = arg3[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224] = ceil32(arg1.length) + 128
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 256] = ceil32(arg1.length) + ceil32(arg2.length) + 160
    stor1.length++
    stor1[stor1.length][] = Array(len=arg1.length, data=arg1[all])
    stor[sha3((3 * stor1.length) + ('name', 'stor1', 1) + 1)][] = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    stor[sha3((3 * stor1.length) + ('name', 'stor1', 1) + 2)][] = Array(len=Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)], data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]])
    stor0[stor1.length] = msg.sender
}



}
