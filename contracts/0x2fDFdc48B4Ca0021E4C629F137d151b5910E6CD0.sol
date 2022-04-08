contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
address stor2;

function _fallback() {
    require code.data[759 len 20]
    require code.data[823 len 20]
    require code.data[779 len 32]
    require code.data[779 len 32] <= 4 * 10^6
    stor0 = code.data[759 len 20]
    stor1 = code.data[779 len 32]
    stor2 = code.data[823 len 20]
    return code.data[190 len 557]
}



// =====================  Runtime code  =====================


address multisigAddress;
uint256 endBlock;
address contributionAddress;

function endBlock() {
    return endBlock
}

function multisig() {
    return multisigAddress
}

function contribution() {
    return contributionAddress
}

function _fallback() payable {
  stop
}

function withdraw() {
    require multisigAddress == msg.sender
    if block.number > endBlock:
        call multisigAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
    else:
        if ext_code.size(contributionAddress):
            call contributionAddress.0x4084c3ab with:
                 gas gas_remaining - 710 wei
            if ext_call.success:
                require ext_call.return_data[0]
                call multisigAddress with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
    revert
}



}
