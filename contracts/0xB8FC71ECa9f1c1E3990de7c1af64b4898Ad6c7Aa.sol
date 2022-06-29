contract main {




// =====================  Runtime code  =====================


uint256 get;
address stor1;

function get() {
    return get
}

function _fallback() payable {
    revert
}

function set(uint256 arg1) {
    if msg.sender == stor1:
        get = arg1
}



}
