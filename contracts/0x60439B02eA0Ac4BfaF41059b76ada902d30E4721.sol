contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0x56f2876713c616aa6f84f3cc5cec0ab15da47166
    return code.data[57 len 1305]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 get;
array of uint256 stor2;

function get(string arg1) payable {
    return get[arg1[all]][0 len get[arg1[all]].length]
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function set(string arg1, string arg2) payable {
    if stor0 != msg.sender:
        stor2[address(msg.sender)][arg1[all]][] = Array(len=arg2.length, data=arg2[all])
    else:
        get[arg1[all]][] = Array(len=arg2.length, data=arg2[all])
}



}
