contract main {


// =======================  Init code  ======================


uint256 stor2;
address stor3;

function _fallback() payable {
    stor2 = 0
    require not msg.value
    stor3 = 0x5241beb93854f28dfc6779874622492bcc29e9f8
    return code.data[122 len 713]
}



// =====================  Runtime code  =====================


mapping of uint8 stor0;
uint256 numberOfContributors;
uint256 raised;
address stor3;

function numberOfContributors() {
    return numberOfContributors
}

function raised() {
    return raised
}

function buyTokens(address arg1) payable {
    require msg.value > 0
    raised += msg.value
    require ext_code.size(stor3)
    call stor3.0xec8ac4d8 with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args arg1
    require ext_call.success
    if not stor0[address(arg1)]:
        stor0[address(arg1)] = 1
        numberOfContributors++
}

function _fallback() payable {
    require msg.value > 0
    raised += msg.value
    require ext_code.size(stor3)
    call stor3.0xec8ac4d8 with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender
    require ext_call.success
    if not stor0[address(msg.sender)]:
        stor0[address(msg.sender)] = 1
        numberOfContributors++
}



}
