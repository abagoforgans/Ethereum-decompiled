contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;

function _fallback() payable {
    create contract with 0 wei
                    code: code.data[846 len 2546]
    require create.new_address
    stor2 = address(create.new_address)
    require not msg.value
    stor0 = msg.sender
    stor1 = 0x537870330ed90512ae44ff74961baffc088b7523
    stor7 = 40
    stor6 = 100 * 10^18
    stor3 = 416772 * 3600
    stor4 = 350
    stor5 = 20000
    return code.data[220 len 626]
}



// =====================  Runtime code  =====================


address owner;
address stor1;
address tokenAddress;

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function _fallback() payable {
    call stor1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, 10
    require ext_call.success
}

function createTokens() payable {
    call stor1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, 10
    require ext_call.success
}



}
