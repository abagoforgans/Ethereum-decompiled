contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = msg.sender
    stor1 = msg.sender
    require not msg.value
    return code.data[68 len 538]
}



// =====================  Runtime code  =====================


address stor0;
address beneficiaryAddress;

function beneficiary() {
    return beneficiaryAddress
}

function fee() payable {
  stop
}

function _fallback() {
    revert 
}

function setOwner(address arg1) {
    require stor0 == msg.sender
    require arg1
    stor0 = arg1
}

function setBeneficiary(address arg1) {
    require stor0 == msg.sender
    beneficiaryAddress = arg1
}

function withdraw() {
    require beneficiaryAddress == msg.sender
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas gas_remaining - 34050 wei
    return bool(ext_call.success)
}



}
