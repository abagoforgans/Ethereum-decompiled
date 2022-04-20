contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[48 len 18484]
}



// =====================  Runtime code  =====================


address owner;
address presaleAddress;
address icoAddress;
address tokenAddress;

function ico() {
    return icoAddress
}

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
    owner = 0x379264af7df7cf8141a23bc989aa44266ddd2c62
    create contract with 0 wei
                    code: code.data[5077 len 3177]
    require create.new_address
    tokenAddress = address(create.new_address)
    create contract with 0 wei
                    code: code.data[8254 len 5858]
    presaleAddress = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).setToken(address rg1) with:
         gas gas_remaining - 710 wei
        args tokenAddress
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.setSaleAgent(address rg1) with:
         gas gas_remaining - 710 wei
        args presaleAddress
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setMinInvestedLimit(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 10^17
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setPrice(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 250 * 10^18
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setBountyTokensPercent(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 4
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setAdvisorsTokensPercent(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 2
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setDevTokensPercent(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 10
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setSoftcap(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args (125 * 10^14 * 3600)
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setHardcap(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 50000 * 10^18
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.addBonus(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args 7, 50
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.addBonus(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args 7, 40
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.addBonus(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args 100, 35
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setStart(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args (419881 * 3600)
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setEnd(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args (420599 * 3600)
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setDevLimit(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args (125 * 10^14 * 3600)
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setWallet(address rg1) with:
         gas gas_remaining - 710 wei
        args 0x4bb656423f5476fec4aa729ab7b4ee0fc4d0b314
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setBountyTokensWallet(address rg1) with:
         gas gas_remaining - 710 wei
        args 0xcacbe5d8fb017407907026804fe8be64b08511f4
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setDevTokensWallet(address rg1) with:
         gas gas_remaining - 710 wei
        args 0xa20c62282bec52f9da240db8cffc5b2fc8586652
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setAdvisorsTokensWallet(address rg1) with:
         gas gas_remaining - 710 wei
        args 0xd3d85a495c7e25ead39793f959d04accdf87e01b
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setDevWallet(address rg1) with:
         gas gas_remaining - 710 wei
        args 0xea15adb66dc92a4bbccc8bf32fd25e2e86a2a770
    require ext_call.success
    create contract with 0 wei
                    code: code.data[14112 len 4329]
    require create.new_address
    icoAddress = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).setToken(address rg1) with:
         gas gas_remaining - 710 wei
        args tokenAddress
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setNextSaleAgent(address rg1) with:
         gas gas_remaining - 710 wei
        args icoAddress
    require ext_call.success
    require ext_code.size(icoAddress)
    call icoAddress.setMinInvestedLimit(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 10^17
    require ext_call.success
    require ext_code.size(icoAddress)
    call icoAddress.setPrice(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 250 * 10^18
    require ext_call.success
    require ext_code.size(icoAddress)
    call icoAddress.setBountyTokensPercent(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 4
    require ext_call.success
    require ext_code.size(icoAddress)
    call icoAddress.setAdvisorsTokensPercent(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 2
    require ext_call.success
    require ext_code.size(icoAddress)
    call icoAddress.setDevTokensPercent(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 10
    require ext_call.success
    require ext_code.size(icoAddress)
    call icoAddress.setHardcap(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 206000 * 10^18
    require ext_call.success
    require ext_code.size(icoAddress)
    call icoAddress.addBonus(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args 7, 25
    require ext_call.success
    require ext_code.size(icoAddress)
    call icoAddress.addBonus(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args 14, 10
    require ext_call.success
    require ext_code.size(icoAddress)
    call icoAddress.setStart(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args (420601 * 3600)
    require ext_call.success
    require ext_code.size(icoAddress)
    call icoAddress.setEnd(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args (421488 * 24 * 3600)
    require ext_call.success
    require ext_code.size(icoAddress)
    call icoAddress.setWallet(address rg1) with:
         gas gas_remaining - 710 wei
        args 0x65954fb8f45b40c9a60dfff3c8f4f39839bf3596
    require ext_call.success
    require ext_code.size(icoAddress)
    call icoAddress.setBountyTokensWallet(address rg1) with:
         gas gas_remaining - 710 wei
        args 0x6b9f45a54cde417640f7d49d13451d7e2e9b8918
    require ext_call.success
    require ext_code.size(icoAddress)
    call icoAddress.setDevTokensWallet(address rg1) with:
         gas gas_remaining - 710 wei
        args 0x55a9e5b55f067078e045c72088c3888bbcd9a64b
    require ext_call.success
    require ext_code.size(icoAddress)
    call icoAddress.setAdvisorsTokensWallet(address rg1) with:
         gas gas_remaining - 710 wei
        args 0x3e11ff0bdd160c1d85cdf04e012ea9286ae1a964
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.lockChanges() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(icoAddress)
    call icoAddress.lockChanges() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
    require ext_code.size(icoAddress)
    call icoAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
}



}
