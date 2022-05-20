contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
uint8 stor1; offset 160
address nonFungibleContractAddress;
address backendAddress;
address ownerAddress;

function sub_0c61ad4e(?) {
    return bool(stor1)
}

function backendAddress() {
    return backendAddress
}

function paused() {
    return bool(stor0)
}

function owner() {
    return owner
}

function ownerAddress() {
    return ownerAddress
}

function nonFungibleContract() {
    return nonFungibleContractAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function setTokenContract(address arg1) {
    require msg.sender == owner
    nonFungibleContractAddress = arg1
}

function unpause() {
    require msg.sender == owner
    require stor0
    stor0 = 0
    emit Unpause()
    return 1
}

function pause() {
    require msg.sender == owner
    require not stor0
    stor0 = 1
    emit Pause()
    return 1
}

function sub_5ddd7e41(?) payable {
    require msg.sender == nonFungibleContractAddress
    require not stor0
    require arg2 > 0
    require arg3 > 0
    require arg4 > 0
    require arg1
    return 0
}

function withdrawBalance() {
    if ownerAddress != msg.sender:
        require nonFungibleContractAddress == msg.sender
    call nonFungibleContractAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8e733951(?) {
    require msg.sender == nonFungibleContractAddress
    require arg2 > 0
    require arg3 > 0
    require arg4 > 0
    require arg1
    require ext_code.size(nonFungibleContractAddress)
    call nonFungibleContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        return 0
}

function sub_0b0b39ee(?) {
    require msg.sender == nonFungibleContractAddress
    require backendAddress == arg1
    require arg2 > 0
    require arg3 > 0
    require arg4 > 0
    require arg1
    require ext_code.size(nonFungibleContractAddress)
    call nonFungibleContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return arg2, arg3, arg4
}



}
