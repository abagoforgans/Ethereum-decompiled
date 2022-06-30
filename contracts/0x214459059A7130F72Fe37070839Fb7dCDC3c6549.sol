contract main {




// =====================  Runtime code  =====================


array of uint256 sub_a795f9e2;

function sub_a795f9e2(?) {
    return sub_a795f9e2[arg1][0 len sub_a795f9e2[arg1].length]
}

function _fallback() payable {
    revert
}

function register(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    sub_a795f9e2[address(msg.sender)][] = Array(len=arg1.length, data=arg1[all])
}



}
