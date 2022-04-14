contract main {


// =======================  Init code  ======================


address stor3;
array of uint256 stor5;
array of uint256 stor6;
array of uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;

function _fallback() payable {
    bool(stor5.length) = 0
    stor5.length.field_1 = 11
    stor5.length.field_8 = 'Rocket Pool' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor6.length) = 0
    stor6.length.field_1 = 3
    stor6.length.field_8 = 'RPL' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor7.length) = 0
    stor7.length.field_1 = 3
    stor7.length.field_8 = '1.0' / 256
    idx = 0
    while stor7.length + 31 / 32 > idx:
        stor7[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor8 = 10^18
    stor9 = 0
    stor10 = 5000 * 10^18 * 3600
    require not msg.value
    stor3 = msg.sender
    return code.data[493 len 7779]
}



// =====================  Runtime code  =====================


const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
address newOwner;
array of uint256 name;
array of uint256 symbol;
array of uint256 version;
uint256 exponent;
uint256 totalSupply;
uint256 totalSupplyCap;
mapping of struct saleContractDepositEtherMax;
array of address stor12;

function name() {
    return name[0 len name.length]
}

function getSaleContractDepositEtherMax(address arg1) {
    require 1 == bool(saleContractDepositEtherMax[address(arg1)].field_2736)
    return saleContractDepositEtherMax[address(arg1)].field_1792
}

function totalSupply() {
    return totalSupply
}

function getSaleContractStartBlock(address arg1) {
    require 1 == bool(saleContractDepositEtherMax[address(arg1)].field_2736)
    return saleContractDepositEtherMax[address(arg1)].field_2048
}

function getSaleContractTargetEtherMin(address arg1) {
    require 1 == bool(saleContractDepositEtherMax[address(arg1)].field_2736)
    return saleContractDepositEtherMax[address(arg1)].field_768
}

function getSaleContractTokensMinted(address arg1) {
    require 1 == bool(saleContractDepositEtherMax[address(arg1)].field_2736)
    return saleContractDepositEtherMax[address(arg1)].field_1280
}

function exponent() {
    return exponent
}

function version() {
    return version[0 len version.length]
}

