contract main {




// =====================  Runtime code  =====================


array of uint256 get;

function name() {
    return get[0 len get.length]
}

function get() {
    return get[0 len get.length]
}

function _fallback() payable {
    revert
}

function set(string arg1) {
    get[] = Array(len=arg1.length, data=arg1[all])
}



}
