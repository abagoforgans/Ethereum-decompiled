contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[48 len 18310]
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
    create contract with 0 wei
                    code: code.data[4139 len 3297]
    require create.new_address
    tokenAddress = address(create.new_address)
    create contract with 0 wei
                    code: code.data[7436 len 4213]
    presaleAddress = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).setWallet(address arg1) with:
         gas gas_remaining - 710 wei
        args 0x5a4217a1caf4f0c1c8f59db1b374c88e258c9cab
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setStart(uint256 arg1) with:
         gas gas_remaining - 710 wei
        args (4324080000432408 * 24 * 3600)
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setPeriod(uint256 arg1) with:
         gas gas_remaining - 710 wei
        args 150
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setPrice(uint256 arg1) with:
         gas gas_remaining - 710 wei
        args 160 * 10^18
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setHardcap(uint256 arg1) with:
         gas gas_remaining - 710 wei
        args 125000 * 10^18
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.setSaleAgent(address arg1) with:
         gas gas_remaining - 710 wei
        args presaleAddress
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.addValueBonus(uint256 arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args 10^18, 1
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.addValueBonus(uint256 arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args 5 * 10^18, 2
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.addValueBonus(uint256 arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args 10 * 10^18, 3
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.addValueBonus(uint256 arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args 40 * 10^18, 5
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setReferalsMinInvestLimit(uint256 arg1) with:
         gas gas_remaining - 710 wei
        args 10^15
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setRefererPercent(uint256 arg1) with:
         gas gas_remaining - 710 wei
        args 2
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setMinInvestedLimit(uint256 arg1) with:
         gas gas_remaining - 710 wei
        args 10^15
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setToken(address arg1) with:
         gas gas_remaining - 710 wei
        args tokenAddress
    require ext_call.success
    create contract with 0 wei
                    code: code.data[11649 len 6618]
    require create.new_address
    mainsaleAddress = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).addMilestone(uint256 arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args 7, 0
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.addMilestone(uint256 arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args 7, 0
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.addMilestone(uint256 arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args 7, 0
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.addMilestone(uint256 arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args 100, 0
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.setPrice(uint256 arg1) with:
         gas gas_remaining - 710 wei
        args 160 * 10^18
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.setWallet(address arg1) with:
         gas gas_remaining - 710 wei
        args 0x5a4217a1caf4f0c1c8f59db1b374c88e258c9cab
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.setFoundersTokensWallet(address arg1) with:
         gas gas_remaining - 710 wei
        args 0x3231e90b9b9b4a0658b6cdaafaacc660004a13de
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.setMarketingTokensWallet(address arg1) with:
         gas gas_remaining - 710 wei
        args 0xda987415fa66be42432edcd69827495cece43d72
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.setBountyTokensWallet(address arg1) with:
         gas gas_remaining - 710 wei
        args 0xd26da65e6c41069b8e065c716345bf94e257345
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.setStart(uint256 arg1) with:
         gas gas_remaining - 710 wei
        args (435816 * 24 * 3600)
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.setHardcap(uint256 arg1) with:
         gas gas_remaining - 710 wei
        args 125000 * 10^18
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.setFoundersTokensPercent(uint256 arg1) with:
         gas gas_remaining - 710 wei
        args 10
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.setMarketingTokensPercent(uint256 arg1) with:
         gas gas_remaining - 710 wei
        args 13
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.setBountyTokensPercent(uint256 arg1) with:
         gas gas_remaining - 710 wei
        args 3
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.addValueBonus(uint256 arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args 10^18, 1
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.addValueBonus(uint256 arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args 5 * 10^18, 2
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.addValueBonus(uint256 arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args 10 * 10^18, 3
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.addValueBonus(uint256 arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args 40 * 10^18, 5
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.setReferalsMinInvestLimit(uint256 arg1) with:
         gas gas_remaining - 710 wei
        args 10^15
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.setRefererPercent(uint256 arg1) with:
         gas gas_remaining - 710 wei
        args 2
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.setMinInvestedLimit(uint256 arg1) with:
         gas gas_remaining - 710 wei
        args 10^15
    require ext_call.success
    require ext_code.size(mainsaleAddress)
    call mainsaleAddress.setToken(address arg1) with:
         gas gas_remaining - 710 wei
        args tokenAddress
    require ext_call.success
    require ext_code.size(presaleAddress)
    call presaleAddress.setMainsale(address arg1) with:
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
