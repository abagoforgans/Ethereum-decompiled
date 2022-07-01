contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
const name = 'Neon District Founders Key Sale'

const symbol = 'NDKEYFCTRY'

const supportsFactoryInterface = 1


address owner;
address proxyRegistryAddress;
address nftAddress;
uint256 numOptions;
array of uint256 baseURI;

function numOptions() payable {
    return numOptions
}

function nftAddress() payable {
    return nftAddress
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return owner
}

function baseURI() payable {
    return baseURI[0 len baseURI.length]
}

function owner() payable {
    return owner
}

function proxyRegistryAddress() payable {
    return proxyRegistryAddress
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setBaseURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require msg.sender == owner
    baseURI[] = Array(len=arg1.length, data=arg1[all])
}

function canMint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(nftAddress)
    staticcall nftAddress.0x29e9e337 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != arg1:
        return 0
    if arg1 != arg2:
        if owner != arg1:
            return 0
        require ext_code.size(proxyRegistryAddress)
        staticcall proxyRegistryAddress.proxies(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != arg2:
            return 0
    return 1
}

function mint(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(proxyRegistryAddress)
    staticcall proxyRegistryAddress.proxies(address arg1) with:
            gas gas_remaining wei
           args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        require owner == msg.sender
    require ext_code.size(nftAddress)
    staticcall nftAddress.0x29e9e337 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(nftAddress)
    call nftAddress.0xb723b34e with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(proxyRegistryAddress)
    staticcall proxyRegistryAddress.proxies(address arg1) with:
            gas gas_remaining wei
           args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        require owner == msg.sender
    require ext_code.size(nftAddress)
    staticcall nftAddress.0x29e9e337 with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(nftAddress)
    call nftAddress.0xb723b34e with:
         gas gas_remaining wei
        args arg3, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