function getSaleContractDepositAddress(address arg1) {
    require 1 == bool(saleContractDepositEtherMax[address(arg1)].field_2736)
    return saleContractDepositEtherMax[address(arg1)].field_2560
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function totalSupplyCap() {
    return totalSupplyCap
}

function getSaleContractDepositEtherMin(address arg1) {
    require 1 == bool(saleContractDepositEtherMax[address(arg1)].field_2736)
    return saleContractDepositEtherMax[address(arg1)].field_1536
}

function getSaleContractTargetEtherMax(address arg1) {
    require 1 == bool(saleContractDepositEtherMax[address(arg1)].field_2736)
    return saleContractDepositEtherMax[address(arg1)].field_512
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function getSaleContractDepositAddressVerified(address arg1) {
    require 1 == bool(saleContractDepositEtherMax[address(arg1)].field_2736)
    return bool(saleContractDepositEtherMax[address(arg1)].field_2720)
}

function getSaleContractEndBlock(address arg1) {
    require 1 == bool(saleContractDepositEtherMax[address(arg1)].field_2736)
    return saleContractDepositEtherMax[address(arg1)].field_2304
}

function getSaleContractIsFinalised(address arg1) {
    require 1 == bool(saleContractDepositEtherMax[address(arg1)].field_2736)
    return bool(saleContractDepositEtherMax[address(arg1)].field_2728)
}

function getSaleContractTokensLimit(address arg1) {
    require 1 == bool(saleContractDepositEtherMax[address(arg1)].field_2736)
    return saleContractDepositEtherMax[address(arg1)].field_1024
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    newOwner = arg1
}

function getRemainingTokens() {
    require totalSupply <= totalSupplyCap
    return (totalSupplyCap - totalSupply)
}

function acceptOwnership() {
    require newOwner == msg.sender
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function setSaleContractDepositAddressVerified(address arg1) {
    require 1 == bool(saleContractDepositEtherMax[address(msg.sender)].field_2736)
    require saleContractDepositEtherMax[address(msg.sender)].field_2560 == arg1
    require arg1
    saleContractDepositEtherMax[address(msg.sender)].field_2720 = 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function validateClaimTokens(address arg1) {
    require 1 == bool(saleContractDepositEtherMax[address(msg.sender)].field_2736)
    require ext_code.size(msg.sender)
    call msg.sender.getContributionOf(address rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0] > 0
    require block.number > saleContractDepositEtherMax[address(msg.sender)].field_2304
    return 1
}

function setSaleContractFinalised(address arg1) {
    require 1 == bool(saleContractDepositEtherMax[address(msg.sender)].field_2736)
    require not saleContractDepositEtherMax[address(msg.sender)].field_2728
    require saleContractDepositEtherMax[address(msg.sender)].field_2560 == arg1
    if not saleContractDepositEtherMax[address(msg.sender)].field_2304:
        saleContractDepositEtherMax[address(msg.sender)].field_2304 = block.number
    require block.number >= saleContractDepositEtherMax[address(msg.sender)].field_2304
    require ext_code.size(msg.sender)
    call msg.sender.contributedTotal() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] >= saleContractDepositEtherMax[address(msg.sender)].field_768
    saleContractDepositEtherMax[address(msg.sender)].field_2728 = 1
    emit SaleFinalised(msg.sender, address(arg1), saleContractDepositEtherMax[address(msg.sender)].field_1280);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require 1 == bool(saleContractDepositEtherMax[address(msg.sender)].field_2736)
    require block.number > saleContractDepositEtherMax[address(msg.sender)].field_2048
    require 1 == bool(saleContractDepositEtherMax[address(msg.sender)].field_2720)
    require not saleContractDepositEtherMax[address(msg.sender)].field_2728
    require arg2 + saleContractDepositEtherMax[address(msg.sender)].field_1280 >= saleContractDepositEtherMax[address(msg.sender)].field_1280
    require saleContractDepositEtherMax[address(msg.sender)].field_1024 >= arg2 + saleContractDepositEtherMax[address(msg.sender)].field_1280
    require arg2 > 0
    require arg2 + totalSupply >= totalSupply
    require arg2 + totalSupply <= totalSupplyCap
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require arg2 + saleContractDepositEtherMax[address(msg.sender)].field_1280 >= saleContractDepositEtherMax[address(msg.sender)].field_1280
    saleContractDepositEtherMax[address(msg.sender)].field_1280 += arg2
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    emit MintToken(msg.sender, address(arg1), arg2);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function validateContribution(uint256 arg1) {
    require 1 == bool(saleContractDepositEtherMax[address(msg.sender)].field_2736)
    require arg1 > 0
    require 1 == bool(saleContractDepositEtherMax[address(msg.sender)].field_2720)
    require block.number > saleContractDepositEtherMax[address(msg.sender)].field_2048
    if block.number < saleContractDepositEtherMax[address(msg.sender)].field_2304:
        if arg1 >= saleContractDepositEtherMax[address(msg.sender)].field_1536:
            if arg1 <= saleContractDepositEtherMax[address(msg.sender)].field_1792:
                if not saleContractDepositEtherMax[address(msg.sender)].field_2728:
                    require ext_code.size(msg.sender)
                    call msg.sender.contributedTotal() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    if arg1 + ext_call.return_data[0] >= ext_call.return_data[0]:
                        if arg1 + ext_call.return_data[0] <= saleContractDepositEtherMax[address(msg.sender)].field_512:
                            return 1
    else:
        if not saleContractDepositEtherMax[address(msg.sender)].field_2304:
            if arg1 >= saleContractDepositEtherMax[address(msg.sender)].field_1536:
                if arg1 <= saleContractDepositEtherMax[address(msg.sender)].field_1792:
                    if not saleContractDepositEtherMax[address(msg.sender)].field_2728:
                        require ext_code.size(msg.sender)
                        call msg.sender.contributedTotal() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if arg1 + ext_call.return_data[0] >= ext_call.return_data[0]:
                            if arg1 + ext_call.return_data[0] <= saleContractDepositEtherMax[address(msg.sender)].field_512:
                                return 1
    revert
}

function setSaleAgentContract(address arg1, string arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, address arg10) {
    mem[128 len arg2.length] = arg2[all]
    require owner == msg.sender
    require arg1
    require arg10
    require arg5 > 0
    require arg5 <= totalSupplyCap
    require arg6 <= arg7
    mem[ceil32(arg2.length) + 128] = arg1
    mem[ceil32(arg2.length) + 576 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 608 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    saleContractDepositEtherMax[address(arg1)].field_0 = uint64(arg1) << 96
    saleContractDepositEtherMax[address(arg1)].field_256 = sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 576 len arg2.length % 32])
    saleContractDepositEtherMax[address(arg1)].field_512 = arg4
    saleContractDepositEtherMax[address(arg1)].field_768 = arg3
    saleContractDepositEtherMax[address(arg1)].field_1024 = arg5
    saleContractDepositEtherMax[address(arg1)].field_1280 = 0
    saleContractDepositEtherMax[address(arg1)].field_1536 = arg6
    saleContractDepositEtherMax[address(arg1)].field_1792 = arg7
    saleContractDepositEtherMax[address(arg1)].field_2048 = arg8
    saleContractDepositEtherMax[address(arg1)].field_2304 = arg9
    saleContractDepositEtherMax[address(arg1)].field_2560 = arg10
    saleContractDepositEtherMax[address(arg1)].field_2720 = 0
    saleContractDepositEtherMax[address(arg1)].field_2728 = 0
    saleContractDepositEtherMax[address(arg1)].field_2736 = 1
    stor12.length++
    if not stor12.length <= stor12.length + 1:
        idx = stor12.length + 1
        while stor12.length > idx:
            uint256(stor12[idx]) = 0
            idx = idx + 1
            continue 
    address(stor12[stor12.length]) = arg1
}



}
