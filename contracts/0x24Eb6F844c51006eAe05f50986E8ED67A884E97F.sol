contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[48 len 18719]
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
    owner = 0x1c7315bc528f322909bedda8f65b053546d98246
    create contract with 0 wei
                    code: code.data[5118 len 3177]
    require create.new_address
    tokenAddress = address(create.new_address)
    create contract with 0 wei
                    code: code.data[8295 len 5932]
    presaleAddress = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x144fa6d7 with:
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
        args 10^18
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.0x91b7f5ed with:
         gas gas_remaining - 710 wei
        args 290 * 10^18
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setBountyTokensPercent(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 2
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setAdvisorsTokensPercent(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 1
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setDevTokensPercent(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 10
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setFoundersTokensPercent(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 10
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setSoftcap(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 1000 * 10^18
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setHardcap(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 20000 * 10^18
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.addBonus(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args 1, 40
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.addBonus(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args 100, 30
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setDevLimit(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 6 * 10^18
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setWallet(address rg1) with:
         gas gas_remaining - 710 wei
        args 0xb710d808ca41c030d14721363ff5608eabc5ba91
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setBountyTokensWallet(address rg1) with:
         gas gas_remaining - 710 wei
        args 0x565d8e01c63edf9a5d9f17278b3c2118940e81ef
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setDevTokensWallet(address rg1) with:
         gas gas_remaining - 710 wei
        args 0x2d509f95f7a5f400ae79b22f40afb7acc60de6ba
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setAdvisorsTokensWallet(address rg1) with:
         gas gas_remaining - 710 wei
        args 0xc422bd1dac78b1610ab9bec43eefb1b81785667d
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setFoundersTokensWallet(address rg1) with:
         gas gas_remaining - 710 wei
        args 0xc8c959b4ae981cbcf032ad05bd5e60c326cbe35d
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setDevWallet(address rg1) with:
         gas gas_remaining - 710 wei
        args 0xea15adb66dc92a4bbccc8bf32fd25e2e86a2a770
    require ext_call.success
    create contract with 0 wei
                    code: code.data[14227 len 4449]
    require create.new_address
    icoAddress = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x144fa6d7 with:
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
    call icoAddress.0x91b7f5ed with:
         gas gas_remaining - 710 wei
        args 250 * 10^18
    require ext_call.success
    require ext_code.size(icoAddress)
    call icoAddress.setBountyTokensPercent(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 2
    require ext_call.success
    require ext_code.size(icoAddress)
    call icoAddress.setAdvisorsTokensPercent(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 1
    require ext_call.success
    require ext_code.size(icoAddress)
    call icoAddress.setDevTokensPercent(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 10
    require ext_call.success
    require ext_code.size(icoAddress)
    call icoAddress.setFoundersTokensPercent(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 10
    require ext_call.success
    require ext_code.size(icoAddress)
    call icoAddress.setHardcap(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 50000 * 10^18
    require ext_call.success
    require ext_code.size(icoAddress)
    call icoAddress.addBonus(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args 7, 25
    require ext_call.success
    require ext_code.size(icoAddress)
    call icoAddress.addBonus(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args 7, 15
    require ext_call.success
    require ext_code.size(icoAddress)
    call icoAddress.addBonus(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args 100, 10
    require ext_call.success
    require ext_code.size(icoAddress)
    call icoAddress.setWallet(address rg1) with:
         gas gas_remaining - 710 wei
        args 0x87af29276ba384b1df9008fd573155f7fc47e4d8
    require ext_call.success
    require ext_code.size(icoAddress)
    call icoAddress.setBountyTokensWallet(address rg1) with:
         gas gas_remaining - 710 wei
        args 0xef0a993cc6067ad57a1a55a6b885aef662334641
    require ext_call.success
    require ext_code.size(icoAddress)
    call icoAddress.setDevTokensWallet(address rg1) with:
         gas gas_remaining - 710 wei
        args 0xfa6229f284387f6ccdb61879c3c12d9896310db3
    require ext_call.success
    require ext_code.size(icoAddress)
    call icoAddress.setAdvisorsTokensWallet(address rg1) with:
         gas gas_remaining - 710 wei
        args 0xb1f9c6653210d7551ad24c7978b10fb0bfe5c177
    require ext_call.success
    require ext_code.size(icoAddress)
    call icoAddress.setFoundersTokensWallet(address rg1) with:
         gas gas_remaining - 710 wei
        args 0x5cbb99ab4aa3eff834217262db11d7486af7cbfd
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
