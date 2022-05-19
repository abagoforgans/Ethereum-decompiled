contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;

function _fallback() {
    stor0 = 0x5b0751713b2527d7f002c0c4e2a37e1219610a6b
    stor1 = 0xf783a81f046448c38f3c863885d9e99d10209779
    stor3 = 0x1f92771237bd5eae04e91b4b6f1d1a78d41565a2
    stor4 = 0x44935883932b0260c6b1018cf6436650bd52a257
    stor2 = msg.sender
    return code.data[183 len 1448]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;
uint8 stor4; offset 160
uint8 stor4; offset 168
uint128 stor4; offset 160
address stor4;
uint256 payoutPoolAmount;
mapping of uint8 stor6;

function hasClaimed(address arg1) {
    return bool(stor6[arg1])
}

function payoutPoolAmount() {
    return payoutPoolAmount
}

function _fallback() payable {
    revert
}

function payoutControlSwitch(bool arg1) {
    require stor2 == msg.sender
    Mask(96, 0, stor4.field_160) = Mask(96, 0, arg1)
}

function setupPayout() payable {
    require not uint8(stor4.field_168)
    require stor1 == msg.sender
    payoutPoolAmount = msg.value
    uint8(stor4.field_168) = 1
}

function extractFund(uint256 arg1) {
    require stor2 == msg.sender
    if not arg1:
        call stor2 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    else:
        require arg1 <= eth.balance(this.address)
        call stor2 with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
}

function getTokenBalance() {
    require not uint8(stor4.field_160)
    require ext_code.size(stor0)
    if stor3 != msg.sender:
        call stor0.0x70a08231 with:
             gas gas_remaining wei
            args msg.sender
    else:
        call stor0.0x70a08231 with:
             gas gas_remaining wei
            args address(stor4.field_0)
    require ext_call.success
    return ext_call.return_data[0]
}

function getRewardEstimate() {
    require not uint8(stor4.field_160)
    require ext_code.size(stor0)
    if stor3 != msg.sender:
        call stor0.0x70a08231 with:
             gas gas_remaining wei
            args msg.sender
    else:
        call stor0.0x70a08231 with:
             gas gas_remaining wei
            args address(stor4.field_0)
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0x18160ddd with:
         gas gas_remaining wei
    require ext_call.success
    require ext_call.return_data[0]
    return (payoutPoolAmount * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10^18)
}

function claim() {
    require not uint8(stor4.field_160)
    require not stor6[address(msg.sender)]
    require not uint8(stor4.field_160)
    require ext_code.size(stor0)
    if stor3 != msg.sender:
        call stor0.0x70a08231 with:
             gas gas_remaining wei
            args msg.sender
    else:
        call stor0.0x70a08231 with:
             gas gas_remaining wei
            args address(stor4.field_0)
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0x18160ddd with:
         gas gas_remaining wei
    require ext_call.success
    require ext_call.return_data[0]
    stor6[address(msg.sender)] = 1
    require payoutPoolAmount * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10^18 <= eth.balance(this.address)
    call msg.sender with:
       value payoutPoolAmount * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10^18 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
