contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint8 stor4; offset 160
address stor4;

function _fallback() {
    stor0 = code.data[860 len 20]
    stor1 = code.data[912 len 32]
    address(stor4.field_0) = code.data[892 len 20]
    uint8(stor4.field_160) = 0
    stor2 = 0
    stor3 = code.data[944 len 32]
    return code.data[140 len 708]
}



// =====================  Runtime code  =====================


address stor0;
uint256 available;
uint256 amountRaised;
uint256 price;
uint8 stor4; offset 160
address stor4;

function available() {
    return available
}

function amountRaised() {
    return amountRaised
}

function price() {
    return price
}

function sub_85d8d4e0(?) {
    uint8(stor4.field_160) = 1
}

function claimFunding() {
    call stor0 with:
       value amountRaised wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    amountRaised = 0
}

function _fallback() payable {
    require not uint8(stor4.field_160)
    require price
    amountRaised += msg.value
    require msg.value / price <= available
    require ext_code.size(address(stor4.field_0))
    call address(stor4.field_0).0x23b872dd with:
         gas gas_remaining - 710 wei
        args stor0, msg.sender, msg.value / price
    require ext_call.success
    available -= msg.value / price
}



}
