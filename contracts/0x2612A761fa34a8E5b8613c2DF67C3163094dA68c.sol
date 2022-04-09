contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    require code.data[1517 len 20]
    require code.data[1549 len 20]
    stor0 = code.data[1517 len 20]
    stor1 = code.data[1549 len 20]
    return code.data[277 len 1228]
}



// =====================  Runtime code  =====================


address multisigAddress;
address contributionAddress;

function multisig() {
    return multisigAddress
}

function contribution() {
    return contributionAddress
}

function _fallback() payable {
  stop
}

function refund(address arg1, uint256 arg2) {
    require msg.sender == contributionAddress
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function withdraw() {
    require msg.sender == multisigAddress
    require ext_code.size(contributionAddress)
    call contributionAddress.0xb8087ac0 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0]:
        call multisigAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
    else:
        if ext_code.size(contributionAddress):
            call contributionAddress.0x4084c3ab with:
                 gas gas_remaining - 710 wei
            if ext_call.success:
                if ext_call.return_data[0]:
                    call multisigAddress with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
    revert
}



}
