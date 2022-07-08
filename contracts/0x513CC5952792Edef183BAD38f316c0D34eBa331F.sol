contract main {




// =====================  Runtime code  =====================


array of struct sub_c2a8e01e;

function sub_c2a8e01e(?) {
    return sub_c2a8e01e[address(msg.sender)][0 len sub_c2a8e01e[address(msg.sender)].length].field_0
}

function _fallback() payable {
    revert
}

function sub_9967d1a2(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require not sub_c2a8e01e[address(msg.sender)].field_256
    sub_c2a8e01e[address(msg.sender)][].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_c2a8e01e[address(msg.sender)].field_256 = arg2
}



}
