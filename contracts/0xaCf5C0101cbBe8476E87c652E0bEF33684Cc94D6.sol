contract main {




// =====================  Runtime code  =====================


address owner;
address nominatedOwner;
uint8 stor2; offset 160
uint128 stor2; offset 160
address targetAddress;
uint256 stor2;

function nominatedOwner() {
    return nominatedOwner
}

function owner() {
    return owner
}

function useDELEGATECALL() {
    return bool(uint8(stor2.field_160))
}

function target() {
    return targetAddress
}

function setUseDELEGATECALL(bool arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may perform this action'
    Mask(96, 0, stor2.field_160) = Mask(96, 0, arg1)
}

function nominateNewOwner(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may perform this action'
    nominatedOwner = arg1
    emit OwnerNominated(arg1);
}

function acceptOwnership() {
    if nominatedOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You must be nominated before you can accept ownership'
    emit OwnerChanged(owner, nominatedOwner);
    owner = nominatedOwner
    nominatedOwner = 0
}

function unvest(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, bool arg6) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may perform this action'
    targetAddress = address(arg1)
    emit TargetUpdated(address(arg1));
}

function _emit(bytes arg1, uint256 arg2, bytes32 arg3, bytes32 arg4, bytes32 arg5, bytes32 arg6) {
    if targetAddress != msg.sender:
        revert with 0, 'Must be proxy target'
    if not arg2:
    else:
        if arg2 == 1:
            emit arg3: arg1[all]
        else:
            if arg2 == 2:
                emit arg3: arg1[all], arg4
            else:
                if arg2 == 3:
                    emit arg3: arg1[all], arg4, arg5
                else:
                    if arg2 == 4:
                        emit arg3: arg1[all], arg4, arg5, arg6
}

function _fallback() payable {
    if uint8(stor2.field_160):
        delegate uint256(stor2.field_0) with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(targetAddress)
        call targetAddress.setMessageSender(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call uint256(stor2.field_0) with:
           funct call.data[0 len 4]
           value msg.value wei
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
    return ext_call.return_data[0 len return_data.size]
}



}
