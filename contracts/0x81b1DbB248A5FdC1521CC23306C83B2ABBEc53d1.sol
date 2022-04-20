contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819
    stor1 = msg.sender
    return code.data[80 len 4533]
}



// =====================  Runtime code  =====================


#
#  - sub_2ebf89ba(?)
#
const myBalance = eth.balance(this.address)


address stor0;
address stor1;

function _fallback() payable {
  stop
}

function deposit() payable {
    require ext_code.size(stor0)
    call stor0.0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining - 9710 wei
    require ext_call.success
}

function claimAll() {
    require stor1 == msg.sender
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdraw(uint256 arg1) {
    require stor1 == msg.sender
    require ext_code.size(stor0)
    call stor0.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function sub_6c9f3349(?) {
    require ext_code.size(stor0)
    call stor0.balanceOf(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args 0, this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function withdrawToken(address arg1, uint256 arg2) {
    require stor1 == msg.sender
    require ext_code.size(stor0)
    call stor0.0x9e281a98 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function claimToken(address arg1, uint256 arg2) {
    require stor1 == msg.sender
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2
    require ext_call.success
    require ext_call.return_data[0]
}

function withdrawAndClaim(uint256 arg1) {
    require stor1 == msg.sender
    require ext_code.size(stor0)
    call stor0.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function availableVolume(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10) {
    require ext_code.size(stor0)
    call stor0.0xfb6e155f with:
         gas gas_remaining - 710 wei
        args 0, 0, uint32(arg2), address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10
    require ext_call.success
    return ext_call.return_data[0]
}



}
