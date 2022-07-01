contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct heldTokens;
address icoContractAddress;
address tokenContractAddress;
address transferAgentAddress;
uint256 expiry;

function tokenContract() {
    return tokenContractAddress
}

function transferAgent() {
    return transferAgentAddress
}

function owner() {
    return owner
}

function icoContract() {
    return icoContractAddress
}

function heldTokens(address arg1) {
    require calldata.size - 4 >= 32
    return heldTokens[arg1].field_0, heldTokens[arg1].field_256, bool(heldTokens[arg1].field_512)
}

function expiry() {
    return expiry
}

function _fallback() payable {
    revert
}

function isExistingHolding(address arg1) {
    require calldata.size - 4 >= 32
    if heldTokens[address(arg1)].field_0:
        return not not heldTokens[address(arg1)].field_0
    return not not heldTokens[address(arg1)].field_256
}

function setExpiry(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must be issuer/owner to execute this function.'
    expiry = arg1
}

function setTransferAgent(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must be issuer/owner to execute this function.'
    transferAgentAddress = arg1
}

function setTokenContract(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must be issuer/owner to execute this function.'
    tokenContractAddress = arg1
}

function sub_6dfe789a(?) {
    require calldata.size - 4 >= 32
    if heldTokens[address(arg1)].field_256:
        if heldTokens[address(arg1)].field_0:
            return (block.timestamp > heldTokens[address(arg1)].field_256)
        else:
            return 0
    else:
        return 0
}

function setAffiliate(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if transferAgentAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You must be the Transfer Agent to execute this function.'
    if not arg1:
        revert with 0, 'The null address cannot be used.'
    if bool(heldTokens[address(arg1)].field_512) == arg2:
        revert with 0, 'Attempt to set the same affiliate status that is already set.'
    heldTokens[address(arg1)].field_512 = uint8(arg2)
    emit AffiliateStatusChanged(address(arg1), arg2);
    return 1
}

function sub_1251a899(?) {
    require calldata.size - 4 >= 64
    if transferAgentAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You must be the Transfer Agent to execute this function.'
    if not arg2:
        revert with 0, 'Time added cannot be zero.'
    if arg2 < 0:
        require -arg2 <= heldTokens[address(arg1)].field_256
    else:
        require heldTokens[address(arg1)].field_256 + arg2 >= heldTokens[address(arg1)].field_256
    heldTokens[address(arg1)].field_256 += arg2
    heldTokens[address(arg1)].field_512 = uint8(bool(heldTokens[address(arg1)].field_512))
    emit 0x2d797cdf: address(arg1), heldTokens[address(arg1)].field_256, heldTokens[address(arg1)].field_256
    return 1
}

function hold(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must be issuer/owner to execute this function.'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The null address cannot own tokens.'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Quantity must be greater than zero.'
    if heldTokens[address(arg1)].field_0:
        revert with 0, 'Cannot overwrite an existing holding, use a new wallet.'
    if heldTokens[address(arg1)].field_256:
        revert with 0, 'Cannot overwrite an existing holding, use a new wallet.'
    heldTokens[address(arg1)].field_0 = arg2
    heldTokens[address(arg1)].field_256 = block.timestamp + expiry
    heldTokens[address(arg1)].field_512 = 0
    emit TokensHeld(arg2, block.timestamp + expiry, arg1);
}

function release(address arg1) {
    require calldata.size - 4 >= 32
    if transferAgentAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You must be the Transfer Agent to execute this function.'
    if not tokenContractAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'ERC20 Token contract is null, nowhere to release to.'
    if heldTokens[address(arg1)].field_512:
        revert with 0, 'To release tokens for an affiliate use partialRelease().'
    if block.timestamp <= heldTokens[address(arg1)].field_256:
        return 0
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x977a5ec5 with:
         gas gas_remaining wei
        args address(arg1), heldTokens[address(arg1)].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    heldTokens[address(arg1)].field_0 = 0
    heldTokens[address(arg1)].field_256 = 0
    heldTokens[address(arg1)].field_512 = uint8(bool(heldTokens[address(arg1)].field_512))
    emit TokensReleased(heldTokens[address(arg1)].field_0, arg1);
    return 1
}

function transfer(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if transferAgentAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You must be the Transfer Agent to execute this function.'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot transfer tokens to the null address.'
    if arg3 <= 0:
        revert with 0, 'Cannot transfer zero tokens.'
    if heldTokens[address(arg1)].field_0 < arg3:
        revert with 0, 'Not enough tokens to perform the transfer.'
    if heldTokens[address(arg2)].field_0:
        revert with 0, 'Cannot overwrite an existing holding, use a new wallet.'
    if heldTokens[address(arg2)].field_256:
        revert with 0, 'Cannot overwrite an existing holding, use a new wallet.'
    require arg3 <= heldTokens[address(arg1)].field_0
    heldTokens[address(arg1)].field_0 -= arg3
    heldTokens[address(arg1)].field_512 = uint8(bool(heldTokens[address(arg1)].field_512))
    heldTokens[address(arg2)].field_0 = arg3
    heldTokens[address(arg2)].field_256 = heldTokens[address(arg1)].field_256
    heldTokens[address(arg2)].field_512 = 0
    emit TokensTransferred(arg3, arg1, arg2);
    return 1
}

function postIcoHold(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if transferAgentAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You must be the Transfer Agent to execute this function.'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The null address cannot own tokens.'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Quantity must be greater than zero.'
    if heldTokens[address(arg1)].field_0:
        revert with 0, 'Cannot overwrite an existing holding, use a new wallet.'
    if heldTokens[address(arg1)].field_256:
        revert with 0, 'Cannot overwrite an existing holding, use a new wallet.'
    require ext_code.size(icoContractAddress)
    call icoContractAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Unable to complete Post-ICO Custody, token contract transfer failed.'
    heldTokens[address(arg1)].field_0 = arg2
    heldTokens[address(arg1)].field_256 = block.timestamp + arg3
    heldTokens[address(arg1)].field_512 = 0
    emit TokensHeld(arg2, block.timestamp + arg3, arg1);
}

function partialRelease(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if transferAgentAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You must be the Transfer Agent to execute this function.'
    if not tokenContractAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'ERC20 Token contract is null, nowhere to release to.'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The destination wallet cannot be null.'
    if heldTokens[address(arg2)].field_0:
        revert with 0, 'The destination wallet must be a new fresh wallet.'
    if heldTokens[address(arg2)].field_256:
        revert with 0, 'The destination wallet must be a new fresh wallet.'
    if not heldTokens[address(arg1)].field_512:
        revert with 0, 'Only affiliates can use this function; use release() for non-affiliates.'
    if arg3 > heldTokens[address(arg1)].field_0:
        revert with 0, 'The holding has less than the specified amount of tokens.'
    if block.timestamp <= heldTokens[address(arg1)].field_256:
        return 0
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x977a5ec5 with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require arg3 <= heldTokens[address(arg1)].field_0
    heldTokens[address(arg1)].field_0 -= arg3
    heldTokens[address(arg1)].field_512 = uint8(bool(heldTokens[address(arg1)].field_512))
    emit TokensReleased(arg3, arg1);
    return 1
}



}
