contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    create contract with 0 wei
                    code: code.data[827 len 4267]
    require create.new_address
    stor1 = address(create.new_address)
    stor2 = 419585 * 3600
    stor3 = 28
    require not msg.value
    stor0 = msg.sender
    return code.data[222 len 605]
}



// =====================  Runtime code  =====================


address stor0;
address tokenAddress;
uint256 stor2;
uint256 stor3;

function token() {
    return tokenAddress
}

function _fallback() payable {
    require block.timestamp > stor2
    require block.timestamp < stor2 + (24 * 3600 * stor3)
    call stor0 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value
    require ext_call.success
}



}
