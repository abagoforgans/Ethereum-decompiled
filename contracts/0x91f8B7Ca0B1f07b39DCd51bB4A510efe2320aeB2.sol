contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor10;

function _fallback() payable {
    create contract with 0 wei
                    code: code.data[1954 len 4455]
    require create.new_address
    stor1 = address(create.new_address)
    stor0 = msg.sender
    stor5 = 0x1a74fa96a1bac3c2af3f31058f02b0471bfe71f4
    stor6 = 1000
    stor7 = 10000 * 10^18
    stor2 = 1503448000
    stor3 = 30
    stor4 = 7
    stor10 = 200
    return code.data[348 len 1606]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
uint256 stor6;
uint256 stor7;

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

function finishMinting() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function _fallback() payable {
    require eth.balance(stor5) <= stor6
    require block.timestamp < stor2 + (24 * 3600 * stor3)
    call stor5 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if stor7:
        require stor7
        require stor7 * msg.value / stor7 == msg.value
    require ext_code.size(tokenAddress)
    if block.timestamp >= stor2 + (24 * 3600 * stor4):
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, stor7 * msg.value / 10^18
    else:
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, (stor7 * msg.value / 10^18) + (stor7 * msg.value / 10^18 / 5)
    require ext_call.success
}

function createTokens() payable {
    require eth.balance(stor5) <= stor6
    require block.timestamp < stor2 + (24 * 3600 * stor3)
    call stor5 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if stor7:
        require stor7
        require stor7 * msg.value / stor7 == msg.value
    require ext_code.size(tokenAddress)
    if block.timestamp >= stor2 + (24 * 3600 * stor4):
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, stor7 * msg.value / 10^18
    else:
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, (stor7 * msg.value / 10^18) + (stor7 * msg.value / 10^18 / 5)
    require ext_call.success
}



}
