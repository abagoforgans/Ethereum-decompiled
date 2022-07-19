contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
const name = 'Item Sale'

const symbol = 'ISL'

const supportsFactoryInterface = 1


address owner;
address proxyRegistryAddress;
address nftAddress;
address lootBoxNftAddress;
array of uint256 baseURI;
uint256 numOptions;

function numOptions() {
    return numOptions
}

function nftAddress() {
    return nftAddress
}

function ownerOf(uint256 arg1) {
    return owner
}

function baseURI() {
    return baseURI[0 len baseURI.length]
}

function owner() {
    return owner
}

function proxyRegistryAddress() {
    return proxyRegistryAddress
}

function lootBoxNftAddress() {
    return lootBoxNftAddress
}

function _fallback() payable {
    revert
}

function canMint(uint256 arg1) {
    return (arg1 < numOptions)
}

function sub_78d30b8f(?) {
    require msg.sender == owner
    numOptions = arg1
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

function isApprovedForAll(address arg1, address arg2) {
    if owner != arg1:
        return 0
    if arg1 != arg2:
        if owner != arg1:
            return 0
        require ext_code.size(proxyRegistryAddress)
        call proxyRegistryAddress.proxies(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != arg2:
            return 0
    return 1
}

function mint(uint256 arg1, address arg2) {
    require ext_code.size(proxyRegistryAddress)
    call proxyRegistryAddress.proxies(address arg1) with:
         gas gas_remaining wei
        args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        if owner != msg.sender:
            require msg.sender == lootBoxNftAddress
    require arg1 < numOptions
    require ext_code.size(nftAddress)
    call nftAddress.0x449a52f8 with:
         gas gas_remaining wei
        args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(proxyRegistryAddress)
    call proxyRegistryAddress.proxies(address arg1) with:
         gas gas_remaining wei
        args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        if owner != msg.sender:
            require msg.sender == lootBoxNftAddress
    require arg3 < numOptions
    require ext_code.size(nftAddress)
    call nftAddress.0x449a52f8 with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
