contract main {




// =====================  Runtime code  =====================


const name = 'Testium Token'

const decimals = 2

const symbol = 'TPHM'

const HARD_CAP = 35 * 10^10


mapping of uint256 lockedBalanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
address teamAdvisorsReserveTokensAddress;
uint64 stor5;
uint64 date01Oct2018; offset 160
address saleTokensVaultAddress;
mapping of address vestingOf;

function date01Oct2018() {
    return date01Oct2018
}

function totalSupply() {
    return totalSupply
}

function teamAdvisorsReserveTokensAddress() {
    return teamAdvisorsReserveTokensAddress
}

function lockedBalanceOf(address arg1) {
    return lockedBalanceOf[stor6[address(arg1)]]
}

function saleTokensVault() {
    return saleTokensVaultAddress
}

function balanceOf(address arg1) {
    return lockedBalanceOf[address(arg1)]
}

function owner() {
    return owner
}

function vestingOf(address arg1) {
    return vestingOf[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function releaseVestedTokens() {
    require ext_code.size(vestingOf[address(msg.sender)])
    call vestingOf[address(msg.sender)].0x19165587 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function releaseVestedTokensFor(address arg1) {
    require ext_code.size(vestingOf[address(arg1)])
    call vestingOf[address(arg1)].0x19165587 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require arg1 > 0
    require arg1 <= lockedBalanceOf[msg.sender]
    require arg1 <= lockedBalanceOf[msg.sender]
    lockedBalanceOf[address(msg.sender)] = lockedBalanceOf[msg.sender] - arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
}

function releaseableBalanceOf(address arg1) {
    require ext_code.size(vestingOf[address(arg1)])
    call vestingOf[address(arg1)].0x1726cbc8 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= lockedBalanceOf[msg.sender]
    require arg2 <= lockedBalanceOf[msg.sender]
    lockedBalanceOf[msg.sender] -= arg2
    require arg2 + lockedBalanceOf[arg1] >= lockedBalanceOf[arg1]
    lockedBalanceOf[address(arg1)] = arg2 + lockedBalanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= lockedBalanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= lockedBalanceOf[address(arg1)]
    lockedBalanceOf[address(arg1)] -= arg3
    require arg3 + lockedBalanceOf[arg2] >= lockedBalanceOf[arg2]
    lockedBalanceOf[address(arg2)] = arg3 + lockedBalanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function vestTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    if not vestingOf[address(arg1)]:
        create contract with 0 wei
                        code: code.data[4235 len 2127], address(arg1), stor5, 744 * 24 * 3600, 7296 * 24 * 3600, 0
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        vestingOf[address(arg1)] = address(create.new_address)
    require ext_code.size(this.address)
    call this.address.0x23b872dd with:
         gas gas_remaining wei
        args saleTokensVaultAddress, vestingOf[address(arg1)], arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function createSaleTokensVault() {
    require msg.sender == owner
    require not saleTokensVaultAddress
    require msg.sender == owner
    create contract with 0 wei
                    code: code.data[6362 len 666], address(this.address)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender == owner
    require totalSupply + 193573500000 >= totalSupply
    totalSupply += 193573500000
    lockedBalanceOf[address(create.new_address)] = 193573500000
    emit Transfer(193573500000, 0, address(create.new_address));
    require 35 * 10^10 >= totalSupply
    require ext_code.size(address(create.new_address))
    call address(create.new_address).fillUpAllowance() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    saleTokensVaultAddress = address(create.new_address)
    require 35 * 10^10 >= totalSupply
}



}
