contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
address stor3;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[1240 len 20]
    stor2 = code.data[1260 len 32]
    stor3 = code.data[1304 len 20]
    return code.data[145 len 1083]
}



// =====================  Runtime code  =====================


address owner;
address beneficiaryAddress;
uint256 finalBlock;
address tokenSaleAddress;

function finalBlock() {
    return finalBlock
}

function beneficiary() {
    return beneficiaryAddress
}

function owner() {
    return owner
}

function tokenSale() {
    return tokenSaleAddress
}

function _fallback() payable {
  stop
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function reclaimToken(address arg1) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
}

function withdraw() {
    require beneficiaryAddress == msg.sender
    if block.number > finalBlock:
        call beneficiaryAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        require ext_code.size(tokenSaleAddress)
        call tokenSaleAddress.0xa5f0dea2 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if ext_call.return_data[0]:
            call beneficiaryAddress with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
}



}
