contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
address stor2;
uint128 stor3; offset 160
address stor3;
address stor4;

function _fallback() payable {
    stor0 = 1000 * 10^18
    stor1 = 0
    Mask(96, 0, stor3.field_160) = 0
    require not msg.value
    stor4 = msg.sender
    address(stor3.field_0) = code.data[1818 len 20]
    stor2 = code.data[1850 len 20]
    return code.data[312 len 1494]
}



// =====================  Runtime code  =====================


uint256 maxEther;
uint256 etherRaised;
address sPARCAddress;
uint8 stor3; offset 160
uint128 stor3; offset 160
address beneficiaryAddress;
address owner;

function maxEther() {
    return maxEther
}

function beneficiary() {
    return beneficiaryAddress
}

function SPARCAddress() {
    return sPARCAddress
}

function owner() {
    return owner
}

function funding() {
    return bool(uint8(stor3.field_160))
}

function etherRaised() {
    return etherRaised
}

function startSale() {
    require msg.sender == owner
    Mask(96, 0, stor3.field_160) = 1
}

function withdrawEther(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= eth.balance(this.address)
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require uint8(stor3.field_160)
    require etherRaised < maxEther
    require msg.value
    require etherRaised + msg.value <= maxEther
    etherRaised += msg.value
    require ext_code.size(sPARCAddress)
    call sPARCAddress.create(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, 20000 * msg.value
    require ext_call.success
    require ext_call.return_data[0]
}



}
