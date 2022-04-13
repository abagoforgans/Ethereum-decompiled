contract main {


// =======================  Init code  ======================


address stor0;
address stor3;
address stor4;

function _fallback() {
    stor0 = msg.sender
    stor0 = code.data[1921 len 20]
    stor3 = code.data[1953 len 20]
    stor4 = code.data[1985 len 20]
    return code.data[162 len 1747]
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
bool stor2; offset 255
uint256 stor2;
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
    require ext_code.size(stor4)
    call stor4.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] + uint256(stor2.field_0) >= uint256(stor2.field_0)
    require ext_code.size(stor3)
    call stor3.0xfe67a189 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0] + (4320 * 24 * 3600) >= ext_call.return_data[0]
    if block.timestamp > ext_call.return_data[0] + (4320 * 24 * 3600):
        require uint256(stor2.field_0) <= ext_call.return_data[0] + uint256(stor2.field_0)
        require ext_call.return_data[0] + uint256(stor2.field_0) >= uint256(stor2.field_0)
        uint256(stor2.field_0) += ext_call.return_data[0]
        require ext_code.size(stor4)
        call stor4.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args owner, ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        emit TokensWithdrawn(ext_call.return_data[0], owner);
    else:
        require uint256(stor2.field_0) <= ext_call.return_data[0] + uint256(stor2.field_0) / 2
        if (ext_call.return_data[0] + uint256(stor2.field_0) / 2) - uint256(stor2.field_0) > ext_call.return_data[0]:
            require ext_call.return_data[0] + uint256(stor2.field_0) >= uint256(stor2.field_0)
            uint256(stor2.field_0) += ext_call.return_data[0]
            require ext_code.size(stor4)
            call stor4.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args owner, ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            emit TokensWithdrawn(ext_call.return_data[0], owner);
        else:
            require ext_call.return_data[0] + uint256(stor2.field_0) / 2 >= uint256(stor2.field_0)
            uint255(stor2.field_0) = ext_call.return_data[0] + uint256(stor2.field_0) / 2
            bool(stor2.field_255) = 0
            require ext_code.size(stor4)
            call stor4.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args owner, (ext_call.return_data[0] + uint256(stor2.field_0) / 2) - uint256(stor2.field_0)
            require ext_call.success
            require ext_call.return_data[0]
            emit TokensWithdrawn(((ext_call.return_data[0] + uint256(stor2.field_0) / 2) - uint256(stor2.field_0)), owner);
}



}
