contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
    stor0 = msg.sender
    stor1 = code.data[1247 len 20]
    stor2 = msg.sender
    return code.data[110 len 1125]
}



// =====================  Runtime code  =====================


address stor0;
address tokenAddress;
address whitelistedAddress;
mapping of uint256 sub_212ce365;

function sub_212ce365(?) {
    return sub_212ce365[arg1]
}

function whitelisted() {
    return whitelistedAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert 
}

function setWhitelist(address arg1) {
    if stor0 == msg.sender:
        whitelistedAddress = arg1
}

function withdraw() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args msg.sender, sub_212ce365[address(msg.sender)]
    require ext_call.success
    require ext_call.return_data[0]
    sub_212ce365[address(msg.sender)] = 0
}

function withdrawFor(address arg1) {
    require whitelistedAddress == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args address(arg1), sub_212ce365[address(arg1)]
    require ext_call.success
    require ext_call.return_data[0]
    sub_212ce365[address(arg1)] = 0
}

function buyFor(address arg1) payable {
    require whitelistedAddress == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    call tokenAddress with:
       value msg.value wei
         gas 100000 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] <= ext_call.return_data[0]
    require sub_212ce365[address(arg1)] >= sub_212ce365[address(arg1)]
    require sub_212ce365[address(arg1)] >= 0
}



}
