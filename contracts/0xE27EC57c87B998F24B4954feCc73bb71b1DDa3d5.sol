contract main {


// =======================  Init code  ======================


uint8 stor0;
uint256 stor0; offset 8

function _fallback() payable {
    Mask(248, 0, stor0.field_8) = Mask(248, 0, msg.sender)
    uint8(stor0.field_0) = 0
    return code.data[88 len 2134]
}



// =====================  Runtime code  =====================


uint8 sub_cb18c37c;
address authorityAddress; offset 8
uint256 stor0; offset 8
uint256 stor0;
address tradersAddress;
uint256 stor1;
address totalsAddress;
uint256 stor2;

function authority() {
    return authorityAddress
}

function totals() {
    return address(totalsAddress)
}

function sub_cb18c37c(?) {
    return sub_cb18c37c
}

function traders() {
    return address(tradersAddress)
}

function _fallback() payable {
    revert 
}

function allowance(address arg1, address arg2) {
    revert 
}

function approve(address arg1, address arg2, uint256 arg3) {
    revert 
}

function transfer(address arg1, address arg2, uint256 arg3) {
    revert 
}

function transferFrom(address arg1, address arg2, address arg3, uint256 arg4) {
    revert 
}

function totalSupply() {
    require ext_code.size(address(totalsAddress))
    call address(totalsAddress).0x32454dbb with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return ext_call.return_data[28 len 4]
}

function balanceOf(address arg1) {
    require ext_code.size(address(tradersAddress))
    call address(tradersAddress).coinBalance(address rg1) with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[28 len 4]
}

function setTotalsContract(address arg1) {
    if not sub_cb18c37c:
        require msg.sender == authorityAddress
    else:
        require sub_cb18c37c == 1
        require ext_code.size(authorityAddress)
        call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
             gas gas_remaining - 50 wei
            args msg.sender, address(this.address), call.func_hash
        require ext_call.success
        require ext_call.return_data[0]
    uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
}

function setTradersContract(address arg1) {
    if not sub_cb18c37c:
        require msg.sender == authorityAddress
    else:
        require sub_cb18c37c == 1
        require ext_code.size(authorityAddress)
        call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
             gas gas_remaining - 50 wei
            args msg.sender, address(this.address), call.func_hash
        require ext_call.success
        require ext_call.return_data[0]
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function sub_71a7a792(?) {
    if not sub_cb18c37c:
        require msg.sender == authorityAddress
    else:
        require sub_cb18c37c == 1
        require ext_code.size(authorityAddress)
        call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
             gas gas_remaining - 50 wei
            args msg.sender, address(this.address), call.func_hash
        require ext_call.success
        require ext_call.return_data[0]
    Mask(248, 0, stor0.field_8) = Mask(248, 0, arg1)
    uint256(stor0.field_0) = arg2 or Mask(248, 8, uint256(stor0.field_0))
}



}
