contract main {




// =====================  Runtime code  =====================


uint8 statePhase; offset 160
address owner;
address pendingOwner;
address whiteListingAdminAddress;
address tokenAddress;
address preICOAddress;
address currentIcoAddress;
uint8 stor6; offset 160
address kycAddress;
address walletRemainingAddress;
uint256 maxTokenSupply;
uint256 finalizePreIcoDate;
uint256 finalizeIcoDate;

function statePhase() {
    return statePhase
}

function finalizeIcoDate() {
    return finalizeIcoDate
}

function currentIco() {
    return currentIcoAddress
}

function maxTokenSupply() {
    return maxTokenSupply
}

function preICO() {
    return preICOAddress
}

function lastRound() {
    return bool(stor6)
}

function owner() {
    return owner
}

function kyc() {
    return kycAddress
}

function walletRemaining() {
    return walletRemainingAddress
}

function whiteListingAdmin() {
    return whiteListingAdminAddress
}

function pendingOwner() {
    return pendingOwner
}

function finalizePreIcoDate() {
    return finalizePreIcoDate
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function setWhiteListAdmin(address arg1) {
    require msg.sender == owner
    whiteListingAdminAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function transferOwnerShipToPendingOwner() {
    require msg.sender == pendingOwner
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
}

function prepare(uint256 arg1, address arg2, address arg3) {
    require msg.sender == owner
    require not statePhase
    require pendingOwner == owner
    maxTokenSupply = arg1
    walletRemainingAddress = arg2
    whiteListingAdminAddress = arg3
    statePhase = 1
}

function changeRate(uint256 arg1) {
    require msg.sender == owner
    require ext_code.size(currentIcoAddress)
    call currentIcoAddress.0x74e7493b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function changeMinimumAmount(uint256 arg1) {
    require msg.sender == owner
    require ext_code.size(currentIcoAddress)
    call currentIcoAddress.0x77eab3e3 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function changeDates(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(currentIcoAddress)
    call currentIcoAddress.0x2efb77c4 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function finalizeIco() {
    require msg.sender == owner
    if statePhase != 2:
        finalizeIcoDate = block.timestamp
    else:
        finalizePreIcoDate = block.timestamp
    require ext_code.size(currentIcoAddress)
    call currentIcoAddress.0x4bb278f3 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function InitIcoController(address arg1) {
    require msg.sender == owner
    pendingOwner = arg1
    create contract with 0 wei
                    code: code.data[13000 len 3982]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    tokenAddress = address(create.new_address)
    create contract with 0 wei
                    code: code.data[16982 len 1103]
    kycAddress = address(create.new_address)
}

function setContributor(address arg1, bool arg2, uint16 arg3, uint16 arg4, address arg5) {
    require msg.sender == whiteListingAdminAddress
    require ext_code.size(kycAddress)
    call kycAddress.setContributor(address arg1, bool arg2, uint16 arg3, uint16 arg4, address arg5) with:
         gas gas_remaining wei
        args 0, 0, arg2, arg3 << 240, arg4, address(arg5)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function modifyTransferableHash(address arg1, bool arg2) {
    require msg.sender == owner
    if statePhase > 1:
        require ext_code.size(currentIcoAddress)
        call currentIcoAddress.0x2c9c0fb5 with:
             gas gas_remaining wei
            args address(arg1), arg2
    else:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x2c9c0fb5 with:
             gas gas_remaining wei
            args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function mint(uint256 arg1, address arg2) {
    require msg.sender == owner
    require 1 == statePhase
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + arg1 <= maxTokenSupply
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function createIco(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6) {
    require msg.sender == owner
    require 2 == statePhase
    create contract with 0 wei
                    code: code.data[5382 len 7618], arg1, arg2, arg3, arg4, arg5, maxTokenSupply, address(arg6), tokenAddress, kycAddress, 0, walletRemainingAddress, pendingOwner
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    currentIcoAddress = address(create.new_address)
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining wei
        args address(create.new_address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    statePhase = 3
}

function createPreIco(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7) {
    require msg.sender == owner
    require statePhase <= 1
    create contract with 0 wei
                    code: code.data[5382 len 7618], arg1, arg2, arg3, arg4, arg5, arg6, address(arg7), tokenAddress, kycAddress, 1, walletRemainingAddress, this.address
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    currentIcoAddress = address(create.new_address)
    preICOAddress = address(create.new_address)
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining wei
        args address(create.new_address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    statePhase = 2
}

function transferCrowdSale(bool arg1) {
    require msg.sender == owner
    if not arg1:
        require finalizeIcoDate
        require block.timestamp >= finalizeIcoDate + (720 * 24 * 3600)
        require ext_code.size(currentIcoAddress)
        call currentIcoAddress.0xf2fde38b with:
             gas gas_remaining wei
            args owner
    else:
        require finalizePreIcoDate
        require block.timestamp >= finalizePreIcoDate + (720 * 24 * 3600)
        require ext_code.size(preICOAddress)
        call preICOAddress.0xf2fde38b with:
             gas gas_remaining wei
            args owner
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(kycAddress)
        call kycAddress.0xf2fde38b with:
             gas gas_remaining wei
            args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function mintAndCreatePreIcoBitex(address arg1, address arg2) {
    require msg.sender == owner
    require not statePhase
    require pendingOwner == owner
    maxTokenSupply = 300000000 * 10^18
    walletRemainingAddress = arg1
    whiteListingAdminAddress = 0xd68ce8bf133297c3c27cc582a9e5452f64f76e4b
    statePhase = 1
    require msg.sender == owner
    require 1 == statePhase
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + (17500 * 10^18 * 3600) <= maxTokenSupply
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args 0xb52c45b43b5c2dc6928149c54a05ba3a91542060, 17500 * 10^18 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == owner
    require 1 == statePhase
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + (7500 * 10^18 * 24 * 3600) <= maxTokenSupply
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg2), 7500 * 10^18 * 24 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == owner
    require statePhase <= 1
    create contract with 0 wei
                    code: code.data[5382 len 7618], 423831 * 3600, 424335 * 3600, 1000, 10^18, 10^17, 30000000 * 10^18, 0x1ef0cad0e9a12cf39494e7d40643985538e7e963, tokenAddress, kycAddress, 1, walletRemainingAddress, this.address
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    currentIcoAddress = address(create.new_address)
    preICOAddress = address(create.new_address)
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining wei
        args address(create.new_address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    statePhase = 2
    require msg.sender == owner
    if statePhase > 1:
        require ext_code.size(currentIcoAddress)
        call currentIcoAddress.0x2c9c0fb5 with:
             gas gas_remaining wei
            args address(arg1), 1
    else:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x2c9c0fb5 with:
             gas gas_remaining wei
            args address(arg1), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender == owner
    if statePhase > 1:
        require ext_code.size(currentIcoAddress)
        call currentIcoAddress.0x2c9c0fb5 with:
             gas gas_remaining wei
            args address(arg2), 1
    else:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x2c9c0fb5 with:
             gas gas_remaining wei
            args address(arg2), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender == owner
    if statePhase > 1:
        require ext_code.size(currentIcoAddress)
        call currentIcoAddress.0x2c9c0fb5 with:
             gas gas_remaining wei
            args 0xb52c45b43b5c2dc6928149c54a05ba3a91542060, 1
    else:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x2c9c0fb5 with:
             gas gas_remaining wei
            args 0xb52c45b43b5c2dc6928149c54a05ba3a91542060, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
