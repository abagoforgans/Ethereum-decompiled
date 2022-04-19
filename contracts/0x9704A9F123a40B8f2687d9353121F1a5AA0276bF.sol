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
                    code: code.data[2480 len 4267]
    require create.new_address
    stor4 = address(create.new_address)
    require not msg.value
    stor0 = msg.sender
    stor1 = 0xeff83189082e8c5f9698286ed860a30790e5d726
    stor3 = 0xeff83189082e8c5f9698286ed860a30790e5d726
    stor2 = 0
    stor8 = 3000 * 10^18
    stor5 = 419196 * 3600
    stor6 = 28
    stor7 = 10000 * 10^18
    return code.data[439 len 2041]
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
uint256 stor8;

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
    require eth.balance(stor1) <= stor7
    require block.timestamp > stor5
    require block.timestamp < stor5 + (24 * 3600 * stor6)
    call stor1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if stor8:
        require stor8
        require stor8 * msg.value / stor8 == msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, stor8 * msg.value / 10^18
    require ext_call.success
}

function createTokens() payable {
    require eth.balance(stor1) <= stor7
    require block.timestamp > stor5
    require block.timestamp < stor5 + (24 * 3600 * stor6)
    call stor1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if stor8:
        require stor8
        require stor8 * msg.value / stor8 == msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, stor8 * msg.value / 10^18
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
