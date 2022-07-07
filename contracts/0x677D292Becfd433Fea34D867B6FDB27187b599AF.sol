contract main {




// =====================  Runtime code  =====================


array of uint256 sub_864f4a9a;

function sub_864f4a9a(?) {
    return sub_864f4a9a[0 len sub_864f4a9a.length]
}

function _fallback() payable {
    revert
}

function sub_56cea19e(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    sub_864f4a9a[] = Array(len=arg1.length, data=arg1[all])
}



}
