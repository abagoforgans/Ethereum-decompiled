contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 18480]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
address presaleAddress;
address mainsaleAddress;

function owner() {
    return owner
}

function mainsale() {
    return mainsaleAddress
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
    owner = arg1
}

function deploy() {
    require owner == msg.sender
    create contract with 0 wei
                    code: code.data[3321 len 3131]
    require create.new_address
    tokenAddress = address(create.new_address)
    create contract with 0 wei
                    code: code.data[6452 len 5107]
    presaleAddress = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).setToken(address rg1) with:
         gas gas_remaining - 710 wei
        args tokenAddress
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.addStage(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args 6000, 3000
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setMultisigWallet(address rg1) with:
         gas gas_remaining - 710 wei
        args 0x17fb4a3ff095f445287aa6f3ab699a3dcae3dc56
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setStart(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args (419480 * 3600)
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setPeriod(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 31
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setMinPrice(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 10^17
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.setSaleAgent(address rg1) with:
         gas gas_remaining - 710 wei
        args presaleAddress
    require ext_call.success
    create contract with 0 wei
                    code: code.data[11559 len 6878]
    require create.new_address
    mainsaleAddress = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).setToken(address rg1) with:
         gas gas_remaining - 710 wei
        args tokenAddress
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.addStage(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args 45000, 1500
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.setMultisigWallet(address rg1) with:
         gas gas_remaining - 710 wei
        args 0xdff07f415e00a338205a8e21c39ec007eb37f746
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.setFoundersTokensWallet(address rg1) with:
         gas gas_remaining - 710 wei
        args 0x7bfc9adaf3d07adc4a1d3d03cde6581100845540
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.setBountyTokensWallet(address rg1) with:
         gas gas_remaining - 710 wei
        args 0xce8d83ba3cdd4e7447339936643861478f8037ad
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.setUnsoldTokensWallet(address rg1) with:
         gas gas_remaining - 710 wei
        args 0xd88a0920dc4a044a95874f4bd4858fb013511290
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.setStart(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args (420768 * 24 * 3600)
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.setPeriod(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 60
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.setLockPeriod(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 90
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.setMinPrice(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 10^17
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.setFoundersTokensReserve(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 20000000 * 10^18
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.setBountyTokensReserve(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 10000000 * 10^18
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.setMaxTokenSupply(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 100000000 * 10^18
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setMainsale(address rg1) with:
         gas gas_remaining - 710 wei
        args mainsaleAddress
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
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
}



}
