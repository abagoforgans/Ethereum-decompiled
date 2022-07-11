contract main {




// =====================  Runtime code  =====================


uint8 isPaused; offset 160
uint128 stor0; offset 160
address owner;
address minterAddress;
address parentTokenAddress;
mapping of address sub_5c2fb9fc;
uint256 sub_f3dbb15a;

function minter() {
    return minterAddress
}

function sub_5c2fb9fc(?) {
    return sub_5c2fb9fc[arg1]
}

function parentToken() {
    return parentTokenAddress
}

function owner() {
    return owner
}

function isPaused() {
    return bool(isPaused)
}

function sub_f3dbb15a(?) {
    return sub_f3dbb15a
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function setMinter(address arg1) {
    require msg.sender == owner
    minterAddress = arg1
}

function setIsPaused(bool arg1) {
    require msg.sender == owner
    stor0 = Mask(96, 0, arg1)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_67f85749(?) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.setIsBlacklisted(address arg1, bool arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_cbd2abaf(?) {
    require not isPaused
    require msg.sender == minterAddress
    create contract with 0 wei
                    code: code.data[1955 len 5357], parentTokenAddress, arg2, arg3, arg4, arg5, arg6, arg7
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(parentTokenAddress)
    call parentTokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), address(create.new_address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_5c2fb9fc[stor4] = address(create.new_address)
    sub_f3dbb15a++
    return sub_f3dbb15a, address(create.new_address)
}



}
