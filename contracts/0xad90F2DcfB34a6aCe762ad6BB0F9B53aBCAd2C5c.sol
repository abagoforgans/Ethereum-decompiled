contract main {




// =====================  Runtime code  =====================


mapping of address stor0;
array of uint256 sub_28b254a6;

function sub_28b254a6(?) {
    return sub_28b254a6[arg1][0 len sub_28b254a6[arg1].length]
}

function _fallback() payable {
    revert
}

function sub_4aebb14d(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    sub_28b254a6.length++
    sub_28b254a6[sub_28b254a6.length][] = Array(len=arg1.length, data=arg1[all])
    stor0[stor1.length] = msg.sender
    emit 0xa32394db: Array(len=arg1.length, data=arg1[all])
}



}
