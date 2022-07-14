contract main {




// =====================  Runtime code  =====================


uint8 get;

function get() payable {
    return get
}

function _fallback() payable {
    revert
}

function set(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    get = arg1
}



}
