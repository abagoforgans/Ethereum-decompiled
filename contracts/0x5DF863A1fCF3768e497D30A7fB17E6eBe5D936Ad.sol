contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    create contract with 0 wei
                    code: code.data[1520 len 3441]
    require create.new_address
    stor3 = address(create.new_address)
    require not msg.value
    stor0 = msg.sender
    stor1 = 0x70dafbedc0bdf81ea895c8f1953a589c33f51f91
    stor2 = 40
    stor6 = 100 * 10^18
    stor4 = 1509498061
    stor5 = 40
    return code.data[337 len 1183]
}



// =====================  Runtime code  =====================


address owner;
address stor1;
address tokenAddress;
uint256 stor4;
uint256 stor5;
uint256 stor6;

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function _fallback() payable {
    require block.timestamp > stor4
    require block.timestamp < stor4 + (24 * 3600 * stor5)
    if stor6:
        require stor6
        require stor6 * msg.value / stor6 == msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, stor6 * msg.value / 10^18
    require ext_call.success
    call stor1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function createTokens() payable {
    require block.timestamp > stor4
    require block.timestamp < stor4 + (24 * 3600 * stor5)
    if stor6:
        require stor6
        require stor6 * msg.value / stor6 == msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, stor6 * msg.value / 10^18
    require ext_call.success
    call stor1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
