contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[60 len 585]
}



// =====================  Runtime code  =====================


address _owner;

function get_owner() {
    return _owner
}

function _fallback() payable {
    revert
}

function change_owner(address arg1) {
    if _owner == msg.sender:
        _owner = arg1
}

function send(address arg1, uint256 arg2) {
    if _owner != msg.sender:
        return 0
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    return bool(ext_call.success)
}

function execute(address arg1, uint256 arg2, bytes arg3) {
    if _owner != msg.sender:
        return 0
    call arg1 with:
       value arg2 wei
         gas gas_remaining - 34710 wei
        args arg3[all]
    return bool(ext_call.success)
}



}
