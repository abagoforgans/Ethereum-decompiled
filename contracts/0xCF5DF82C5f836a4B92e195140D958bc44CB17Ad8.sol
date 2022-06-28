contract main {




// =====================  Runtime code  =====================


array of uint256 record;

function getRecord() payable {
    return record[0 len record.length]
}

function _fallback() payable {
    revert
}

function sub_3e0a0099(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    record[] = Array(len=arg1.length, data=arg1[all])
}



}
