contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[48 len 20262]
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
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function deploy() {
    require owner == msg.sender
    owner = 0x95ea6a4ec9f80436854702e5f05d238f27166a03
    create contract with 0 wei
                    code: code.data[4042 len 3453]
    require create.new_address
    tokenAddress = address(create.new_address)
    create contract with 0 wei
                    code: code.data[7495 len 5703]
    presaleAddress = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).setToken(address rg1) with:
         gas gas_remaining - 710 wei
        args tokenAddress
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.addStage(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args 5000, 300
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setMasterWallet(address rg1) with:
         gas gas_remaining - 710 wei
        args 0x95ea6a4ec9f80436854702e5f05d238f27166a03
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setSlaveWallet(address rg1) with:
         gas gas_remaining - 710 wei
        args 0x70ecc35a3212d76ad443d529216a452eaa35e3d
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setSlaveWalletPercent(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 30
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setStart(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args (421477 * 3600)
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setPeriod(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 30
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
                    code: code.data[13198 len 7021]
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
        args 5000, 200
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.addStage(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args 5000, 180
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.addStage(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args 10000, 170
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.addStage(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args 20000, 160
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.addStage(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args 20000, 150
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.addStage(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args 40000, 130
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.setMasterWallet(address rg1) with:
         gas gas_remaining - 710 wei
        args 0x95ea6a4ec9f80436854702e5f05d238f27166a03
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.setSlaveWallet(address rg1) with:
         gas gas_remaining - 710 wei
        args 0x70ecc35a3212d76ad443d529216a452eaa35e3d
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.setSlaveWalletPercent(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 30
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.setFoundersTokensWallet(address rg1) with:
         gas gas_remaining - 710 wei
        args 0x95ea6a4ec9f80436854702e5f05d238f27166a03
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.setBountyTokensWallet(address rg1) with:
         gas gas_remaining - 710 wei
        args 0x95ea6a4ec9f80436854702e5f05d238f27166a03
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.setStart(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args (423709 * 3600)
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.setPeriod(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 30
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
    call mainsaleAddress.setFoundersTokensPercent(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 13
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.setBountyTokensPercent(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 5
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
