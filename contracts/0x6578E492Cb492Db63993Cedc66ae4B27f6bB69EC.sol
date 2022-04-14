contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint8 stor2;
address stor2; offset 8

function _fallback() payable {
    stor0 = 0xf40c33f705b2af0e101f7e1c8577cbafd9c975b7
    stor1 = 3000
    uint8(stor2.field_0) = 1
    require not msg.value
    address(stor2.field_8) = msg.sender
    return code.data[127 len 1053]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint256 tokensPerWei;
uint8 crowdSaleStatus;
address stor2;
address owner; offset 8
uint256 stor3;

function tokensPerWei() {
    return tokensPerWei
}

function owner() {
    return owner
}

function crowdSaleStatus() {
    require crowdSaleStatus <= 1
    return crowdSaleStatus
}

function token() {
    return tokenAddress
}

function sub_20582f8f(?) {
    require owner == msg.sender
    tokensPerWei = arg1
    require arg2 <= 1
    crowdSaleStatus = arg2
}

function isCrowdSaleClosed() {
    require crowdSaleStatus <= 1
    if crowdSaleStatus:
        if tokensPerWei:
            return 0
    return 1
}

function _fallback() payable {
    require crowdSaleStatus <= 1
    require crowdSaleStatus
    require tokensPerWei
    if msg.value:
        require msg.value
        require tokensPerWei * msg.value / msg.value == tokensPerWei
    stor3 = tokensPerWei * msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args stor2, msg.sender, tokensPerWei * msg.value
    require ext_call.success
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    emit TokenTransfer(msg.sender, msg.value, stor3);
}

function contribute() payable {
    require crowdSaleStatus <= 1
    require crowdSaleStatus
    require tokensPerWei
    if msg.value:
        require msg.value
        require tokensPerWei * msg.value / msg.value == tokensPerWei
    stor3 = tokensPerWei * msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args stor2, msg.sender, tokensPerWei * msg.value
    require ext_call.success
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    emit TokenTransfer(msg.sender, msg.value, stor3);
}



}
