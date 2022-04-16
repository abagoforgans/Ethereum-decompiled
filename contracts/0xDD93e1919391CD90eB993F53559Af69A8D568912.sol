contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[4495 len 20]
    stor2 = stor1
    return code.data[287 len 4196]
}



// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;

function owner() {
    return owner
}

function die() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function withdrawFromContract(uint256 arg1) {
    require msg.sender == owner
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_16f529fd(?) {
    require msg.sender == owner
    require ext_code.size(stor2)
    call stor2.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function sub_aebb55bf(?) {
    require msg.sender == owner
    require ext_code.size(stor2)
    call stor2.0xd0e30db0 with:
       value arg1 wei
         gas gas_remaining - 9710 wei
    require ext_call.success
}

function sub_bb531246(?) {
    require msg.sender == owner
    require ext_code.size(stor2)
    call stor2.0x9e281a98 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function withdrawToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, arg2
    require ext_call.success
}

function sub_418f9ba9(?) {
    require ext_code.size(stor2)
    call stor2.balanceOf(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_5b15745a(?) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args stor1, arg2
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.0x338b5dea with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) {
    require msg.sender == owner
    require ext_code.size(stor2)
    call stor2.testTrade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11, address rg12) with:
         gas gas_remaining - 710 wei
        args 0, 0, uint32(arg2), address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10, arg11, this.address
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_code.size(stor2)
        call stor2.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
             gas gas_remaining - 710 wei
            args 0, 0, uint32(arg2), address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10, arg11
        require ext_call.success
}



}
