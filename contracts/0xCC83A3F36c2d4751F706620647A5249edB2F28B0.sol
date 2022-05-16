contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;

function _fallback() {
    stor0 = msg.sender
    require code.data[2250 len 20]
    require code.data[2270 len 32] >= block.timestamp
    stor1 = code.data[2250 len 20]
    stor2 = code.data[2270 len 32]
    return code.data[280 len 1958]
}



// =====================  Runtime code  =====================


const tokenFallback(address arg1, uint256 arg2, bytes arg3) = 1


address owner;
address beneficiaryAddress;
uint256 vestedDate;
mapping of uint256 released;

function beneficiary() {
    return beneficiaryAddress
}

function vestedDate() {
    return vestedDate
}

function owner() {
    return owner
}

function released(address arg1) {
    return released[arg1]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function release(address arg1) {
    require block.timestamp >= vestedDate
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    require released[address(arg1)] + ext_call.return_data[0] >= released[address(arg1)]
    released[address(arg1)] += ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args beneficiaryAddress, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    emit Released(ext_call.return_data[0], block.timestamp);
}



}
