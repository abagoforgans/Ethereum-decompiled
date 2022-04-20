contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
address stor3;
address stor4;

function _fallback() {
    stor0 = msg.sender
    require code.data[1895 len 20]
    require code.data[1927 len 20]
    require code.data[1959 len 20]
    stor2 = code.data[1895 len 20]
    stor3 = code.data[1927 len 20]
    stor4 = code.data[1959 len 20]
    return code.data[238 len 1645]
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
address formulaAddress;
address gasPriceLimitAddress;
address quickConverterAddress;

function formula() {
    return formulaAddress
}

function owner() {
    return owner
}

function gasPriceLimit() {
    return gasPriceLimitAddress
}

function quickConverter() {
    return quickConverterAddress
}

function newOwner() {
    return newOwner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require owner != arg1
    newOwner = arg1
}

function acceptOwnership() {
    require newOwner == msg.sender
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function setFormula(address arg1) {
    require owner == msg.sender
    require arg1
    require arg1 != this.address
    formulaAddress = arg1
}

function setGasPriceLimit(address arg1) {
    require owner == msg.sender
    require arg1
    require arg1 != this.address
    gasPriceLimitAddress = arg1
}

function setQuickConverter(address arg1) {
    require owner == msg.sender
    require arg1
    require arg1 != this.address
    quickConverterAddress = arg1
}

function withdrawTokens(address arg1, address arg2, uint256 arg3) {
    require owner == msg.sender
    require arg1
    require arg2
    require arg2 != this.address
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    require ext_call.return_data[0]
}



}
