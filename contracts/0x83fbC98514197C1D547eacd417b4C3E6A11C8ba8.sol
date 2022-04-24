contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    if not stor0:
        stor0 = msg.sender
        stor1 = 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819
    return code.data[110 len 4335]
}



// =====================  Runtime code  =====================


#
#  - sub_dbf924e7(?)
#
address stor0;
address stor1;

function kill() {
    if stor0 != msg.sender:
    require ext_code.size(stor1)
    call stor1.balanceOf(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args 0, this.address
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.withdraw(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function testFee(uint256 arg1) {
    if arg1:
        require arg1
        require 3 * 10^15 * arg1 / arg1 == 3 * 10^15
    return (3 * 10^15 * arg1 / 10^18)
}

function deposit() payable {
    require ext_code.size(stor1)
    call stor1.0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining - 9710 wei
    require ext_call.success
}

function sub_f9c5598f(?) {
    if stor0 == msg.sender:
        require ext_code.size(stor1)
        call stor1.balanceOf(address rg1, address rg2) with:
             gas gas_remaining - 710 wei
            args 0, this.address
        require ext_call.success
        require ext_code.size(stor1)
        call stor1.withdraw(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0]
        require ext_call.success
        call msg.sender with:
           value ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
}

function sub_9f14f058(?) {
    if stor0 == msg.sender:
        require ext_code.size(stor1)
        call stor1.balanceOf(address rg1, address rg2) with:
             gas gas_remaining - 710 wei
            args address(arg1), this.address
        require ext_call.success
        require ext_code.size(stor1)
        call stor1.withdrawToken(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args address(arg1), ext_call.return_data[0]
        require ext_call.success
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, ext_call.return_data[0]
        require ext_call.success
}



}
