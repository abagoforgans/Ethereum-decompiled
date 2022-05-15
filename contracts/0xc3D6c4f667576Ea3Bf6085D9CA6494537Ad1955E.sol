contract main {




// =====================  Runtime code  =====================


address nonFungibleContractAddress;
uint256 ownerCut;
mapping of struct auction;
address beneficiaryAddress;

function beneficiary() {
    return beneficiaryAddress
}

function getAuction(uint256 arg1) {
    return auction[arg1].field_0, auction[arg1].field_256
}

function ownerCut() {
    return ownerCut
}

function nonFungibleContract() {
    return nonFungibleContractAddress
}

function _fallback() payable {
    revert
}

function withdrawBalance() {
    require msg.sender == nonFungibleContractAddress
    call nonFungibleContractAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function createAuction(uint256 arg1, uint256 arg2, address arg3) {
    require ext_code.size(nonFungibleContractAddress)
    call nonFungibleContractAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(arg3), address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    auction[arg1].field_0 = arg3
    auction[arg1].field_256 = arg2
    emit AuctionCreated(arg1, arg2);
}

function bidCustomAuction(uint256 arg1, uint256 arg2, address arg3) payable {
    require arg2 >= auction[arg1].field_256
    auction[arg1].field_0 = 0
    auction[arg1].field_256 = 0
    emit AuctionSuccessful(arg1, auction[arg1].field_256, msg.sender);
    require ext_code.size(nonFungibleContractAddress)
    call nonFungibleContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function bid(uint256 arg1) payable {
    require msg.value >= auction[arg1].field_256
    auction[arg1].field_0 = 0
    auction[arg1].field_256 = 0
    emit AuctionSuccessful(arg1, auction[arg1].field_256, msg.sender);
    require ext_code.size(nonFungibleContractAddress)
    call nonFungibleContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call auction[arg1].field_0 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
