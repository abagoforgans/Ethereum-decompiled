contract main {




// =====================  Runtime code  =====================


uint256 version;
address owner;

function version() {
    return version
}

function owner() {
    return owner
}

function destroyContract() {
    if msg.sender == owner:
        selfdestruct(owner)
}

function _fallback() payable {
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function execute(address arg1, uint256 arg2, bytes arg3) {
    require msg.sender == owner
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
        args arg3[all]
    require ext_call.success
    return 0
}



}
