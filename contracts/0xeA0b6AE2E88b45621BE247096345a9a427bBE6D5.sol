contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() {
    stor0 = msg.sender
    create contract with 0 wei
                    code: code.data[1767 len 3957]
    require create.new_address
    stor1 = address(create.new_address)
    create contract with 0 wei
                    code: code.data[5724 len 3252]
    stor2 = address(create.new_address)
    return code.data[218 len 1549]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
address presaleAddress;

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function presale() {
    return presaleAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function deploy() {
    require owner == msg.sender
    require ext_code.size(presaleAddress)
    call presaleAddress.setToken(address rg1) with:
         gas gas_remaining - 710 wei
        args tokenAddress
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setHardcap(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 16 * 10^6
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setWallets(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args 0x6429d1d1dc4dddf81755017e93467bdb275b005b, 0x6429d1d1dc4dddf81755017e93467bdb275b005b
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.0x56f3d665 with:
         gas gas_remaining - 710 wei
        args 10
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setPeriod(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args 1514159999, 1518134399
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.0x6d427fa3 with:
         gas gas_remaining - 710 wei
        args 100
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.0x34fcf437 with:
         gas gas_remaining - 710 wei
        args 400
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.setSaleAgent(address rg1) with:
         gas gas_remaining - 710 wei
        args presaleAddress
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
}



}
