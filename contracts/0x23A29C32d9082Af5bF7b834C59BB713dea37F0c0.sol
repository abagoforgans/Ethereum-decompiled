contract main {




// =====================  Runtime code  =====================


#
#  - sub_5eb48e75(?)
#  - sub_86533ffe(?)
#  - sub_bd390b54(?)
#  - sub_be06161d(?)
#
address owner;
mapping of uint8 stor1;
address stor2;
address stor6;

function owner() {
    return owner
}

function authorized(address arg1) {
    return bool(stor1[arg1])
}

function _fallback() payable {
  stop
}

function addAuthorized(address arg1) {
    require msg.sender == owner
    require arg1
    stor1[address(arg1)] = 1
}

function removeAuthorized(address arg1) {
    require msg.sender == owner
    require arg1
    require arg1 != msg.sender
    stor1[address(arg1)] = 0
}

function changeOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    require owner != arg1
    emit OwnershipChanged(owner, arg1);
    owner = arg1
    return 1
}

function reclaimEther() {
    if not stor1[msg.sender]:
        require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function storeGas(uint256 arg1) {
    if not stor1[msg.sender]:
        require msg.sender == owner
    require ext_code.size(stor6)
    call stor6.mint(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c1c734db(?) {
    if not stor1[msg.sender]:
        require msg.sender == owner
    require ext_code.size(stor2)
    call stor2.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}



}
