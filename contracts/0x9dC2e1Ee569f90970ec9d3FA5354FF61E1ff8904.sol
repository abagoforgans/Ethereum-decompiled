contract main {


// =======================  Init code  ======================


uint256 stor0;
uint8 stor1;
uint256 stor1; offset 8
mapping of uint256 stor2;
address stor4;
uint128 stor5; offset 160
address stor6;
address stor8;
address stor9;
uint256 stor9;
uint256 stor10;
address stor11;

function _fallback() payable {
    Mask(248, 0, stor1.field_8) = 0
    stor5 = 0
    require not msg.value
    Mask(248, 0, stor1.field_8) = 1
    uint8(stor1.field_0) = 1
    require code.data[12546 len 20]
    stor4 = code.data[12546 len 20]
    require code.data[12610 len 20]
    stor6 = code.data[12610 len 20]
    stor8 = code.data[12578 len 20]
    require ext_code.size(stor8)
    call stor8.isDecentBetToken() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(stor8)
    call stor8.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor10 = ext_call.return_data[0]
    require ext_code.size(stor8)
    call stor8.0x9a45a263 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    uint256(stor9) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor9))
    require ext_code.size(address(stor9))
    call address(stor9).isMultiSigWallet() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    create contract with 0 wei
                    code: code.data[11235 len 1299], address(stor9)
    require create.new_address
    stor11 = address(create.new_address)
    require ext_code.size(stor11)
    call stor11.0xcd3faa6a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    if stor10:
        require stor10
        require 18 * stor10 / stor10 == 18
    require 18 * stor10 == (70 * 18 * stor10 / 70) + (18 * stor10 % 70)
    require stor2[stor11] + (18 * stor10 / 70) >= stor2[stor11]
    require stor2[stor11] + (18 * stor10 / 70) >= 18 * stor10 / 70
    stor2[stor11] += 18 * stor10 / 70
    emit Transfer((18 * stor10 / 70), 0, stor11);
    if stor10:
        require stor10
        require 10 * stor10 / stor10 == 10
    require 10 * stor10 == (70 * 10 * stor10 / 70) + (10 * stor10 % 70)
    require stor2[address(stor9)] + (10 * stor10 / 70) >= stor2[address(stor9)]
    require stor2[address(stor9)] + (10 * stor10 / 70) >= 10 * stor10 / 70
    stor2[address(stor9)] += 10 * stor10 / 70
    emit Transfer((10 * stor10 / 70), 0, address(stor9));
    if stor10:
        require stor10
        require 2 * stor10 / stor10 == 2
    require 2 * stor10 == (70 * 2 * stor10 / 70) + (2 * stor10 % 70)
    require stor2[address(stor9)] + (2 * stor10 / 70) >= stor2[address(stor9)]
    require stor2[address(stor9)] + (2 * stor10 / 70) >= 2 * stor10 / 70
    stor2[address(stor9)] += 2 * stor10 / 70
    emit Transfer((2 * stor10 / 70), 0, address(stor9));
    require (18 * stor10 / 70) + (10 * stor10 / 70) >= 18 * stor10 / 70
    require (18 * stor10 / 70) + (10 * stor10 / 70) >= 10 * stor10 / 70
    require 2 * stor10 / 70 >= 0
    require (18 * stor10 / 70) + (10 * stor10 / 70) + (2 * stor10 / 70) >= 2 * stor10 / 70
    stor0 = (18 * stor10 / 70) + (10 * stor10 / 70) + (2 * stor10 / 70)
    return code.data[3215 len 8020]
}



// =====================  Runtime code  =====================


const name = 'Decent.Bet Token'

const vaultPercentOfTotal = 18

const crowdfundPercentOfTotal = 70

const decimals = 18

const housePercentOfTotal = 10

const symbol = 'DBET'

const bountyPercentOfTotal = 2


uint256 totalSupply;
uint8 stor1;
uint8 stor1; offset 8
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address upgradeAgentAddress;
uint8 stor5; offset 160
uint128 stor5; offset 160
address nextUpgradeAgentAddress;
address nextUpgradeMasterAddress;
uint256 totalUpgraded;
address oldTokenAddress;
address decentBetMultisigAddress;
uint256 oldTokenTotalSupply;
address timeVaultAddress;

function nextUpgradeAgent() {
    return nextUpgradeAgentAddress
}

function oldTokenTotalSupply() {
    return oldTokenTotalSupply
}

function totalSupply() {
    return totalSupply
}

function upgradeAgent() {
    return upgradeAgentAddress
}

function isDecentBetToken() {
    return bool(uint8(stor1.field_0))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function isNewToken() {
    return bool(uint8(stor1.field_8))
}

function finalizedNextUpgrade() {
    return bool(uint8(stor5.field_160))
}

function decentBetMultisig() {
    return decentBetMultisigAddress
}

function oldToken() {
    return oldTokenAddress
}

function totalUpgraded() {
    return totalUpgraded
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function timeVault() {
    return timeVaultAddress
}

function nextUpgradeMaster() {
    return nextUpgradeMasterAddress
}

function _fallback() {
    revert
}

function setNextUpgradeMaster(address arg1) {
    require arg1
    require msg.sender == nextUpgradeMasterAddress
    nextUpgradeMasterAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function createToken(address arg1, uint256 arg2) {
    require msg.sender == upgradeAgentAddress
    require arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    require totalSupply + arg2 >= totalSupply
    require totalSupply + arg2 >= arg2
    totalSupply += arg2
    emit Transfer(arg2, arg1, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg1 != upgradeAgentAddress
    require arg1 != this.address
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function setNextUpgradeAgent(address arg1) {
    require arg1
    require msg.sender == nextUpgradeMasterAddress
    nextUpgradeAgentAddress = arg1
    require ext_code.size(nextUpgradeAgentAddress)
    call nextUpgradeAgentAddress.0x61d3d7a6 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(nextUpgradeAgentAddress)
    call nextUpgradeAgentAddress.0x9ef916ab with:
         gas gas_remaining - 710 wei
    require ext_call.success
    emit UpgradeAgentSet(nextUpgradeAgentAddress);
}

function finalizeNextUpgrade() {
    require ext_code.size(nextUpgradeAgentAddress)
    call nextUpgradeAgentAddress.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20]
    require msg.sender == nextUpgradeMasterAddress
    require not uint8(stor5.field_160)
    Mask(96, 0, stor5.field_160) = 1
    require ext_code.size(nextUpgradeAgentAddress)
    call nextUpgradeAgentAddress.0x9a508c8e with:
         gas gas_remaining - 710 wei
    require ext_call.success
    emit UpgradeFinalized(msg.sender, nextUpgradeAgentAddress);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg2 != upgradeAgentAddress
    require arg2 != this.address
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= arg3
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function upgrade(uint256 arg1) {
    require ext_code.size(nextUpgradeAgentAddress)
    call nextUpgradeAgentAddress.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20]
    require not uint8(stor5.field_160)
    require arg1
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    require totalUpgraded + arg1 >= totalUpgraded
    require totalUpgraded + arg1 >= arg1
    totalUpgraded += arg1
    require ext_code.size(nextUpgradeAgentAddress)
    call nextUpgradeAgentAddress.0x753e88e5 with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    emit Upgrade(arg1, msg.sender, nextUpgradeAgentAddress);
}



}
