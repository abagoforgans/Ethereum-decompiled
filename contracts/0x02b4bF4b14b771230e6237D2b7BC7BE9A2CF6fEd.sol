contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 848]




// =====================  Runtime code  =====================


mapping of address get;
mapping of uint8 stor1;

function contains(bytes32 arg1) {
    return bool(stor1[arg1])
}

function get(bytes32 arg1) {
    return get[arg1]
}

function _fallback() payable {
    revert
}

function remove(bytes32 arg1) {
    require stor1[arg1]
    stor1[arg1] = 0
}

function sub_408e7001(?) {
    require not stor1[arg2]
    stor1[arg2] = 1
    get[arg2] = arg1
}



}
