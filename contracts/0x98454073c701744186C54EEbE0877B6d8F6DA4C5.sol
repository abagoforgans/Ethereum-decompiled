contract main {




// =====================  Runtime code  =====================


#
#  - sub_14d8aa6f(?)
#  - sub_31200ee6(?)
#  - sub_68319cfd(?)
#  - sub_848204bd(?)
#  - sub_b5107549(?)
#  - sub_f45f92cf(?)
#
address authorityAddress;
uint8 stor1; offset 160
uint128 stor1; offset 160
address owner;
address stor2;
address gatewayAddress;
address arbitratorAddress;
address relayerAddress;
uint32 requestCancellationMinimumTime; offset 160
address signerAddress;
mapping of uint8 stor7;
mapping of uint256 stor8;
mapping of address tokenPriceFeed;

function gateway() {
    return gatewayAddress
}

function signer() {
    return signerAddress
}

function enabled() {
    return bool(uint8(stor1.field_160))
}

function sub_468885c3(?) {
    return bool(uint8(stor1.field_160))
}

function requestCancellationMinimumTime() {
    return requestCancellationMinimumTime
}

function arbitrator() {
    return arbitratorAddress
}

function relayer() {
    return relayerAddress
}

function owner() {
    return owner
}

function sub_9068b2aa(?) {
    return bool(stor7[arg1])
}

function tokenPriceFeed(address arg1) {
    return tokenPriceFeed[arg1]
}

function authority() {
    return authorityAddress
}

function _fallback() payable {
    revert
}

function sub_50272cd2(?) {
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    stor2 = arg1
    return 0
}

function sub_872f3c7c(?) {
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    return stor8[address(arg1)]
}

function setSigner(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    signerAddress = arg1
}

function setRelayer(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    relayerAddress = arg1
}

function setArbitrator(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    arbitratorAddress = arg1
}

function setGateway(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    gatewayAddress = arg1
    return 0
}

function setOwner(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    owner = arg1
    emit LogSetOwner(owner);
}

function setPriceFeed(address arg1, address arg2) {
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    tokenPriceFeed[address(arg1)] = arg2
}

function setToken(address arg1, bool arg2) {
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    stor7[address(arg1)] = uint8(arg2)
    return 0
}

function setRequestCancellationMinimumTime(uint32 arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    requestCancellationMinimumTime = arg1
}

function setAuthority(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    authorityAddress = arg1
    emit LogSetAuthority(authorityAddress);
}

function setEnabled(bool arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    if arg1 == bool(uint8(stor1.field_160)):
        revert with 0, 'Enabled same value'
    Mask(96, 0, stor1.field_160) = Mask(96, 0, arg1)
}

function getTokenAmount(address arg1, uint256 arg2) {
    if not tokenPriceFeed[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'the token has not price feed(to eth).'
    require ext_code.size(tokenPriceFeed[address(arg1)])
    call tokenPriceFeed[address(arg1)].read() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_call.return_data[0]
    if arg2 * ext_call.return_data[0] / ext_call.return_data[0] != arg2:
        revert with 0, 'ds-math-mul-overflow'
    if (arg2 * ext_call.return_data[0]) + 5 * 10^17 < arg2 * ext_call.return_data[0]:
        revert with 0, 'ds-math-add-overflow'
    return ((arg2 * ext_call.return_data[0]) + 5 * 10^17 / 10^18)
}

function withdraw(address arg1, uint256 arg2, address arg3) {
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    if stor8[address(arg1)] <= 0:
        revert with 0, 'Fees is 0 or token not exists'
    if arg2 > stor8[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount is higher than amount available'
    if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        call arg3 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg3), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            if 32 != return_data.size:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenInteract#transfer: Transfer failed'
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenInteract#transfer: Transfer failed'
    return 1
}



}
