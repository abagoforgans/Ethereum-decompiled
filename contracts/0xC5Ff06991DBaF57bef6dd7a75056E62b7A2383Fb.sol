contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor1 = 0x228344536a03c0910fb8be9c2755c1a0ba6f89e1
    stor0 = msg.sender
    return code.data[87 len 3723]
}



// =====================  Runtime code  =====================


#
#  - sub_a5243f51(?)
#
address owner;
address stor1;

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function setEtherDelta(address arg1) {
    require owner == msg.sender
    stor1 = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(uint256 arg1) {
    require owner == msg.sender
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_d9209129(?) {
    require owner == msg.sender
    require ext_code.size(stor1)
    call stor1.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function sub_1d96a0a8(?) {
    require owner == msg.sender
    require ext_code.size(stor1)
    call stor1.0xd0e30db0 with:
       value arg1 wei
         gas gas_remaining - 9710 wei
    require ext_call.success
}

function sub_b494d015(?) {
    require owner == msg.sender
    require ext_code.size(stor1)
    call stor1.0x9e281a98 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function withdrawToken(address arg1, uint256 arg2) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2
    require ext_call.success
}

function sub_adf377eb(?) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args stor1, arg2
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_code.size(stor1)
        call stor1.depositToken(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args address(arg1), arg2
        require ext_call.success
}



}
