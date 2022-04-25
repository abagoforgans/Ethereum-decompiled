contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint8 stor4;

function _fallback() payable {
    stor4 = 0
    require not msg.value
    stor0 = msg.sender
    require code.data[1297 len 32] > block.timestamp
    stor1 = code.data[1245 len 20]
    stor2 = code.data[1277 len 20]
    stor3 = code.data[1297 len 32]
    return code.data[176 len 1057]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
address beneficiaryAddress;
uint256 releaseTime;
uint8 stor4;

function beneficiary() {
    return beneficiaryAddress
}

function kycValid() {
    return bool(stor4)
}

function owner() {
    return owner
}

function releaseTime() {
    return releaseTime
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function setValidKYC(bool arg1) {
    require owner == msg.sender
    stor4 = uint8(arg1)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function release() {
    require block.timestamp >= releaseTime
    require stor4
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args beneficiaryAddress, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
}



}
