contract main {


// =======================  Init code  ======================


address stor0;
address stor3;
address stor4;

function _fallback() {
    stor0 = msg.sender
    stor0 = code.data[1791 len 20]
    stor3 = code.data[1823 len 20]
    stor4 = code.data[1855 len 20]
    return code.data[162 len 1617]
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
uint256 stor2;
address stor3;
address stor4;

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function _fallback() payable {
    revert
}

function acceptOwnership() {
    if newOwner == msg.sender:
        owner = newOwner
}

function changeOwner(address arg1) {
    require owner == msg.sender
    newOwner = arg1
}

function claimTokens(address arg1) {
    require owner == msg.sender
    require stor4 != arg1
    if not arg1:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
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
        emit ClaimedTokens(ext_call.return_data[0], arg1, owner);
}

function collectTokens() {
    require owner == msg.sender
    require ext_code.size(stor3)
    call stor3.0xfe67a189 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require 0 == stor2
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0] + (8640 * 24 * 3600) >= ext_call.return_data[0]
    require block.timestamp > ext_call.return_data[0] + (8640 * 24 * 3600)
    require ext_code.size(stor4)
    call stor4.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    stor2 = ext_call.return_data[0]
    require ext_code.size(stor4)
    call stor4.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    emit TokensWithdrawn(ext_call.return_data[0], owner);
}



}
