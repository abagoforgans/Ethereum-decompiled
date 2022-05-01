contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[94 len 1424]
}



// =====================  Runtime code  =====================


address owner;
mapping of struct sub_5be6405e;

function isIssued(bytes32 arg1) {
    return bool(sub_5be6405e[arg1].field_0)
}

function sub_5be6405e(?) {
    return sub_5be6405e[arg1].field_256
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_ed75e1cc(?) {
    if not sub_5be6405e[arg1].field_512:
        return 0
    return 1
}

function sub_c359febb(?) {
    require msg.sender == owner
    require arg2
    if sub_5be6405e[arg2].field_0:
        return 0
    sub_5be6405e[arg2].field_0 = 1
    sub_5be6405e[arg2].field_256 = arg1
    emit 0x95b3fb13: arg2
    return 1
}

function sub_5759157a(?) {
    require sha3(arg2) == arg1
    if bool(sub_5be6405e[arg1].field_0) != 1:
        return 0
    if sub_5be6405e[arg1].field_512:
        return 0
    sub_5be6405e[arg1].field_512 = arg2
    emit 0x89e03252: arg1
    return 1
}



}
