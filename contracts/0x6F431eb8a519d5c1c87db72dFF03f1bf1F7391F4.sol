contract main {


// =======================  Init code  ======================


address stor0;
address stor2;

function _fallback() {
    stor0 = msg.sender
    create contract with 0 wei
                    code: code.data[5519 len 3658]
    require create.new_address
    stor2 = address(create.new_address)
    return code.data[173 len 5346]
}



// =====================  Runtime code  =====================


address owner;
address pendingOwner;
address tokenAddress;
mapping of uint256 stor3;
array of address stor4;

function getTokenAddress() {
    return tokenAddress
}

function owner() {
    return owner
}

function getMemberCount() {
    return stor4.length
}

function pendingOwner() {
    return pendingOwner
}

function token() {
    return tokenAddress
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    pendingOwner = arg1
}

function claimOwnership() {
    require pendingOwner == msg.sender
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function sub_a4332313(?) {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function reclaimToken(address arg1) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
}

function sub_2b485e9c(?) {
    require not stor3[address(msg.sender)]
    stor3[address(msg.sender)] = block.timestamp
    stor4.length++
    if not stor4.length <= stor4.length + 1:
        idx = stor4.length + 1
        while stor4.length > idx:
            uint256(stor4[idx]) = 0
            idx = idx + 1
            continue 
    address(stor4[stor4.length]) = msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, 1
    require ext_call.success
    emit TokenClaimed(block.timestamp, msg.sender);
    return 1
}



}
