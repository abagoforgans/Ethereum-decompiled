contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
address stor2;

function _fallback() {
    stor0 = code.data[658 len 20]
    stor1 = code.data[678 len 32]
    stor2 = code.data[722 len 20]
    return code.data[113 len 533]
}



// =====================  Runtime code  =====================


address multisigAddress;
uint256 finalBlock;
address tokenSaleAddress;

function finalBlock() {
    return finalBlock
}

function multisig() {
    return multisigAddress
}

function tokenSale() {
    return tokenSaleAddress
}

function _fallback() payable {
  stop
}

function withdraw() {
    require multisigAddress == msg.sender
    if block.number > finalBlock:
        call multisigAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
    else:
        if ext_code.size(tokenSaleAddress):
            call tokenSaleAddress.0xa5f0dea2 with:
                 gas gas_remaining - 50 wei
            if ext_call.success:
                if not ext_call.return_data[0]:
                call multisigAddress with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
    revert 
}



}
