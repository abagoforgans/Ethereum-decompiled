contract main {




// =====================  Runtime code  =====================


#
#  - getInfo(uint256 arg1, uint256 arg2)
#
mapping of uint8 stor0;
array of struct stor1;

function kill() payable {
    require stor0[address(msg.sender)]
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function sub_5b482f3b(?) payable {
    require calldata.size - 4 >= 32
    require stor0[address(msg.sender)]
    require arg1
    stor0[address(arg1)] = 1
    emit AddedOwner(arg1);
}

function sub_cdede98e(?) payable {
    require calldata.size - 4 >= 32
    require stor0[address(msg.sender)]
    require arg1
    require arg1 != msg.sender
    stor0[address(arg1)] = 0
    emit RemovedOwner(arg1);
}

function sub_c383282e(?) payable {
    require calldata.size - 4 >= 224
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + arg4.length + 160] = 0
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = arg5.length
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len arg5.length] = arg5[all]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + arg5.length + 192] = 0
    require stor0[address(msg.sender)]
    require arg1 > 0
    require arg2 > 0
    require arg3.length > 0
    require arg4.length > 0
    require arg5.length > 0
    require arg6 > 0
    require arg7 > 0
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 192] = 96
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 224] = ceil32(arg3.length) + 128
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 256] = ceil32(arg3.length) + ceil32(arg4.length) + 160
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 288] = arg6
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 320] = arg7
    stor1[arg1][arg2].field_0++
    stor1[arg1][arg2][stor1[arg1][arg2].field_0][].field_0 = Array(len=arg3.length, data=arg3[all])
    stor[sha3((5 * stor1[arg1][arg2].field_0) + ('map', ('param', 'arg2'), ('map', ('param', 'arg1'), ('name', 'stor1', 1))) + 1)][].field_0 = Array(len=Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)], data=mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]])
    stor[sha3((5 * stor1[arg1][arg2].field_0) + ('map', ('param', 'arg2'), ('map', ('param', 'arg1'), ('name', 'stor1', 1))) + 2)][].field_0 = Array(len=Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)], data=mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]])
    stor1[arg1][arg2][stor1[arg1][arg2].field_0].field_768 = arg6
    stor1[arg1][arg2][stor1[arg1][arg2].field_0].field_1024 = arg7
    return 1
}



}
