contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
address stor3;
address stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    create contract with 0 wei
                    code: code.data[2797 len 4283]
    require create.new_address
    stor4 = address(create.new_address)
    require not msg.value
    stor0 = msg.sender
    stor1 = 0x262c53e519ecd2d2bbaecc12f7a31847bd33b969
    stor3 = 0x262c53e519ecd2d2bbaecc12f7a31847bd33b969
    stor2 = 0
    stor8 = 100000000 * 10^18
    stor5 = 418296 * 24 * 3600
    stor6 = 128
    stor7 = 9500000 * 10^18
    return code.data[442 len 2355]
}



// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 stor2;
address stor3;
address tokenAddress;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 rate;

function rate() {
    return rate
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function setRate(uint256 arg1) {
    require msg.sender == owner
    rate = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function _fallback() payable {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] <= stor7
    require block.timestamp > stor5
    require block.timestamp < stor5 + (24 * 3600 * stor6)
    call stor1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if rate:
        require rate
        require rate * msg.value / rate == msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, rate * msg.value / 10^18
    require ext_call.success
}

function createTokens() payable {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] <= stor7
    require block.timestamp > stor5
    require block.timestamp < stor5 + (24 * 3600 * stor6)
    call stor1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if rate:
        require rate
        require rate * msg.value / rate == msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, rate * msg.value / 10^18
    require ext_call.success
}

function finishMinting() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_call.return_data[0]
        require ext_call.return_data[0] * stor2 / ext_call.return_data[0] == stor2
    require -stor2 + 100
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args stor3, ext_call.return_data[0] * stor2 / -stor2 + 100
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}



}
