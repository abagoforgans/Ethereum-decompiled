contract main {


// =======================  Init code  ======================


address stor1;
address stor2;

function _fallback() {
    stor1 = code.data[690 len 20]
    stor2 = code.data[722 len 20]
    return code.data[199 len 479]
}



// =====================  Runtime code  =====================


uint256 get;
address a1Address;
address a2Address;

function a1() {
    return a1Address
}

function get() {
    return get
}

function a2() {
    return a2Address
}

function set(uint256 arg1) {
    get = arg1
}

function _fallback() payable {
    if unknown_0x119552a1(?????) == uint32(call.func_hash):
        require not msg.value
        return a1Address
    if unknown_0x60fe47b1(?????) == uint32(call.func_hash):
        require not msg.value
        get = arg1
    if unknown_0x6d4ce63c(?????) == uint32(call.func_hash):
        require not msg.value
        return get
    require unknown_0x969e9d0c(?????) == uint32(call.func_hash)
    require not msg.value
    return a2Address
}



}
