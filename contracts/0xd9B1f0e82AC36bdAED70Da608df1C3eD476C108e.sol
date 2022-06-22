contract main {




// =====================  Runtime code  =====================


const owner = 0x65b0bf8ee4947edd2a500d74e50a3d757dc79de0


address spenderAddress;

function spender() {
    return spenderAddress
}

function _fallback() payable {
  stop
}

function setSpender(address arg1) {
    require 0x65b0bf8ee4947edd2a500d74e50a3d757dc79de0 == msg.sender
    spenderAddress = arg1
}

function send(address arg1, uint256 arg2) {
    require msg.sender == spenderAddress
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sendTokens(address arg1, address arg2, uint256 arg3) {
    require msg.sender == spenderAddress
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
