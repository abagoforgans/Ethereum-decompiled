contract main {


// =======================  Init code  ======================


address stor0;
address stor2;

function _fallback() {
    stor0 = msg.sender
    require code.data[2716 len 20]
    stor2 = code.data[2716 len 20]
    return code.data[132 len 2572]
}



// =====================  Runtime code  =====================


address owner;
address pendingOwner;
address tokenAddress;
mapping of struct grants;
uint256 totalVesting;

function totalVesting() {
    return totalVesting
}

function owner() {
    return owner
}

function grants(address arg1) {
    return grants[arg1].field_0, 
           grants[arg1].field_256,
           grants[arg1].field_512,
           grants[arg1].field_768,
           grants[arg1].field_1024,
           bool(grants[arg1].field_1280)
}

function pendingOwner() {
    return pendingOwner
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
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

function grant(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, bool arg6) {
    require owner == msg.sender
    require arg1
    require arg2 > 0
    require not grants[address(arg1)].field_0
    require arg3 <= arg4
    require arg4 <= arg5
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require arg2 + totalVesting >= totalVesting
    require arg2 + totalVesting <= ext_call.return_data[0]
    grants[address(arg1)].field_0 = arg2
    grants[address(arg1)].field_256 = arg3
    grants[address(arg1)].field_512 = arg4
    grants[address(arg1)].field_768 = arg5
    grants[address(arg1)].field_1024 = 0
    grants[address(arg1)].field_1280 = uint8(arg6)
    require arg2 + totalVesting >= totalVesting
    totalVesting += arg2
    emit NewGrant(arg2, msg.sender, arg1);
}

function revoke(address arg1) {
    require owner == msg.sender
    require grants[address(arg1)].field_1280
    require grants[address(arg1)].field_1024 <= grants[address(arg1)].field_0
    grants[address(arg1)].field_0 = 0
    grants[address(arg1)].field_256 = 0
    grants[address(arg1)].field_512 = 0
    grants[address(arg1)].field_768 = 0
    grants[address(arg1)].field_1024 = 0
    grants[address(arg1)].field_1280 = 0
    require grants[address(arg1)].field_0 - grants[address(arg1)].field_1024 <= totalVesting
    totalVesting = totalVesting - grants[address(arg1)].field_0 + grants[address(arg1)].field_1024
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, grants[address(arg1)].field_0 - grants[address(arg1)].field_1024
    require ext_call.success
    emit RevokeGrant((grants[address(arg1)].field_0 - grants[address(arg1)].field_1024), arg1);
}

function vestedTokens(address arg1, uint256 arg2) {
    if not grants[address(arg1)].field_0:
        return 0
    if arg2 < grants[address(arg1)].field_512:
        return 0
    if arg2 >= grants[address(arg1)].field_768:
        return grants[address(arg1)].field_0
    require grants[address(arg1)].field_256 <= grants[address(arg1)].field_768
    require grants[address(arg1)].field_256 <= arg2
    if not grants[address(arg1)].field_0:
        if grants[address(arg1)].field_768 - grants[address(arg1)].field_256:
            return ((arg2 * grants[address(arg1)].field_0) - (grants[address(arg1)].field_256 * grants[address(arg1)].field_0) / grants[address(arg1)].field_768 - grants[address(arg1)].field_256)
    else:
        if grants[address(arg1)].field_0:
            if (arg2 * grants[address(arg1)].field_0) - (grants[address(arg1)].field_256 * grants[address(arg1)].field_0) / grants[address(arg1)].field_0 == arg2 - grants[address(arg1)].field_256:
                if grants[address(arg1)].field_768 - grants[address(arg1)].field_256:
                    return ((arg2 * grants[address(arg1)].field_0) - (grants[address(arg1)].field_256 * grants[address(arg1)].field_0) / grants[address(arg1)].field_768 - grants[address(arg1)].field_256)
    revert
}

function unlockVestedTokens() {
    require grants[address(msg.sender)].field_0
    if block.timestamp >= grants[address(msg.sender)].field_512:
        if block.timestamp >= grants[address(msg.sender)].field_768:
            if grants[address(msg.sender)].field_0:
                require grants[address(msg.sender)].field_1024 <= grants[address(msg.sender)].field_0
                if grants[address(msg.sender)].field_0 - grants[address(msg.sender)].field_1024:
                    require grants[address(msg.sender)].field_0 >= grants[address(msg.sender)].field_1024
                    grants[address(msg.sender)].field_1024 = grants[address(msg.sender)].field_0
                    require grants[address(msg.sender)].field_0 - grants[address(msg.sender)].field_1024 <= totalVesting
                    totalVesting = totalVesting - grants[address(msg.sender)].field_0 + grants[address(msg.sender)].field_1024
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, grants[address(msg.sender)].field_0 - grants[address(msg.sender)].field_1024
                    require ext_call.success
                    emit UnlockGrant((grants[address(msg.sender)].field_0 - grants[address(msg.sender)].field_1024), msg.sender);
        else:
            require grants[address(msg.sender)].field_256 <= grants[address(msg.sender)].field_768
            require grants[address(msg.sender)].field_256 <= block.timestamp
            if grants[address(msg.sender)].field_0:
                require grants[address(msg.sender)].field_0
                require (block.timestamp * grants[address(msg.sender)].field_0) - (grants[address(msg.sender)].field_256 * grants[address(msg.sender)].field_0) / grants[address(msg.sender)].field_0 == block.timestamp - grants[address(msg.sender)].field_256
            require grants[address(msg.sender)].field_768 - grants[address(msg.sender)].field_256
            if (block.timestamp * grants[address(msg.sender)].field_0) - (grants[address(msg.sender)].field_256 * grants[address(msg.sender)].field_0) / grants[address(msg.sender)].field_768 - grants[address(msg.sender)].field_256:
                require grants[address(msg.sender)].field_1024 <= (block.timestamp * grants[address(msg.sender)].field_0) - (grants[address(msg.sender)].field_256 * grants[address(msg.sender)].field_0) / grants[address(msg.sender)].field_768 - grants[address(msg.sender)].field_256
                if ((block.timestamp * grants[address(msg.sender)].field_0) - (grants[address(msg.sender)].field_256 * grants[address(msg.sender)].field_0) / grants[address(msg.sender)].field_768 - grants[address(msg.sender)].field_256) - grants[address(msg.sender)].field_1024:
                    require (block.timestamp * grants[address(msg.sender)].field_0) - (grants[address(msg.sender)].field_256 * grants[address(msg.sender)].field_0) / grants[address(msg.sender)].field_768 - grants[address(msg.sender)].field_256 >= grants[address(msg.sender)].field_1024
                    grants[address(msg.sender)].field_1024 = (block.timestamp * grants[address(msg.sender)].field_0) - (grants[address(msg.sender)].field_256 * grants[address(msg.sender)].field_0) / grants[address(msg.sender)].field_768 - grants[address(msg.sender)].field_256
                    require ((block.timestamp * grants[address(msg.sender)].field_0) - (grants[address(msg.sender)].field_256 * grants[address(msg.sender)].field_0) / grants[address(msg.sender)].field_768 - grants[address(msg.sender)].field_256) - grants[address(msg.sender)].field_1024 <= totalVesting
                    totalVesting = totalVesting - ((block.timestamp * grants[address(msg.sender)].field_0) - (grants[address(msg.sender)].field_256 * grants[address(msg.sender)].field_0) / grants[address(msg.sender)].field_768 - grants[address(msg.sender)].field_256) + grants[address(msg.sender)].field_1024
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, ((block.timestamp * grants[address(msg.sender)].field_0) - (grants[address(msg.sender)].field_256 * grants[address(msg.sender)].field_0) / grants[address(msg.sender)].field_768 - grants[address(msg.sender)].field_256) - grants[address(msg.sender)].field_1024
                    require ext_call.success
                    emit UnlockGrant((((block.timestamp * grants[address(msg.sender)].field_0) - (grants[address(msg.sender)].field_256 * grants[address(msg.sender)].field_0) / grants[address(msg.sender)].field_768 - grants[address(msg.sender)].field_256) - grants[address(msg.sender)].field_1024), msg.sender);
}



}
