contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
address stor3;
address stor4;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[1253 len 20]
    stor4 = code.data[1349 len 20]
    stor3 = code.data[1285 len 20]
    stor2 = code.data[1305 len 32]
    return code.data[175 len 1066]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 tokenPerEth;
address buyerAddress;
address receiverAddress;

function tokenPerEth() {
    return tokenPerEth
}

function buyer() {
    return buyerAddress
}

function owner() {
    return owner
}

function receiver() {
    return receiverAddress
}

function token() {
    return tokenAddress
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function withdrawToken(uint256 arg1) {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, arg1
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function _fallback() payable {
    require buyerAddress == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, tokenPerEth * msg.value
    require ext_call.success
    call receiverAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    emit LogBought((tokenPerEth * msg.value));
}

function buy(address arg1) payable {
    require buyerAddress == arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), tokenPerEth * msg.value
    require ext_call.success
    call receiverAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    emit LogBought((tokenPerEth * msg.value));
}



}
