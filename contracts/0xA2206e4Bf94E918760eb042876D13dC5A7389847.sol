contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
address preITOAddress;
address itoAddress;

function owner() {
    return owner
}

function preITO() {
    return preITOAddress
}

function ito() {
    return itoAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function deploy() {
    require msg.sender == owner
    create contract with 0 wei
                    code: code.data[4701 len 4482]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    tokenAddress = address(create.new_address)
    create contract with 0 wei
                    code: code.data[9183 len 4593]
    preITOAddress = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).setWallet(address arg1) with:
         gas gas_remaining wei
        args 0x89c92383bcf3eecd5180abd055bf319cefd2d516
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(preITOAddress)
    call preITOAddress.setStart(uint256 arg1) with:
         gas gas_remaining wei
        args (425448 * 24 * 3600)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(preITOAddress)
    call preITOAddress.setPeriod(uint256 arg1) with:
         gas gas_remaining wei
        args 48
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(preITOAddress)
    call preITOAddress.0x91b7f5ed with:
         gas gas_remaining wei
        args (3 * 10^17 * 24 * 3600)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(preITOAddress)
    call preITOAddress.setMinInvestedLimit(uint256 arg1) with:
         gas gas_remaining wei
        args 10^17
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(preITOAddress)
    call preITOAddress.setSoftcap(uint256 arg1) with:
         gas gas_remaining wei
        args 1000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(preITOAddress)
    call preITOAddress.setHardcap(uint256 arg1) with:
         gas gas_remaining wei
        args 4000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(preITOAddress)
    call preITOAddress.0x144fa6d7 with:
         gas gas_remaining wei
        args tokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(preITOAddress)
    call preITOAddress.setDirectMintAgent(address arg1) with:
         gas gas_remaining wei
        args 0xf3d57fc2903cbdfe1e1d33be38ad0a0753e72406
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenAddress)
    call tokenAddress.setSaleAgent(address arg1) with:
         gas gas_remaining wei
        args preITOAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    create contract with 0 wei
                    code: code.data[13776 len 5918]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    itoAddress = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).setWallet(address arg1) with:
         gas gas_remaining wei
        args 0xb13a4803bcc374b8bbcaf625cdd0a3ac85cdc0da
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(itoAddress)
    call itoAddress.setStart(uint256 arg1) with:
         gas gas_remaining wei
        args (426600 * 24 * 3600)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(itoAddress)
    call itoAddress.addMilestone(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 7, 15
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(itoAddress)
    call itoAddress.addMilestone(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 7, 13
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(itoAddress)
    call itoAddress.addMilestone(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 7, 11
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(itoAddress)
    call itoAddress.addMilestone(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 7, 9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(itoAddress)
    call itoAddress.addMilestone(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 7, 7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(itoAddress)
    call itoAddress.addMilestone(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 7, 5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(itoAddress)
    call itoAddress.addMilestone(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 7, 3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(itoAddress)
    call itoAddress.0x91b7f5ed with:
         gas gas_remaining wei
        args (25 * 10^16 * 3600)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(itoAddress)
    call itoAddress.setMinInvestedLimit(uint256 arg1) with:
         gas gas_remaining wei
        args 10^17
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(itoAddress)
    call itoAddress.setHardcap(uint256 arg1) with:
         gas gas_remaining wei
        args 32777 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(itoAddress)
    call itoAddress.addWallet(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xa5a5cf5325aeda4ab32b9b0e0e8fa91abdb64ddc, 10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(itoAddress)
    call itoAddress.0x144fa6d7 with:
         gas gas_remaining wei
        args tokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(itoAddress)
    call itoAddress.setDirectMintAgent(address arg1) with:
         gas gas_remaining wei
        args 0xf3d57fc2903cbdfe1e1d33be38ad0a0753e72406
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(preITOAddress)
    call preITOAddress.setNextSaleAgent(address arg1) with:
         gas gas_remaining wei
        args itoAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining wei
        args 0xd8fe93097f0ef354fefee2e77458eecc19d8d704
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(preITOAddress)
    call preITOAddress.0xf2fde38b with:
         gas gas_remaining wei
        args 0xd8fe93097f0ef354fefee2e77458eecc19d8d704
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(itoAddress)
    call itoAddress.0xf2fde38b with:
         gas gas_remaining wei
        args 0xd8fe93097f0ef354fefee2e77458eecc19d8d704
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
