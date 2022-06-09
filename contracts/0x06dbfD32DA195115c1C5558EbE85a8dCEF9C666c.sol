contract main {




// =====================  Runtime code  =====================


array of uint256 get;

function get() {
    return get[0 len get.length]
}

function _fallback() payable {
    revert
}



}
