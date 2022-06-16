contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - debtBalanceOf(address arg1, bytes4 arg2)
#  - issueSynths(bytes4 arg1, uint256 arg2)
#  - remainingIssuableSynths(address arg1, bytes4 arg2)
#  - issueMaxSynths(bytes4 arg1)
#  - transfer(address arg1, uint256 arg2)
#  - transferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
#  - burnSynths(bytes4 arg1, uint256 arg2)
#  - transfer(address arg1, uint256 arg2, bytes arg3)
#
const SELFDESTRUCT_DELAY = (672 * 24 * 3600)


address owner;
address nominatedOwner;
uint256 initiationTime;
uint8 stor3;
address selfDestructBeneficiaryAddress; offset 8
address proxyAddress;
address stor5;
uint256 stor5;
address tokenStateAddress;
array of uint256 name;
array of uint256 symbol;
uint256 totalSupply;
uint8 decimals;
array of address availableSynths;
mapping of address synths;
address feePoolAddress;
address escrowAddress;
address exchangeRatesAddress;
address synthetixStateAddress;
array of address stor660301456019777184113296434797620819555017468543624515662331739614079884729;
address stor45A9;

function name() {
    return name[0 len name.length]
}

function initiationTime() {
    return initiationTime
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function exchangeRates() {
    return exchangeRatesAddress
}

function synths(bytes4 arg1) {
    return synths[Mask(32, 224, arg1)]
}

function nominatedOwner() {
    return nominatedOwner
}

function availableSynths(uint256 arg1) {
    require arg1 < availableSynths.length
    return availableSynths[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function feePool() {
    return feePoolAddress
}

function selfDestructInitiated() {
    return bool(stor3)
}

function selfDestructBeneficiary() {
    return selfDestructBeneficiaryAddress
}

function synthetixState() {
    return synthetixStateAddress
}

function availableSynthCount() {
    return availableSynths.length
}

function escrow() {
    return escrowAddress
}

function tokenState() {
    return tokenStateAddress
}

function proxy() {
    return proxyAddress
}

function selfDestruct() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may pereorm this action'
    if not stor3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Self destruct has not yet been initiated'
    if initiationTime + (672 * 24 * 3600) >= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Self destruct delay has not yet elapsed'
    emit SelfDestructed(selfDestructBeneficiaryAddress);
    selfdestruct(selfDestructBeneficiaryAddress)
}

function _fallback() payable {
    revert
}

function setMessageSender(address arg1) {
    if proxyAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the proxy can call this function'
    address(stor5) = arg1
}

function setProxy(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may pereorm this action'
    proxyAddress = arg1
    emit ProxyUpdated(arg1);
}

function nominateNewOwner(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may pereorm this action'
    nominatedOwner = arg1
    emit OwnerNominated(arg1);
}

function terminateSelfDestruct() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may pereorm this action'
    initiationTime = 0
    stor3 = 0
    emit SelfDestructTerminated()
}

function initiateSelfDestruct() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may pereorm this action'
    initiationTime = block.timestamp
    stor3 = 1
    emit SelfDestructInitiated((672 * 24 * 3600));
}

function acceptOwnership() {
    if nominatedOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You must be nominated before you can accept ownership'
    emit OwnerChanged(owner, nominatedOwner);
    owner = nominatedOwner
    nominatedOwner = 0
}

function setEscrow(address arg1) {
    if proxyAddress != msg.sender:
        uint256(stor5) = msg.sender or Mask(96, 160, uint256(stor5))
    if owner != address(stor5):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'fThis action can only be performnd by the owner'
    escrowAddress = arg1
}

function balanceOf(address arg1) {
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setExchangeRates(address arg1) {
    if proxyAddress != msg.sender:
        uint256(stor5) = msg.sender or Mask(96, 160, uint256(stor5))
    if owner != address(stor5):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'fThis action can only be performnd by the owner'
    exchangeRatesAddress = arg1
}

function allowance(address arg1, address arg2) {
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0xdd62ed3e with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setSelfDestructBeneficiary(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may pereorm this action'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Beneficiary must not be the zero address'
    selfDestructBeneficiaryAddress = arg1
    emit SelfDestructBeneficiaryUpdated(arg1);
}

function setTokenState(address arg1) {
    if proxyAddress != msg.sender:
        uint256(stor5) = msg.sender or Mask(96, 160, uint256(stor5))
    if owner != address(stor5):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'fThis action can only be performnd by the owner'
    tokenStateAddress = arg1
    require ext_code.size(proxyAddress)
    call proxyAddress._emit(bytes arg1, uint256 arg2, bytes32 arg3, bytes32 arg4, bytes32 arg5, bytes32 arg6) with:
         gas gas_remaining wei
        args 192, 1, sha3('TokenStateUpdated(address)'), 0, 0, 0, 32, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setSynthetixState(address arg1) {
    if proxyAddress != msg.sender:
        uint256(stor5) = msg.sender or Mask(96, 160, uint256(stor5))
    if owner != address(stor5):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'fThis action can only be performnd by the owner'
    synthetixStateAddress = arg1
    require ext_code.size(proxyAddress)
    call proxyAddress._emit(bytes arg1, uint256 arg2, bytes32 arg3, bytes32 arg4, bytes32 arg5, bytes32 arg6) with:
         gas gas_remaining wei
        args 192, 1, sha3('StateContractChanged(address)'), 0, 0, 0, 32, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function collateral(address arg1) {
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not escrowAddress:
        return ext_call.return_data[0]
    require ext_code.size(escrowAddress)
    call escrowAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
    return (2 * ext_call.return_data[0])
}

function approve(address arg1, uint256 arg2) {
    if proxyAddress != msg.sender:
        uint256(stor5) = msg.sender or Mask(96, 160, uint256(stor5))
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.setAllowance(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(stor5), address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(proxyAddress)
    call proxyAddress._emit(bytes arg1, uint256 arg2, bytes32 arg3, bytes32 arg4, bytes32 arg5, bytes32 arg6) with:
         gas gas_remaining wei
        args 192, 3, sha3('Approval(address,address,uint256', ')'), address(stor5), address(arg1), 0, 32, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function addSynth(address arg1) {
    if proxyAddress != msg.sender:
        uint256(stor5) = msg.sender or Mask(96, 160, uint256(stor5))
    if owner != address(stor5):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'fThis action can only be performnd by the owner'
    require ext_code.size(arg1)
    call arg1.currencyKey() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if synths[Mask(32, 224, ext_call.return_data[0])]:
        revert with 0, 'Synth already exists'
    availableSynths.length++
    stor175B[stor11.length] = arg1
    synths[Mask(32, 224, ext_call.return_data[0])] = arg1
    require ext_code.size(proxyAddress)
    call proxyAddress._emit(bytes arg1, uint256 arg2, bytes32 arg3, bytes32 arg4, bytes32 arg5, bytes32 arg6) with:
         gas gas_remaining wei
        args 192, 1, sha3('SynthAdded(bytes4,address)'), 0, 0, 0, 64, Mask(32, 224, ext_call.return_data[0]), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setPreferredCurrency(bytes4 arg1) {
    if proxyAddress != msg.sender:
        uint256(stor5) = msg.sender or Mask(96, 160, uint256(stor5))
    if Mask(32, 224, arg1):
        require ext_code.size(exchangeRatesAddress)
        call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
             gas gas_remaining wei
            args Mask(32, 224, arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Currency rate is stale or doesn't exist.'
    require ext_code.size(synthetixStateAddress)
    call synthetixStateAddress.setPreferredCurrency(address arg1, bytes4 arg2) with:
         gas gas_remaining wei
        args address(stor5), Mask(32, 224, arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(proxyAddress)
    call proxyAddress._emit(bytes arg1, uint256 arg2, bytes32 arg3, bytes32 arg4, bytes32 arg5, bytes32 arg6) with:
         gas gas_remaining wei
        args 192, 2, sha3('PreferredCurrencyChanged(address', ',bytes4)'), address(stor5), 0, 0, 32, Mask(32, 224, arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function removeSynth(bytes4 arg1) payable {
    mem[64] = 96
    require not msg.value
    if proxyAddress != msg.sender:
        uint256(stor5) = msg.sender or Mask(96, 160, uint256(stor5))
    if owner != address(stor5):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'fThis action can only be performnd by the owner'
    if not synths[Mask(32, 224, arg1)]:
        revert with 0, 'Synth does not exist'
    require ext_code.size(synths[Mask(32, 224, arg1)])
    call synths[Mask(32, 224, arg1)].0x18160ddd with:
         gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Synth supply exists'
    if Mask(32, 224, arg1) == 0x5844520000000000000000000000000000000000000000000000000000000000:
        revert with 0, 'Cannot remove XDR synth'
    mem[0] = Mask(32, 224, arg1)
    mem[32] = 12
    idx = 0
    while uint8(idx) < availableSynths.length:
        mem[0] = 11
        if availableSynths[uint8(idx)] != synths[Mask(32, 224, arg1)]:
            idx = idx + 1
            continue 
        require uint8(idx) < availableSynths.length
        availableSynths[uint8(idx)] = 0
        require availableSynths.length - 1 < availableSynths.length
        require uint8(idx) < availableSynths.length
        availableSynths[uint8(idx)] = availableSynths[availableSynths.length]
        availableSynths.length--
        if availableSynths.length > availableSynths.length - 1:
            idx = availableSynths.length + sha3(11) - 1
            while sha3(11) + availableSynths.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        synths[Mask(32, 224, arg1)] = 0
        mem[160] = synths[Mask(32, 224, arg1)]
        mem[192] = 0x907dff9700000000000000000000000000000000000000000000000000000000
        mem[196] = 192
        idx = 32
        while idx < 64:
            mem[idx + 420] = mem[idx + 128]
            idx = idx + 32
            continue 
        require ext_code.size(proxyAddress)
        call proxyAddress._emit(bytes arg1, uint256 arg2, bytes32 arg3, bytes32 arg4, bytes32 arg5, bytes32 arg6) with:
             gas gas_remaining wei
            args 192, 1, sha3('SynthRemoved(bytes4,address)'), 0, 0, 0, 64, Mask(32, 224, arg1), mem[452]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    synths[Mask(32, 224, arg1)] = 0
    require ext_code.size(proxyAddress)
    call proxyAddress._emit(bytes arg1, uint256 arg2, bytes32 arg3, bytes32 arg4, bytes32 arg5, bytes32 arg6) with:
         gas gas_remaining wei
        args 192, 1, sha3('SynthRemoved(bytes4,address)'), 0, 0, 0, 64, Mask(32, 224, arg1), synths[Mask(32, 224, arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function effectiveValue(bytes4 arg1, uint256 arg2, bytes4 arg3) {
    require ext_code.size(exchangeRatesAddress)
    call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
         gas gas_remaining wei
        args Mask(32, 224, arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
    require ext_code.size(exchangeRatesAddress)
    call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
         gas gas_remaining wei
        args Mask(32, 224, arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
    if Mask(32, 224, arg3) == Mask(32, 224, arg1):
        return arg2
    require ext_code.size(exchangeRatesAddress)
    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
         gas gas_remaining wei
        args Mask(32, 224, arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(exchangeRatesAddress)
    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
         gas gas_remaining wei
        args Mask(32, 224, arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        require ext_call.return_data[0] > 0
        require ext_call.return_data[0]
        if 0 / ext_call.return_data[0] % 10 < 5:
            return (0 / ext_call.return_data[0] / 10)
        return ((0 / ext_call.return_data[0]) + 10 / 10)
    require ext_call.return_data[0] * arg2 / arg2 == ext_call.return_data[0]
    if ext_call.return_data[0] * arg2 / 10^17 % 10 < 5:
        if not ext_call.return_data[0] * arg2 / 10^17 / 10:
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 0 / ext_call.return_data[0] % 10 < 5:
                return (0 / ext_call.return_data[0] / 10)
            return ((0 / ext_call.return_data[0]) + 10 / 10)
        require 10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] * arg2 / 10^17 / 10 == 10 * 10^18
        require ext_call.return_data[0] > 0
        require ext_call.return_data[0]
        if 10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
            return (10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] / 10)
        return ((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10)
    if not (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10:
        require ext_call.return_data[0] > 0
        require ext_call.return_data[0]
        if 0 / ext_call.return_data[0] % 10 < 5:
            return (0 / ext_call.return_data[0] / 10)
        return ((0 / ext_call.return_data[0]) + 10 / 10)
    require 10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 == 10 * 10^18
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0]
    if 10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
        return (10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10)
    return ((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10)
}

function totalIssuedSynths(bytes4 arg1) {
    require ext_code.size(exchangeRatesAddress)
    call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
         gas gas_remaining wei
        args Mask(32, 224, arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
    mem[100] = Mask(32, 224, arg1)
    require ext_code.size(exchangeRatesAddress)
    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
         gas gas_remaining wei
        args Mask(32, 224, arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = availableSynths.length
    if availableSynths.length:
        mem[128 len 32 * availableSynths.length] = code.data[23666 len 32 * availableSynths.length]
    idx = 0
    while uint8(idx) < availableSynths.length:
        mem[0] = 11
        require ext_code.size(availableSynths[uint8(idx)])
        call availableSynths[uint8(idx)].currencyKey() with:
             gas gas_remaining wei
        mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require uint8(idx) < mem[96]
        mem[(32 * uint8(idx)) + 128] = Mask(32, 224, ext_call.return_data[0])
        idx = idx + 1
        continue 
    mem[(32 * availableSynths.length) + 128] = 0x370d62ad00000000000000000000000000000000000000000000000000000000
    mem[(32 * availableSynths.length) + 132] = 32
    mem[(32 * availableSynths.length) + 164] = mem[96]
    mem[(32 * availableSynths.length) + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    require ext_code.size(exchangeRatesAddress)
    call exchangeRatesAddress.anyRateIsStale(bytes4[] arg1) with:
         gas gas_remaining wei
        args 32, mem[(32 * availableSynths.length) + 164 len (32 * mem[96]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Rates are stale'
    s = 0
    idx = 0
    s = 0
    while uint8(idx) < availableSynths.length:
        require ext_code.size(availableSynths[uint8(idx)])
        call availableSynths[uint8(idx)].currencyKey() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * availableSynths.length) + 132] = Mask(32, 224, ext_call.return_data[0])
        require ext_code.size(exchangeRatesAddress)
        call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
             gas gas_remaining wei
            args Mask(32, 224, ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require uint8(idx) < availableSynths.length
        mem[0] = 11
        require ext_code.size(availableSynths[uint8(idx)])
        call availableSynths[uint8(idx)].0x18160ddd with:
             gas gas_remaining wei
        mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 0 / ext_call.return_data[0] % 10 < 5:
                require (0 / ext_call.return_data[0] / 10) + s >= s
                s = 0 / ext_call.return_data[0] / 10
                idx = idx + 1
                s = (0 / ext_call.return_data[0] / 10) + s
                continue 
            require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
            s = (0 / ext_call.return_data[0]) + 10 / 10
            idx = idx + 1
            s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
            continue 
        require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^17 % 10 < 5:
            if not ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] % 10 < 5:
                    require (0 / ext_call.return_data[0] / 10) + s >= s
                    s = 0 / ext_call.return_data[0] / 10
                    idx = idx + 1
                    s = (0 / ext_call.return_data[0] / 10) + s
                    continue 
                require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                s = (0 / ext_call.return_data[0]) + 10 / 10
                idx = idx + 1
                s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                continue 
            require 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 == 10 * 10^18
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                require (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s >= s
                s = 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10
                idx = idx + 1
                s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s
                continue 
            require ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
            s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
            idx = idx + 1
            s = ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s
            continue 
        if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10:
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 0 / ext_call.return_data[0] % 10 < 5:
                require (0 / ext_call.return_data[0] / 10) + s >= s
                s = 0 / ext_call.return_data[0] / 10
                idx = idx + 1
                s = (0 / ext_call.return_data[0] / 10) + s
                continue 
            require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
            s = (0 / ext_call.return_data[0]) + 10 / 10
            idx = idx + 1
            s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
            continue 
        require 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 == 10 * 10^18
        require ext_call.return_data[0] > 0
        require ext_call.return_data[0]
        if 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
            require (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s >= s
            s = 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
            idx = idx + 1
            s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s
            continue 
        require ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
        s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
        idx = idx + 1
        s = ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s
        continue 
    return s
}

function synthInitiatedExchange(address arg1, bytes4 arg2, uint256 arg3, bytes4 arg4, address arg5) payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while uint8(idx) < availableSynths.length:
        mem[0] = 11
        if availableSynths[uint8(idx)] != msg.sender:
            idx = idx + 1
            continue 
        if Mask(32, 224, arg4) == Mask(32, 224, arg2):
            revert with 0, 'Can't be same synth'
        if arg3 <= 0:
            revert with 0, 'Zero amount'
        require ext_code.size(feePoolAddress)
        call feePoolAddress.FEE_ADDRESS() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] == arg1:
            revert with 0, 'Fee address not allowed'
        if not arg5:
            revert with 0, 'Zero destination'
        if this.address == arg5:
            revert with 0, 'Synthetix is invalid destination'
        if proxyAddress == arg5:
            revert with 0, 'Proxy is invalid destination'
        require ext_code.size(synths[Mask(32, 224, arg2)])
        call synths[Mask(32, 224, arg2)].0x9dc29fac with:
             gas gas_remaining wei
            args address(arg1), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(exchangeRatesAddress)
        call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
             gas gas_remaining wei
            args Mask(32, 224, arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
        require ext_code.size(exchangeRatesAddress)
        call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
             gas gas_remaining wei
            args Mask(32, 224, arg4)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
        if Mask(32, 224, arg4) == Mask(32, 224, arg2):
            require ext_code.size(synths[Mask(32, 224, arg4)])
            call synths[Mask(32, 224, arg4)].issue(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg5), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(synths[Mask(32, 224, arg4)])
            call synths[Mask(32, 224, arg4)].triggerTokenFallbackIfNeeded(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(arg1), address(arg5), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[128] = Mask(32, 224, arg2)
            mem[160] = arg3
            mem[192] = Mask(32, 224, arg4)
            mem[224] = arg3
        else:
            require ext_code.size(exchangeRatesAddress)
            call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                 gas gas_remaining wei
                args Mask(32, 224, arg4)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(exchangeRatesAddress)
            call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                 gas gas_remaining wei
                args Mask(32, 224, arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg3:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                require ext_code.size(synths[Mask(32, 224, arg4)])
                if 0 / ext_call.return_data[0] % 10 < 5:
                    call synths[Mask(32, 224, arg4)].issue(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg5), 0 / ext_call.return_data[0] / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(synths[Mask(32, 224, arg4)])
                    call synths[Mask(32, 224, arg4)].triggerTokenFallbackIfNeeded(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg1), address(arg5), 0 / ext_call.return_data[0] / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[128] = Mask(32, 224, arg2)
                    mem[160] = arg3
                    mem[192] = Mask(32, 224, arg4)
                    mem[224] = 0 / ext_call.return_data[0] / 10
                else:
                    call synths[Mask(32, 224, arg4)].issue(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg5), (0 / ext_call.return_data[0]) + 10 / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(synths[Mask(32, 224, arg4)])
                    call synths[Mask(32, 224, arg4)].triggerTokenFallbackIfNeeded(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(arg1), address(arg5), (0 / ext_call.return_data[0]) + 10 / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[128] = Mask(32, 224, arg2)
                    mem[160] = arg3
                    mem[192] = Mask(32, 224, arg4)
                    mem[224] = (0 / ext_call.return_data[0]) + 10 / 10
            else:
                require ext_call.return_data[0] * arg3 / arg3 == ext_call.return_data[0]
                if ext_call.return_data[0] * arg3 / 10^17 % 10 < 5:
                    if not ext_call.return_data[0] * arg3 / 10^17 / 10:
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        require ext_code.size(synths[Mask(32, 224, arg4)])
                        if 0 / ext_call.return_data[0] % 10 < 5:
                            call synths[Mask(32, 224, arg4)].issue(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg5), 0 / ext_call.return_data[0] / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(synths[Mask(32, 224, arg4)])
                            call synths[Mask(32, 224, arg4)].triggerTokenFallbackIfNeeded(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), address(arg5), 0 / ext_call.return_data[0] / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[128] = Mask(32, 224, arg2)
                            mem[160] = arg3
                            mem[192] = Mask(32, 224, arg4)
                            mem[224] = 0 / ext_call.return_data[0] / 10
                        else:
                            call synths[Mask(32, 224, arg4)].issue(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg5), (0 / ext_call.return_data[0]) + 10 / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(synths[Mask(32, 224, arg4)])
                            call synths[Mask(32, 224, arg4)].triggerTokenFallbackIfNeeded(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), address(arg5), (0 / ext_call.return_data[0]) + 10 / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[128] = Mask(32, 224, arg2)
                            mem[160] = arg3
                            mem[192] = Mask(32, 224, arg4)
                            mem[224] = (0 / ext_call.return_data[0]) + 10 / 10
                    else:
                        require 10 * 10^18 * ext_call.return_data[0] * arg3 / 10^17 / 10 / ext_call.return_data[0] * arg3 / 10^17 / 10 == 10 * 10^18
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        require ext_code.size(synths[Mask(32, 224, arg4)])
                        if 10 * 10^18 * ext_call.return_data[0] * arg3 / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                            call synths[Mask(32, 224, arg4)].issue(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg5), 10 * 10^18 * ext_call.return_data[0] * arg3 / 10^17 / 10 / ext_call.return_data[0] / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(synths[Mask(32, 224, arg4)])
                            call synths[Mask(32, 224, arg4)].triggerTokenFallbackIfNeeded(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), address(arg5), 10 * 10^18 * ext_call.return_data[0] * arg3 / 10^17 / 10 / ext_call.return_data[0] / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[128] = Mask(32, 224, arg2)
                            mem[160] = arg3
                            mem[192] = Mask(32, 224, arg4)
                            mem[224] = 10 * 10^18 * ext_call.return_data[0] * arg3 / 10^17 / 10 / ext_call.return_data[0] / 10
                        else:
                            call synths[Mask(32, 224, arg4)].issue(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg5), (10 * 10^18 * ext_call.return_data[0] * arg3 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(synths[Mask(32, 224, arg4)])
                            call synths[Mask(32, 224, arg4)].triggerTokenFallbackIfNeeded(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), address(arg5), (10 * 10^18 * ext_call.return_data[0] * arg3 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[128] = Mask(32, 224, arg2)
                            mem[160] = arg3
                            mem[192] = Mask(32, 224, arg4)
                            mem[224] = (10 * 10^18 * ext_call.return_data[0] * arg3 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                else:
                    if not (ext_call.return_data[0] * arg3 / 10^17) + 10 / 10:
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        require ext_code.size(synths[Mask(32, 224, arg4)])
                        if 0 / ext_call.return_data[0] % 10 < 5:
                            call synths[Mask(32, 224, arg4)].issue(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg5), 0 / ext_call.return_data[0] / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(synths[Mask(32, 224, arg4)])
                            call synths[Mask(32, 224, arg4)].triggerTokenFallbackIfNeeded(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), address(arg5), 0 / ext_call.return_data[0] / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[128] = Mask(32, 224, arg2)
                            mem[160] = arg3
                            mem[192] = Mask(32, 224, arg4)
                            mem[224] = 0 / ext_call.return_data[0] / 10
                        else:
                            call synths[Mask(32, 224, arg4)].issue(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg5), (0 / ext_call.return_data[0]) + 10 / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(synths[Mask(32, 224, arg4)])
                            call synths[Mask(32, 224, arg4)].triggerTokenFallbackIfNeeded(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), address(arg5), (0 / ext_call.return_data[0]) + 10 / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[128] = Mask(32, 224, arg2)
                            mem[160] = arg3
                            mem[192] = Mask(32, 224, arg4)
                            mem[224] = (0 / ext_call.return_data[0]) + 10 / 10
                    else:
                        require 10 * 10^18 * (ext_call.return_data[0] * arg3 / 10^17) + 10 / 10 / (ext_call.return_data[0] * arg3 / 10^17) + 10 / 10 == 10 * 10^18
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        require ext_code.size(synths[Mask(32, 224, arg4)])
                        if 10 * 10^18 * (ext_call.return_data[0] * arg3 / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                            call synths[Mask(32, 224, arg4)].issue(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg5), 10 * 10^18 * (ext_call.return_data[0] * arg3 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(synths[Mask(32, 224, arg4)])
                            call synths[Mask(32, 224, arg4)].triggerTokenFallbackIfNeeded(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), address(arg5), 10 * 10^18 * (ext_call.return_data[0] * arg3 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[128] = Mask(32, 224, arg2)
                            mem[160] = arg3
                            mem[192] = Mask(32, 224, arg4)
                            mem[224] = 10 * 10^18 * (ext_call.return_data[0] * arg3 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                        else:
                            call synths[Mask(32, 224, arg4)].issue(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg5), (10 * 10^18 * (ext_call.return_data[0] * arg3 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(synths[Mask(32, 224, arg4)])
                            call synths[Mask(32, 224, arg4)].triggerTokenFallbackIfNeeded(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args address(arg1), address(arg5), (10 * 10^18 * (ext_call.return_data[0] * arg3 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[128] = Mask(32, 224, arg2)
                            mem[160] = arg3
                            mem[192] = Mask(32, 224, arg4)
                            mem[224] = (10 * 10^18 * (ext_call.return_data[0] * arg3 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
        mem[256] = arg5
        mem[288] = 0x907dff9700000000000000000000000000000000000000000000000000000000
        mem[292] = 192
        idx = 0
        while idx < 160:
            mem[idx + 516] = mem[idx + 128]
            idx = idx + 32
            continue 
        require ext_code.size(proxyAddress)
        call proxyAddress._emit(bytes arg1, uint256 arg2, bytes32 arg3, bytes32 arg4, bytes32 arg5, bytes32 arg6) with:
             gas gas_remaining wei
            args 192, 2, sha3('SynthExchange(address,bytes4,uin', 't256,bytes4,uint256,address)'), address(arg1), 0, 0, 160, mem[516 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return 1
    revert with 0, 'Only synth allowed'
}

function maxIssuableSynths(address arg1, bytes4 arg2) {
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not escrowAddress:
        require ext_code.size(exchangeRatesAddress)
        call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
             gas gas_remaining wei
            args 0x534e580000000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
        require ext_code.size(exchangeRatesAddress)
        call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
             gas gas_remaining wei
            args Mask(32, 224, arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
        if Mask(32, 224, arg2) == 0x534e580000000000000000000000000000000000000000000000000000000000:
            require ext_code.size(synthetixStateAddress)
            call synthetixStateAddress.issuanceRatio() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                return 0
            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
        require ext_code.size(exchangeRatesAddress)
        call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
             gas gas_remaining wei
            args Mask(32, 224, arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(exchangeRatesAddress)
        call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
             gas gas_remaining wei
            args 0x534e580000000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            require ext_code.size(synthetixStateAddress)
            call synthetixStateAddress.issuanceRatio() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 / ext_call.return_data[0] % 10 < 5:
                if not 0 / ext_call.return_data[0] / 10:
                    return 0
                require ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 0 / ext_call.return_data[0] / 10 == ext_call.return_data[0]
                return (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 10^18)
            if not (0 / ext_call.return_data[0]) + 10 / 10:
                return 0
            require ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / (0 / ext_call.return_data[0]) + 10 / 10 == ext_call.return_data[0]
            return (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 10^18)
        require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^17 % 10 < 5:
            if not ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                require ext_code.size(synthetixStateAddress)
                call synthetixStateAddress.issuanceRatio() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 / ext_call.return_data[0] % 10 < 5:
                    if not 0 / ext_call.return_data[0] / 10:
                        return 0
                    require ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 0 / ext_call.return_data[0] / 10 == ext_call.return_data[0]
                    return (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 10^18)
                if not (0 / ext_call.return_data[0]) + 10 / 10:
                    return 0
                require ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / (0 / ext_call.return_data[0]) + 10 / 10 == ext_call.return_data[0]
                return (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 10^18)
            require 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 == 10 * 10^18
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            require ext_code.size(synthetixStateAddress)
            call synthetixStateAddress.issuanceRatio() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                if not 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10:
                    return 0
                require ext_call.return_data[0] * 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10 / 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10 == ext_call.return_data[0]
                return (ext_call.return_data[0] * 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10 / 10^18)
            if not (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10:
                return 0
            require ext_call.return_data[0] * (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10 / (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10 == ext_call.return_data[0]
            return (ext_call.return_data[0] * (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10 / 10^18)
        if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10:
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            require ext_code.size(synthetixStateAddress)
            call synthetixStateAddress.issuanceRatio() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 / ext_call.return_data[0] % 10 < 5:
                if not 0 / ext_call.return_data[0] / 10:
                    return 0
                require ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 0 / ext_call.return_data[0] / 10 == ext_call.return_data[0]
                return (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 10^18)
            if not (0 / ext_call.return_data[0]) + 10 / 10:
                return 0
            require ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / (0 / ext_call.return_data[0]) + 10 / 10 == ext_call.return_data[0]
            return (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 10^18)
        require 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 == 10 * 10^18
        require ext_call.return_data[0] > 0
        require ext_call.return_data[0]
        require ext_code.size(synthetixStateAddress)
        call synthetixStateAddress.issuanceRatio() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
            if not 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10:
                return 0
            require ext_call.return_data[0] * 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10 / 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10 == ext_call.return_data[0]
            return (ext_call.return_data[0] * 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10 / 10^18)
        if not (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10:
            return 0
        require ext_call.return_data[0] * (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 / (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 == ext_call.return_data[0]
        return (ext_call.return_data[0] * (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 / 10^18)
    require ext_code.size(escrowAddress)
    call escrowAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_code.size(exchangeRatesAddress)
    call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
         gas gas_remaining wei
        args 0x534e580000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
    require ext_code.size(exchangeRatesAddress)
    call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
         gas gas_remaining wei
        args Mask(32, 224, arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
    if Mask(32, 224, arg2) == 0x534e580000000000000000000000000000000000000000000000000000000000:
        require ext_code.size(synthetixStateAddress)
        call synthetixStateAddress.issuanceRatio() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 2 * ext_call.return_data[0]:
            return 0
        require (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 2 * ext_call.return_data[0] == ext_call.return_data[0]
        return ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18)
    require ext_code.size(exchangeRatesAddress)
    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
         gas gas_remaining wei
        args Mask(32, 224, arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(exchangeRatesAddress)
    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
         gas gas_remaining wei
        args 0x534e580000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not 2 * ext_call.return_data[0]:
        require ext_call.return_data[0] > 0
        require ext_call.return_data[0]
        require ext_code.size(synthetixStateAddress)
        call synthetixStateAddress.issuanceRatio() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 / ext_call.return_data[0] % 10 < 5:
            if not 0 / ext_call.return_data[0] / 10:
                return 0
            require ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 0 / ext_call.return_data[0] / 10 == ext_call.return_data[0]
            return (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 10^18)
        if not (0 / ext_call.return_data[0]) + 10 / 10:
            return 0
        require ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / (0 / ext_call.return_data[0]) + 10 / 10 == ext_call.return_data[0]
        return (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 10^18)
    require (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 2 * ext_call.return_data[0] == ext_call.return_data[0]
    if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 % 10 < 5:
        if not (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10:
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            require ext_code.size(synthetixStateAddress)
            call synthetixStateAddress.issuanceRatio() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 / ext_call.return_data[0] % 10 < 5:
                if not 0 / ext_call.return_data[0] / 10:
                    return 0
                require ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 0 / ext_call.return_data[0] / 10 == ext_call.return_data[0]
                return (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 10^18)
            if not (0 / ext_call.return_data[0]) + 10 / 10:
                return 0
            require ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / (0 / ext_call.return_data[0]) + 10 / 10 == ext_call.return_data[0]
            return (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 10^18)
        require 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 == 10 * 10^18
        require ext_call.return_data[0] > 0
        require ext_call.return_data[0]
        require ext_code.size(synthetixStateAddress)
        call synthetixStateAddress.issuanceRatio() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
            if not 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] / 10:
                return 0
            require ext_call.return_data[0] * 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] / 10 / 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] / 10 == ext_call.return_data[0]
            return (ext_call.return_data[0] * 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] / 10 / 10^18)
        if not (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10:
            return 0
        require ext_call.return_data[0] * (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10 / (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10 == ext_call.return_data[0]
        return (ext_call.return_data[0] * (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10 / 10^18)
    if not ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10:
        require ext_call.return_data[0] > 0
        require ext_call.return_data[0]
        require ext_code.size(synthetixStateAddress)
        call synthetixStateAddress.issuanceRatio() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 / ext_call.return_data[0] % 10 < 5:
            if not 0 / ext_call.return_data[0] / 10:
                return 0
            require ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 0 / ext_call.return_data[0] / 10 == ext_call.return_data[0]
            return (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 10^18)
        if not (0 / ext_call.return_data[0]) + 10 / 10:
            return 0
        require ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / (0 / ext_call.return_data[0]) + 10 / 10 == ext_call.return_data[0]
        return (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 10^18)
    require 10 * 10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 == 10 * 10^18
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0]
    require ext_code.size(synthetixStateAddress)
    call synthetixStateAddress.issuanceRatio() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 10 * 10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
        if not 10 * 10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] / 10:
            return 0
        require ext_call.return_data[0] * 10 * 10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] / 10 / 10 * 10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] / 10 == ext_call.return_data[0]
        return (ext_call.return_data[0] * 10 * 10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] / 10 / 10^18)
    if not (10 * 10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10:
        return 0
    require ext_call.return_data[0] * (10 * 10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 / (10 * 10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 == ext_call.return_data[0]
    return (ext_call.return_data[0] * (10 * 10^18 * ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 / 10^18)
}

function synthInitiatedFeePayment(address arg1, bytes4 arg2, uint256 arg3) payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while uint8(idx) < availableSynths.length:
        mem[0] = 11
        if availableSynths[uint8(idx)] != msg.sender:
            idx = idx + 1
            continue 
        if arg3:
            if arg3 <= 0:
                revert with 0, 'Source can't be 0'
            require ext_code.size(feePoolAddress)
            call feePoolAddress.FEE_ADDRESS() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(feePoolAddress)
            call feePoolAddress.FEE_ADDRESS() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == arg1:
                revert with 0, 'Fee address not allowed'
            if not address(ext_call.return_data[0]):
                revert with 0, 'Zero destination'
            if this.address == address(ext_call.return_data[0]):
                revert with 0, 'Synthetix is invalid destination'
            if proxyAddress == address(ext_call.return_data[0]):
                revert with 0, 'Proxy is invalid destination'
            require ext_code.size(synths[Mask(32, 224, arg2)])
            call synths[Mask(32, 224, arg2)].0x9dc29fac with:
                 gas gas_remaining wei
                args address(arg1), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(exchangeRatesAddress)
            call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                 gas gas_remaining wei
                args Mask(32, 224, arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
            require ext_code.size(exchangeRatesAddress)
            call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                 gas gas_remaining wei
                args 0x5844520000000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
            if 0x5844520000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg2):
                require ext_code.size(synths[0x5844520000000000000000000000000000000000000000000000000000000000])
                call synths[0x5844520000000000000000000000000000000000000000000000000000000000].issue(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(synths[0x5844520000000000000000000000000000000000000000000000000000000000])
                call synths[0x5844520000000000000000000000000000000000000000000000000000000000].triggerTokenFallbackIfNeeded(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args address(arg1), address(ext_call.return_data[0]), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[128] = Mask(32, 224, arg2)
                mem[160] = arg3
                mem[192] = 0x5844520000000000000000000000000000000000000000000000000000000000
                mem[224] = arg3
            else:
                require ext_code.size(exchangeRatesAddress)
                call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                     gas gas_remaining wei
                    args 0x5844520000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(exchangeRatesAddress)
                call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                     gas gas_remaining wei
                    args Mask(32, 224, arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not arg3:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    require ext_code.size(synths[0x5844520000000000000000000000000000000000000000000000000000000000])
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        call synths[0x5844520000000000000000000000000000000000000000000000000000000000].issue(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(synths[0x5844520000000000000000000000000000000000000000000000000000000000])
                        call synths[0x5844520000000000000000000000000000000000000000000000000000000000].triggerTokenFallbackIfNeeded(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[128] = Mask(32, 224, arg2)
                        mem[160] = arg3
                        mem[192] = 0x5844520000000000000000000000000000000000000000000000000000000000
                        mem[224] = 0 / ext_call.return_data[0] / 10
                    else:
                        call synths[0x5844520000000000000000000000000000000000000000000000000000000000].issue(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(synths[0x5844520000000000000000000000000000000000000000000000000000000000])
                        call synths[0x5844520000000000000000000000000000000000000000000000000000000000].triggerTokenFallbackIfNeeded(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(arg1), address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[128] = Mask(32, 224, arg2)
                        mem[160] = arg3
                        mem[192] = 0x5844520000000000000000000000000000000000000000000000000000000000
                        mem[224] = (0 / ext_call.return_data[0]) + 10 / 10
                else:
                    require ext_call.return_data[0] * arg3 / arg3 == ext_call.return_data[0]
                    if ext_call.return_data[0] * arg3 / 10^17 % 10 < 5:
                        if not ext_call.return_data[0] * arg3 / 10^17 / 10:
                            require ext_call.return_data[0] > 0
                            require ext_call.return_data[0]
                            require ext_code.size(synths[0x5844520000000000000000000000000000000000000000000000000000000000])
                            if 0 / ext_call.return_data[0] % 10 < 5:
                                call synths[0x5844520000000000000000000000000000000000000000000000000000000000].issue(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(synths[0x5844520000000000000000000000000000000000000000000000000000000000])
                                call synths[0x5844520000000000000000000000000000000000000000000000000000000000].triggerTokenFallbackIfNeeded(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[128] = Mask(32, 224, arg2)
                                mem[160] = arg3
                                mem[192] = 0x5844520000000000000000000000000000000000000000000000000000000000
                                mem[224] = 0 / ext_call.return_data[0] / 10
                            else:
                                call synths[0x5844520000000000000000000000000000000000000000000000000000000000].issue(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(synths[0x5844520000000000000000000000000000000000000000000000000000000000])
                                call synths[0x5844520000000000000000000000000000000000000000000000000000000000].triggerTokenFallbackIfNeeded(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[128] = Mask(32, 224, arg2)
                                mem[160] = arg3
                                mem[192] = 0x5844520000000000000000000000000000000000000000000000000000000000
                                mem[224] = (0 / ext_call.return_data[0]) + 10 / 10
                        else:
                            require 10 * 10^18 * ext_call.return_data[0] * arg3 / 10^17 / 10 / ext_call.return_data[0] * arg3 / 10^17 / 10 == 10 * 10^18
                            require ext_call.return_data[0] > 0
                            require ext_call.return_data[0]
                            require ext_code.size(synths[0x5844520000000000000000000000000000000000000000000000000000000000])
                            if 10 * 10^18 * ext_call.return_data[0] * arg3 / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                                call synths[0x5844520000000000000000000000000000000000000000000000000000000000].issue(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), 10 * 10^18 * ext_call.return_data[0] * arg3 / 10^17 / 10 / ext_call.return_data[0] / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(synths[0x5844520000000000000000000000000000000000000000000000000000000000])
                                call synths[0x5844520000000000000000000000000000000000000000000000000000000000].triggerTokenFallbackIfNeeded(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), address(ext_call.return_data[0]), 10 * 10^18 * ext_call.return_data[0] * arg3 / 10^17 / 10 / ext_call.return_data[0] / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[128] = Mask(32, 224, arg2)
                                mem[160] = arg3
                                mem[192] = 0x5844520000000000000000000000000000000000000000000000000000000000
                                mem[224] = 10 * 10^18 * ext_call.return_data[0] * arg3 / 10^17 / 10 / ext_call.return_data[0] / 10
                            else:
                                call synths[0x5844520000000000000000000000000000000000000000000000000000000000].issue(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), (10 * 10^18 * ext_call.return_data[0] * arg3 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(synths[0x5844520000000000000000000000000000000000000000000000000000000000])
                                call synths[0x5844520000000000000000000000000000000000000000000000000000000000].triggerTokenFallbackIfNeeded(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), address(ext_call.return_data[0]), (10 * 10^18 * ext_call.return_data[0] * arg3 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[128] = Mask(32, 224, arg2)
                                mem[160] = arg3
                                mem[192] = 0x5844520000000000000000000000000000000000000000000000000000000000
                                mem[224] = (10 * 10^18 * ext_call.return_data[0] * arg3 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                    else:
                        if not (ext_call.return_data[0] * arg3 / 10^17) + 10 / 10:
                            require ext_call.return_data[0] > 0
                            require ext_call.return_data[0]
                            require ext_code.size(synths[0x5844520000000000000000000000000000000000000000000000000000000000])
                            if 0 / ext_call.return_data[0] % 10 < 5:
                                call synths[0x5844520000000000000000000000000000000000000000000000000000000000].issue(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(synths[0x5844520000000000000000000000000000000000000000000000000000000000])
                                call synths[0x5844520000000000000000000000000000000000000000000000000000000000].triggerTokenFallbackIfNeeded(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[128] = Mask(32, 224, arg2)
                                mem[160] = arg3
                                mem[192] = 0x5844520000000000000000000000000000000000000000000000000000000000
                                mem[224] = 0 / ext_call.return_data[0] / 10
                            else:
                                call synths[0x5844520000000000000000000000000000000000000000000000000000000000].issue(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(synths[0x5844520000000000000000000000000000000000000000000000000000000000])
                                call synths[0x5844520000000000000000000000000000000000000000000000000000000000].triggerTokenFallbackIfNeeded(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[128] = Mask(32, 224, arg2)
                                mem[160] = arg3
                                mem[192] = 0x5844520000000000000000000000000000000000000000000000000000000000
                                mem[224] = (0 / ext_call.return_data[0]) + 10 / 10
                        else:
                            require 10 * 10^18 * (ext_call.return_data[0] * arg3 / 10^17) + 10 / 10 / (ext_call.return_data[0] * arg3 / 10^17) + 10 / 10 == 10 * 10^18
                            require ext_call.return_data[0] > 0
                            require ext_call.return_data[0]
                            require ext_code.size(synths[0x5844520000000000000000000000000000000000000000000000000000000000])
                            if 10 * 10^18 * (ext_call.return_data[0] * arg3 / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                                call synths[0x5844520000000000000000000000000000000000000000000000000000000000].issue(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), 10 * 10^18 * (ext_call.return_data[0] * arg3 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(synths[0x5844520000000000000000000000000000000000000000000000000000000000])
                                call synths[0x5844520000000000000000000000000000000000000000000000000000000000].triggerTokenFallbackIfNeeded(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), address(ext_call.return_data[0]), 10 * 10^18 * (ext_call.return_data[0] * arg3 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[128] = Mask(32, 224, arg2)
                                mem[160] = arg3
                                mem[192] = 0x5844520000000000000000000000000000000000000000000000000000000000
                                mem[224] = 10 * 10^18 * (ext_call.return_data[0] * arg3 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                            else:
                                call synths[0x5844520000000000000000000000000000000000000000000000000000000000].issue(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(ext_call.return_data[0]), (10 * 10^18 * (ext_call.return_data[0] * arg3 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(synths[0x5844520000000000000000000000000000000000000000000000000000000000])
                                call synths[0x5844520000000000000000000000000000000000000000000000000000000000].triggerTokenFallbackIfNeeded(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args address(arg1), address(ext_call.return_data[0]), (10 * 10^18 * (ext_call.return_data[0] * arg3 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[128] = Mask(32, 224, arg2)
                                mem[160] = arg3
                                mem[192] = 0x5844520000000000000000000000000000000000000000000000000000000000
                                mem[224] = (10 * 10^18 * (ext_call.return_data[0] * arg3 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
            mem[256] = address(ext_call.return_data[0])
            mem[288] = 0x907dff9700000000000000000000000000000000000000000000000000000000
            mem[292] = 192
            idx = 0
            while idx < 160:
                mem[idx + 516] = mem[idx + 128]
                idx = idx + 32
                continue 
            require ext_code.size(proxyAddress)
            call proxyAddress._emit(bytes arg1, uint256 arg2, bytes32 arg3, bytes32 arg4, bytes32 arg5, bytes32 arg6) with:
                 gas gas_remaining wei
                args 192, 2, sha3('SynthExchange(address,bytes4,uin', 't256,bytes4,uint256,address)'), address(arg1), 0, 0, 160, mem[516 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(feePoolAddress)
            call feePoolAddress.feePaid(bytes4 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args Mask(32, 224, arg2), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        return 1
    revert with 0, 'Only synth allowed'
}

function transferableSynthetix(address arg1) {
    require ext_code.size(exchangeRatesAddress)
    call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
         gas gas_remaining wei
        args 0x534e580000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(synthetixStateAddress)
    call synthetixStateAddress.issuanceRatio() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(synthetixStateAddress)
    call synthetixStateAddress.issuanceData(address arg1) with:
         gas gas_remaining wei
        args arg1
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[0]:
        require ext_call.return_data[0] > 0
        require ext_call.return_data[0]
        if 0 / ext_call.return_data[0] % 10 < 5:
            if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                return 0
            require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
            return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
        if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
            return 0
        require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
        return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
    require ext_code.size(synthetixStateAddress)
    call synthetixStateAddress.debtLedger(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(synthetixStateAddress)
    call synthetixStateAddress.lastDebtLedgerEntry() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_call.return_data[0] > 0
        require ext_call.return_data[0]
        if 0 / ext_call.return_data[0] % 10 < 5:
            if not 0 / ext_call.return_data[0] / 10:
                require ext_code.size(exchangeRatesAddress)
                call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                     gas gas_remaining wei
                    args 0x534e580000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                mem[100] = 0x534e580000000000000000000000000000000000000000000000000000000000
                require ext_code.size(exchangeRatesAddress)
                call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                     gas gas_remaining wei
                    args 0x534e580000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[96] = availableSynths.length
                if availableSynths.length:
                    mem[128 len 32 * availableSynths.length] = code.data[23666 len 32 * availableSynths.length]
                idx = 0
                while uint8(idx) < availableSynths.length:
                    mem[0] = 11
                    require ext_code.size(availableSynths[uint8(idx)])
                    call availableSynths[uint8(idx)].currencyKey() with:
                         gas gas_remaining wei
                    mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx) < mem[96]
                    mem[(32 * uint8(idx)) + 128] = Mask(32, 224, ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                mem[(32 * availableSynths.length) + 128] = 0x370d62ad00000000000000000000000000000000000000000000000000000000
                mem[(32 * availableSynths.length) + 132] = 32
                mem[(32 * availableSynths.length) + 164] = mem[96]
                mem[(32 * availableSynths.length) + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                require ext_code.size(exchangeRatesAddress)
                call exchangeRatesAddress.anyRateIsStale(bytes4[] arg1) with:
                     gas gas_remaining wei
                    args 32, mem[(32 * availableSynths.length) + 164 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'Rates are stale'
                s = 0
                idx = 0
                s = 0
                while uint8(idx) < availableSynths.length:
                    require ext_code.size(availableSynths[uint8(idx)])
                    call availableSynths[uint8(idx)].currencyKey() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * availableSynths.length) + 132] = Mask(32, 224, ext_call.return_data[0])
                    require ext_code.size(exchangeRatesAddress)
                    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                         gas gas_remaining wei
                        args Mask(32, 224, ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx) < availableSynths.length
                    mem[0] = 11
                    require ext_code.size(availableSynths[uint8(idx)])
                    call availableSynths[uint8(idx)].0x18160ddd with:
                         gas gas_remaining wei
                    mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 0 / ext_call.return_data[0] % 10 < 5:
                            require (0 / ext_call.return_data[0] / 10) + s >= s
                            s = 0 / ext_call.return_data[0] / 10
                            idx = idx + 1
                            s = (0 / ext_call.return_data[0] / 10) + s
                            continue 
                        require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                        s = (0 / ext_call.return_data[0]) + 10 / 10
                        idx = idx + 1
                        s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                        continue 
                    require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^17 % 10 < 5:
                        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10:
                            require ext_call.return_data[0] > 0
                            require ext_call.return_data[0]
                            if 0 / ext_call.return_data[0] % 10 < 5:
                                require (0 / ext_call.return_data[0] / 10) + s >= s
                                s = 0 / ext_call.return_data[0] / 10
                                idx = idx + 1
                                s = (0 / ext_call.return_data[0] / 10) + s
                                continue 
                            require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                            s = (0 / ext_call.return_data[0]) + 10 / 10
                            idx = idx + 1
                            s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                            continue 
                        require 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 == 10 * 10^18
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                            require (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s >= s
                            s = 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10
                            idx = idx + 1
                            s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s
                            continue 
                        require ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
                        s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                        idx = idx + 1
                        s = ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s
                        continue 
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10:
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 0 / ext_call.return_data[0] % 10 < 5:
                            require (0 / ext_call.return_data[0] / 10) + s >= s
                            s = 0 / ext_call.return_data[0] / 10
                            idx = idx + 1
                            s = (0 / ext_call.return_data[0] / 10) + s
                            continue 
                        require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                        s = (0 / ext_call.return_data[0]) + 10 / 10
                        idx = idx + 1
                        s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                        continue 
                    require 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 == 10 * 10^18
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                        require (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s >= s
                        s = 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                        idx = idx + 1
                        s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s
                        continue 
                    require ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
                    s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
                    idx = idx + 1
                    s = ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s
                    continue 
                if s:
                    require 10^9 * s / s == 10^9
                    if 10^9 * s:
                        require not 0 / 10^9 * s
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] % 10 < 5:
                    if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                        return 0
                    require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                    return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
                if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                    return 0
                require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
            require ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 0 / ext_call.return_data[0] / 10 == ext_call.return_data[0]
            require ext_code.size(exchangeRatesAddress)
            call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                 gas gas_remaining wei
                args 0x534e580000000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
            mem[100] = 0x534e580000000000000000000000000000000000000000000000000000000000
            require ext_code.size(exchangeRatesAddress)
            call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                 gas gas_remaining wei
                args 0x534e580000000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[96] = availableSynths.length
            if availableSynths.length:
                mem[128 len 32 * availableSynths.length] = code.data[23666 len 32 * availableSynths.length]
            idx = 0
            while uint8(idx) < availableSynths.length:
                mem[0] = 11
                require ext_code.size(availableSynths[uint8(idx)])
                call availableSynths[uint8(idx)].currencyKey() with:
                     gas gas_remaining wei
                mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require uint8(idx) < mem[96]
                mem[(32 * uint8(idx)) + 128] = Mask(32, 224, ext_call.return_data[0])
                idx = idx + 1
                continue 
            mem[(32 * availableSynths.length) + 128] = 0x370d62ad00000000000000000000000000000000000000000000000000000000
            mem[(32 * availableSynths.length) + 132] = 32
            mem[(32 * availableSynths.length) + 164] = mem[96]
            mem[(32 * availableSynths.length) + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            require ext_code.size(exchangeRatesAddress)
            call exchangeRatesAddress.anyRateIsStale(bytes4[] arg1) with:
                 gas gas_remaining wei
                args 32, mem[(32 * availableSynths.length) + 164 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'Rates are stale'
            s = 0
            idx = 0
            s = 0
            while uint8(idx) < availableSynths.length:
                require ext_code.size(availableSynths[uint8(idx)])
                call availableSynths[uint8(idx)].currencyKey() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * availableSynths.length) + 132] = Mask(32, 224, ext_call.return_data[0])
                require ext_code.size(exchangeRatesAddress)
                call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                     gas gas_remaining wei
                    args Mask(32, 224, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require uint8(idx) < availableSynths.length
                mem[0] = 11
                require ext_code.size(availableSynths[uint8(idx)])
                call availableSynths[uint8(idx)].0x18160ddd with:
                     gas gas_remaining wei
                mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        require (0 / ext_call.return_data[0] / 10) + s >= s
                        s = 0 / ext_call.return_data[0] / 10
                        idx = idx + 1
                        s = (0 / ext_call.return_data[0] / 10) + s
                        continue 
                    require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                    s = (0 / ext_call.return_data[0]) + 10 / 10
                    idx = idx + 1
                    s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                    continue 
                require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^17 % 10 < 5:
                    if not ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10:
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 0 / ext_call.return_data[0] % 10 < 5:
                            require (0 / ext_call.return_data[0] / 10) + s >= s
                            s = 0 / ext_call.return_data[0] / 10
                            idx = idx + 1
                            s = (0 / ext_call.return_data[0] / 10) + s
                            continue 
                        require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                        s = (0 / ext_call.return_data[0]) + 10 / 10
                        idx = idx + 1
                        s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                        continue 
                    require 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 == 10 * 10^18
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                        require (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s >= s
                        s = 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10
                        idx = idx + 1
                        s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s
                        continue 
                    require ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
                    s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                    idx = idx + 1
                    s = ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s
                    continue 
                if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        require (0 / ext_call.return_data[0] / 10) + s >= s
                        s = 0 / ext_call.return_data[0] / 10
                        idx = idx + 1
                        s = (0 / ext_call.return_data[0] / 10) + s
                        continue 
                    require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                    s = (0 / ext_call.return_data[0]) + 10 / 10
                    idx = idx + 1
                    s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                    continue 
                require 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 == 10 * 10^18
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                    require (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s >= s
                    s = 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                    idx = idx + 1
                    s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s
                    continue 
                require ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
                s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
                idx = idx + 1
                s = ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s
                continue 
            if not s:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] % 10 < 5:
                    if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                        return 0
                    require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                    return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
                if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                    return 0
                require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
            require 10^9 * s / s == 10^9
            if not 10^9 * s:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] % 10 < 5:
                    if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                        return 0
                    require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                    return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
                if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                    return 0
                require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 % 10 < 5:
                require 10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 10^9 * s == ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10
                if 10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 % 10 < 5:
                    if 10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 % 10 < 5:
                        if not 10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10:
                            require ext_call.return_data[0] > 0
                            require ext_call.return_data[0]
                            if 0 / ext_call.return_data[0] % 10 < 5:
                                if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                                    return 0
                                require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                                return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
                            if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                                return 0
                            require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                            return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
                        require 10 * 10^18 * 10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 == 10 * 10^18
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 10 * 10^18 * 10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] % 10 < 5:
                            if 10 * 10^18 * 10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                                return 0
                            require 10 * 10^18 * 10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                            return (ext_call.return_data[0] - (10 * 10^18 * 10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10))
                        if (10 * 10^18 * 10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                            return 0
                        require (10 * 10^18 * 10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                        return (ext_call.return_data[0] - ((10 * 10^18 * 10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10))
                    if not (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10:
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 0 / ext_call.return_data[0] % 10 < 5:
                            if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                                return 0
                            require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                            return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
                        if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                            return 0
                        require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                        return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
                    require 10 * 10^18 * (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 10 * 10^18 * (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                        if 10 * 10^18 * (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                            return 0
                        require 10 * 10^18 * (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                        return (ext_call.return_data[0] - (10 * 10^18 * (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10))
                    if (10 * 10^18 * (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                        return 0
                    require (10 * 10^18 * (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                    return (ext_call.return_data[0] - ((10 * 10^18 * (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10))
                if (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 % 10 < 5:
                    if not (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10:
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 0 / ext_call.return_data[0] % 10 < 5:
                            if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                                return 0
                            require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                            return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
                        if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                            return 0
                        require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                        return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
                    require 10 * 10^18 * (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 == 10 * 10^18
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 10 * 10^18 * (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] % 10 < 5:
                        if 10 * 10^18 * (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                            return 0
                        require 10 * 10^18 * (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                        return (ext_call.return_data[0] - (10 * 10^18 * (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10))
                    if (10 * 10^18 * (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                        return 0
                    require (10 * 10^18 * (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                    return (ext_call.return_data[0] - ((10 * 10^18 * (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10))
                if not ((10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                            return 0
                        require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                        return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
                    if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                        return 0
                    require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                    return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
                require 10 * 10^18 * ((10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ((10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 10 * 10^18 * ((10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                    if 10 * 10^18 * ((10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                        return 0
                    require 10 * 10^18 * ((10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                    return (ext_call.return_data[0] - (10 * 10^18 * ((10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10))
                if (10 * 10^18 * ((10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                    return 0
                require (10 * 10^18 * ((10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                return (ext_call.return_data[0] - ((10 * 10^18 * ((10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10))
            require 10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 10^9 * s == (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10
            if 10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 % 10 < 5:
                if 10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 % 10 < 5:
                    if not 10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10:
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 0 / ext_call.return_data[0] % 10 < 5:
                            if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                                return 0
                            require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                            return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
                        if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                            return 0
                        require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                        return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
                    require 10 * 10^18 * 10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 == 10 * 10^18
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 10 * 10^18 * 10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] % 10 < 5:
                        if 10 * 10^18 * 10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                            return 0
                        require 10 * 10^18 * 10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                        return (ext_call.return_data[0] - (10 * 10^18 * 10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10))
                    if (10 * 10^18 * 10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                        return 0
                    require (10 * 10^18 * 10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                    return (ext_call.return_data[0] - ((10 * 10^18 * 10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10))
                if not (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                            return 0
                        require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                        return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
                    if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                        return 0
                    require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                    return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
                require 10 * 10^18 * (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 10 * 10^18 * (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                    if 10 * 10^18 * (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                        return 0
                    require 10 * 10^18 * (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                    return (ext_call.return_data[0] - (10 * 10^18 * (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10))
                if (10 * 10^18 * (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                    return 0
                require (10 * 10^18 * (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                return (ext_call.return_data[0] - ((10 * 10^18 * (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10))
            if (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 % 10 < 5:
                if not (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                            return 0
                        require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                        return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
                    if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                        return 0
                    require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                    return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
                require 10 * 10^18 * (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 == 10 * 10^18
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 10 * 10^18 * (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] % 10 < 5:
                    if 10 * 10^18 * (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                        return 0
                    require 10 * 10^18 * (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                    return (ext_call.return_data[0] - (10 * 10^18 * (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10))
                if (10 * 10^18 * (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                    return 0
                require (10 * 10^18 * (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                return (ext_call.return_data[0] - ((10 * 10^18 * (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10))
            if not ((10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] % 10 < 5:
                    if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                        return 0
                    require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                    return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
                if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                    return 0
                require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
            require 10 * 10^18 * ((10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ((10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 10 * 10^18 * ((10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                if 10 * 10^18 * ((10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                    return 0
                require 10 * 10^18 * ((10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                return (ext_call.return_data[0] - (10 * 10^18 * ((10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10))
            if (10 * 10^18 * ((10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                return 0
            require (10 * 10^18 * ((10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
            return (ext_call.return_data[0] - ((10 * 10^18 * ((10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10))
        if not (0 / ext_call.return_data[0]) + 10 / 10:
            require ext_code.size(exchangeRatesAddress)
            call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                 gas gas_remaining wei
                args 0x534e580000000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
            mem[100] = 0x534e580000000000000000000000000000000000000000000000000000000000
            require ext_code.size(exchangeRatesAddress)
            call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                 gas gas_remaining wei
                args 0x534e580000000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[96] = availableSynths.length
            if availableSynths.length:
                mem[128 len 32 * availableSynths.length] = code.data[23666 len 32 * availableSynths.length]
            idx = 0
            while uint8(idx) < availableSynths.length:
                mem[0] = 11
                require ext_code.size(availableSynths[uint8(idx)])
                call availableSynths[uint8(idx)].currencyKey() with:
                     gas gas_remaining wei
                mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require uint8(idx) < mem[96]
                mem[(32 * uint8(idx)) + 128] = Mask(32, 224, ext_call.return_data[0])
                idx = idx + 1
                continue 
            mem[(32 * availableSynths.length) + 128] = 0x370d62ad00000000000000000000000000000000000000000000000000000000
            mem[(32 * availableSynths.length) + 132] = 32
            mem[(32 * availableSynths.length) + 164] = mem[96]
            mem[(32 * availableSynths.length) + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            require ext_code.size(exchangeRatesAddress)
            call exchangeRatesAddress.anyRateIsStale(bytes4[] arg1) with:
                 gas gas_remaining wei
                args 32, mem[(32 * availableSynths.length) + 164 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'Rates are stale'
            s = 0
            idx = 0
            s = 0
            while uint8(idx) < availableSynths.length:
                require ext_code.size(availableSynths[uint8(idx)])
                call availableSynths[uint8(idx)].currencyKey() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * availableSynths.length) + 132] = Mask(32, 224, ext_call.return_data[0])
                require ext_code.size(exchangeRatesAddress)
                call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                     gas gas_remaining wei
                    args Mask(32, 224, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require uint8(idx) < availableSynths.length
                mem[0] = 11
                require ext_code.size(availableSynths[uint8(idx)])
                call availableSynths[uint8(idx)].0x18160ddd with:
                     gas gas_remaining wei
                mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        require (0 / ext_call.return_data[0] / 10) + s >= s
                        s = 0 / ext_call.return_data[0] / 10
                        idx = idx + 1
                        s = (0 / ext_call.return_data[0] / 10) + s
                        continue 
                    require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                    s = (0 / ext_call.return_data[0]) + 10 / 10
                    idx = idx + 1
                    s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                    continue 
                require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^17 % 10 < 5:
                    if not ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10:
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 0 / ext_call.return_data[0] % 10 < 5:
                            require (0 / ext_call.return_data[0] / 10) + s >= s
                            s = 0 / ext_call.return_data[0] / 10
                            idx = idx + 1
                            s = (0 / ext_call.return_data[0] / 10) + s
                            continue 
                        require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                        s = (0 / ext_call.return_data[0]) + 10 / 10
                        idx = idx + 1
                        s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                        continue 
                    require 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 == 10 * 10^18
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                        require (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s >= s
                        s = 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10
                        idx = idx + 1
                        s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s
                        continue 
                    require ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
                    s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                    idx = idx + 1
                    s = ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s
                    continue 
                if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        require (0 / ext_call.return_data[0] / 10) + s >= s
                        s = 0 / ext_call.return_data[0] / 10
                        idx = idx + 1
                        s = (0 / ext_call.return_data[0] / 10) + s
                        continue 
                    require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                    s = (0 / ext_call.return_data[0]) + 10 / 10
                    idx = idx + 1
                    s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                    continue 
                require 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 == 10 * 10^18
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                    require (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s >= s
                    s = 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                    idx = idx + 1
                    s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s
                    continue 
                require ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
                s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
                idx = idx + 1
                s = ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s
                continue 
            if s:
                require 10^9 * s / s == 10^9
                if 10^9 * s:
                    require not 0 / 10^9 * s
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 0 / ext_call.return_data[0] % 10 < 5:
                if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                    return 0
                require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
            if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                return 0
            require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
            return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
        require ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / (0 / ext_call.return_data[0]) + 10 / 10 == ext_call.return_data[0]
        require ext_code.size(exchangeRatesAddress)
        call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
             gas gas_remaining wei
            args 0x534e580000000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
        mem[100] = 0x534e580000000000000000000000000000000000000000000000000000000000
        require ext_code.size(exchangeRatesAddress)
        call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
             gas gas_remaining wei
            args 0x534e580000000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = availableSynths.length
        if availableSynths.length:
            mem[128 len 32 * availableSynths.length] = code.data[23666 len 32 * availableSynths.length]
        idx = 0
        while uint8(idx) < availableSynths.length:
            mem[0] = 11
            require ext_code.size(availableSynths[uint8(idx)])
            call availableSynths[uint8(idx)].currencyKey() with:
                 gas gas_remaining wei
            mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require uint8(idx) < mem[96]
            mem[(32 * uint8(idx)) + 128] = Mask(32, 224, ext_call.return_data[0])
            idx = idx + 1
            continue 
        mem[(32 * availableSynths.length) + 128] = 0x370d62ad00000000000000000000000000000000000000000000000000000000
        mem[(32 * availableSynths.length) + 132] = 32
        mem[(32 * availableSynths.length) + 164] = mem[96]
        mem[(32 * availableSynths.length) + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        require ext_code.size(exchangeRatesAddress)
        call exchangeRatesAddress.anyRateIsStale(bytes4[] arg1) with:
             gas gas_remaining wei
            args 32, mem[(32 * availableSynths.length) + 164 len (32 * mem[96]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'Rates are stale'
        s = 0
        idx = 0
        s = 0
        while uint8(idx) < availableSynths.length:
            require ext_code.size(availableSynths[uint8(idx)])
            call availableSynths[uint8(idx)].currencyKey() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * availableSynths.length) + 132] = Mask(32, 224, ext_call.return_data[0])
            require ext_code.size(exchangeRatesAddress)
            call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                 gas gas_remaining wei
                args Mask(32, 224, ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require uint8(idx) < availableSynths.length
            mem[0] = 11
            require ext_code.size(availableSynths[uint8(idx)])
            call availableSynths[uint8(idx)].0x18160ddd with:
                 gas gas_remaining wei
            mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] % 10 < 5:
                    require (0 / ext_call.return_data[0] / 10) + s >= s
                    s = 0 / ext_call.return_data[0] / 10
                    idx = idx + 1
                    s = (0 / ext_call.return_data[0] / 10) + s
                    continue 
                require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                s = (0 / ext_call.return_data[0]) + 10 / 10
                idx = idx + 1
                s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                continue 
            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^17 % 10 < 5:
                if not ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        require (0 / ext_call.return_data[0] / 10) + s >= s
                        s = 0 / ext_call.return_data[0] / 10
                        idx = idx + 1
                        s = (0 / ext_call.return_data[0] / 10) + s
                        continue 
                    require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                    s = (0 / ext_call.return_data[0]) + 10 / 10
                    idx = idx + 1
                    s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                    continue 
                require 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 == 10 * 10^18
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                    require (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s >= s
                    s = 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10
                    idx = idx + 1
                    s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s
                    continue 
                require ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
                s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                idx = idx + 1
                s = ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s
                continue 
            if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] % 10 < 5:
                    require (0 / ext_call.return_data[0] / 10) + s >= s
                    s = 0 / ext_call.return_data[0] / 10
                    idx = idx + 1
                    s = (0 / ext_call.return_data[0] / 10) + s
                    continue 
                require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                s = (0 / ext_call.return_data[0]) + 10 / 10
                idx = idx + 1
                s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                continue 
            require 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 == 10 * 10^18
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                require (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s >= s
                s = 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                idx = idx + 1
                s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s
                continue 
            require ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
            s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
            idx = idx + 1
            s = ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s
            continue 
        if not s:
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 0 / ext_call.return_data[0] % 10 < 5:
                if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                    return 0
                require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
            if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                return 0
            require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
            return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
        require 10^9 * s / s == 10^9
        if not 10^9 * s:
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 0 / ext_call.return_data[0] % 10 < 5:
                if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                    return 0
                require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
            if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                return 0
            require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
            return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
        if ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 % 10 < 5:
            require 10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 10^9 * s == ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10
            if 10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 % 10 < 5:
                if 10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 % 10 < 5:
                    if not 10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10:
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 0 / ext_call.return_data[0] % 10 < 5:
                            if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                                return 0
                            require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                            return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
                        if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                            return 0
                        require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                        return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
                    require 10 * 10^18 * 10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 == 10 * 10^18
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 10 * 10^18 * 10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] % 10 < 5:
                        if 10 * 10^18 * 10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                            return 0
                        require 10 * 10^18 * 10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                        return (ext_call.return_data[0] - (10 * 10^18 * 10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10))
                    if (10 * 10^18 * 10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                        return 0
                    require (10 * 10^18 * 10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                    return (ext_call.return_data[0] - ((10 * 10^18 * 10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10))
                if not (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                            return 0
                        require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                        return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
                    if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                        return 0
                    require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                    return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
                require 10 * 10^18 * (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 10 * 10^18 * (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                    if 10 * 10^18 * (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                        return 0
                    require 10 * 10^18 * (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                    return (ext_call.return_data[0] - (10 * 10^18 * (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10))
                if (10 * 10^18 * (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                    return 0
                require (10 * 10^18 * (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                return (ext_call.return_data[0] - ((10 * 10^18 * (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10))
            if (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 % 10 < 5:
                if not (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                            return 0
                        require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                        return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
                    if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                        return 0
                    require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                    return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
                require 10 * 10^18 * (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 == 10 * 10^18
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 10 * 10^18 * (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] % 10 < 5:
                    if 10 * 10^18 * (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                        return 0
                    require 10 * 10^18 * (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                    return (ext_call.return_data[0] - (10 * 10^18 * (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10))
                if (10 * 10^18 * (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                    return 0
                require (10 * 10^18 * (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                return (ext_call.return_data[0] - ((10 * 10^18 * (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10))
            if not ((10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] % 10 < 5:
                    if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                        return 0
                    require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                    return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
                if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                    return 0
                require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
            require 10 * 10^18 * ((10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ((10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 10 * 10^18 * ((10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                if 10 * 10^18 * ((10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                    return 0
                require 10 * 10^18 * ((10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                return (ext_call.return_data[0] - (10 * 10^18 * ((10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10))
            if (10 * 10^18 * ((10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                return 0
            require (10 * 10^18 * ((10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
            return (ext_call.return_data[0] - ((10 * 10^18 * ((10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10))
        require 10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 10^9 * s == (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10
        if 10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 % 10 < 5:
            if 10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 % 10 < 5:
                if not 10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                            return 0
                        require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                        return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
                    if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                        return 0
                    require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                    return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
                require 10 * 10^18 * 10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 == 10 * 10^18
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 10 * 10^18 * 10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] % 10 < 5:
                    if 10 * 10^18 * 10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                        return 0
                    require 10 * 10^18 * 10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                    return (ext_call.return_data[0] - (10 * 10^18 * 10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10))
                if (10 * 10^18 * 10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                    return 0
                require (10 * 10^18 * 10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                return (ext_call.return_data[0] - ((10 * 10^18 * 10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10))
            if not (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] % 10 < 5:
                    if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                        return 0
                    require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                    return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
                if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                    return 0
                require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
            require 10 * 10^18 * (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 10 * 10^18 * (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                if 10 * 10^18 * (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                    return 0
                require 10 * 10^18 * (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                return (ext_call.return_data[0] - (10 * 10^18 * (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10))
            if (10 * 10^18 * (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                return 0
            require (10 * 10^18 * (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
            return (ext_call.return_data[0] - ((10 * 10^18 * (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10))
        if (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 % 10 < 5:
            if not (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] % 10 < 5:
                    if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                        return 0
                    require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                    return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
                if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                    return 0
                require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
            require 10 * 10^18 * (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 == 10 * 10^18
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 10 * 10^18 * (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] % 10 < 5:
                if 10 * 10^18 * (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                    return 0
                require 10 * 10^18 * (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                return (ext_call.return_data[0] - (10 * 10^18 * (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10))
            if (10 * 10^18 * (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                return 0
            require (10 * 10^18 * (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
            return (ext_call.return_data[0] - ((10 * 10^18 * (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10))
        if not ((10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10:
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 0 / ext_call.return_data[0] % 10 < 5:
                if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                    return 0
                require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
            if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                return 0
            require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
            return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
        require 10 * 10^18 * ((10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ((10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
        require ext_call.return_data[0] > 0
        require ext_call.return_data[0]
        if 10 * 10^18 * ((10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
            if 10 * 10^18 * ((10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                return 0
            require 10 * 10^18 * ((10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
            return (ext_call.return_data[0] - (10 * 10^18 * ((10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10))
        if (10 * 10^18 * ((10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
            return 0
        require (10 * 10^18 * ((10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
        return (ext_call.return_data[0] - ((10 * 10^18 * ((10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10))
    require 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10000000000 * 10^18
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0]
    if 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] % 10 < 5:
        if not 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10:
            require ext_code.size(exchangeRatesAddress)
            call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                 gas gas_remaining wei
                args 0x534e580000000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
            mem[100] = 0x534e580000000000000000000000000000000000000000000000000000000000
            require ext_code.size(exchangeRatesAddress)
            call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                 gas gas_remaining wei
                args 0x534e580000000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[96] = availableSynths.length
            if availableSynths.length:
                mem[128 len 32 * availableSynths.length] = code.data[23666 len 32 * availableSynths.length]
            idx = 0
            while uint8(idx) < availableSynths.length:
                mem[0] = 11
                require ext_code.size(availableSynths[uint8(idx)])
                call availableSynths[uint8(idx)].currencyKey() with:
                     gas gas_remaining wei
                mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require uint8(idx) < mem[96]
                mem[(32 * uint8(idx)) + 128] = Mask(32, 224, ext_call.return_data[0])
                idx = idx + 1
                continue 
            mem[(32 * availableSynths.length) + 128] = 0x370d62ad00000000000000000000000000000000000000000000000000000000
            mem[(32 * availableSynths.length) + 132] = 32
            mem[(32 * availableSynths.length) + 164] = mem[96]
            mem[(32 * availableSynths.length) + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            require ext_code.size(exchangeRatesAddress)
            call exchangeRatesAddress.anyRateIsStale(bytes4[] arg1) with:
                 gas gas_remaining wei
                args 32, mem[(32 * availableSynths.length) + 164 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'Rates are stale'
            s = 0
            idx = 0
            s = 0
            while uint8(idx) < availableSynths.length:
                require ext_code.size(availableSynths[uint8(idx)])
                call availableSynths[uint8(idx)].currencyKey() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * availableSynths.length) + 132] = Mask(32, 224, ext_call.return_data[0])
                require ext_code.size(exchangeRatesAddress)
                call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                     gas gas_remaining wei
                    args Mask(32, 224, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require uint8(idx) < availableSynths.length
                mem[0] = 11
                require ext_code.size(availableSynths[uint8(idx)])
                call availableSynths[uint8(idx)].0x18160ddd with:
                     gas gas_remaining wei
                mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        require (0 / ext_call.return_data[0] / 10) + s >= s
                        s = 0 / ext_call.return_data[0] / 10
                        idx = idx + 1
                        s = (0 / ext_call.return_data[0] / 10) + s
                        continue 
                    require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                    s = (0 / ext_call.return_data[0]) + 10 / 10
                    idx = idx + 1
                    s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                    continue 
                require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^17 % 10 < 5:
                    if not ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10:
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 0 / ext_call.return_data[0] % 10 < 5:
                            require (0 / ext_call.return_data[0] / 10) + s >= s
                            s = 0 / ext_call.return_data[0] / 10
                            idx = idx + 1
                            s = (0 / ext_call.return_data[0] / 10) + s
                            continue 
                        require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                        s = (0 / ext_call.return_data[0]) + 10 / 10
                        idx = idx + 1
                        s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                        continue 
                    require 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 == 10 * 10^18
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                        require (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s >= s
                        s = 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10
                        idx = idx + 1
                        s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s
                        continue 
                    require ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
                    s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                    idx = idx + 1
                    s = ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s
                    continue 
                if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        require (0 / ext_call.return_data[0] / 10) + s >= s
                        s = 0 / ext_call.return_data[0] / 10
                        idx = idx + 1
                        s = (0 / ext_call.return_data[0] / 10) + s
                        continue 
                    require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                    s = (0 / ext_call.return_data[0]) + 10 / 10
                    idx = idx + 1
                    s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                    continue 
                require 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 == 10 * 10^18
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                    require (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s >= s
                    s = 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                    idx = idx + 1
                    s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s
                    continue 
                require ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
                s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
                idx = idx + 1
                s = ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s
                continue 
            if s:
                require 10^9 * s / s == 10^9
                if 10^9 * s:
                    require not 0 / 10^9 * s
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 0 / ext_call.return_data[0] % 10 < 5:
                if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                    return 0
                require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
            if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                return 0
            require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
            return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
        require ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 == ext_call.return_data[0]
        require ext_code.size(exchangeRatesAddress)
        call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
             gas gas_remaining wei
            args 0x534e580000000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
        mem[100] = 0x534e580000000000000000000000000000000000000000000000000000000000
        require ext_code.size(exchangeRatesAddress)
        call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
             gas gas_remaining wei
            args 0x534e580000000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = availableSynths.length
        if availableSynths.length:
            mem[128 len 32 * availableSynths.length] = code.data[23666 len 32 * availableSynths.length]
        idx = 0
        while uint8(idx) < availableSynths.length:
            mem[0] = 11
            require ext_code.size(availableSynths[uint8(idx)])
            call availableSynths[uint8(idx)].currencyKey() with:
                 gas gas_remaining wei
            mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require uint8(idx) < mem[96]
            mem[(32 * uint8(idx)) + 128] = Mask(32, 224, ext_call.return_data[0])
            idx = idx + 1
            continue 
        mem[(32 * availableSynths.length) + 128] = 0x370d62ad00000000000000000000000000000000000000000000000000000000
        mem[(32 * availableSynths.length) + 132] = 32
        mem[(32 * availableSynths.length) + 164] = mem[96]
        mem[(32 * availableSynths.length) + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        require ext_code.size(exchangeRatesAddress)
        call exchangeRatesAddress.anyRateIsStale(bytes4[] arg1) with:
             gas gas_remaining wei
            args 32, mem[(32 * availableSynths.length) + 164 len (32 * mem[96]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'Rates are stale'
        s = 0
        idx = 0
        s = 0
        while uint8(idx) < availableSynths.length:
            require ext_code.size(availableSynths[uint8(idx)])
            call availableSynths[uint8(idx)].currencyKey() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * availableSynths.length) + 132] = Mask(32, 224, ext_call.return_data[0])
            require ext_code.size(exchangeRatesAddress)
            call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                 gas gas_remaining wei
                args Mask(32, 224, ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require uint8(idx) < availableSynths.length
            mem[0] = 11
            require ext_code.size(availableSynths[uint8(idx)])
            call availableSynths[uint8(idx)].0x18160ddd with:
                 gas gas_remaining wei
            mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] % 10 < 5:
                    require (0 / ext_call.return_data[0] / 10) + s >= s
                    s = 0 / ext_call.return_data[0] / 10
                    idx = idx + 1
                    s = (0 / ext_call.return_data[0] / 10) + s
                    continue 
                require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                s = (0 / ext_call.return_data[0]) + 10 / 10
                idx = idx + 1
                s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                continue 
            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^17 % 10 < 5:
                if not ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        require (0 / ext_call.return_data[0] / 10) + s >= s
                        s = 0 / ext_call.return_data[0] / 10
                        idx = idx + 1
                        s = (0 / ext_call.return_data[0] / 10) + s
                        continue 
                    require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                    s = (0 / ext_call.return_data[0]) + 10 / 10
                    idx = idx + 1
                    s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                    continue 
                require 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 == 10 * 10^18
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                    require (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s >= s
                    s = 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10
                    idx = idx + 1
                    s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s
                    continue 
                require ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
                s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                idx = idx + 1
                s = ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s
                continue 
            if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] % 10 < 5:
                    require (0 / ext_call.return_data[0] / 10) + s >= s
                    s = 0 / ext_call.return_data[0] / 10
                    idx = idx + 1
                    s = (0 / ext_call.return_data[0] / 10) + s
                    continue 
                require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                s = (0 / ext_call.return_data[0]) + 10 / 10
                idx = idx + 1
                s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                continue 
            require 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 == 10 * 10^18
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                require (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s >= s
                s = 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                idx = idx + 1
                s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s
                continue 
            require ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
            s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
            idx = idx + 1
            s = ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s
            continue 
        if not s:
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 0 / ext_call.return_data[0] % 10 < 5:
                if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                    return 0
                require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
            if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                return 0
            require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
            return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
        require 10^9 * s / s == 10^9
        if not 10^9 * s:
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 0 / ext_call.return_data[0] % 10 < 5:
                if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                    return 0
                require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
            if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                return 0
            require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
            return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
        if ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 % 10 < 5:
            require 10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 10^9 * s == ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10
            if 10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 % 10 < 5:
                if 10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 % 10 < 5:
                    if not 10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10:
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 0 / ext_call.return_data[0] % 10 < 5:
                            if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                                return 0
                            require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                            return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
                        if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                            return 0
                        require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                        return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
                    require 10 * 10^18 * 10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 == 10 * 10^18
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 10 * 10^18 * 10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] % 10 < 5:
                        if 10 * 10^18 * 10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                            return 0
                        require 10 * 10^18 * 10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                        return (ext_call.return_data[0] - (10 * 10^18 * 10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10))
                    if (10 * 10^18 * 10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                        return 0
                    require (10 * 10^18 * 10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                    return (ext_call.return_data[0] - ((10 * 10^18 * 10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10))
                if not (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                            return 0
                        require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                        return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
                    if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                        return 0
                    require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                    return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
                require 10 * 10^18 * (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 10 * 10^18 * (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                    if 10 * 10^18 * (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                        return 0
                    require 10 * 10^18 * (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                    return (ext_call.return_data[0] - (10 * 10^18 * (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10))
                if (10 * 10^18 * (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                    return 0
                require (10 * 10^18 * (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                return (ext_call.return_data[0] - ((10 * 10^18 * (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10))
            if (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 % 10 < 5:
                if not (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                            return 0
                        require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                        return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
                    if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                        return 0
                    require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                    return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
                require 10 * 10^18 * (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 == 10 * 10^18
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 10 * 10^18 * (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] % 10 < 5:
                    if 10 * 10^18 * (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                        return 0
                    require 10 * 10^18 * (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                    return (ext_call.return_data[0] - (10 * 10^18 * (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10))
                if (10 * 10^18 * (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                    return 0
                require (10 * 10^18 * (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                return (ext_call.return_data[0] - ((10 * 10^18 * (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10))
            if not ((10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] % 10 < 5:
                    if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                        return 0
                    require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                    return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
                if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                    return 0
                require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
            require 10 * 10^18 * ((10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ((10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 10 * 10^18 * ((10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                if 10 * 10^18 * ((10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                    return 0
                require 10 * 10^18 * ((10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                return (ext_call.return_data[0] - (10 * 10^18 * ((10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10))
            if (10 * 10^18 * ((10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                return 0
            require (10 * 10^18 * ((10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
            return (ext_call.return_data[0] - ((10 * 10^18 * ((10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10))
        require 10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 10^9 * s == (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10
        if 10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 % 10 < 5:
            if 10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 % 10 < 5:
                if not 10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                            return 0
                        require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                        return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
                    if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                        return 0
                    require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                    return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
                require 10 * 10^18 * 10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 == 10 * 10^18
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 10 * 10^18 * 10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] % 10 < 5:
                    if 10 * 10^18 * 10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                        return 0
                    require 10 * 10^18 * 10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                    return (ext_call.return_data[0] - (10 * 10^18 * 10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10))
                if (10 * 10^18 * 10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                    return 0
                require (10 * 10^18 * 10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                return (ext_call.return_data[0] - ((10 * 10^18 * 10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10))
            if not (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] % 10 < 5:
                    if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                        return 0
                    require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                    return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
                if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                    return 0
                require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
            require 10 * 10^18 * (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 10 * 10^18 * (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                if 10 * 10^18 * (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                    return 0
                require 10 * 10^18 * (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                return (ext_call.return_data[0] - (10 * 10^18 * (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10))
            if (10 * 10^18 * (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                return 0
            require (10 * 10^18 * (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
            return (ext_call.return_data[0] - ((10 * 10^18 * (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10))
        if (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 % 10 < 5:
            if not (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] % 10 < 5:
                    if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                        return 0
                    require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                    return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
                if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                    return 0
                require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
            require 10 * 10^18 * (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 == 10 * 10^18
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 10 * 10^18 * (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] % 10 < 5:
                if 10 * 10^18 * (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                    return 0
                require 10 * 10^18 * (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                return (ext_call.return_data[0] - (10 * 10^18 * (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10))
            if (10 * 10^18 * (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                return 0
            require (10 * 10^18 * (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
            return (ext_call.return_data[0] - ((10 * 10^18 * (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10))
        if not ((10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10:
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 0 / ext_call.return_data[0] % 10 < 5:
                if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                    return 0
                require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
            if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                return 0
            require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
            return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
        require 10 * 10^18 * ((10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ((10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
        require ext_call.return_data[0] > 0
        require ext_call.return_data[0]
        if 10 * 10^18 * ((10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
            if 10 * 10^18 * ((10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                return 0
            require 10 * 10^18 * ((10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
            return (ext_call.return_data[0] - (10 * 10^18 * ((10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10))
        if (10 * 10^18 * ((10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
            return 0
        require (10 * 10^18 * ((10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
        return (ext_call.return_data[0] - ((10 * 10^18 * ((10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10))
    if not (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10:
        require ext_code.size(exchangeRatesAddress)
        call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
             gas gas_remaining wei
            args 0x534e580000000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
        mem[100] = 0x534e580000000000000000000000000000000000000000000000000000000000
        require ext_code.size(exchangeRatesAddress)
        call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
             gas gas_remaining wei
            args 0x534e580000000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = availableSynths.length
        if availableSynths.length:
            mem[128 len 32 * availableSynths.length] = code.data[23666 len 32 * availableSynths.length]
        idx = 0
        while uint8(idx) < availableSynths.length:
            mem[0] = 11
            require ext_code.size(availableSynths[uint8(idx)])
            call availableSynths[uint8(idx)].currencyKey() with:
                 gas gas_remaining wei
            mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require uint8(idx) < mem[96]
            mem[(32 * uint8(idx)) + 128] = Mask(32, 224, ext_call.return_data[0])
            idx = idx + 1
            continue 
        mem[(32 * availableSynths.length) + 128] = 0x370d62ad00000000000000000000000000000000000000000000000000000000
        mem[(32 * availableSynths.length) + 132] = 32
        mem[(32 * availableSynths.length) + 164] = mem[96]
        mem[(32 * availableSynths.length) + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        require ext_code.size(exchangeRatesAddress)
        call exchangeRatesAddress.anyRateIsStale(bytes4[] arg1) with:
             gas gas_remaining wei
            args 32, mem[(32 * availableSynths.length) + 164 len (32 * mem[96]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'Rates are stale'
        s = 0
        idx = 0
        s = 0
        while uint8(idx) < availableSynths.length:
            require ext_code.size(availableSynths[uint8(idx)])
            call availableSynths[uint8(idx)].currencyKey() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * availableSynths.length) + 132] = Mask(32, 224, ext_call.return_data[0])
            require ext_code.size(exchangeRatesAddress)
            call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                 gas gas_remaining wei
                args Mask(32, 224, ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require uint8(idx) < availableSynths.length
            mem[0] = 11
            require ext_code.size(availableSynths[uint8(idx)])
            call availableSynths[uint8(idx)].0x18160ddd with:
                 gas gas_remaining wei
            mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] % 10 < 5:
                    require (0 / ext_call.return_data[0] / 10) + s >= s
                    s = 0 / ext_call.return_data[0] / 10
                    idx = idx + 1
                    s = (0 / ext_call.return_data[0] / 10) + s
                    continue 
                require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                s = (0 / ext_call.return_data[0]) + 10 / 10
                idx = idx + 1
                s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                continue 
            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^17 % 10 < 5:
                if not ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        require (0 / ext_call.return_data[0] / 10) + s >= s
                        s = 0 / ext_call.return_data[0] / 10
                        idx = idx + 1
                        s = (0 / ext_call.return_data[0] / 10) + s
                        continue 
                    require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                    s = (0 / ext_call.return_data[0]) + 10 / 10
                    idx = idx + 1
                    s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                    continue 
                require 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 == 10 * 10^18
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                    require (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s >= s
                    s = 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10
                    idx = idx + 1
                    s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s
                    continue 
                require ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
                s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                idx = idx + 1
                s = ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s
                continue 
            if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] % 10 < 5:
                    require (0 / ext_call.return_data[0] / 10) + s >= s
                    s = 0 / ext_call.return_data[0] / 10
                    idx = idx + 1
                    s = (0 / ext_call.return_data[0] / 10) + s
                    continue 
                require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                s = (0 / ext_call.return_data[0]) + 10 / 10
                idx = idx + 1
                s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                continue 
            require 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 == 10 * 10^18
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                require (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s >= s
                s = 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                idx = idx + 1
                s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s
                continue 
            require ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
            s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
            idx = idx + 1
            s = ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s
            continue 
        if s:
            require 10^9 * s / s == 10^9
            if 10^9 * s:
                require not 0 / 10^9 * s
        require ext_call.return_data[0] > 0
        require ext_call.return_data[0]
        if 0 / ext_call.return_data[0] % 10 < 5:
            if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                return 0
            require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
            return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
        if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
            return 0
        require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
        return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
    require ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 == ext_call.return_data[0]
    require ext_code.size(exchangeRatesAddress)
    call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
         gas gas_remaining wei
        args 0x534e580000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
    mem[100] = 0x534e580000000000000000000000000000000000000000000000000000000000
    require ext_code.size(exchangeRatesAddress)
    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
         gas gas_remaining wei
        args 0x534e580000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = availableSynths.length
    if availableSynths.length:
        mem[128 len 32 * availableSynths.length] = code.data[23666 len 32 * availableSynths.length]
    idx = 0
    while uint8(idx) < availableSynths.length:
        mem[0] = 11
        require ext_code.size(availableSynths[uint8(idx)])
        call availableSynths[uint8(idx)].currencyKey() with:
             gas gas_remaining wei
        mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require uint8(idx) < mem[96]
        mem[(32 * uint8(idx)) + 128] = Mask(32, 224, ext_call.return_data[0])
        idx = idx + 1
        continue 
    mem[(32 * availableSynths.length) + 128] = 0x370d62ad00000000000000000000000000000000000000000000000000000000
    mem[(32 * availableSynths.length) + 132] = 32
    mem[(32 * availableSynths.length) + 164] = mem[96]
    mem[(32 * availableSynths.length) + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    require ext_code.size(exchangeRatesAddress)
    call exchangeRatesAddress.anyRateIsStale(bytes4[] arg1) with:
         gas gas_remaining wei
        args 32, mem[(32 * availableSynths.length) + 164 len (32 * mem[96]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Rates are stale'
    s = 0
    idx = 0
    s = 0
    while uint8(idx) < availableSynths.length:
        require ext_code.size(availableSynths[uint8(idx)])
        call availableSynths[uint8(idx)].currencyKey() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * availableSynths.length) + 132] = Mask(32, 224, ext_call.return_data[0])
        require ext_code.size(exchangeRatesAddress)
        call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
             gas gas_remaining wei
            args Mask(32, 224, ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require uint8(idx) < availableSynths.length
        mem[0] = 11
        require ext_code.size(availableSynths[uint8(idx)])
        call availableSynths[uint8(idx)].0x18160ddd with:
             gas gas_remaining wei
        mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 0 / ext_call.return_data[0] % 10 < 5:
                require (0 / ext_call.return_data[0] / 10) + s >= s
                s = 0 / ext_call.return_data[0] / 10
                idx = idx + 1
                s = (0 / ext_call.return_data[0] / 10) + s
                continue 
            require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
            s = (0 / ext_call.return_data[0]) + 10 / 10
            idx = idx + 1
            s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
            continue 
        require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^17 % 10 < 5:
            if not ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] % 10 < 5:
                    require (0 / ext_call.return_data[0] / 10) + s >= s
                    s = 0 / ext_call.return_data[0] / 10
                    idx = idx + 1
                    s = (0 / ext_call.return_data[0] / 10) + s
                    continue 
                require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                s = (0 / ext_call.return_data[0]) + 10 / 10
                idx = idx + 1
                s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                continue 
            require 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 == 10 * 10^18
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                require (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s >= s
                s = 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10
                idx = idx + 1
                s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s
                continue 
            require ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
            s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
            idx = idx + 1
            s = ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s
            continue 
        if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10:
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 0 / ext_call.return_data[0] % 10 < 5:
                require (0 / ext_call.return_data[0] / 10) + s >= s
                s = 0 / ext_call.return_data[0] / 10
                idx = idx + 1
                s = (0 / ext_call.return_data[0] / 10) + s
                continue 
            require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
            s = (0 / ext_call.return_data[0]) + 10 / 10
            idx = idx + 1
            s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
            continue 
        require 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 == 10 * 10^18
        require ext_call.return_data[0] > 0
        require ext_call.return_data[0]
        if 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
            require (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s >= s
            s = 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
            idx = idx + 1
            s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s
            continue 
        require ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
        s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
        idx = idx + 1
        s = ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s
        continue 
    if not s:
        require ext_call.return_data[0] > 0
        require ext_call.return_data[0]
        if 0 / ext_call.return_data[0] % 10 < 5:
            if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                return 0
            require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
            return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
        if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
            return 0
        require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
        return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
    require 10^9 * s / s == 10^9
    if not 10^9 * s:
        require ext_call.return_data[0] > 0
        require ext_call.return_data[0]
        if 0 / ext_call.return_data[0] % 10 < 5:
            if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                return 0
            require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
            return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
        if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
            return 0
        require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
        return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
    if ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 % 10 < 5:
        require 10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 10^9 * s == ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10
        if 10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 % 10 < 5:
            if 10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 % 10 < 5:
                if not 10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                            return 0
                        require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                        return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
                    if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                        return 0
                    require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                    return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
                require 10 * 10^18 * 10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 == 10 * 10^18
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 10 * 10^18 * 10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] % 10 < 5:
                    if 10 * 10^18 * 10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                        return 0
                    require 10 * 10^18 * 10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                    return (ext_call.return_data[0] - (10 * 10^18 * 10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10))
                if (10 * 10^18 * 10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                    return 0
                require (10 * 10^18 * 10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                return (ext_call.return_data[0] - ((10 * 10^18 * 10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10))
            if not (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] % 10 < 5:
                    if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                        return 0
                    require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                    return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
                if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                    return 0
                require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
            require 10 * 10^18 * (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 10 * 10^18 * (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                if 10 * 10^18 * (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                    return 0
                require 10 * 10^18 * (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                return (ext_call.return_data[0] - (10 * 10^18 * (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10))
            if (10 * 10^18 * (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                return 0
            require (10 * 10^18 * (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
            return (ext_call.return_data[0] - ((10 * 10^18 * (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10))
        if (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 % 10 < 5:
            if not (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] % 10 < 5:
                    if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                        return 0
                    require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                    return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
                if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                    return 0
                require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
            require 10 * 10^18 * (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 == 10 * 10^18
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 10 * 10^18 * (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] % 10 < 5:
                if 10 * 10^18 * (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                    return 0
                require 10 * 10^18 * (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                return (ext_call.return_data[0] - (10 * 10^18 * (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10))
            if (10 * 10^18 * (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                return 0
            require (10 * 10^18 * (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
            return (ext_call.return_data[0] - ((10 * 10^18 * (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10))
        if not ((10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10:
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 0 / ext_call.return_data[0] % 10 < 5:
                if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                    return 0
                require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
            if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                return 0
            require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
            return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
        require 10 * 10^18 * ((10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ((10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
        require ext_call.return_data[0] > 0
        require ext_call.return_data[0]
        if 10 * 10^18 * ((10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
            if 10 * 10^18 * ((10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                return 0
            require 10 * 10^18 * ((10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
            return (ext_call.return_data[0] - (10 * 10^18 * ((10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10))
        if (10 * 10^18 * ((10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
            return 0
        require (10 * 10^18 * ((10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
        return (ext_call.return_data[0] - ((10 * 10^18 * ((10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10))
    require 10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 10^9 * s == (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10
    if 10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 % 10 < 5:
        if 10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 % 10 < 5:
            if not 10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] % 10 < 5:
                    if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                        return 0
                    require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                    return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
                if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                    return 0
                require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
                return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
            require 10 * 10^18 * 10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 == 10 * 10^18
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 10 * 10^18 * 10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] % 10 < 5:
                if 10 * 10^18 * 10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                    return 0
                require 10 * 10^18 * 10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                return (ext_call.return_data[0] - (10 * 10^18 * 10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10))
            if (10 * 10^18 * 10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                return 0
            require (10 * 10^18 * 10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
            return (ext_call.return_data[0] - ((10 * 10^18 * 10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10))
        if not (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10:
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 0 / ext_call.return_data[0] % 10 < 5:
                if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                    return 0
                require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
            if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                return 0
            require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
            return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
        require 10 * 10^18 * (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
        require ext_call.return_data[0] > 0
        require ext_call.return_data[0]
        if 10 * 10^18 * (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
            if 10 * 10^18 * (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                return 0
            require 10 * 10^18 * (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
            return (ext_call.return_data[0] - (10 * 10^18 * (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10))
        if (10 * 10^18 * (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
            return 0
        require (10 * 10^18 * (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
        return (ext_call.return_data[0] - ((10 * 10^18 * (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10))
    if (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 % 10 < 5:
        if not (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10:
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 0 / ext_call.return_data[0] % 10 < 5:
                if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                    return 0
                require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
                return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
            if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
                return 0
            require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
            return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
        require 10 * 10^18 * (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 == 10 * 10^18
        require ext_call.return_data[0] > 0
        require ext_call.return_data[0]
        if 10 * 10^18 * (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] % 10 < 5:
            if 10 * 10^18 * (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                return 0
            require 10 * 10^18 * (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
            return (ext_call.return_data[0] - (10 * 10^18 * (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10))
        if (10 * 10^18 * (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
            return 0
        require (10 * 10^18 * (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
        return (ext_call.return_data[0] - ((10 * 10^18 * (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10))
    if not ((10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10:
        require ext_call.return_data[0] > 0
        require ext_call.return_data[0]
        if 0 / ext_call.return_data[0] % 10 < 5:
            if 0 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
                return 0
            require 0 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
            return (ext_call.return_data[0] - (0 / ext_call.return_data[0] / 10))
        if (0 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
            return 0
        require (0 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
        return (ext_call.return_data[0] - ((0 / ext_call.return_data[0]) + 10 / 10))
    require 10 * 10^18 * ((10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ((10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0]
    if 10 * 10^18 * ((10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
        if 10 * 10^18 * ((10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10 >= ext_call.return_data[0]:
            return 0
        require 10 * 10^18 * ((10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10 <= ext_call.return_data[0]
        return (ext_call.return_data[0] - (10 * 10^18 * ((10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10))
    if (10 * 10^18 * ((10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 >= ext_call.return_data[0]:
        return 0
    require (10 * 10^18 * ((10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 <= ext_call.return_data[0]
    return (ext_call.return_data[0] - ((10 * 10^18 * ((10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10))
}

function collateralisationRatio(address arg1) {
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not escrowAddress:
        if not ext_call.return_data[0]:
            return 0
        require ext_code.size(synthetixStateAddress)
        call synthetixStateAddress.issuanceData(address arg1) with:
             gas gas_remaining wei
            args arg1
        mem[96 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not ext_call.return_data[0]:
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 0 / ext_call.return_data[0] % 10 < 5:
                return (0 / ext_call.return_data[0] / 10)
            return ((0 / ext_call.return_data[0]) + 10 / 10)
        require ext_code.size(synthetixStateAddress)
        call synthetixStateAddress.debtLedger(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(synthetixStateAddress)
        call synthetixStateAddress.lastDebtLedgerEntry() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 0 / ext_call.return_data[0] % 10 < 5:
                if not 0 / ext_call.return_data[0] / 10:
                    require ext_code.size(exchangeRatesAddress)
                    call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                         gas gas_remaining wei
                        args 0x534e580000000000000000000000000000000000000000000000000000000000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                    mem[100] = 0x534e580000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(exchangeRatesAddress)
                    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                         gas gas_remaining wei
                        args 0x534e580000000000000000000000000000000000000000000000000000000000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[96] = availableSynths.length
                    if availableSynths.length:
                        mem[128 len 32 * availableSynths.length] = code.data[23666 len 32 * availableSynths.length]
                    idx = 0
                    while uint8(idx) < availableSynths.length:
                        mem[0] = 11
                        require ext_code.size(availableSynths[uint8(idx)])
                        call availableSynths[uint8(idx)].currencyKey() with:
                             gas gas_remaining wei
                        mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require uint8(idx) < mem[96]
                        mem[(32 * uint8(idx)) + 128] = Mask(32, 224, ext_call.return_data[0])
                        idx = idx + 1
                        continue 
                    mem[(32 * availableSynths.length) + 128] = 0x370d62ad00000000000000000000000000000000000000000000000000000000
                    mem[(32 * availableSynths.length) + 132] = 32
                    mem[(32 * availableSynths.length) + 164] = mem[96]
                    mem[(32 * availableSynths.length) + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    require ext_code.size(exchangeRatesAddress)
                    call exchangeRatesAddress.anyRateIsStale(bytes4[] arg1) with:
                         gas gas_remaining wei
                        args 32, mem[(32 * availableSynths.length) + 164 len (32 * mem[96]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'Rates are stale'
                    s = 0
                    idx = 0
                    s = 0
                    while uint8(idx) < availableSynths.length:
                        require ext_code.size(availableSynths[uint8(idx)])
                        call availableSynths[uint8(idx)].currencyKey() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * availableSynths.length) + 132] = Mask(32, 224, ext_call.return_data[0])
                        require ext_code.size(exchangeRatesAddress)
                        call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                             gas gas_remaining wei
                            args Mask(32, 224, ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require uint8(idx) < availableSynths.length
                        mem[0] = 11
                        require ext_code.size(availableSynths[uint8(idx)])
                        call availableSynths[uint8(idx)].0x18160ddd with:
                             gas gas_remaining wei
                        mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            require ext_call.return_data[0] > 0
                            require ext_call.return_data[0]
                            if 0 / ext_call.return_data[0] % 10 < 5:
                                require (0 / ext_call.return_data[0] / 10) + s >= s
                                s = 0 / ext_call.return_data[0] / 10
                                idx = idx + 1
                                s = (0 / ext_call.return_data[0] / 10) + s
                                continue 
                            require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                            s = (0 / ext_call.return_data[0]) + 10 / 10
                            idx = idx + 1
                            s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                            continue 
                        require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^17 % 10 < 5:
                            if not ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10:
                                require ext_call.return_data[0] > 0
                                require ext_call.return_data[0]
                                if 0 / ext_call.return_data[0] % 10 < 5:
                                    require (0 / ext_call.return_data[0] / 10) + s >= s
                                    s = 0 / ext_call.return_data[0] / 10
                                    idx = idx + 1
                                    s = (0 / ext_call.return_data[0] / 10) + s
                                    continue 
                                require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                                s = (0 / ext_call.return_data[0]) + 10 / 10
                                idx = idx + 1
                                s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                                continue 
                            require 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 == 10 * 10^18
                            require ext_call.return_data[0] > 0
                            require ext_call.return_data[0]
                            if 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                                require (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s >= s
                                s = 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10
                                idx = idx + 1
                                s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s
                                continue 
                            require ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
                            s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                            idx = idx + 1
                            s = ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s
                            continue 
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10:
                            require ext_call.return_data[0] > 0
                            require ext_call.return_data[0]
                            if 0 / ext_call.return_data[0] % 10 < 5:
                                require (0 / ext_call.return_data[0] / 10) + s >= s
                                s = 0 / ext_call.return_data[0] / 10
                                idx = idx + 1
                                s = (0 / ext_call.return_data[0] / 10) + s
                                continue 
                            require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                            s = (0 / ext_call.return_data[0]) + 10 / 10
                            idx = idx + 1
                            s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                            continue 
                        require 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 == 10 * 10^18
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                            require (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s >= s
                            s = 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                            idx = idx + 1
                            s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s
                            continue 
                        require ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
                        s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
                        idx = idx + 1
                        s = ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s
                        continue 
                    if s:
                        require 10^9 * s / s == 10^9
                        if 10^9 * s:
                            require not 0 / 10^9 * s
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        return (0 / ext_call.return_data[0] / 10)
                    return ((0 / ext_call.return_data[0]) + 10 / 10)
                require ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 0 / ext_call.return_data[0] / 10 == ext_call.return_data[0]
                require ext_code.size(exchangeRatesAddress)
                call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                     gas gas_remaining wei
                    args 0x534e580000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                mem[100] = 0x534e580000000000000000000000000000000000000000000000000000000000
                require ext_code.size(exchangeRatesAddress)
                call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                     gas gas_remaining wei
                    args 0x534e580000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[96] = availableSynths.length
                if availableSynths.length:
                    mem[128 len 32 * availableSynths.length] = code.data[23666 len 32 * availableSynths.length]
                idx = 0
                while uint8(idx) < availableSynths.length:
                    mem[0] = 11
                    require ext_code.size(availableSynths[uint8(idx)])
                    call availableSynths[uint8(idx)].currencyKey() with:
                         gas gas_remaining wei
                    mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx) < mem[96]
                    mem[(32 * uint8(idx)) + 128] = Mask(32, 224, ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                mem[(32 * availableSynths.length) + 128] = 0x370d62ad00000000000000000000000000000000000000000000000000000000
                mem[(32 * availableSynths.length) + 132] = 32
                mem[(32 * availableSynths.length) + 164] = mem[96]
                mem[(32 * availableSynths.length) + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                require ext_code.size(exchangeRatesAddress)
                call exchangeRatesAddress.anyRateIsStale(bytes4[] arg1) with:
                     gas gas_remaining wei
                    args 32, mem[(32 * availableSynths.length) + 164 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'Rates are stale'
                s = 0
                idx = 0
                s = 0
                while uint8(idx) < availableSynths.length:
                    require ext_code.size(availableSynths[uint8(idx)])
                    call availableSynths[uint8(idx)].currencyKey() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * availableSynths.length) + 132] = Mask(32, 224, ext_call.return_data[0])
                    require ext_code.size(exchangeRatesAddress)
                    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                         gas gas_remaining wei
                        args Mask(32, 224, ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx) < availableSynths.length
                    mem[0] = 11
                    require ext_code.size(availableSynths[uint8(idx)])
                    call availableSynths[uint8(idx)].0x18160ddd with:
                         gas gas_remaining wei
                    mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 0 / ext_call.return_data[0] % 10 < 5:
                            require (0 / ext_call.return_data[0] / 10) + s >= s
                            s = 0 / ext_call.return_data[0] / 10
                            idx = idx + 1
                            s = (0 / ext_call.return_data[0] / 10) + s
                            continue 
                        require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                        s = (0 / ext_call.return_data[0]) + 10 / 10
                        idx = idx + 1
                        s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                        continue 
                    require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^17 % 10 < 5:
                        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10:
                            require ext_call.return_data[0] > 0
                            require ext_call.return_data[0]
                            if 0 / ext_call.return_data[0] % 10 < 5:
                                require (0 / ext_call.return_data[0] / 10) + s >= s
                                s = 0 / ext_call.return_data[0] / 10
                                idx = idx + 1
                                s = (0 / ext_call.return_data[0] / 10) + s
                                continue 
                            require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                            s = (0 / ext_call.return_data[0]) + 10 / 10
                            idx = idx + 1
                            s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                            continue 
                        require 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 == 10 * 10^18
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                            require (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s >= s
                            s = 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10
                            idx = idx + 1
                            s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s
                            continue 
                        require ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
                        s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                        idx = idx + 1
                        s = ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s
                        continue 
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10:
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 0 / ext_call.return_data[0] % 10 < 5:
                            require (0 / ext_call.return_data[0] / 10) + s >= s
                            s = 0 / ext_call.return_data[0] / 10
                            idx = idx + 1
                            s = (0 / ext_call.return_data[0] / 10) + s
                            continue 
                        require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                        s = (0 / ext_call.return_data[0]) + 10 / 10
                        idx = idx + 1
                        s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                        continue 
                    require 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 == 10 * 10^18
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                        require (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s >= s
                        s = 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                        idx = idx + 1
                        s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s
                        continue 
                    require ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
                    s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
                    idx = idx + 1
                    s = ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s
                    continue 
                if not s:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        return (0 / ext_call.return_data[0] / 10)
                    return ((0 / ext_call.return_data[0]) + 10 / 10)
                require 10^9 * s / s == 10^9
                if not 10^9 * s:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        return (0 / ext_call.return_data[0] / 10)
                    return ((0 / ext_call.return_data[0]) + 10 / 10)
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 % 10 < 5:
                    require 10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 10^9 * s == ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10
                    if 10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 % 10 < 5:
                        if 10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 % 10 < 5:
                            if not 10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10:
                                require ext_call.return_data[0] > 0
                                require ext_call.return_data[0]
                                if 0 / ext_call.return_data[0] % 10 < 5:
                                    return (0 / ext_call.return_data[0] / 10)
                                return ((0 / ext_call.return_data[0]) + 10 / 10)
                            require 10 * 10^18 * 10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 == 10 * 10^18
                            require ext_call.return_data[0] > 0
                            require ext_call.return_data[0]
                            if 10 * 10^18 * 10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] % 10 < 5:
                                return (10 * 10^18 * 10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10)
                            return ((10 * 10^18 * 10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10)
                        if not (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10:
                            require ext_call.return_data[0] > 0
                            require ext_call.return_data[0]
                            if 0 / ext_call.return_data[0] % 10 < 5:
                                return (0 / ext_call.return_data[0] / 10)
                            return ((0 / ext_call.return_data[0]) + 10 / 10)
                        require 10 * 10^18 * (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 10 * 10^18 * (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                            return (10 * 10^18 * (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10)
                        return ((10 * 10^18 * (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10)
                    if (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 % 10 < 5:
                        if not (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10:
                            require ext_call.return_data[0] > 0
                            require ext_call.return_data[0]
                            if 0 / ext_call.return_data[0] % 10 < 5:
                                return (0 / ext_call.return_data[0] / 10)
                            return ((0 / ext_call.return_data[0]) + 10 / 10)
                        require 10 * 10^18 * (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 == 10 * 10^18
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 10 * 10^18 * (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] % 10 < 5:
                            return (10 * 10^18 * (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10)
                        return ((10 * 10^18 * (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10)
                    if not ((10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10:
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 0 / ext_call.return_data[0] % 10 < 5:
                            return (0 / ext_call.return_data[0] / 10)
                        return ((0 / ext_call.return_data[0]) + 10 / 10)
                    require 10 * 10^18 * ((10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ((10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 10 * 10^18 * ((10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                        return (10 * 10^18 * ((10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10)
                    return ((10 * 10^18 * ((10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10)
                require 10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 10^9 * s == (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10
                if 10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 % 10 < 5:
                    if 10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 % 10 < 5:
                        if not 10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10:
                            require ext_call.return_data[0] > 0
                            require ext_call.return_data[0]
                            if 0 / ext_call.return_data[0] % 10 < 5:
                                return (0 / ext_call.return_data[0] / 10)
                            return ((0 / ext_call.return_data[0]) + 10 / 10)
                        require 10 * 10^18 * 10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 == 10 * 10^18
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 10 * 10^18 * 10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] % 10 < 5:
                            return (10 * 10^18 * 10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10)
                        return ((10 * 10^18 * 10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10)
                    if not (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10:
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 0 / ext_call.return_data[0] % 10 < 5:
                            return (0 / ext_call.return_data[0] / 10)
                        return ((0 / ext_call.return_data[0]) + 10 / 10)
                    require 10 * 10^18 * (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 10 * 10^18 * (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                        return (10 * 10^18 * (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10)
                    return ((10 * 10^18 * (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10)
                if (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 % 10 < 5:
                    if not (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10:
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 0 / ext_call.return_data[0] % 10 < 5:
                            return (0 / ext_call.return_data[0] / 10)
                        return ((0 / ext_call.return_data[0]) + 10 / 10)
                    require 10 * 10^18 * (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 == 10 * 10^18
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 10 * 10^18 * (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] % 10 < 5:
                        return (10 * 10^18 * (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10)
                    return ((10 * 10^18 * (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10)
                if not ((10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        return (0 / ext_call.return_data[0] / 10)
                    return ((0 / ext_call.return_data[0]) + 10 / 10)
                require 10 * 10^18 * ((10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ((10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 10 * 10^18 * ((10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                    return (10 * 10^18 * ((10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10)
                return ((10 * 10^18 * ((10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10)
            if not (0 / ext_call.return_data[0]) + 10 / 10:
                require ext_code.size(exchangeRatesAddress)
                call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                     gas gas_remaining wei
                    args 0x534e580000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                mem[100] = 0x534e580000000000000000000000000000000000000000000000000000000000
                require ext_code.size(exchangeRatesAddress)
                call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                     gas gas_remaining wei
                    args 0x534e580000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[96] = availableSynths.length
                if availableSynths.length:
                    mem[128 len 32 * availableSynths.length] = code.data[23666 len 32 * availableSynths.length]
                idx = 0
                while uint8(idx) < availableSynths.length:
                    mem[0] = 11
                    require ext_code.size(availableSynths[uint8(idx)])
                    call availableSynths[uint8(idx)].currencyKey() with:
                         gas gas_remaining wei
                    mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx) < mem[96]
                    mem[(32 * uint8(idx)) + 128] = Mask(32, 224, ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                mem[(32 * availableSynths.length) + 128] = 0x370d62ad00000000000000000000000000000000000000000000000000000000
                mem[(32 * availableSynths.length) + 132] = 32
                mem[(32 * availableSynths.length) + 164] = mem[96]
                mem[(32 * availableSynths.length) + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                require ext_code.size(exchangeRatesAddress)
                call exchangeRatesAddress.anyRateIsStale(bytes4[] arg1) with:
                     gas gas_remaining wei
                    args 32, mem[(32 * availableSynths.length) + 164 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'Rates are stale'
                s = 0
                idx = 0
                s = 0
                while uint8(idx) < availableSynths.length:
                    require ext_code.size(availableSynths[uint8(idx)])
                    call availableSynths[uint8(idx)].currencyKey() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * availableSynths.length) + 132] = Mask(32, 224, ext_call.return_data[0])
                    require ext_code.size(exchangeRatesAddress)
                    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                         gas gas_remaining wei
                        args Mask(32, 224, ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx) < availableSynths.length
                    mem[0] = 11
                    require ext_code.size(availableSynths[uint8(idx)])
                    call availableSynths[uint8(idx)].0x18160ddd with:
                         gas gas_remaining wei
                    mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 0 / ext_call.return_data[0] % 10 < 5:
                            require (0 / ext_call.return_data[0] / 10) + s >= s
                            s = 0 / ext_call.return_data[0] / 10
                            idx = idx + 1
                            s = (0 / ext_call.return_data[0] / 10) + s
                            continue 
                        require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                        s = (0 / ext_call.return_data[0]) + 10 / 10
                        idx = idx + 1
                        s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                        continue 
                    require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^17 % 10 < 5:
                        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10:
                            require ext_call.return_data[0] > 0
                            require ext_call.return_data[0]
                            if 0 / ext_call.return_data[0] % 10 < 5:
                                require (0 / ext_call.return_data[0] / 10) + s >= s
                                s = 0 / ext_call.return_data[0] / 10
                                idx = idx + 1
                                s = (0 / ext_call.return_data[0] / 10) + s
                                continue 
                            require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                            s = (0 / ext_call.return_data[0]) + 10 / 10
                            idx = idx + 1
                            s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                            continue 
                        require 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 == 10 * 10^18
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                            require (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s >= s
                            s = 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10
                            idx = idx + 1
                            s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s
                            continue 
                        require ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
                        s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                        idx = idx + 1
                        s = ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s
                        continue 
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10:
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 0 / ext_call.return_data[0] % 10 < 5:
                            require (0 / ext_call.return_data[0] / 10) + s >= s
                            s = 0 / ext_call.return_data[0] / 10
                            idx = idx + 1
                            s = (0 / ext_call.return_data[0] / 10) + s
                            continue 
                        require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                        s = (0 / ext_call.return_data[0]) + 10 / 10
                        idx = idx + 1
                        s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                        continue 
                    require 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 == 10 * 10^18
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                        require (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s >= s
                        s = 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                        idx = idx + 1
                        s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s
                        continue 
                    require ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
                    s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
                    idx = idx + 1
                    s = ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s
                    continue 
                if s:
                    require 10^9 * s / s == 10^9
                    if 10^9 * s:
                        require not 0 / 10^9 * s
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] % 10 < 5:
                    return (0 / ext_call.return_data[0] / 10)
                return ((0 / ext_call.return_data[0]) + 10 / 10)
            require ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / (0 / ext_call.return_data[0]) + 10 / 10 == ext_call.return_data[0]
            require ext_code.size(exchangeRatesAddress)
            call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                 gas gas_remaining wei
                args 0x534e580000000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
            mem[100] = 0x534e580000000000000000000000000000000000000000000000000000000000
            require ext_code.size(exchangeRatesAddress)
            call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                 gas gas_remaining wei
                args 0x534e580000000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[96] = availableSynths.length
            if availableSynths.length:
                mem[128 len 32 * availableSynths.length] = code.data[23666 len 32 * availableSynths.length]
            idx = 0
            while uint8(idx) < availableSynths.length:
                mem[0] = 11
                require ext_code.size(availableSynths[uint8(idx)])
                call availableSynths[uint8(idx)].currencyKey() with:
                     gas gas_remaining wei
                mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require uint8(idx) < mem[96]
                mem[(32 * uint8(idx)) + 128] = Mask(32, 224, ext_call.return_data[0])
                idx = idx + 1
                continue 
            mem[(32 * availableSynths.length) + 128] = 0x370d62ad00000000000000000000000000000000000000000000000000000000
            mem[(32 * availableSynths.length) + 132] = 32
            mem[(32 * availableSynths.length) + 164] = mem[96]
            mem[(32 * availableSynths.length) + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            require ext_code.size(exchangeRatesAddress)
            call exchangeRatesAddress.anyRateIsStale(bytes4[] arg1) with:
                 gas gas_remaining wei
                args 32, mem[(32 * availableSynths.length) + 164 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'Rates are stale'
            s = 0
            idx = 0
            s = 0
            while uint8(idx) < availableSynths.length:
                require ext_code.size(availableSynths[uint8(idx)])
                call availableSynths[uint8(idx)].currencyKey() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * availableSynths.length) + 132] = Mask(32, 224, ext_call.return_data[0])
                require ext_code.size(exchangeRatesAddress)
                call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                     gas gas_remaining wei
                    args Mask(32, 224, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require uint8(idx) < availableSynths.length
                mem[0] = 11
                require ext_code.size(availableSynths[uint8(idx)])
                call availableSynths[uint8(idx)].0x18160ddd with:
                     gas gas_remaining wei
                mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        require (0 / ext_call.return_data[0] / 10) + s >= s
                        s = 0 / ext_call.return_data[0] / 10
                        idx = idx + 1
                        s = (0 / ext_call.return_data[0] / 10) + s
                        continue 
                    require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                    s = (0 / ext_call.return_data[0]) + 10 / 10
                    idx = idx + 1
                    s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                    continue 
                require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^17 % 10 < 5:
                    if not ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10:
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 0 / ext_call.return_data[0] % 10 < 5:
                            require (0 / ext_call.return_data[0] / 10) + s >= s
                            s = 0 / ext_call.return_data[0] / 10
                            idx = idx + 1
                            s = (0 / ext_call.return_data[0] / 10) + s
                            continue 
                        require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                        s = (0 / ext_call.return_data[0]) + 10 / 10
                        idx = idx + 1
                        s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                        continue 
                    require 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 == 10 * 10^18
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                        require (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s >= s
                        s = 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10
                        idx = idx + 1
                        s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s
                        continue 
                    require ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
                    s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                    idx = idx + 1
                    s = ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s
                    continue 
                if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        require (0 / ext_call.return_data[0] / 10) + s >= s
                        s = 0 / ext_call.return_data[0] / 10
                        idx = idx + 1
                        s = (0 / ext_call.return_data[0] / 10) + s
                        continue 
                    require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                    s = (0 / ext_call.return_data[0]) + 10 / 10
                    idx = idx + 1
                    s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                    continue 
                require 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 == 10 * 10^18
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                    require (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s >= s
                    s = 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                    idx = idx + 1
                    s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s
                    continue 
                require ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
                s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
                idx = idx + 1
                s = ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s
                continue 
            if not s:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] % 10 < 5:
                    return (0 / ext_call.return_data[0] / 10)
                return ((0 / ext_call.return_data[0]) + 10 / 10)
            require 10^9 * s / s == 10^9
            if not 10^9 * s:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] % 10 < 5:
                    return (0 / ext_call.return_data[0] / 10)
                return ((0 / ext_call.return_data[0]) + 10 / 10)
            if ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 % 10 < 5:
                require 10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 10^9 * s == ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10
                if 10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 % 10 < 5:
                    if 10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 % 10 < 5:
                        if not 10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10:
                            require ext_call.return_data[0] > 0
                            require ext_call.return_data[0]
                            if 0 / ext_call.return_data[0] % 10 < 5:
                                return (0 / ext_call.return_data[0] / 10)
                            return ((0 / ext_call.return_data[0]) + 10 / 10)
                        require 10 * 10^18 * 10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 == 10 * 10^18
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 10 * 10^18 * 10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] % 10 < 5:
                            return (10 * 10^18 * 10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10)
                        return ((10 * 10^18 * 10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10)
                    if not (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10:
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 0 / ext_call.return_data[0] % 10 < 5:
                            return (0 / ext_call.return_data[0] / 10)
                        return ((0 / ext_call.return_data[0]) + 10 / 10)
                    require 10 * 10^18 * (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 10 * 10^18 * (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                        return (10 * 10^18 * (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10)
                    return ((10 * 10^18 * (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10)
                if (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 % 10 < 5:
                    if not (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10:
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 0 / ext_call.return_data[0] % 10 < 5:
                            return (0 / ext_call.return_data[0] / 10)
                        return ((0 / ext_call.return_data[0]) + 10 / 10)
                    require 10 * 10^18 * (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 == 10 * 10^18
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 10 * 10^18 * (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] % 10 < 5:
                        return (10 * 10^18 * (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10)
                    return ((10 * 10^18 * (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10)
                if not ((10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        return (0 / ext_call.return_data[0] / 10)
                    return ((0 / ext_call.return_data[0]) + 10 / 10)
                require 10 * 10^18 * ((10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ((10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 10 * 10^18 * ((10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                    return (10 * 10^18 * ((10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10)
                return ((10 * 10^18 * ((10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10)
            require 10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 10^9 * s == (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10
            if 10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 % 10 < 5:
                if 10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 % 10 < 5:
                    if not 10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10:
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 0 / ext_call.return_data[0] % 10 < 5:
                            return (0 / ext_call.return_data[0] / 10)
                        return ((0 / ext_call.return_data[0]) + 10 / 10)
                    require 10 * 10^18 * 10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 == 10 * 10^18
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 10 * 10^18 * 10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] % 10 < 5:
                        return (10 * 10^18 * 10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10)
                    return ((10 * 10^18 * 10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10)
                if not (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        return (0 / ext_call.return_data[0] / 10)
                    return ((0 / ext_call.return_data[0]) + 10 / 10)
                require 10 * 10^18 * (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 10 * 10^18 * (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                    return (10 * 10^18 * (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10)
                return ((10 * 10^18 * (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10)
            if (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 % 10 < 5:
                if not (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        return (0 / ext_call.return_data[0] / 10)
                    return ((0 / ext_call.return_data[0]) + 10 / 10)
                require 10 * 10^18 * (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 == 10 * 10^18
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 10 * 10^18 * (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] % 10 < 5:
                    return (10 * 10^18 * (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10)
                return ((10 * 10^18 * (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10)
            if not ((10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] % 10 < 5:
                    return (0 / ext_call.return_data[0] / 10)
                return ((0 / ext_call.return_data[0]) + 10 / 10)
            require 10 * 10^18 * ((10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ((10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 10 * 10^18 * ((10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                return (10 * 10^18 * ((10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10)
            return ((10 * 10^18 * ((10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10)
        require 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10000000000 * 10^18
        require ext_call.return_data[0] > 0
        require ext_call.return_data[0]
        if 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] % 10 < 5:
            if not 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10:
                require ext_code.size(exchangeRatesAddress)
                call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                     gas gas_remaining wei
                    args 0x534e580000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                mem[100] = 0x534e580000000000000000000000000000000000000000000000000000000000
                require ext_code.size(exchangeRatesAddress)
                call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                     gas gas_remaining wei
                    args 0x534e580000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[96] = availableSynths.length
                if availableSynths.length:
                    mem[128 len 32 * availableSynths.length] = code.data[23666 len 32 * availableSynths.length]
                idx = 0
                while uint8(idx) < availableSynths.length:
                    mem[0] = 11
                    require ext_code.size(availableSynths[uint8(idx)])
                    call availableSynths[uint8(idx)].currencyKey() with:
                         gas gas_remaining wei
                    mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx) < mem[96]
                    mem[(32 * uint8(idx)) + 128] = Mask(32, 224, ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                mem[(32 * availableSynths.length) + 128] = 0x370d62ad00000000000000000000000000000000000000000000000000000000
                mem[(32 * availableSynths.length) + 132] = 32
                mem[(32 * availableSynths.length) + 164] = mem[96]
                mem[(32 * availableSynths.length) + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                require ext_code.size(exchangeRatesAddress)
                call exchangeRatesAddress.anyRateIsStale(bytes4[] arg1) with:
                     gas gas_remaining wei
                    args 32, mem[(32 * availableSynths.length) + 164 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'Rates are stale'
                s = 0
                idx = 0
                s = 0
                while uint8(idx) < availableSynths.length:
                    require ext_code.size(availableSynths[uint8(idx)])
                    call availableSynths[uint8(idx)].currencyKey() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * availableSynths.length) + 132] = Mask(32, 224, ext_call.return_data[0])
                    require ext_code.size(exchangeRatesAddress)
                    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                         gas gas_remaining wei
                        args Mask(32, 224, ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx) < availableSynths.length
                    mem[0] = 11
                    require ext_code.size(availableSynths[uint8(idx)])
                    call availableSynths[uint8(idx)].0x18160ddd with:
                         gas gas_remaining wei
                    mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 0 / ext_call.return_data[0] % 10 < 5:
                            require (0 / ext_call.return_data[0] / 10) + s >= s
                            s = 0 / ext_call.return_data[0] / 10
                            idx = idx + 1
                            s = (0 / ext_call.return_data[0] / 10) + s
                            continue 
                        require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                        s = (0 / ext_call.return_data[0]) + 10 / 10
                        idx = idx + 1
                        s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                        continue 
                    require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^17 % 10 < 5:
                        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10:
                            require ext_call.return_data[0] > 0
                            require ext_call.return_data[0]
                            if 0 / ext_call.return_data[0] % 10 < 5:
                                require (0 / ext_call.return_data[0] / 10) + s >= s
                                s = 0 / ext_call.return_data[0] / 10
                                idx = idx + 1
                                s = (0 / ext_call.return_data[0] / 10) + s
                                continue 
                            require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                            s = (0 / ext_call.return_data[0]) + 10 / 10
                            idx = idx + 1
                            s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                            continue 
                        require 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 == 10 * 10^18
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                            require (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s >= s
                            s = 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10
                            idx = idx + 1
                            s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s
                            continue 
                        require ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
                        s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                        idx = idx + 1
                        s = ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s
                        continue 
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10:
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 0 / ext_call.return_data[0] % 10 < 5:
                            require (0 / ext_call.return_data[0] / 10) + s >= s
                            s = 0 / ext_call.return_data[0] / 10
                            idx = idx + 1
                            s = (0 / ext_call.return_data[0] / 10) + s
                            continue 
                        require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                        s = (0 / ext_call.return_data[0]) + 10 / 10
                        idx = idx + 1
                        s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                        continue 
                    require 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 == 10 * 10^18
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                        require (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s >= s
                        s = 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                        idx = idx + 1
                        s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s
                        continue 
                    require ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
                    s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
                    idx = idx + 1
                    s = ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s
                    continue 
                if s:
                    require 10^9 * s / s == 10^9
                    if 10^9 * s:
                        require not 0 / 10^9 * s
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] % 10 < 5:
                    return (0 / ext_call.return_data[0] / 10)
                return ((0 / ext_call.return_data[0]) + 10 / 10)
            require ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 == ext_call.return_data[0]
            require ext_code.size(exchangeRatesAddress)
            call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                 gas gas_remaining wei
                args 0x534e580000000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
            mem[100] = 0x534e580000000000000000000000000000000000000000000000000000000000
            require ext_code.size(exchangeRatesAddress)
            call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                 gas gas_remaining wei
                args 0x534e580000000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[96] = availableSynths.length
            if availableSynths.length:
                mem[128 len 32 * availableSynths.length] = code.data[23666 len 32 * availableSynths.length]
            idx = 0
            while uint8(idx) < availableSynths.length:
                mem[0] = 11
                require ext_code.size(availableSynths[uint8(idx)])
                call availableSynths[uint8(idx)].currencyKey() with:
                     gas gas_remaining wei
                mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require uint8(idx) < mem[96]
                mem[(32 * uint8(idx)) + 128] = Mask(32, 224, ext_call.return_data[0])
                idx = idx + 1
                continue 
            mem[(32 * availableSynths.length) + 128] = 0x370d62ad00000000000000000000000000000000000000000000000000000000
            mem[(32 * availableSynths.length) + 132] = 32
            mem[(32 * availableSynths.length) + 164] = mem[96]
            mem[(32 * availableSynths.length) + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            require ext_code.size(exchangeRatesAddress)
            call exchangeRatesAddress.anyRateIsStale(bytes4[] arg1) with:
                 gas gas_remaining wei
                args 32, mem[(32 * availableSynths.length) + 164 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'Rates are stale'
            s = 0
            idx = 0
            s = 0
            while uint8(idx) < availableSynths.length:
                require ext_code.size(availableSynths[uint8(idx)])
                call availableSynths[uint8(idx)].currencyKey() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * availableSynths.length) + 132] = Mask(32, 224, ext_call.return_data[0])
                require ext_code.size(exchangeRatesAddress)
                call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                     gas gas_remaining wei
                    args Mask(32, 224, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require uint8(idx) < availableSynths.length
                mem[0] = 11
                require ext_code.size(availableSynths[uint8(idx)])
                call availableSynths[uint8(idx)].0x18160ddd with:
                     gas gas_remaining wei
                mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        require (0 / ext_call.return_data[0] / 10) + s >= s
                        s = 0 / ext_call.return_data[0] / 10
                        idx = idx + 1
                        s = (0 / ext_call.return_data[0] / 10) + s
                        continue 
                    require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                    s = (0 / ext_call.return_data[0]) + 10 / 10
                    idx = idx + 1
                    s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                    continue 
                require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^17 % 10 < 5:
                    if not ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10:
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 0 / ext_call.return_data[0] % 10 < 5:
                            require (0 / ext_call.return_data[0] / 10) + s >= s
                            s = 0 / ext_call.return_data[0] / 10
                            idx = idx + 1
                            s = (0 / ext_call.return_data[0] / 10) + s
                            continue 
                        require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                        s = (0 / ext_call.return_data[0]) + 10 / 10
                        idx = idx + 1
                        s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                        continue 
                    require 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 == 10 * 10^18
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                        require (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s >= s
                        s = 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10
                        idx = idx + 1
                        s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s
                        continue 
                    require ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
                    s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                    idx = idx + 1
                    s = ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s
                    continue 
                if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        require (0 / ext_call.return_data[0] / 10) + s >= s
                        s = 0 / ext_call.return_data[0] / 10
                        idx = idx + 1
                        s = (0 / ext_call.return_data[0] / 10) + s
                        continue 
                    require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                    s = (0 / ext_call.return_data[0]) + 10 / 10
                    idx = idx + 1
                    s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                    continue 
                require 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 == 10 * 10^18
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                    require (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s >= s
                    s = 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                    idx = idx + 1
                    s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s
                    continue 
                require ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
                s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
                idx = idx + 1
                s = ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s
                continue 
            if not s:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] % 10 < 5:
                    return (0 / ext_call.return_data[0] / 10)
                return ((0 / ext_call.return_data[0]) + 10 / 10)
            require 10^9 * s / s == 10^9
            if not 10^9 * s:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] % 10 < 5:
                    return (0 / ext_call.return_data[0] / 10)
                return ((0 / ext_call.return_data[0]) + 10 / 10)
            if ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 % 10 < 5:
                require 10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 10^9 * s == ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10
                if 10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 % 10 < 5:
                    if 10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 % 10 < 5:
                        if not 10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10:
                            require ext_call.return_data[0] > 0
                            require ext_call.return_data[0]
                            if 0 / ext_call.return_data[0] % 10 < 5:
                                return (0 / ext_call.return_data[0] / 10)
                            return ((0 / ext_call.return_data[0]) + 10 / 10)
                        require 10 * 10^18 * 10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 == 10 * 10^18
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 10 * 10^18 * 10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] % 10 < 5:
                            return (10 * 10^18 * 10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10)
                        return ((10 * 10^18 * 10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10)
                    if not (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10:
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 0 / ext_call.return_data[0] % 10 < 5:
                            return (0 / ext_call.return_data[0] / 10)
                        return ((0 / ext_call.return_data[0]) + 10 / 10)
                    require 10 * 10^18 * (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 10 * 10^18 * (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                        return (10 * 10^18 * (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10)
                    return ((10 * 10^18 * (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10)
                if (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 % 10 < 5:
                    if not (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10:
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 0 / ext_call.return_data[0] % 10 < 5:
                            return (0 / ext_call.return_data[0] / 10)
                        return ((0 / ext_call.return_data[0]) + 10 / 10)
                    require 10 * 10^18 * (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 == 10 * 10^18
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 10 * 10^18 * (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] % 10 < 5:
                        return (10 * 10^18 * (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10)
                    return ((10 * 10^18 * (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10)
                if not ((10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        return (0 / ext_call.return_data[0] / 10)
                    return ((0 / ext_call.return_data[0]) + 10 / 10)
                require 10 * 10^18 * ((10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ((10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 10 * 10^18 * ((10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                    return (10 * 10^18 * ((10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10)
                return ((10 * 10^18 * ((10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10)
            require 10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 10^9 * s == (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10
            if 10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 % 10 < 5:
                if 10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 % 10 < 5:
                    if not 10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10:
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 0 / ext_call.return_data[0] % 10 < 5:
                            return (0 / ext_call.return_data[0] / 10)
                        return ((0 / ext_call.return_data[0]) + 10 / 10)
                    require 10 * 10^18 * 10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 == 10 * 10^18
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 10 * 10^18 * 10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] % 10 < 5:
                        return (10 * 10^18 * 10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10)
                    return ((10 * 10^18 * 10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10)
                if not (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        return (0 / ext_call.return_data[0] / 10)
                    return ((0 / ext_call.return_data[0]) + 10 / 10)
                require 10 * 10^18 * (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 10 * 10^18 * (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                    return (10 * 10^18 * (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10)
                return ((10 * 10^18 * (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10)
            if (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 % 10 < 5:
                if not (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        return (0 / ext_call.return_data[0] / 10)
                    return ((0 / ext_call.return_data[0]) + 10 / 10)
                require 10 * 10^18 * (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 == 10 * 10^18
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 10 * 10^18 * (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] % 10 < 5:
                    return (10 * 10^18 * (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10)
                return ((10 * 10^18 * (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10)
            if not ((10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] % 10 < 5:
                    return (0 / ext_call.return_data[0] / 10)
                return ((0 / ext_call.return_data[0]) + 10 / 10)
            require 10 * 10^18 * ((10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ((10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 10 * 10^18 * ((10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                return (10 * 10^18 * ((10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10)
            return ((10 * 10^18 * ((10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10)
        if not (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10:
            require ext_code.size(exchangeRatesAddress)
            call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                 gas gas_remaining wei
                args 0x534e580000000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
            mem[100] = 0x534e580000000000000000000000000000000000000000000000000000000000
            require ext_code.size(exchangeRatesAddress)
            call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                 gas gas_remaining wei
                args 0x534e580000000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[96] = availableSynths.length
            if availableSynths.length:
                mem[128 len 32 * availableSynths.length] = code.data[23666 len 32 * availableSynths.length]
            idx = 0
            while uint8(idx) < availableSynths.length:
                mem[0] = 11
                require ext_code.size(availableSynths[uint8(idx)])
                call availableSynths[uint8(idx)].currencyKey() with:
                     gas gas_remaining wei
                mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require uint8(idx) < mem[96]
                mem[(32 * uint8(idx)) + 128] = Mask(32, 224, ext_call.return_data[0])
                idx = idx + 1
                continue 
            mem[(32 * availableSynths.length) + 128] = 0x370d62ad00000000000000000000000000000000000000000000000000000000
            mem[(32 * availableSynths.length) + 132] = 32
            mem[(32 * availableSynths.length) + 164] = mem[96]
            mem[(32 * availableSynths.length) + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            require ext_code.size(exchangeRatesAddress)
            call exchangeRatesAddress.anyRateIsStale(bytes4[] arg1) with:
                 gas gas_remaining wei
                args 32, mem[(32 * availableSynths.length) + 164 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'Rates are stale'
            s = 0
            idx = 0
            s = 0
            while uint8(idx) < availableSynths.length:
                require ext_code.size(availableSynths[uint8(idx)])
                call availableSynths[uint8(idx)].currencyKey() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * availableSynths.length) + 132] = Mask(32, 224, ext_call.return_data[0])
                require ext_code.size(exchangeRatesAddress)
                call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                     gas gas_remaining wei
                    args Mask(32, 224, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require uint8(idx) < availableSynths.length
                mem[0] = 11
                require ext_code.size(availableSynths[uint8(idx)])
                call availableSynths[uint8(idx)].0x18160ddd with:
                     gas gas_remaining wei
                mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        require (0 / ext_call.return_data[0] / 10) + s >= s
                        s = 0 / ext_call.return_data[0] / 10
                        idx = idx + 1
                        s = (0 / ext_call.return_data[0] / 10) + s
                        continue 
                    require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                    s = (0 / ext_call.return_data[0]) + 10 / 10
                    idx = idx + 1
                    s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                    continue 
                require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^17 % 10 < 5:
                    if not ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10:
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 0 / ext_call.return_data[0] % 10 < 5:
                            require (0 / ext_call.return_data[0] / 10) + s >= s
                            s = 0 / ext_call.return_data[0] / 10
                            idx = idx + 1
                            s = (0 / ext_call.return_data[0] / 10) + s
                            continue 
                        require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                        s = (0 / ext_call.return_data[0]) + 10 / 10
                        idx = idx + 1
                        s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                        continue 
                    require 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 == 10 * 10^18
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                        require (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s >= s
                        s = 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10
                        idx = idx + 1
                        s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s
                        continue 
                    require ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
                    s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                    idx = idx + 1
                    s = ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s
                    continue 
                if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        require (0 / ext_call.return_data[0] / 10) + s >= s
                        s = 0 / ext_call.return_data[0] / 10
                        idx = idx + 1
                        s = (0 / ext_call.return_data[0] / 10) + s
                        continue 
                    require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                    s = (0 / ext_call.return_data[0]) + 10 / 10
                    idx = idx + 1
                    s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                    continue 
                require 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 == 10 * 10^18
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                    require (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s >= s
                    s = 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                    idx = idx + 1
                    s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s
                    continue 
                require ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
                s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
                idx = idx + 1
                s = ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s
                continue 
            if s:
                require 10^9 * s / s == 10^9
                if 10^9 * s:
                    require not 0 / 10^9 * s
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 0 / ext_call.return_data[0] % 10 < 5:
                return (0 / ext_call.return_data[0] / 10)
            return ((0 / ext_call.return_data[0]) + 10 / 10)
        require ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 == ext_call.return_data[0]
        require ext_code.size(exchangeRatesAddress)
        call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
             gas gas_remaining wei
            args 0x534e580000000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
        mem[100] = 0x534e580000000000000000000000000000000000000000000000000000000000
        require ext_code.size(exchangeRatesAddress)
        call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
             gas gas_remaining wei
            args 0x534e580000000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = availableSynths.length
        if availableSynths.length:
            mem[128 len 32 * availableSynths.length] = code.data[23666 len 32 * availableSynths.length]
        idx = 0
        while uint8(idx) < availableSynths.length:
            mem[0] = 11
            require ext_code.size(availableSynths[uint8(idx)])
            call availableSynths[uint8(idx)].currencyKey() with:
                 gas gas_remaining wei
            mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require uint8(idx) < mem[96]
            mem[(32 * uint8(idx)) + 128] = Mask(32, 224, ext_call.return_data[0])
            idx = idx + 1
            continue 
        mem[(32 * availableSynths.length) + 128] = 0x370d62ad00000000000000000000000000000000000000000000000000000000
        mem[(32 * availableSynths.length) + 132] = 32
        mem[(32 * availableSynths.length) + 164] = mem[96]
        mem[(32 * availableSynths.length) + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        require ext_code.size(exchangeRatesAddress)
        call exchangeRatesAddress.anyRateIsStale(bytes4[] arg1) with:
             gas gas_remaining wei
            args 32, mem[(32 * availableSynths.length) + 164 len (32 * mem[96]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'Rates are stale'
        s = 0
        idx = 0
        s = 0
        while uint8(idx) < availableSynths.length:
            require ext_code.size(availableSynths[uint8(idx)])
            call availableSynths[uint8(idx)].currencyKey() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * availableSynths.length) + 132] = Mask(32, 224, ext_call.return_data[0])
            require ext_code.size(exchangeRatesAddress)
            call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                 gas gas_remaining wei
                args Mask(32, 224, ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require uint8(idx) < availableSynths.length
            mem[0] = 11
            require ext_code.size(availableSynths[uint8(idx)])
            call availableSynths[uint8(idx)].0x18160ddd with:
                 gas gas_remaining wei
            mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] % 10 < 5:
                    require (0 / ext_call.return_data[0] / 10) + s >= s
                    s = 0 / ext_call.return_data[0] / 10
                    idx = idx + 1
                    s = (0 / ext_call.return_data[0] / 10) + s
                    continue 
                require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                s = (0 / ext_call.return_data[0]) + 10 / 10
                idx = idx + 1
                s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                continue 
            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^17 % 10 < 5:
                if not ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        require (0 / ext_call.return_data[0] / 10) + s >= s
                        s = 0 / ext_call.return_data[0] / 10
                        idx = idx + 1
                        s = (0 / ext_call.return_data[0] / 10) + s
                        continue 
                    require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                    s = (0 / ext_call.return_data[0]) + 10 / 10
                    idx = idx + 1
                    s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                    continue 
                require 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 == 10 * 10^18
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                    require (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s >= s
                    s = 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10
                    idx = idx + 1
                    s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s
                    continue 
                require ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
                s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                idx = idx + 1
                s = ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s
                continue 
            if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] % 10 < 5:
                    require (0 / ext_call.return_data[0] / 10) + s >= s
                    s = 0 / ext_call.return_data[0] / 10
                    idx = idx + 1
                    s = (0 / ext_call.return_data[0] / 10) + s
                    continue 
                require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                s = (0 / ext_call.return_data[0]) + 10 / 10
                idx = idx + 1
                s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                continue 
            require 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 == 10 * 10^18
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                require (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s >= s
                s = 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                idx = idx + 1
                s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s
                continue 
            require ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
            s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
            idx = idx + 1
            s = ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s
            continue 
        if not s:
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 0 / ext_call.return_data[0] % 10 < 5:
                return (0 / ext_call.return_data[0] / 10)
            return ((0 / ext_call.return_data[0]) + 10 / 10)
        require 10^9 * s / s == 10^9
        if not 10^9 * s:
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 0 / ext_call.return_data[0] % 10 < 5:
                return (0 / ext_call.return_data[0] / 10)
            return ((0 / ext_call.return_data[0]) + 10 / 10)
        if ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 % 10 < 5:
            require 10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 10^9 * s == ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10
            if 10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 % 10 < 5:
                if 10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 % 10 < 5:
                    if not 10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10:
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 0 / ext_call.return_data[0] % 10 < 5:
                            return (0 / ext_call.return_data[0] / 10)
                        return ((0 / ext_call.return_data[0]) + 10 / 10)
                    require 10 * 10^18 * 10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 == 10 * 10^18
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 10 * 10^18 * 10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] % 10 < 5:
                        return (10 * 10^18 * 10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10)
                    return ((10 * 10^18 * 10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10)
                if not (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        return (0 / ext_call.return_data[0] / 10)
                    return ((0 / ext_call.return_data[0]) + 10 / 10)
                require 10 * 10^18 * (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 10 * 10^18 * (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                    return (10 * 10^18 * (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10)
                return ((10 * 10^18 * (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10)
            if (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 % 10 < 5:
                if not (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        return (0 / ext_call.return_data[0] / 10)
                    return ((0 / ext_call.return_data[0]) + 10 / 10)
                require 10 * 10^18 * (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 == 10 * 10^18
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 10 * 10^18 * (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] % 10 < 5:
                    return (10 * 10^18 * (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10)
                return ((10 * 10^18 * (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10)
            if not ((10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] % 10 < 5:
                    return (0 / ext_call.return_data[0] / 10)
                return ((0 / ext_call.return_data[0]) + 10 / 10)
            require 10 * 10^18 * ((10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ((10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 10 * 10^18 * ((10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                return (10 * 10^18 * ((10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10)
            return ((10 * 10^18 * ((10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10)
        require 10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 10^9 * s == (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10
        if 10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 % 10 < 5:
            if 10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 % 10 < 5:
                if not 10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        return (0 / ext_call.return_data[0] / 10)
                    return ((0 / ext_call.return_data[0]) + 10 / 10)
                require 10 * 10^18 * 10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 == 10 * 10^18
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 10 * 10^18 * 10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] % 10 < 5:
                    return (10 * 10^18 * 10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10)
                return ((10 * 10^18 * 10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10)
            if not (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] % 10 < 5:
                    return (0 / ext_call.return_data[0] / 10)
                return ((0 / ext_call.return_data[0]) + 10 / 10)
            require 10 * 10^18 * (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 10 * 10^18 * (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                return (10 * 10^18 * (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10)
            return ((10 * 10^18 * (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10)
        if (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 % 10 < 5:
            if not (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] % 10 < 5:
                    return (0 / ext_call.return_data[0] / 10)
                return ((0 / ext_call.return_data[0]) + 10 / 10)
            require 10 * 10^18 * (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 == 10 * 10^18
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 10 * 10^18 * (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] % 10 < 5:
                return (10 * 10^18 * (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0] / 10)
            return ((10 * 10^18 * (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / ext_call.return_data[0]) + 10 / 10)
        if not ((10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10:
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 0 / ext_call.return_data[0] % 10 < 5:
                return (0 / ext_call.return_data[0] / 10)
            return ((0 / ext_call.return_data[0]) + 10 / 10)
        require 10 * 10^18 * ((10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ((10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
        require ext_call.return_data[0] > 0
        require ext_call.return_data[0]
        if 10 * 10^18 * ((10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
            return (10 * 10^18 * ((10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0] / 10)
        return ((10 * 10^18 * ((10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ext_call.return_data[0]) + 10 / 10)
    require ext_code.size(escrowAddress)
    call escrowAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
    if not 2 * ext_call.return_data[0]:
        return 0
    require ext_code.size(synthetixStateAddress)
    call synthetixStateAddress.issuanceData(address arg1) with:
         gas gas_remaining wei
        args arg1
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[0]:
        require 2 * ext_call.return_data[0] > 0
        require 2 * ext_call.return_data[0]
        if 0 / 2 * ext_call.return_data[0] % 10 < 5:
            return (0 / 2 * ext_call.return_data[0] / 10)
        return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
    require ext_code.size(synthetixStateAddress)
    call synthetixStateAddress.debtLedger(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(synthetixStateAddress)
    call synthetixStateAddress.lastDebtLedgerEntry() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_call.return_data[0] > 0
        require ext_call.return_data[0]
        if 0 / ext_call.return_data[0] % 10 < 5:
            if not 0 / ext_call.return_data[0] / 10:
                require ext_code.size(exchangeRatesAddress)
                call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                     gas gas_remaining wei
                    args 0x534e580000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                mem[100] = 0x534e580000000000000000000000000000000000000000000000000000000000
                require ext_code.size(exchangeRatesAddress)
                call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                     gas gas_remaining wei
                    args 0x534e580000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[96] = availableSynths.length
                if availableSynths.length:
                    mem[128 len 32 * availableSynths.length] = code.data[23666 len 32 * availableSynths.length]
                idx = 0
                while uint8(idx) < availableSynths.length:
                    mem[0] = 11
                    require ext_code.size(availableSynths[uint8(idx)])
                    call availableSynths[uint8(idx)].currencyKey() with:
                         gas gas_remaining wei
                    mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx) < mem[96]
                    mem[(32 * uint8(idx)) + 128] = Mask(32, 224, ext_call.return_data[0])
                    idx = idx + 1
                    continue 
                mem[(32 * availableSynths.length) + 128] = 0x370d62ad00000000000000000000000000000000000000000000000000000000
                mem[(32 * availableSynths.length) + 132] = 32
                mem[(32 * availableSynths.length) + 164] = mem[96]
                mem[(32 * availableSynths.length) + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                require ext_code.size(exchangeRatesAddress)
                call exchangeRatesAddress.anyRateIsStale(bytes4[] arg1) with:
                     gas gas_remaining wei
                    args 32, mem[(32 * availableSynths.length) + 164 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'Rates are stale'
                s = 0
                idx = 0
                s = 0
                while uint8(idx) < availableSynths.length:
                    require ext_code.size(availableSynths[uint8(idx)])
                    call availableSynths[uint8(idx)].currencyKey() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(32 * availableSynths.length) + 132] = Mask(32, 224, ext_call.return_data[0])
                    require ext_code.size(exchangeRatesAddress)
                    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                         gas gas_remaining wei
                        args Mask(32, 224, ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx) < availableSynths.length
                    mem[0] = 11
                    require ext_code.size(availableSynths[uint8(idx)])
                    call availableSynths[uint8(idx)].0x18160ddd with:
                         gas gas_remaining wei
                    mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 0 / ext_call.return_data[0] % 10 < 5:
                            require (0 / ext_call.return_data[0] / 10) + s >= s
                            s = 0 / ext_call.return_data[0] / 10
                            idx = idx + 1
                            s = (0 / ext_call.return_data[0] / 10) + s
                            continue 
                        require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                        s = (0 / ext_call.return_data[0]) + 10 / 10
                        idx = idx + 1
                        s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                        continue 
                    require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^17 % 10 < 5:
                        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10:
                            require ext_call.return_data[0] > 0
                            require ext_call.return_data[0]
                            if 0 / ext_call.return_data[0] % 10 < 5:
                                require (0 / ext_call.return_data[0] / 10) + s >= s
                                s = 0 / ext_call.return_data[0] / 10
                                idx = idx + 1
                                s = (0 / ext_call.return_data[0] / 10) + s
                                continue 
                            require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                            s = (0 / ext_call.return_data[0]) + 10 / 10
                            idx = idx + 1
                            s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                            continue 
                        require 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 == 10 * 10^18
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                            require (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s >= s
                            s = 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10
                            idx = idx + 1
                            s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s
                            continue 
                        require ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
                        s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                        idx = idx + 1
                        s = ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s
                        continue 
                    if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10:
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 0 / ext_call.return_data[0] % 10 < 5:
                            require (0 / ext_call.return_data[0] / 10) + s >= s
                            s = 0 / ext_call.return_data[0] / 10
                            idx = idx + 1
                            s = (0 / ext_call.return_data[0] / 10) + s
                            continue 
                        require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                        s = (0 / ext_call.return_data[0]) + 10 / 10
                        idx = idx + 1
                        s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                        continue 
                    require 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 == 10 * 10^18
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                        require (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s >= s
                        s = 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                        idx = idx + 1
                        s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s
                        continue 
                    require ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
                    s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
                    idx = idx + 1
                    s = ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s
                    continue 
                if s:
                    require 10^9 * s / s == 10^9
                    if 10^9 * s:
                        require not 0 / 10^9 * s
                require 2 * ext_call.return_data[0] > 0
                require 2 * ext_call.return_data[0]
                if 0 / 2 * ext_call.return_data[0] % 10 < 5:
                    return (0 / 2 * ext_call.return_data[0] / 10)
                return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
            require ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 0 / ext_call.return_data[0] / 10 == ext_call.return_data[0]
            require ext_code.size(exchangeRatesAddress)
            call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                 gas gas_remaining wei
                args 0x534e580000000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
            mem[100] = 0x534e580000000000000000000000000000000000000000000000000000000000
            require ext_code.size(exchangeRatesAddress)
            call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                 gas gas_remaining wei
                args 0x534e580000000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[96] = availableSynths.length
            if availableSynths.length:
                mem[128 len 32 * availableSynths.length] = code.data[23666 len 32 * availableSynths.length]
            idx = 0
            while uint8(idx) < availableSynths.length:
                mem[0] = 11
                require ext_code.size(availableSynths[uint8(idx)])
                call availableSynths[uint8(idx)].currencyKey() with:
                     gas gas_remaining wei
                mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require uint8(idx) < mem[96]
                mem[(32 * uint8(idx)) + 128] = Mask(32, 224, ext_call.return_data[0])
                idx = idx + 1
                continue 
            mem[(32 * availableSynths.length) + 128] = 0x370d62ad00000000000000000000000000000000000000000000000000000000
            mem[(32 * availableSynths.length) + 132] = 32
            mem[(32 * availableSynths.length) + 164] = mem[96]
            mem[(32 * availableSynths.length) + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            require ext_code.size(exchangeRatesAddress)
            call exchangeRatesAddress.anyRateIsStale(bytes4[] arg1) with:
                 gas gas_remaining wei
                args 32, mem[(32 * availableSynths.length) + 164 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'Rates are stale'
            s = 0
            idx = 0
            s = 0
            while uint8(idx) < availableSynths.length:
                require ext_code.size(availableSynths[uint8(idx)])
                call availableSynths[uint8(idx)].currencyKey() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * availableSynths.length) + 132] = Mask(32, 224, ext_call.return_data[0])
                require ext_code.size(exchangeRatesAddress)
                call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                     gas gas_remaining wei
                    args Mask(32, 224, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require uint8(idx) < availableSynths.length
                mem[0] = 11
                require ext_code.size(availableSynths[uint8(idx)])
                call availableSynths[uint8(idx)].0x18160ddd with:
                     gas gas_remaining wei
                mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        require (0 / ext_call.return_data[0] / 10) + s >= s
                        s = 0 / ext_call.return_data[0] / 10
                        idx = idx + 1
                        s = (0 / ext_call.return_data[0] / 10) + s
                        continue 
                    require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                    s = (0 / ext_call.return_data[0]) + 10 / 10
                    idx = idx + 1
                    s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                    continue 
                require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^17 % 10 < 5:
                    if not ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10:
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 0 / ext_call.return_data[0] % 10 < 5:
                            require (0 / ext_call.return_data[0] / 10) + s >= s
                            s = 0 / ext_call.return_data[0] / 10
                            idx = idx + 1
                            s = (0 / ext_call.return_data[0] / 10) + s
                            continue 
                        require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                        s = (0 / ext_call.return_data[0]) + 10 / 10
                        idx = idx + 1
                        s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                        continue 
                    require 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 == 10 * 10^18
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                        require (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s >= s
                        s = 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10
                        idx = idx + 1
                        s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s
                        continue 
                    require ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
                    s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                    idx = idx + 1
                    s = ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s
                    continue 
                if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        require (0 / ext_call.return_data[0] / 10) + s >= s
                        s = 0 / ext_call.return_data[0] / 10
                        idx = idx + 1
                        s = (0 / ext_call.return_data[0] / 10) + s
                        continue 
                    require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                    s = (0 / ext_call.return_data[0]) + 10 / 10
                    idx = idx + 1
                    s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                    continue 
                require 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 == 10 * 10^18
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                    require (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s >= s
                    s = 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                    idx = idx + 1
                    s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s
                    continue 
                require ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
                s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
                idx = idx + 1
                s = ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s
                continue 
            if not s:
                require 2 * ext_call.return_data[0] > 0
                require 2 * ext_call.return_data[0]
                if 0 / 2 * ext_call.return_data[0] % 10 < 5:
                    return (0 / 2 * ext_call.return_data[0] / 10)
                return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
            require 10^9 * s / s == 10^9
            if not 10^9 * s:
                require 2 * ext_call.return_data[0] > 0
                require 2 * ext_call.return_data[0]
                if 0 / 2 * ext_call.return_data[0] % 10 < 5:
                    return (0 / 2 * ext_call.return_data[0] / 10)
                return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 % 10 < 5:
                require 10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 10^9 * s == ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10
                if 10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 % 10 < 5:
                    if 10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 % 10 < 5:
                        if not 10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10:
                            require 2 * ext_call.return_data[0] > 0
                            require 2 * ext_call.return_data[0]
                            if 0 / 2 * ext_call.return_data[0] % 10 < 5:
                                return (0 / 2 * ext_call.return_data[0] / 10)
                            return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
                        require 10 * 10^18 * 10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 == 10 * 10^18
                        require 2 * ext_call.return_data[0] > 0
                        require 2 * ext_call.return_data[0]
                        if 10 * 10^18 * 10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0] % 10 < 5:
                            return (10 * 10^18 * 10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0] / 10)
                        return ((10 * 10^18 * 10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0]) + 10 / 10)
                    if not (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10:
                        require 2 * ext_call.return_data[0] > 0
                        require 2 * ext_call.return_data[0]
                        if 0 / 2 * ext_call.return_data[0] % 10 < 5:
                            return (0 / 2 * ext_call.return_data[0] / 10)
                        return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
                    require 10 * 10^18 * (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
                    require 2 * ext_call.return_data[0] > 0
                    require 2 * ext_call.return_data[0]
                    if 10 * 10^18 * (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0] % 10 < 5:
                        return (10 * 10^18 * (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0] / 10)
                    return ((10 * 10^18 * (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0]) + 10 / 10)
                if (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 % 10 < 5:
                    if not (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10:
                        require 2 * ext_call.return_data[0] > 0
                        require 2 * ext_call.return_data[0]
                        if 0 / 2 * ext_call.return_data[0] % 10 < 5:
                            return (0 / 2 * ext_call.return_data[0] / 10)
                        return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
                    require 10 * 10^18 * (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 == 10 * 10^18
                    require 2 * ext_call.return_data[0] > 0
                    require 2 * ext_call.return_data[0]
                    if 10 * 10^18 * (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0] % 10 < 5:
                        return (10 * 10^18 * (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0] / 10)
                    return ((10 * 10^18 * (10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0]) + 10 / 10)
                if not ((10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10:
                    require 2 * ext_call.return_data[0] > 0
                    require 2 * ext_call.return_data[0]
                    if 0 / 2 * ext_call.return_data[0] % 10 < 5:
                        return (0 / 2 * ext_call.return_data[0] / 10)
                    return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
                require 10 * 10^18 * ((10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ((10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
                require 2 * ext_call.return_data[0] > 0
                require 2 * ext_call.return_data[0]
                if 10 * 10^18 * ((10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0] % 10 < 5:
                    return (10 * 10^18 * ((10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0] / 10)
                return ((10 * 10^18 * ((10^9 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0]) + 10 / 10)
            require 10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 10^9 * s == (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10
            if 10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 % 10 < 5:
                if 10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 % 10 < 5:
                    if not 10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10:
                        require 2 * ext_call.return_data[0] > 0
                        require 2 * ext_call.return_data[0]
                        if 0 / 2 * ext_call.return_data[0] % 10 < 5:
                            return (0 / 2 * ext_call.return_data[0] / 10)
                        return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
                    require 10 * 10^18 * 10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 == 10 * 10^18
                    require 2 * ext_call.return_data[0] > 0
                    require 2 * ext_call.return_data[0]
                    if 10 * 10^18 * 10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0] % 10 < 5:
                        return (10 * 10^18 * 10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0] / 10)
                    return ((10 * 10^18 * 10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0]) + 10 / 10)
                if not (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10:
                    require 2 * ext_call.return_data[0] > 0
                    require 2 * ext_call.return_data[0]
                    if 0 / 2 * ext_call.return_data[0] % 10 < 5:
                        return (0 / 2 * ext_call.return_data[0] / 10)
                    return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
                require 10 * 10^18 * (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
                require 2 * ext_call.return_data[0] > 0
                require 2 * ext_call.return_data[0]
                if 10 * 10^18 * (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0] % 10 < 5:
                    return (10 * 10^18 * (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0] / 10)
                return ((10 * 10^18 * (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0]) + 10 / 10)
            if (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 % 10 < 5:
                if not (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10:
                    require 2 * ext_call.return_data[0] > 0
                    require 2 * ext_call.return_data[0]
                    if 0 / 2 * ext_call.return_data[0] % 10 < 5:
                        return (0 / 2 * ext_call.return_data[0] / 10)
                    return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
                require 10 * 10^18 * (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 == 10 * 10^18
                require 2 * ext_call.return_data[0] > 0
                require 2 * ext_call.return_data[0]
                if 10 * 10^18 * (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0] % 10 < 5:
                    return (10 * 10^18 * (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0] / 10)
                return ((10 * 10^18 * (10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0]) + 10 / 10)
            if not ((10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10:
                require 2 * ext_call.return_data[0] > 0
                require 2 * ext_call.return_data[0]
                if 0 / 2 * ext_call.return_data[0] % 10 < 5:
                    return (0 / 2 * ext_call.return_data[0] / 10)
                return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
            require 10 * 10^18 * ((10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ((10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
            require 2 * ext_call.return_data[0] > 0
            require 2 * ext_call.return_data[0]
            if 10 * 10^18 * ((10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0] % 10 < 5:
                return (10 * 10^18 * ((10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0] / 10)
            return ((10 * 10^18 * ((10^9 * (ext_call.return_data[0] * 0 / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0]) + 10 / 10)
        if not (0 / ext_call.return_data[0]) + 10 / 10:
            require ext_code.size(exchangeRatesAddress)
            call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                 gas gas_remaining wei
                args 0x534e580000000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
            mem[100] = 0x534e580000000000000000000000000000000000000000000000000000000000
            require ext_code.size(exchangeRatesAddress)
            call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                 gas gas_remaining wei
                args 0x534e580000000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[96] = availableSynths.length
            if availableSynths.length:
                mem[128 len 32 * availableSynths.length] = code.data[23666 len 32 * availableSynths.length]
            idx = 0
            while uint8(idx) < availableSynths.length:
                mem[0] = 11
                require ext_code.size(availableSynths[uint8(idx)])
                call availableSynths[uint8(idx)].currencyKey() with:
                     gas gas_remaining wei
                mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require uint8(idx) < mem[96]
                mem[(32 * uint8(idx)) + 128] = Mask(32, 224, ext_call.return_data[0])
                idx = idx + 1
                continue 
            mem[(32 * availableSynths.length) + 128] = 0x370d62ad00000000000000000000000000000000000000000000000000000000
            mem[(32 * availableSynths.length) + 132] = 32
            mem[(32 * availableSynths.length) + 164] = mem[96]
            mem[(32 * availableSynths.length) + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            require ext_code.size(exchangeRatesAddress)
            call exchangeRatesAddress.anyRateIsStale(bytes4[] arg1) with:
                 gas gas_remaining wei
                args 32, mem[(32 * availableSynths.length) + 164 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'Rates are stale'
            s = 0
            idx = 0
            s = 0
            while uint8(idx) < availableSynths.length:
                require ext_code.size(availableSynths[uint8(idx)])
                call availableSynths[uint8(idx)].currencyKey() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * availableSynths.length) + 132] = Mask(32, 224, ext_call.return_data[0])
                require ext_code.size(exchangeRatesAddress)
                call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                     gas gas_remaining wei
                    args Mask(32, 224, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require uint8(idx) < availableSynths.length
                mem[0] = 11
                require ext_code.size(availableSynths[uint8(idx)])
                call availableSynths[uint8(idx)].0x18160ddd with:
                     gas gas_remaining wei
                mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        require (0 / ext_call.return_data[0] / 10) + s >= s
                        s = 0 / ext_call.return_data[0] / 10
                        idx = idx + 1
                        s = (0 / ext_call.return_data[0] / 10) + s
                        continue 
                    require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                    s = (0 / ext_call.return_data[0]) + 10 / 10
                    idx = idx + 1
                    s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                    continue 
                require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^17 % 10 < 5:
                    if not ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10:
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 0 / ext_call.return_data[0] % 10 < 5:
                            require (0 / ext_call.return_data[0] / 10) + s >= s
                            s = 0 / ext_call.return_data[0] / 10
                            idx = idx + 1
                            s = (0 / ext_call.return_data[0] / 10) + s
                            continue 
                        require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                        s = (0 / ext_call.return_data[0]) + 10 / 10
                        idx = idx + 1
                        s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                        continue 
                    require 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 == 10 * 10^18
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                        require (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s >= s
                        s = 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10
                        idx = idx + 1
                        s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s
                        continue 
                    require ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
                    s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                    idx = idx + 1
                    s = ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s
                    continue 
                if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        require (0 / ext_call.return_data[0] / 10) + s >= s
                        s = 0 / ext_call.return_data[0] / 10
                        idx = idx + 1
                        s = (0 / ext_call.return_data[0] / 10) + s
                        continue 
                    require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                    s = (0 / ext_call.return_data[0]) + 10 / 10
                    idx = idx + 1
                    s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                    continue 
                require 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 == 10 * 10^18
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                    require (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s >= s
                    s = 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                    idx = idx + 1
                    s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s
                    continue 
                require ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
                s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
                idx = idx + 1
                s = ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s
                continue 
            if s:
                require 10^9 * s / s == 10^9
                if 10^9 * s:
                    require not 0 / 10^9 * s
            require 2 * ext_call.return_data[0] > 0
            require 2 * ext_call.return_data[0]
            if 0 / 2 * ext_call.return_data[0] % 10 < 5:
                return (0 / 2 * ext_call.return_data[0] / 10)
            return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
        require ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / (0 / ext_call.return_data[0]) + 10 / 10 == ext_call.return_data[0]
        require ext_code.size(exchangeRatesAddress)
        call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
             gas gas_remaining wei
            args 0x534e580000000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
        mem[100] = 0x534e580000000000000000000000000000000000000000000000000000000000
        require ext_code.size(exchangeRatesAddress)
        call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
             gas gas_remaining wei
            args 0x534e580000000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = availableSynths.length
        if availableSynths.length:
            mem[128 len 32 * availableSynths.length] = code.data[23666 len 32 * availableSynths.length]
        idx = 0
        while uint8(idx) < availableSynths.length:
            mem[0] = 11
            require ext_code.size(availableSynths[uint8(idx)])
            call availableSynths[uint8(idx)].currencyKey() with:
                 gas gas_remaining wei
            mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require uint8(idx) < mem[96]
            mem[(32 * uint8(idx)) + 128] = Mask(32, 224, ext_call.return_data[0])
            idx = idx + 1
            continue 
        mem[(32 * availableSynths.length) + 128] = 0x370d62ad00000000000000000000000000000000000000000000000000000000
        mem[(32 * availableSynths.length) + 132] = 32
        mem[(32 * availableSynths.length) + 164] = mem[96]
        mem[(32 * availableSynths.length) + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        require ext_code.size(exchangeRatesAddress)
        call exchangeRatesAddress.anyRateIsStale(bytes4[] arg1) with:
             gas gas_remaining wei
            args 32, mem[(32 * availableSynths.length) + 164 len (32 * mem[96]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'Rates are stale'
        s = 0
        idx = 0
        s = 0
        while uint8(idx) < availableSynths.length:
            require ext_code.size(availableSynths[uint8(idx)])
            call availableSynths[uint8(idx)].currencyKey() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * availableSynths.length) + 132] = Mask(32, 224, ext_call.return_data[0])
            require ext_code.size(exchangeRatesAddress)
            call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                 gas gas_remaining wei
                args Mask(32, 224, ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require uint8(idx) < availableSynths.length
            mem[0] = 11
            require ext_code.size(availableSynths[uint8(idx)])
            call availableSynths[uint8(idx)].0x18160ddd with:
                 gas gas_remaining wei
            mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] % 10 < 5:
                    require (0 / ext_call.return_data[0] / 10) + s >= s
                    s = 0 / ext_call.return_data[0] / 10
                    idx = idx + 1
                    s = (0 / ext_call.return_data[0] / 10) + s
                    continue 
                require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                s = (0 / ext_call.return_data[0]) + 10 / 10
                idx = idx + 1
                s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                continue 
            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^17 % 10 < 5:
                if not ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        require (0 / ext_call.return_data[0] / 10) + s >= s
                        s = 0 / ext_call.return_data[0] / 10
                        idx = idx + 1
                        s = (0 / ext_call.return_data[0] / 10) + s
                        continue 
                    require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                    s = (0 / ext_call.return_data[0]) + 10 / 10
                    idx = idx + 1
                    s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                    continue 
                require 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 == 10 * 10^18
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                    require (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s >= s
                    s = 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10
                    idx = idx + 1
                    s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s
                    continue 
                require ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
                s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                idx = idx + 1
                s = ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s
                continue 
            if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] % 10 < 5:
                    require (0 / ext_call.return_data[0] / 10) + s >= s
                    s = 0 / ext_call.return_data[0] / 10
                    idx = idx + 1
                    s = (0 / ext_call.return_data[0] / 10) + s
                    continue 
                require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                s = (0 / ext_call.return_data[0]) + 10 / 10
                idx = idx + 1
                s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                continue 
            require 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 == 10 * 10^18
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                require (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s >= s
                s = 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                idx = idx + 1
                s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s
                continue 
            require ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
            s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
            idx = idx + 1
            s = ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s
            continue 
        if not s:
            require 2 * ext_call.return_data[0] > 0
            require 2 * ext_call.return_data[0]
            if 0 / 2 * ext_call.return_data[0] % 10 < 5:
                return (0 / 2 * ext_call.return_data[0] / 10)
            return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
        require 10^9 * s / s == 10^9
        if not 10^9 * s:
            require 2 * ext_call.return_data[0] > 0
            require 2 * ext_call.return_data[0]
            if 0 / 2 * ext_call.return_data[0] % 10 < 5:
                return (0 / 2 * ext_call.return_data[0] / 10)
            return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
        if ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 % 10 < 5:
            require 10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 10^9 * s == ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10
            if 10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 % 10 < 5:
                if 10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 % 10 < 5:
                    if not 10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10:
                        require 2 * ext_call.return_data[0] > 0
                        require 2 * ext_call.return_data[0]
                        if 0 / 2 * ext_call.return_data[0] % 10 < 5:
                            return (0 / 2 * ext_call.return_data[0] / 10)
                        return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
                    require 10 * 10^18 * 10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 == 10 * 10^18
                    require 2 * ext_call.return_data[0] > 0
                    require 2 * ext_call.return_data[0]
                    if 10 * 10^18 * 10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0] % 10 < 5:
                        return (10 * 10^18 * 10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0] / 10)
                    return ((10 * 10^18 * 10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0]) + 10 / 10)
                if not (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10:
                    require 2 * ext_call.return_data[0] > 0
                    require 2 * ext_call.return_data[0]
                    if 0 / 2 * ext_call.return_data[0] % 10 < 5:
                        return (0 / 2 * ext_call.return_data[0] / 10)
                    return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
                require 10 * 10^18 * (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
                require 2 * ext_call.return_data[0] > 0
                require 2 * ext_call.return_data[0]
                if 10 * 10^18 * (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0] % 10 < 5:
                    return (10 * 10^18 * (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0] / 10)
                return ((10 * 10^18 * (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0]) + 10 / 10)
            if (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 % 10 < 5:
                if not (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10:
                    require 2 * ext_call.return_data[0] > 0
                    require 2 * ext_call.return_data[0]
                    if 0 / 2 * ext_call.return_data[0] % 10 < 5:
                        return (0 / 2 * ext_call.return_data[0] / 10)
                    return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
                require 10 * 10^18 * (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 == 10 * 10^18
                require 2 * ext_call.return_data[0] > 0
                require 2 * ext_call.return_data[0]
                if 10 * 10^18 * (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0] % 10 < 5:
                    return (10 * 10^18 * (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0] / 10)
                return ((10 * 10^18 * (10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0]) + 10 / 10)
            if not ((10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10:
                require 2 * ext_call.return_data[0] > 0
                require 2 * ext_call.return_data[0]
                if 0 / 2 * ext_call.return_data[0] % 10 < 5:
                    return (0 / 2 * ext_call.return_data[0] / 10)
                return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
            require 10 * 10^18 * ((10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ((10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
            require 2 * ext_call.return_data[0] > 0
            require 2 * ext_call.return_data[0]
            if 10 * 10^18 * ((10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0] % 10 < 5:
                return (10 * 10^18 * ((10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0] / 10)
            return ((10 * 10^18 * ((10^9 * ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0]) + 10 / 10)
        require 10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 10^9 * s == (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10
        if 10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 % 10 < 5:
            if 10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 % 10 < 5:
                if not 10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10:
                    require 2 * ext_call.return_data[0] > 0
                    require 2 * ext_call.return_data[0]
                    if 0 / 2 * ext_call.return_data[0] % 10 < 5:
                        return (0 / 2 * ext_call.return_data[0] / 10)
                    return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
                require 10 * 10^18 * 10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 == 10 * 10^18
                require 2 * ext_call.return_data[0] > 0
                require 2 * ext_call.return_data[0]
                if 10 * 10^18 * 10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0] % 10 < 5:
                    return (10 * 10^18 * 10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0] / 10)
                return ((10 * 10^18 * 10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0]) + 10 / 10)
            if not (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10:
                require 2 * ext_call.return_data[0] > 0
                require 2 * ext_call.return_data[0]
                if 0 / 2 * ext_call.return_data[0] % 10 < 5:
                    return (0 / 2 * ext_call.return_data[0] / 10)
                return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
            require 10 * 10^18 * (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
            require 2 * ext_call.return_data[0] > 0
            require 2 * ext_call.return_data[0]
            if 10 * 10^18 * (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0] % 10 < 5:
                return (10 * 10^18 * (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0] / 10)
            return ((10 * 10^18 * (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0]) + 10 / 10)
        if (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 % 10 < 5:
            if not (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10:
                require 2 * ext_call.return_data[0] > 0
                require 2 * ext_call.return_data[0]
                if 0 / 2 * ext_call.return_data[0] % 10 < 5:
                    return (0 / 2 * ext_call.return_data[0] / 10)
                return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
            require 10 * 10^18 * (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 == 10 * 10^18
            require 2 * ext_call.return_data[0] > 0
            require 2 * ext_call.return_data[0]
            if 10 * 10^18 * (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0] % 10 < 5:
                return (10 * 10^18 * (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0] / 10)
            return ((10 * 10^18 * (10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0]) + 10 / 10)
        if not ((10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10:
            require 2 * ext_call.return_data[0] > 0
            require 2 * ext_call.return_data[0]
            if 0 / 2 * ext_call.return_data[0] % 10 < 5:
                return (0 / 2 * ext_call.return_data[0] / 10)
            return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
        require 10 * 10^18 * ((10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ((10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
        require 2 * ext_call.return_data[0] > 0
        require 2 * ext_call.return_data[0]
        if 10 * 10^18 * ((10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0] % 10 < 5:
            return (10 * 10^18 * ((10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0] / 10)
        return ((10 * 10^18 * ((10^9 * (ext_call.return_data[0] * (0 / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0]) + 10 / 10)
    require 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10000000000 * 10^18
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0]
    if 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] % 10 < 5:
        if not 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10:
            require ext_code.size(exchangeRatesAddress)
            call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                 gas gas_remaining wei
                args 0x534e580000000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
            mem[100] = 0x534e580000000000000000000000000000000000000000000000000000000000
            require ext_code.size(exchangeRatesAddress)
            call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                 gas gas_remaining wei
                args 0x534e580000000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[96] = availableSynths.length
            if availableSynths.length:
                mem[128 len 32 * availableSynths.length] = code.data[23666 len 32 * availableSynths.length]
            idx = 0
            while uint8(idx) < availableSynths.length:
                mem[0] = 11
                require ext_code.size(availableSynths[uint8(idx)])
                call availableSynths[uint8(idx)].currencyKey() with:
                     gas gas_remaining wei
                mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require uint8(idx) < mem[96]
                mem[(32 * uint8(idx)) + 128] = Mask(32, 224, ext_call.return_data[0])
                idx = idx + 1
                continue 
            mem[(32 * availableSynths.length) + 128] = 0x370d62ad00000000000000000000000000000000000000000000000000000000
            mem[(32 * availableSynths.length) + 132] = 32
            mem[(32 * availableSynths.length) + 164] = mem[96]
            mem[(32 * availableSynths.length) + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            require ext_code.size(exchangeRatesAddress)
            call exchangeRatesAddress.anyRateIsStale(bytes4[] arg1) with:
                 gas gas_remaining wei
                args 32, mem[(32 * availableSynths.length) + 164 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'Rates are stale'
            s = 0
            idx = 0
            s = 0
            while uint8(idx) < availableSynths.length:
                require ext_code.size(availableSynths[uint8(idx)])
                call availableSynths[uint8(idx)].currencyKey() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * availableSynths.length) + 132] = Mask(32, 224, ext_call.return_data[0])
                require ext_code.size(exchangeRatesAddress)
                call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                     gas gas_remaining wei
                    args Mask(32, 224, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require uint8(idx) < availableSynths.length
                mem[0] = 11
                require ext_code.size(availableSynths[uint8(idx)])
                call availableSynths[uint8(idx)].0x18160ddd with:
                     gas gas_remaining wei
                mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        require (0 / ext_call.return_data[0] / 10) + s >= s
                        s = 0 / ext_call.return_data[0] / 10
                        idx = idx + 1
                        s = (0 / ext_call.return_data[0] / 10) + s
                        continue 
                    require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                    s = (0 / ext_call.return_data[0]) + 10 / 10
                    idx = idx + 1
                    s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                    continue 
                require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^17 % 10 < 5:
                    if not ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10:
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        if 0 / ext_call.return_data[0] % 10 < 5:
                            require (0 / ext_call.return_data[0] / 10) + s >= s
                            s = 0 / ext_call.return_data[0] / 10
                            idx = idx + 1
                            s = (0 / ext_call.return_data[0] / 10) + s
                            continue 
                        require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                        s = (0 / ext_call.return_data[0]) + 10 / 10
                        idx = idx + 1
                        s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                        continue 
                    require 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 == 10 * 10^18
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                        require (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s >= s
                        s = 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10
                        idx = idx + 1
                        s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s
                        continue 
                    require ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
                    s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                    idx = idx + 1
                    s = ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s
                    continue 
                if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        require (0 / ext_call.return_data[0] / 10) + s >= s
                        s = 0 / ext_call.return_data[0] / 10
                        idx = idx + 1
                        s = (0 / ext_call.return_data[0] / 10) + s
                        continue 
                    require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                    s = (0 / ext_call.return_data[0]) + 10 / 10
                    idx = idx + 1
                    s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                    continue 
                require 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 == 10 * 10^18
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                    require (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s >= s
                    s = 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                    idx = idx + 1
                    s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s
                    continue 
                require ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
                s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
                idx = idx + 1
                s = ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s
                continue 
            if s:
                require 10^9 * s / s == 10^9
                if 10^9 * s:
                    require not 0 / 10^9 * s
            require 2 * ext_call.return_data[0] > 0
            require 2 * ext_call.return_data[0]
            if 0 / 2 * ext_call.return_data[0] % 10 < 5:
                return (0 / 2 * ext_call.return_data[0] / 10)
            return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
        require ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 == ext_call.return_data[0]
        require ext_code.size(exchangeRatesAddress)
        call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
             gas gas_remaining wei
            args 0x534e580000000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
        mem[100] = 0x534e580000000000000000000000000000000000000000000000000000000000
        require ext_code.size(exchangeRatesAddress)
        call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
             gas gas_remaining wei
            args 0x534e580000000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = availableSynths.length
        if availableSynths.length:
            mem[128 len 32 * availableSynths.length] = code.data[23666 len 32 * availableSynths.length]
        idx = 0
        while uint8(idx) < availableSynths.length:
            mem[0] = 11
            require ext_code.size(availableSynths[uint8(idx)])
            call availableSynths[uint8(idx)].currencyKey() with:
                 gas gas_remaining wei
            mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require uint8(idx) < mem[96]
            mem[(32 * uint8(idx)) + 128] = Mask(32, 224, ext_call.return_data[0])
            idx = idx + 1
            continue 
        mem[(32 * availableSynths.length) + 128] = 0x370d62ad00000000000000000000000000000000000000000000000000000000
        mem[(32 * availableSynths.length) + 132] = 32
        mem[(32 * availableSynths.length) + 164] = mem[96]
        mem[(32 * availableSynths.length) + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        require ext_code.size(exchangeRatesAddress)
        call exchangeRatesAddress.anyRateIsStale(bytes4[] arg1) with:
             gas gas_remaining wei
            args 32, mem[(32 * availableSynths.length) + 164 len (32 * mem[96]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'Rates are stale'
        s = 0
        idx = 0
        s = 0
        while uint8(idx) < availableSynths.length:
            require ext_code.size(availableSynths[uint8(idx)])
            call availableSynths[uint8(idx)].currencyKey() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * availableSynths.length) + 132] = Mask(32, 224, ext_call.return_data[0])
            require ext_code.size(exchangeRatesAddress)
            call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                 gas gas_remaining wei
                args Mask(32, 224, ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require uint8(idx) < availableSynths.length
            mem[0] = 11
            require ext_code.size(availableSynths[uint8(idx)])
            call availableSynths[uint8(idx)].0x18160ddd with:
                 gas gas_remaining wei
            mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] % 10 < 5:
                    require (0 / ext_call.return_data[0] / 10) + s >= s
                    s = 0 / ext_call.return_data[0] / 10
                    idx = idx + 1
                    s = (0 / ext_call.return_data[0] / 10) + s
                    continue 
                require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                s = (0 / ext_call.return_data[0]) + 10 / 10
                idx = idx + 1
                s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                continue 
            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^17 % 10 < 5:
                if not ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        require (0 / ext_call.return_data[0] / 10) + s >= s
                        s = 0 / ext_call.return_data[0] / 10
                        idx = idx + 1
                        s = (0 / ext_call.return_data[0] / 10) + s
                        continue 
                    require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                    s = (0 / ext_call.return_data[0]) + 10 / 10
                    idx = idx + 1
                    s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                    continue 
                require 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 == 10 * 10^18
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                    require (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s >= s
                    s = 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10
                    idx = idx + 1
                    s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s
                    continue 
                require ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
                s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                idx = idx + 1
                s = ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s
                continue 
            if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] % 10 < 5:
                    require (0 / ext_call.return_data[0] / 10) + s >= s
                    s = 0 / ext_call.return_data[0] / 10
                    idx = idx + 1
                    s = (0 / ext_call.return_data[0] / 10) + s
                    continue 
                require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                s = (0 / ext_call.return_data[0]) + 10 / 10
                idx = idx + 1
                s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                continue 
            require 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 == 10 * 10^18
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                require (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s >= s
                s = 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                idx = idx + 1
                s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s
                continue 
            require ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
            s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
            idx = idx + 1
            s = ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s
            continue 
        if not s:
            require 2 * ext_call.return_data[0] > 0
            require 2 * ext_call.return_data[0]
            if 0 / 2 * ext_call.return_data[0] % 10 < 5:
                return (0 / 2 * ext_call.return_data[0] / 10)
            return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
        require 10^9 * s / s == 10^9
        if not 10^9 * s:
            require 2 * ext_call.return_data[0] > 0
            require 2 * ext_call.return_data[0]
            if 0 / 2 * ext_call.return_data[0] % 10 < 5:
                return (0 / 2 * ext_call.return_data[0] / 10)
            return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
        if ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 % 10 < 5:
            require 10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 10^9 * s == ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10
            if 10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 % 10 < 5:
                if 10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 % 10 < 5:
                    if not 10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10:
                        require 2 * ext_call.return_data[0] > 0
                        require 2 * ext_call.return_data[0]
                        if 0 / 2 * ext_call.return_data[0] % 10 < 5:
                            return (0 / 2 * ext_call.return_data[0] / 10)
                        return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
                    require 10 * 10^18 * 10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 == 10 * 10^18
                    require 2 * ext_call.return_data[0] > 0
                    require 2 * ext_call.return_data[0]
                    if 10 * 10^18 * 10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0] % 10 < 5:
                        return (10 * 10^18 * 10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0] / 10)
                    return ((10 * 10^18 * 10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0]) + 10 / 10)
                if not (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10:
                    require 2 * ext_call.return_data[0] > 0
                    require 2 * ext_call.return_data[0]
                    if 0 / 2 * ext_call.return_data[0] % 10 < 5:
                        return (0 / 2 * ext_call.return_data[0] / 10)
                    return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
                require 10 * 10^18 * (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
                require 2 * ext_call.return_data[0] > 0
                require 2 * ext_call.return_data[0]
                if 10 * 10^18 * (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0] % 10 < 5:
                    return (10 * 10^18 * (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0] / 10)
                return ((10 * 10^18 * (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0]) + 10 / 10)
            if (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 % 10 < 5:
                if not (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10:
                    require 2 * ext_call.return_data[0] > 0
                    require 2 * ext_call.return_data[0]
                    if 0 / 2 * ext_call.return_data[0] % 10 < 5:
                        return (0 / 2 * ext_call.return_data[0] / 10)
                    return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
                require 10 * 10^18 * (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 == 10 * 10^18
                require 2 * ext_call.return_data[0] > 0
                require 2 * ext_call.return_data[0]
                if 10 * 10^18 * (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0] % 10 < 5:
                    return (10 * 10^18 * (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0] / 10)
                return ((10 * 10^18 * (10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0]) + 10 / 10)
            if not ((10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10:
                require 2 * ext_call.return_data[0] > 0
                require 2 * ext_call.return_data[0]
                if 0 / 2 * ext_call.return_data[0] % 10 < 5:
                    return (0 / 2 * ext_call.return_data[0] / 10)
                return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
            require 10 * 10^18 * ((10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ((10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
            require 2 * ext_call.return_data[0] > 0
            require 2 * ext_call.return_data[0]
            if 10 * 10^18 * ((10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0] % 10 < 5:
                return (10 * 10^18 * ((10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0] / 10)
            return ((10 * 10^18 * ((10^9 * ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0]) + 10 / 10)
        require 10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 10^9 * s == (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10
        if 10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 % 10 < 5:
            if 10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 % 10 < 5:
                if not 10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10:
                    require 2 * ext_call.return_data[0] > 0
                    require 2 * ext_call.return_data[0]
                    if 0 / 2 * ext_call.return_data[0] % 10 < 5:
                        return (0 / 2 * ext_call.return_data[0] / 10)
                    return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
                require 10 * 10^18 * 10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 == 10 * 10^18
                require 2 * ext_call.return_data[0] > 0
                require 2 * ext_call.return_data[0]
                if 10 * 10^18 * 10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0] % 10 < 5:
                    return (10 * 10^18 * 10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0] / 10)
                return ((10 * 10^18 * 10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0]) + 10 / 10)
            if not (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10:
                require 2 * ext_call.return_data[0] > 0
                require 2 * ext_call.return_data[0]
                if 0 / 2 * ext_call.return_data[0] % 10 < 5:
                    return (0 / 2 * ext_call.return_data[0] / 10)
                return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
            require 10 * 10^18 * (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
            require 2 * ext_call.return_data[0] > 0
            require 2 * ext_call.return_data[0]
            if 10 * 10^18 * (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0] % 10 < 5:
                return (10 * 10^18 * (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0] / 10)
            return ((10 * 10^18 * (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0]) + 10 / 10)
        if (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 % 10 < 5:
            if not (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10:
                require 2 * ext_call.return_data[0] > 0
                require 2 * ext_call.return_data[0]
                if 0 / 2 * ext_call.return_data[0] % 10 < 5:
                    return (0 / 2 * ext_call.return_data[0] / 10)
                return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
            require 10 * 10^18 * (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 == 10 * 10^18
            require 2 * ext_call.return_data[0] > 0
            require 2 * ext_call.return_data[0]
            if 10 * 10^18 * (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0] % 10 < 5:
                return (10 * 10^18 * (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0] / 10)
            return ((10 * 10^18 * (10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0]) + 10 / 10)
        if not ((10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10:
            require 2 * ext_call.return_data[0] > 0
            require 2 * ext_call.return_data[0]
            if 0 / 2 * ext_call.return_data[0] % 10 < 5:
                return (0 / 2 * ext_call.return_data[0] / 10)
            return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
        require 10 * 10^18 * ((10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ((10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
        require 2 * ext_call.return_data[0] > 0
        require 2 * ext_call.return_data[0]
        if 10 * 10^18 * ((10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0] % 10 < 5:
            return (10 * 10^18 * ((10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0] / 10)
        return ((10 * 10^18 * ((10^9 * (ext_call.return_data[0] * 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0]) + 10 / 10)
    if not (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10:
        require ext_code.size(exchangeRatesAddress)
        call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
             gas gas_remaining wei
            args 0x534e580000000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
        mem[100] = 0x534e580000000000000000000000000000000000000000000000000000000000
        require ext_code.size(exchangeRatesAddress)
        call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
             gas gas_remaining wei
            args 0x534e580000000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = availableSynths.length
        if availableSynths.length:
            mem[128 len 32 * availableSynths.length] = code.data[23666 len 32 * availableSynths.length]
        idx = 0
        while uint8(idx) < availableSynths.length:
            mem[0] = 11
            require ext_code.size(availableSynths[uint8(idx)])
            call availableSynths[uint8(idx)].currencyKey() with:
                 gas gas_remaining wei
            mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require uint8(idx) < mem[96]
            mem[(32 * uint8(idx)) + 128] = Mask(32, 224, ext_call.return_data[0])
            idx = idx + 1
            continue 
        mem[(32 * availableSynths.length) + 128] = 0x370d62ad00000000000000000000000000000000000000000000000000000000
        mem[(32 * availableSynths.length) + 132] = 32
        mem[(32 * availableSynths.length) + 164] = mem[96]
        mem[(32 * availableSynths.length) + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        require ext_code.size(exchangeRatesAddress)
        call exchangeRatesAddress.anyRateIsStale(bytes4[] arg1) with:
             gas gas_remaining wei
            args 32, mem[(32 * availableSynths.length) + 164 len (32 * mem[96]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'Rates are stale'
        s = 0
        idx = 0
        s = 0
        while uint8(idx) < availableSynths.length:
            require ext_code.size(availableSynths[uint8(idx)])
            call availableSynths[uint8(idx)].currencyKey() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * availableSynths.length) + 132] = Mask(32, 224, ext_call.return_data[0])
            require ext_code.size(exchangeRatesAddress)
            call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                 gas gas_remaining wei
                args Mask(32, 224, ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require uint8(idx) < availableSynths.length
            mem[0] = 11
            require ext_code.size(availableSynths[uint8(idx)])
            call availableSynths[uint8(idx)].0x18160ddd with:
                 gas gas_remaining wei
            mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] % 10 < 5:
                    require (0 / ext_call.return_data[0] / 10) + s >= s
                    s = 0 / ext_call.return_data[0] / 10
                    idx = idx + 1
                    s = (0 / ext_call.return_data[0] / 10) + s
                    continue 
                require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                s = (0 / ext_call.return_data[0]) + 10 / 10
                idx = idx + 1
                s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                continue 
            require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^17 % 10 < 5:
                if not ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10:
                    require ext_call.return_data[0] > 0
                    require ext_call.return_data[0]
                    if 0 / ext_call.return_data[0] % 10 < 5:
                        require (0 / ext_call.return_data[0] / 10) + s >= s
                        s = 0 / ext_call.return_data[0] / 10
                        idx = idx + 1
                        s = (0 / ext_call.return_data[0] / 10) + s
                        continue 
                    require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                    s = (0 / ext_call.return_data[0]) + 10 / 10
                    idx = idx + 1
                    s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                    continue 
                require 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 == 10 * 10^18
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                    require (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s >= s
                    s = 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10
                    idx = idx + 1
                    s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s
                    continue 
                require ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
                s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                idx = idx + 1
                s = ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s
                continue 
            if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] % 10 < 5:
                    require (0 / ext_call.return_data[0] / 10) + s >= s
                    s = 0 / ext_call.return_data[0] / 10
                    idx = idx + 1
                    s = (0 / ext_call.return_data[0] / 10) + s
                    continue 
                require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                s = (0 / ext_call.return_data[0]) + 10 / 10
                idx = idx + 1
                s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                continue 
            require 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 == 10 * 10^18
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                require (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s >= s
                s = 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                idx = idx + 1
                s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s
                continue 
            require ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
            s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
            idx = idx + 1
            s = ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s
            continue 
        if s:
            require 10^9 * s / s == 10^9
            if 10^9 * s:
                require not 0 / 10^9 * s
        require 2 * ext_call.return_data[0] > 0
        require 2 * ext_call.return_data[0]
        if 0 / 2 * ext_call.return_data[0] % 10 < 5:
            return (0 / 2 * ext_call.return_data[0] / 10)
        return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
    require ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 == ext_call.return_data[0]
    require ext_code.size(exchangeRatesAddress)
    call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
         gas gas_remaining wei
        args 0x534e580000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
    mem[100] = 0x534e580000000000000000000000000000000000000000000000000000000000
    require ext_code.size(exchangeRatesAddress)
    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
         gas gas_remaining wei
        args 0x534e580000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = availableSynths.length
    if availableSynths.length:
        mem[128 len 32 * availableSynths.length] = code.data[23666 len 32 * availableSynths.length]
    idx = 0
    while uint8(idx) < availableSynths.length:
        mem[0] = 11
        require ext_code.size(availableSynths[uint8(idx)])
        call availableSynths[uint8(idx)].currencyKey() with:
             gas gas_remaining wei
        mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require uint8(idx) < mem[96]
        mem[(32 * uint8(idx)) + 128] = Mask(32, 224, ext_call.return_data[0])
        idx = idx + 1
        continue 
    mem[(32 * availableSynths.length) + 128] = 0x370d62ad00000000000000000000000000000000000000000000000000000000
    mem[(32 * availableSynths.length) + 132] = 32
    mem[(32 * availableSynths.length) + 164] = mem[96]
    mem[(32 * availableSynths.length) + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    require ext_code.size(exchangeRatesAddress)
    call exchangeRatesAddress.anyRateIsStale(bytes4[] arg1) with:
         gas gas_remaining wei
        args 32, mem[(32 * availableSynths.length) + 164 len (32 * mem[96]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Rates are stale'
    s = 0
    idx = 0
    s = 0
    while uint8(idx) < availableSynths.length:
        require ext_code.size(availableSynths[uint8(idx)])
        call availableSynths[uint8(idx)].currencyKey() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * availableSynths.length) + 132] = Mask(32, 224, ext_call.return_data[0])
        require ext_code.size(exchangeRatesAddress)
        call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
             gas gas_remaining wei
            args Mask(32, 224, ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require uint8(idx) < availableSynths.length
        mem[0] = 11
        require ext_code.size(availableSynths[uint8(idx)])
        call availableSynths[uint8(idx)].0x18160ddd with:
             gas gas_remaining wei
        mem[(32 * availableSynths.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 0 / ext_call.return_data[0] % 10 < 5:
                require (0 / ext_call.return_data[0] / 10) + s >= s
                s = 0 / ext_call.return_data[0] / 10
                idx = idx + 1
                s = (0 / ext_call.return_data[0] / 10) + s
                continue 
            require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
            s = (0 / ext_call.return_data[0]) + 10 / 10
            idx = idx + 1
            s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
            continue 
        require ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^17 % 10 < 5:
            if not ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                if 0 / ext_call.return_data[0] % 10 < 5:
                    require (0 / ext_call.return_data[0] / 10) + s >= s
                    s = 0 / ext_call.return_data[0] / 10
                    idx = idx + 1
                    s = (0 / ext_call.return_data[0] / 10) + s
                    continue 
                require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
                s = (0 / ext_call.return_data[0]) + 10 / 10
                idx = idx + 1
                s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
                continue 
            require 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 == 10 * 10^18
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                require (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s >= s
                s = 10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10
                idx = idx + 1
                s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0] / 10) + s
                continue 
            require ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
            s = (10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
            idx = idx + 1
            s = ((10 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) + s
            continue 
        if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10:
            require ext_call.return_data[0] > 0
            require ext_call.return_data[0]
            if 0 / ext_call.return_data[0] % 10 < 5:
                require (0 / ext_call.return_data[0] / 10) + s >= s
                s = 0 / ext_call.return_data[0] / 10
                idx = idx + 1
                s = (0 / ext_call.return_data[0] / 10) + s
                continue 
            require ((0 / ext_call.return_data[0]) + 10 / 10) + s >= s
            s = (0 / ext_call.return_data[0]) + 10 / 10
            idx = idx + 1
            s = ((0 / ext_call.return_data[0]) + 10 / 10) + s
            continue 
        require 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 == 10 * 10^18
        require ext_call.return_data[0] > 0
        require ext_call.return_data[0]
        if 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
            require (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s >= s
            s = 10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
            idx = idx + 1
            s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) + s
            continue 
        require ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s >= s
        s = (10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
        idx = idx + 1
        s = ((10 * 10^18 * (ext_call.return_data[0] * ext_call.return_data[0] / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) + s
        continue 
    if not s:
        require 2 * ext_call.return_data[0] > 0
        require 2 * ext_call.return_data[0]
        if 0 / 2 * ext_call.return_data[0] % 10 < 5:
            return (0 / 2 * ext_call.return_data[0] / 10)
        return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
    require 10^9 * s / s == 10^9
    if not 10^9 * s:
        require 2 * ext_call.return_data[0] > 0
        require 2 * ext_call.return_data[0]
        if 0 / 2 * ext_call.return_data[0] % 10 < 5:
            return (0 / 2 * ext_call.return_data[0] / 10)
        return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
    if ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 % 10 < 5:
        require 10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 10^9 * s == ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10
        if 10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 % 10 < 5:
            if 10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 % 10 < 5:
                if not 10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10:
                    require 2 * ext_call.return_data[0] > 0
                    require 2 * ext_call.return_data[0]
                    if 0 / 2 * ext_call.return_data[0] % 10 < 5:
                        return (0 / 2 * ext_call.return_data[0] / 10)
                    return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
                require 10 * 10^18 * 10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 == 10 * 10^18
                require 2 * ext_call.return_data[0] > 0
                require 2 * ext_call.return_data[0]
                if 10 * 10^18 * 10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0] % 10 < 5:
                    return (10 * 10^18 * 10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0] / 10)
                return ((10 * 10^18 * 10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0]) + 10 / 10)
            if not (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10:
                require 2 * ext_call.return_data[0] > 0
                require 2 * ext_call.return_data[0]
                if 0 / 2 * ext_call.return_data[0] % 10 < 5:
                    return (0 / 2 * ext_call.return_data[0] / 10)
                return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
            require 10 * 10^18 * (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
            require 2 * ext_call.return_data[0] > 0
            require 2 * ext_call.return_data[0]
            if 10 * 10^18 * (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0] % 10 < 5:
                return (10 * 10^18 * (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0] / 10)
            return ((10 * 10^18 * (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0]) + 10 / 10)
        if (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 % 10 < 5:
            if not (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10:
                require 2 * ext_call.return_data[0] > 0
                require 2 * ext_call.return_data[0]
                if 0 / 2 * ext_call.return_data[0] % 10 < 5:
                    return (0 / 2 * ext_call.return_data[0] / 10)
                return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
            require 10 * 10^18 * (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 == 10 * 10^18
            require 2 * ext_call.return_data[0] > 0
            require 2 * ext_call.return_data[0]
            if 10 * 10^18 * (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0] % 10 < 5:
                return (10 * 10^18 * (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0] / 10)
            return ((10 * 10^18 * (10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0]) + 10 / 10)
        if not ((10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10:
            require 2 * ext_call.return_data[0] > 0
            require 2 * ext_call.return_data[0]
            if 0 / 2 * ext_call.return_data[0] % 10 < 5:
                return (0 / 2 * ext_call.return_data[0] / 10)
            return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
        require 10 * 10^18 * ((10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ((10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
        require 2 * ext_call.return_data[0] > 0
        require 2 * ext_call.return_data[0]
        if 10 * 10^18 * ((10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0] % 10 < 5:
            return (10 * 10^18 * ((10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0] / 10)
        return ((10 * 10^18 * ((10^9 * ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0]) + 10 / 10)
    require 10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 10^9 * s == (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10
    if 10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 % 10 < 5:
        if 10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 % 10 < 5:
            if not 10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10:
                require 2 * ext_call.return_data[0] > 0
                require 2 * ext_call.return_data[0]
                if 0 / 2 * ext_call.return_data[0] % 10 < 5:
                    return (0 / 2 * ext_call.return_data[0] / 10)
                return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
            require 10 * 10^18 * 10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 == 10 * 10^18
            require 2 * ext_call.return_data[0] > 0
            require 2 * ext_call.return_data[0]
            if 10 * 10^18 * 10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0] % 10 < 5:
                return (10 * 10^18 * 10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0] / 10)
            return ((10 * 10^18 * 10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0]) + 10 / 10)
        if not (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10:
            require 2 * ext_call.return_data[0] > 0
            require 2 * ext_call.return_data[0]
            if 0 / 2 * ext_call.return_data[0] % 10 < 5:
                return (0 / 2 * ext_call.return_data[0] / 10)
            return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
        require 10 * 10^18 * (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
        require 2 * ext_call.return_data[0] > 0
        require 2 * ext_call.return_data[0]
        if 10 * 10^18 * (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0] % 10 < 5:
            return (10 * 10^18 * (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0] / 10)
        return ((10 * 10^18 * (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0]) + 10 / 10)
    if (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 % 10 < 5:
        if not (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10:
            require 2 * ext_call.return_data[0] > 0
            require 2 * ext_call.return_data[0]
            if 0 / 2 * ext_call.return_data[0] % 10 < 5:
                return (0 / 2 * ext_call.return_data[0] / 10)
            return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
        require 10 * 10^18 * (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 == 10 * 10^18
        require 2 * ext_call.return_data[0] > 0
        require 2 * ext_call.return_data[0]
        if 10 * 10^18 * (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0] % 10 < 5:
            return (10 * 10^18 * (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0] / 10)
        return ((10 * 10^18 * (10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6 / 10 / 2 * ext_call.return_data[0]) + 10 / 10)
    if not ((10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10:
        require 2 * ext_call.return_data[0] > 0
        require 2 * ext_call.return_data[0]
        if 0 / 2 * ext_call.return_data[0] % 10 < 5:
            return (0 / 2 * ext_call.return_data[0] / 10)
        return ((0 / 2 * ext_call.return_data[0]) + 10 / 10)
    require 10 * 10^18 * ((10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / ((10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 == 10 * 10^18
    require 2 * ext_call.return_data[0] > 0
    require 2 * ext_call.return_data[0]
    if 10 * 10^18 * ((10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0] % 10 < 5:
        return (10 * 10^18 * ((10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0] / 10)
    return ((10 * 10^18 * ((10^9 * (ext_call.return_data[0] * (10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + 10 / 10 / 100000000 * 10^18) + 10 / 10 * s / 100000000 * 10^18) + 10 / 10 / 100 * 10^6) + 10 / 10 / 2 * ext_call.return_data[0]) + 10 / 10)
}

function exchange(bytes4 arg1, uint256 arg2, bytes4 arg3, address arg4) {
    if proxyAddress != msg.sender:
        uint256(stor5) = msg.sender or Mask(96, 160, uint256(stor5))
    if Mask(32, 224, arg3) == Mask(32, 224, arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exchange must use different synths'
    if arg2 <= 0:
        revert with 0, 'Zero amount'
    require ext_code.size(feePoolAddress)
    call feePoolAddress.FEE_ADDRESS() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == address(stor5):
        revert with 0, 'Fee address not allowed'
    if not arg4:
        if not address(stor5):
            revert with 0, 'Zero destination'
        if this.address == address(stor5):
            revert with 0, 'Synthetix is invalid destination'
        if proxyAddress == address(stor5):
            revert with 0, 'Proxy is invalid destination'
        require ext_code.size(synths[Mask(32, 224, arg1)])
        call synths[Mask(32, 224, arg1)].0x9dc29fac with:
             gas gas_remaining wei
            args address(stor5), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(exchangeRatesAddress)
        call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
             gas gas_remaining wei
            args Mask(32, 224, arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
        require ext_code.size(exchangeRatesAddress)
        call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
             gas gas_remaining wei
            args Mask(32, 224, arg3)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
        if Mask(32, 224, arg3) == Mask(32, 224, arg1):
            require ext_code.size(feePoolAddress)
            call feePoolAddress.amountReceivedFromExchange(uint256 arg1) with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] <= arg2
            require ext_code.size(synths[Mask(32, 224, arg3)])
            call synths[Mask(32, 224, arg3)].issue(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(stor5), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg2 - ext_call.return_data[0] > 0:
                require ext_code.size(exchangeRatesAddress)
                call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                     gas gas_remaining wei
                    args Mask(32, 224, arg3)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                require ext_code.size(exchangeRatesAddress)
                call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                     gas gas_remaining wei
                    args 0x5844520000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                if 0x5844520000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg3):
                    require ext_code.size(feePoolAddress)
                    call feePoolAddress.FEE_ADDRESS() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor45A9)
                    call stor45A9.issue(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg2 - ext_call.return_data[0]
                else:
                    require ext_code.size(exchangeRatesAddress)
                    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                         gas gas_remaining wei
                        args 0x5844520000000000000000000000000000000000000000000000000000000000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(exchangeRatesAddress)
                    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                         gas gas_remaining wei
                        args Mask(32, 224, arg3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not arg2 - ext_call.return_data[0]:
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        require ext_code.size(feePoolAddress)
                        call feePoolAddress.FEE_ADDRESS() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor45A9)
                        if 0 / ext_call.return_data[0] % 10 < 5:
                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                        else:
                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                    else:
                        require (arg2 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / arg2 - ext_call.return_data[0] == ext_call.return_data[0]
                        if (arg2 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 % 10 < 5:
                            if not (arg2 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10:
                                require ext_call.return_data[0] > 0
                                require ext_call.return_data[0]
                                require ext_code.size(feePoolAddress)
                                call feePoolAddress.FEE_ADDRESS() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor45A9)
                                if 0 / ext_call.return_data[0] % 10 < 5:
                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                else:
                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                            else:
                                require 10 * 10^18 * (arg2 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / (arg2 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 == 10 * 10^18
                                require ext_call.return_data[0] > 0
                                require ext_call.return_data[0]
                                require ext_code.size(feePoolAddress)
                                call feePoolAddress.FEE_ADDRESS() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor45A9)
                                if 10 * 10^18 * (arg2 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), 10 * 10^18 * (arg2 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] / 10
                                else:
                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), (10 * 10^18 * (arg2 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                        else:
                            if not ((arg2 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10:
                                require ext_call.return_data[0] > 0
                                require ext_call.return_data[0]
                                require ext_code.size(feePoolAddress)
                                call feePoolAddress.FEE_ADDRESS() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor45A9)
                                if 0 / ext_call.return_data[0] % 10 < 5:
                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                else:
                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                            else:
                                require 10 * 10^18 * ((arg2 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ((arg2 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 == 10 * 10^18
                                require ext_call.return_data[0] > 0
                                require ext_call.return_data[0]
                                require ext_code.size(feePoolAddress)
                                call feePoolAddress.FEE_ADDRESS() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor45A9)
                                if 10 * 10^18 * ((arg2 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), 10 * 10^18 * ((arg2 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                                else:
                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), (10 * 10^18 * ((arg2 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(exchangeRatesAddress)
            call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                 gas gas_remaining wei
                args Mask(32, 224, arg3)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(exchangeRatesAddress)
            call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                 gas gas_remaining wei
                args Mask(32, 224, arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg2:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                require ext_code.size(feePoolAddress)
                if 0 / ext_call.return_data[0] % 10 < 5:
                    call feePoolAddress.amountReceivedFromExchange(uint256 arg1) with:
                         gas gas_remaining wei
                        args (0 / ext_call.return_data[0] / 10)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= 0 / ext_call.return_data[0] / 10
                    require ext_code.size(synths[Mask(32, 224, arg3)])
                    call synths[Mask(32, 224, arg3)].issue(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(stor5), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (0 / ext_call.return_data[0] / 10) - ext_call.return_data[0] > 0:
                        require ext_code.size(exchangeRatesAddress)
                        call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                             gas gas_remaining wei
                            args Mask(32, 224, arg3)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                        require ext_code.size(exchangeRatesAddress)
                        call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                             gas gas_remaining wei
                            args 0x5844520000000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                        if 0x5844520000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg3):
                            require ext_code.size(feePoolAddress)
                            call feePoolAddress.FEE_ADDRESS() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor45A9)
                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), (0 / ext_call.return_data[0] / 10) - ext_call.return_data[0]
                        else:
                            require ext_code.size(exchangeRatesAddress)
                            call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                                 gas gas_remaining wei
                                args 0x5844520000000000000000000000000000000000000000000000000000000000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(exchangeRatesAddress)
                            call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                                 gas gas_remaining wei
                                args Mask(32, 224, arg3)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not (0 / ext_call.return_data[0] / 10) - ext_call.return_data[0]:
                                require ext_call.return_data[0] > 0
                                require ext_call.return_data[0]
                                require ext_code.size(feePoolAddress)
                                call feePoolAddress.FEE_ADDRESS() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor45A9)
                                if 0 / ext_call.return_data[0] % 10 < 5:
                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                else:
                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                            else:
                                require (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / (0 / ext_call.return_data[0] / 10) - ext_call.return_data[0] == ext_call.return_data[0]
                                if (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 % 10 < 5:
                                    if not (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10:
                                        require ext_call.return_data[0] > 0
                                        require ext_call.return_data[0]
                                        require ext_code.size(feePoolAddress)
                                        call feePoolAddress.FEE_ADDRESS() with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor45A9)
                                        if 0 / ext_call.return_data[0] % 10 < 5:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                        else:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                    else:
                                        require 10 * 10^18 * (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 == 10 * 10^18
                                        require ext_call.return_data[0] > 0
                                        require ext_call.return_data[0]
                                        require ext_code.size(feePoolAddress)
                                        call feePoolAddress.FEE_ADDRESS() with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor45A9)
                                        if 10 * 10^18 * (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), 10 * 10^18 * (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] / 10
                                        else:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), (10 * 10^18 * (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                                else:
                                    if not ((0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10:
                                        require ext_call.return_data[0] > 0
                                        require ext_call.return_data[0]
                                        require ext_code.size(feePoolAddress)
                                        call feePoolAddress.FEE_ADDRESS() with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor45A9)
                                        if 0 / ext_call.return_data[0] % 10 < 5:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                        else:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                    else:
                                        require 10 * 10^18 * ((0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ((0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 == 10 * 10^18
                                        require ext_call.return_data[0] > 0
                                        require ext_call.return_data[0]
                                        require ext_code.size(feePoolAddress)
                                        call feePoolAddress.FEE_ADDRESS() with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor45A9)
                                        if 10 * 10^18 * ((0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), 10 * 10^18 * ((0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                                        else:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), (10 * 10^18 * ((0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    call feePoolAddress.amountReceivedFromExchange(uint256 arg1) with:
                         gas gas_remaining wei
                        args ((0 / ext_call.return_data[0]) + 10 / 10)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= (0 / ext_call.return_data[0]) + 10 / 10
                    require ext_code.size(synths[Mask(32, 224, arg3)])
                    call synths[Mask(32, 224, arg3)].issue(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(stor5), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ((0 / ext_call.return_data[0]) + 10 / 10) - ext_call.return_data[0] > 0:
                        require ext_code.size(exchangeRatesAddress)
                        call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                             gas gas_remaining wei
                            args Mask(32, 224, arg3)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                        require ext_code.size(exchangeRatesAddress)
                        call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                             gas gas_remaining wei
                            args 0x5844520000000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                        if 0x5844520000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg3):
                            require ext_code.size(feePoolAddress)
                            call feePoolAddress.FEE_ADDRESS() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor45A9)
                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), ((0 / ext_call.return_data[0]) + 10 / 10) - ext_call.return_data[0]
                        else:
                            require ext_code.size(exchangeRatesAddress)
                            call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                                 gas gas_remaining wei
                                args 0x5844520000000000000000000000000000000000000000000000000000000000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(exchangeRatesAddress)
                            call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                                 gas gas_remaining wei
                                args Mask(32, 224, arg3)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ((0 / ext_call.return_data[0]) + 10 / 10) - ext_call.return_data[0]:
                                require ext_call.return_data[0] > 0
                                require ext_call.return_data[0]
                                require ext_code.size(feePoolAddress)
                                call feePoolAddress.FEE_ADDRESS() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor45A9)
                                if 0 / ext_call.return_data[0] % 10 < 5:
                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                else:
                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                            else:
                                require ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ((0 / ext_call.return_data[0]) + 10 / 10) - ext_call.return_data[0] == ext_call.return_data[0]
                                if ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 % 10 < 5:
                                    if not ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10:
                                        require ext_call.return_data[0] > 0
                                        require ext_call.return_data[0]
                                        require ext_code.size(feePoolAddress)
                                        call feePoolAddress.FEE_ADDRESS() with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor45A9)
                                        if 0 / ext_call.return_data[0] % 10 < 5:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                        else:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                    else:
                                        require 10 * 10^18 * ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 == 10 * 10^18
                                        require ext_call.return_data[0] > 0
                                        require ext_call.return_data[0]
                                        require ext_code.size(feePoolAddress)
                                        call feePoolAddress.FEE_ADDRESS() with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor45A9)
                                        if 10 * 10^18 * ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), 10 * 10^18 * ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] / 10
                                        else:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), (10 * 10^18 * ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                                else:
                                    if not (((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10:
                                        require ext_call.return_data[0] > 0
                                        require ext_call.return_data[0]
                                        require ext_code.size(feePoolAddress)
                                        call feePoolAddress.FEE_ADDRESS() with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor45A9)
                                        if 0 / ext_call.return_data[0] % 10 < 5:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                        else:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                    else:
                                        require 10 * 10^18 * (((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / (((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 == 10 * 10^18
                                        require ext_call.return_data[0] > 0
                                        require ext_call.return_data[0]
                                        require ext_code.size(feePoolAddress)
                                        call feePoolAddress.FEE_ADDRESS() with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor45A9)
                                        if 10 * 10^18 * (((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), 10 * 10^18 * (((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                                        else:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), (10 * 10^18 * (((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_call.return_data[0] * arg2 / arg2 == ext_call.return_data[0]
                if ext_call.return_data[0] * arg2 / 10^17 % 10 < 5:
                    if not ext_call.return_data[0] * arg2 / 10^17 / 10:
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        require ext_code.size(feePoolAddress)
                        if 0 / ext_call.return_data[0] % 10 < 5:
                            call feePoolAddress.amountReceivedFromExchange(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (0 / ext_call.return_data[0] / 10)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 0 / ext_call.return_data[0] / 10
                            require ext_code.size(synths[Mask(32, 224, arg3)])
                            call synths[Mask(32, 224, arg3)].issue(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor5), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (0 / ext_call.return_data[0] / 10) - ext_call.return_data[0] > 0:
                                require ext_code.size(exchangeRatesAddress)
                                call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                                     gas gas_remaining wei
                                    args Mask(32, 224, arg3)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                                require ext_code.size(exchangeRatesAddress)
                                call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                                     gas gas_remaining wei
                                    args 0x5844520000000000000000000000000000000000000000000000000000000000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                                if 0x5844520000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg3):
                                    require ext_code.size(feePoolAddress)
                                    call feePoolAddress.FEE_ADDRESS() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(stor45A9)
                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), (0 / ext_call.return_data[0] / 10) - ext_call.return_data[0]
                                else:
                                    require ext_code.size(exchangeRatesAddress)
                                    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                                         gas gas_remaining wei
                                        args 0x5844520000000000000000000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(exchangeRatesAddress)
                                    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                                         gas gas_remaining wei
                                        args Mask(32, 224, arg3)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not (0 / ext_call.return_data[0] / 10) - ext_call.return_data[0]:
                                        require ext_call.return_data[0] > 0
                                        require ext_call.return_data[0]
                                        require ext_code.size(feePoolAddress)
                                        call feePoolAddress.FEE_ADDRESS() with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor45A9)
                                        if 0 / ext_call.return_data[0] % 10 < 5:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                        else:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                    else:
                                        require (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / (0 / ext_call.return_data[0] / 10) - ext_call.return_data[0] == ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 % 10 < 5:
                                            if not (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10:
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 0 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                            else:
                                                require 10 * 10^18 * (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 == 10 * 10^18
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 10 * 10^18 * (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 10 * 10^18 * (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (10 * 10^18 * (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                                        else:
                                            if not ((0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10:
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 0 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                            else:
                                                require 10 * 10^18 * ((0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ((0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 == 10 * 10^18
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 10 * 10^18 * ((0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 10 * 10^18 * ((0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (10 * 10^18 * ((0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            call feePoolAddress.amountReceivedFromExchange(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ((0 / ext_call.return_data[0]) + 10 / 10)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= (0 / ext_call.return_data[0]) + 10 / 10
                            require ext_code.size(synths[Mask(32, 224, arg3)])
                            call synths[Mask(32, 224, arg3)].issue(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor5), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ((0 / ext_call.return_data[0]) + 10 / 10) - ext_call.return_data[0] > 0:
                                require ext_code.size(exchangeRatesAddress)
                                call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                                     gas gas_remaining wei
                                    args Mask(32, 224, arg3)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                                require ext_code.size(exchangeRatesAddress)
                                call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                                     gas gas_remaining wei
                                    args 0x5844520000000000000000000000000000000000000000000000000000000000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                                if 0x5844520000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg3):
                                    require ext_code.size(feePoolAddress)
                                    call feePoolAddress.FEE_ADDRESS() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(stor45A9)
                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), ((0 / ext_call.return_data[0]) + 10 / 10) - ext_call.return_data[0]
                                else:
                                    require ext_code.size(exchangeRatesAddress)
                                    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                                         gas gas_remaining wei
                                        args 0x5844520000000000000000000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(exchangeRatesAddress)
                                    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                                         gas gas_remaining wei
                                        args Mask(32, 224, arg3)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ((0 / ext_call.return_data[0]) + 10 / 10) - ext_call.return_data[0]:
                                        require ext_call.return_data[0] > 0
                                        require ext_call.return_data[0]
                                        require ext_code.size(feePoolAddress)
                                        call feePoolAddress.FEE_ADDRESS() with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor45A9)
                                        if 0 / ext_call.return_data[0] % 10 < 5:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                        else:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                    else:
                                        require ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ((0 / ext_call.return_data[0]) + 10 / 10) - ext_call.return_data[0] == ext_call.return_data[0]
                                        if ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 % 10 < 5:
                                            if not ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10:
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 0 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                            else:
                                                require 10 * 10^18 * ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 == 10 * 10^18
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 10 * 10^18 * ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 10 * 10^18 * ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (10 * 10^18 * ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                                        else:
                                            if not (((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10:
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 0 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                            else:
                                                require 10 * 10^18 * (((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / (((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 == 10 * 10^18
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 10 * 10^18 * (((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 10 * 10^18 * (((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (10 * 10^18 * (((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require 10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] * arg2 / 10^17 / 10 == 10 * 10^18
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        require ext_code.size(feePoolAddress)
                        if 10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                            call feePoolAddress.amountReceivedFromExchange(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] / 10)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] / 10
                            require ext_code.size(synths[Mask(32, 224, arg3)])
                            call synths[Mask(32, 224, arg3)].issue(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor5), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] / 10) - ext_call.return_data[0] > 0:
                                require ext_code.size(exchangeRatesAddress)
                                call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                                     gas gas_remaining wei
                                    args Mask(32, 224, arg3)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                                require ext_code.size(exchangeRatesAddress)
                                call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                                     gas gas_remaining wei
                                    args 0x5844520000000000000000000000000000000000000000000000000000000000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                                if 0x5844520000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg3):
                                    require ext_code.size(feePoolAddress)
                                    call feePoolAddress.FEE_ADDRESS() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(stor45A9)
                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), (10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] / 10) - ext_call.return_data[0]
                                else:
                                    require ext_code.size(exchangeRatesAddress)
                                    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                                         gas gas_remaining wei
                                        args 0x5844520000000000000000000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(exchangeRatesAddress)
                                    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                                         gas gas_remaining wei
                                        args Mask(32, 224, arg3)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not (10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] / 10) - ext_call.return_data[0]:
                                        require ext_call.return_data[0] > 0
                                        require ext_call.return_data[0]
                                        require ext_code.size(feePoolAddress)
                                        call feePoolAddress.FEE_ADDRESS() with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor45A9)
                                        if 0 / ext_call.return_data[0] % 10 < 5:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                        else:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                    else:
                                        require (10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / (10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] / 10) - ext_call.return_data[0] == ext_call.return_data[0]
                                        if (10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 % 10 < 5:
                                            if not (10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10:
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 0 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                            else:
                                                require 10 * 10^18 * (10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / (10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 == 10 * 10^18
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 10 * 10^18 * (10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 10 * 10^18 * (10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (10 * 10^18 * (10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                                        else:
                                            if not ((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10:
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 0 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                            else:
                                                require 10 * 10^18 * ((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 == 10 * 10^18
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 10 * 10^18 * ((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 10 * 10^18 * ((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (10 * 10^18 * ((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            call feePoolAddress.amountReceivedFromExchange(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= (10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                            require ext_code.size(synths[Mask(32, 224, arg3)])
                            call synths[Mask(32, 224, arg3)].issue(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor5), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) - ext_call.return_data[0] > 0:
                                require ext_code.size(exchangeRatesAddress)
                                call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                                     gas gas_remaining wei
                                    args Mask(32, 224, arg3)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                                require ext_code.size(exchangeRatesAddress)
                                call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                                     gas gas_remaining wei
                                    args 0x5844520000000000000000000000000000000000000000000000000000000000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                                if 0x5844520000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg3):
                                    require ext_code.size(feePoolAddress)
                                    call feePoolAddress.FEE_ADDRESS() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(stor45A9)
                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), ((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) - ext_call.return_data[0]
                                else:
                                    require ext_code.size(exchangeRatesAddress)
                                    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                                         gas gas_remaining wei
                                        args 0x5844520000000000000000000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(exchangeRatesAddress)
                                    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                                         gas gas_remaining wei
                                        args Mask(32, 224, arg3)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) - ext_call.return_data[0]:
                                        require ext_call.return_data[0] > 0
                                        require ext_call.return_data[0]
                                        require ext_code.size(feePoolAddress)
                                        call feePoolAddress.FEE_ADDRESS() with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor45A9)
                                        if 0 / ext_call.return_data[0] % 10 < 5:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                        else:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                    else:
                                        require ((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) - ext_call.return_data[0] == ext_call.return_data[0]
                                        if ((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 % 10 < 5:
                                            if not ((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10:
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 0 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                            else:
                                                require 10 * 10^18 * ((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 == 10 * 10^18
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 10 * 10^18 * ((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 10 * 10^18 * ((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (10 * 10^18 * ((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                                        else:
                                            if not (((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10:
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 0 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                            else:
                                                require 10 * 10^18 * (((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / (((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 == 10 * 10^18
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 10 * 10^18 * (((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 10 * 10^18 * (((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (10 * 10^18 * (((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10:
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        require ext_code.size(feePoolAddress)
                        if 0 / ext_call.return_data[0] % 10 < 5:
                            call feePoolAddress.amountReceivedFromExchange(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (0 / ext_call.return_data[0] / 10)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 0 / ext_call.return_data[0] / 10
                            require ext_code.size(synths[Mask(32, 224, arg3)])
                            call synths[Mask(32, 224, arg3)].issue(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor5), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (0 / ext_call.return_data[0] / 10) - ext_call.return_data[0] > 0:
                                require ext_code.size(exchangeRatesAddress)
                                call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                                     gas gas_remaining wei
                                    args Mask(32, 224, arg3)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                                require ext_code.size(exchangeRatesAddress)
                                call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                                     gas gas_remaining wei
                                    args 0x5844520000000000000000000000000000000000000000000000000000000000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                                if 0x5844520000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg3):
                                    require ext_code.size(feePoolAddress)
                                    call feePoolAddress.FEE_ADDRESS() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(stor45A9)
                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), (0 / ext_call.return_data[0] / 10) - ext_call.return_data[0]
                                else:
                                    require ext_code.size(exchangeRatesAddress)
                                    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                                         gas gas_remaining wei
                                        args 0x5844520000000000000000000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(exchangeRatesAddress)
                                    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                                         gas gas_remaining wei
                                        args Mask(32, 224, arg3)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not (0 / ext_call.return_data[0] / 10) - ext_call.return_data[0]:
                                        require ext_call.return_data[0] > 0
                                        require ext_call.return_data[0]
                                        require ext_code.size(feePoolAddress)
                                        call feePoolAddress.FEE_ADDRESS() with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor45A9)
                                        if 0 / ext_call.return_data[0] % 10 < 5:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                        else:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                    else:
                                        require (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / (0 / ext_call.return_data[0] / 10) - ext_call.return_data[0] == ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 % 10 < 5:
                                            if not (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10:
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 0 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                            else:
                                                require 10 * 10^18 * (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 == 10 * 10^18
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 10 * 10^18 * (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 10 * 10^18 * (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (10 * 10^18 * (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                                        else:
                                            if not ((0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10:
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 0 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                            else:
                                                require 10 * 10^18 * ((0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ((0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 == 10 * 10^18
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 10 * 10^18 * ((0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 10 * 10^18 * ((0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (10 * 10^18 * ((0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            call feePoolAddress.amountReceivedFromExchange(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ((0 / ext_call.return_data[0]) + 10 / 10)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= (0 / ext_call.return_data[0]) + 10 / 10
                            require ext_code.size(synths[Mask(32, 224, arg3)])
                            call synths[Mask(32, 224, arg3)].issue(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor5), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ((0 / ext_call.return_data[0]) + 10 / 10) - ext_call.return_data[0] > 0:
                                require ext_code.size(exchangeRatesAddress)
                                call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                                     gas gas_remaining wei
                                    args Mask(32, 224, arg3)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                                require ext_code.size(exchangeRatesAddress)
                                call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                                     gas gas_remaining wei
                                    args 0x5844520000000000000000000000000000000000000000000000000000000000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                                if 0x5844520000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg3):
                                    require ext_code.size(feePoolAddress)
                                    call feePoolAddress.FEE_ADDRESS() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(stor45A9)
                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), ((0 / ext_call.return_data[0]) + 10 / 10) - ext_call.return_data[0]
                                else:
                                    require ext_code.size(exchangeRatesAddress)
                                    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                                         gas gas_remaining wei
                                        args 0x5844520000000000000000000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(exchangeRatesAddress)
                                    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                                         gas gas_remaining wei
                                        args Mask(32, 224, arg3)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ((0 / ext_call.return_data[0]) + 10 / 10) - ext_call.return_data[0]:
                                        require ext_call.return_data[0] > 0
                                        require ext_call.return_data[0]
                                        require ext_code.size(feePoolAddress)
                                        call feePoolAddress.FEE_ADDRESS() with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor45A9)
                                        if 0 / ext_call.return_data[0] % 10 < 5:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                        else:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                    else:
                                        require ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ((0 / ext_call.return_data[0]) + 10 / 10) - ext_call.return_data[0] == ext_call.return_data[0]
                                        if ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 % 10 < 5:
                                            if not ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10:
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 0 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                            else:
                                                require 10 * 10^18 * ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 == 10 * 10^18
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 10 * 10^18 * ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 10 * 10^18 * ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (10 * 10^18 * ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                                        else:
                                            if not (((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10:
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 0 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                            else:
                                                require 10 * 10^18 * (((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / (((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 == 10 * 10^18
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 10 * 10^18 * (((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 10 * 10^18 * (((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (10 * 10^18 * (((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require 10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 == 10 * 10^18
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        require ext_code.size(feePoolAddress)
                        if 10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                            call feePoolAddress.amountReceivedFromExchange(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                            require ext_code.size(synths[Mask(32, 224, arg3)])
                            call synths[Mask(32, 224, arg3)].issue(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor5), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) - ext_call.return_data[0] > 0:
                                require ext_code.size(exchangeRatesAddress)
                                call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                                     gas gas_remaining wei
                                    args Mask(32, 224, arg3)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                                require ext_code.size(exchangeRatesAddress)
                                call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                                     gas gas_remaining wei
                                    args 0x5844520000000000000000000000000000000000000000000000000000000000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                                if 0x5844520000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg3):
                                    require ext_code.size(feePoolAddress)
                                    call feePoolAddress.FEE_ADDRESS() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(stor45A9)
                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), (10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) - ext_call.return_data[0]
                                else:
                                    require ext_code.size(exchangeRatesAddress)
                                    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                                         gas gas_remaining wei
                                        args 0x5844520000000000000000000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(exchangeRatesAddress)
                                    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                                         gas gas_remaining wei
                                        args Mask(32, 224, arg3)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not (10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) - ext_call.return_data[0]:
                                        require ext_call.return_data[0] > 0
                                        require ext_call.return_data[0]
                                        require ext_code.size(feePoolAddress)
                                        call feePoolAddress.FEE_ADDRESS() with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor45A9)
                                        if 0 / ext_call.return_data[0] % 10 < 5:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                        else:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                    else:
                                        require (10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / (10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) - ext_call.return_data[0] == ext_call.return_data[0]
                                        if (10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 % 10 < 5:
                                            if not (10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10:
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 0 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                            else:
                                                require 10 * 10^18 * (10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / (10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 == 10 * 10^18
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 10 * 10^18 * (10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 10 * 10^18 * (10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (10 * 10^18 * (10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                                        else:
                                            if not ((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10:
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 0 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                            else:
                                                require 10 * 10^18 * ((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 == 10 * 10^18
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 10 * 10^18 * ((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 10 * 10^18 * ((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (10 * 10^18 * ((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            call feePoolAddress.amountReceivedFromExchange(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= (10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
                            require ext_code.size(synths[Mask(32, 224, arg3)])
                            call synths[Mask(32, 224, arg3)].issue(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor5), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) - ext_call.return_data[0] > 0:
                                require ext_code.size(exchangeRatesAddress)
                                call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                                     gas gas_remaining wei
                                    args Mask(32, 224, arg3)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                                require ext_code.size(exchangeRatesAddress)
                                call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                                     gas gas_remaining wei
                                    args 0x5844520000000000000000000000000000000000000000000000000000000000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                                if 0x5844520000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg3):
                                    require ext_code.size(feePoolAddress)
                                    call feePoolAddress.FEE_ADDRESS() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(stor45A9)
                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), ((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) - ext_call.return_data[0]
                                else:
                                    require ext_code.size(exchangeRatesAddress)
                                    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                                         gas gas_remaining wei
                                        args 0x5844520000000000000000000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(exchangeRatesAddress)
                                    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                                         gas gas_remaining wei
                                        args Mask(32, 224, arg3)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) - ext_call.return_data[0]:
                                        require ext_call.return_data[0] > 0
                                        require ext_call.return_data[0]
                                        require ext_code.size(feePoolAddress)
                                        call feePoolAddress.FEE_ADDRESS() with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor45A9)
                                        if 0 / ext_call.return_data[0] % 10 < 5:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                        else:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                    else:
                                        require ((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) - ext_call.return_data[0] == ext_call.return_data[0]
                                        if ((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 % 10 < 5:
                                            if not ((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10:
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 0 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                            else:
                                                require 10 * 10^18 * ((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 == 10 * 10^18
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 10 * 10^18 * ((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 10 * 10^18 * ((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (10 * 10^18 * ((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                                        else:
                                            if not (((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10:
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 0 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                            else:
                                                require 10 * 10^18 * (((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / (((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 == 10 * 10^18
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 10 * 10^18 * (((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 10 * 10^18 * (((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (10 * 10^18 * (((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(synths[Mask(32, 224, arg3)])
        call synths[Mask(32, 224, arg3)].triggerTokenFallbackIfNeeded(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(stor5), address(stor5), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(proxyAddress)
        call proxyAddress._emit(bytes arg1, uint256 arg2, bytes32 arg3, bytes32 arg4, bytes32 arg5, bytes32 arg6) with:
             gas gas_remaining wei
            args 192, 2, sha3('SynthExchange(address,bytes4,uin', 't256,bytes4,uint256,address)'), address(stor5), 0, 0, 160, Mask(32, 224, arg1), arg2, Mask(32, 224, arg3), ext_call.return_data[0], address(stor5)
    else:
        if not arg4:
            revert with 0, 'Zero destination'
        if this.address == arg4:
            revert with 0, 'Synthetix is invalid destination'
        if proxyAddress == arg4:
            revert with 0, 'Proxy is invalid destination'
        require ext_code.size(synths[Mask(32, 224, arg1)])
        call synths[Mask(32, 224, arg1)].0x9dc29fac with:
             gas gas_remaining wei
            args address(stor5), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(exchangeRatesAddress)
        call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
             gas gas_remaining wei
            args Mask(32, 224, arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
        require ext_code.size(exchangeRatesAddress)
        call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
             gas gas_remaining wei
            args Mask(32, 224, arg3)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
        if Mask(32, 224, arg3) == Mask(32, 224, arg1):
            require ext_code.size(feePoolAddress)
            call feePoolAddress.amountReceivedFromExchange(uint256 arg1) with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] <= arg2
            require ext_code.size(synths[Mask(32, 224, arg3)])
            call synths[Mask(32, 224, arg3)].issue(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg4), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg2 - ext_call.return_data[0] > 0:
                require ext_code.size(exchangeRatesAddress)
                call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                     gas gas_remaining wei
                    args Mask(32, 224, arg3)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                require ext_code.size(exchangeRatesAddress)
                call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                     gas gas_remaining wei
                    args 0x5844520000000000000000000000000000000000000000000000000000000000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                if 0x5844520000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg3):
                    require ext_code.size(feePoolAddress)
                    call feePoolAddress.FEE_ADDRESS() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor45A9)
                    call stor45A9.issue(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg2 - ext_call.return_data[0]
                else:
                    require ext_code.size(exchangeRatesAddress)
                    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                         gas gas_remaining wei
                        args 0x5844520000000000000000000000000000000000000000000000000000000000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(exchangeRatesAddress)
                    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                         gas gas_remaining wei
                        args Mask(32, 224, arg3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not arg2 - ext_call.return_data[0]:
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        require ext_code.size(feePoolAddress)
                        call feePoolAddress.FEE_ADDRESS() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor45A9)
                        if 0 / ext_call.return_data[0] % 10 < 5:
                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                        else:
                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                    else:
                        require (arg2 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / arg2 - ext_call.return_data[0] == ext_call.return_data[0]
                        if (arg2 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 % 10 < 5:
                            if not (arg2 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10:
                                require ext_call.return_data[0] > 0
                                require ext_call.return_data[0]
                                require ext_code.size(feePoolAddress)
                                call feePoolAddress.FEE_ADDRESS() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor45A9)
                                if 0 / ext_call.return_data[0] % 10 < 5:
                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                else:
                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                            else:
                                require 10 * 10^18 * (arg2 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / (arg2 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 == 10 * 10^18
                                require ext_call.return_data[0] > 0
                                require ext_call.return_data[0]
                                require ext_code.size(feePoolAddress)
                                call feePoolAddress.FEE_ADDRESS() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor45A9)
                                if 10 * 10^18 * (arg2 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), 10 * 10^18 * (arg2 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] / 10
                                else:
                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), (10 * 10^18 * (arg2 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                        else:
                            if not ((arg2 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10:
                                require ext_call.return_data[0] > 0
                                require ext_call.return_data[0]
                                require ext_code.size(feePoolAddress)
                                call feePoolAddress.FEE_ADDRESS() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor45A9)
                                if 0 / ext_call.return_data[0] % 10 < 5:
                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                else:
                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                            else:
                                require 10 * 10^18 * ((arg2 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ((arg2 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 == 10 * 10^18
                                require ext_call.return_data[0] > 0
                                require ext_call.return_data[0]
                                require ext_code.size(feePoolAddress)
                                call feePoolAddress.FEE_ADDRESS() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor45A9)
                                if 10 * 10^18 * ((arg2 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), 10 * 10^18 * ((arg2 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                                else:
                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), (10 * 10^18 * ((arg2 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(exchangeRatesAddress)
            call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                 gas gas_remaining wei
                args Mask(32, 224, arg3)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(exchangeRatesAddress)
            call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                 gas gas_remaining wei
                args Mask(32, 224, arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg2:
                require ext_call.return_data[0] > 0
                require ext_call.return_data[0]
                require ext_code.size(feePoolAddress)
                if 0 / ext_call.return_data[0] % 10 < 5:
                    call feePoolAddress.amountReceivedFromExchange(uint256 arg1) with:
                         gas gas_remaining wei
                        args (0 / ext_call.return_data[0] / 10)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= 0 / ext_call.return_data[0] / 10
                    require ext_code.size(synths[Mask(32, 224, arg3)])
                    call synths[Mask(32, 224, arg3)].issue(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg4), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (0 / ext_call.return_data[0] / 10) - ext_call.return_data[0] > 0:
                        require ext_code.size(exchangeRatesAddress)
                        call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                             gas gas_remaining wei
                            args Mask(32, 224, arg3)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                        require ext_code.size(exchangeRatesAddress)
                        call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                             gas gas_remaining wei
                            args 0x5844520000000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                        if 0x5844520000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg3):
                            require ext_code.size(feePoolAddress)
                            call feePoolAddress.FEE_ADDRESS() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor45A9)
                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), (0 / ext_call.return_data[0] / 10) - ext_call.return_data[0]
                        else:
                            require ext_code.size(exchangeRatesAddress)
                            call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                                 gas gas_remaining wei
                                args 0x5844520000000000000000000000000000000000000000000000000000000000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(exchangeRatesAddress)
                            call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                                 gas gas_remaining wei
                                args Mask(32, 224, arg3)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not (0 / ext_call.return_data[0] / 10) - ext_call.return_data[0]:
                                require ext_call.return_data[0] > 0
                                require ext_call.return_data[0]
                                require ext_code.size(feePoolAddress)
                                call feePoolAddress.FEE_ADDRESS() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor45A9)
                                if 0 / ext_call.return_data[0] % 10 < 5:
                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                else:
                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                            else:
                                require (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / (0 / ext_call.return_data[0] / 10) - ext_call.return_data[0] == ext_call.return_data[0]
                                if (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 % 10 < 5:
                                    if not (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10:
                                        require ext_call.return_data[0] > 0
                                        require ext_call.return_data[0]
                                        require ext_code.size(feePoolAddress)
                                        call feePoolAddress.FEE_ADDRESS() with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor45A9)
                                        if 0 / ext_call.return_data[0] % 10 < 5:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                        else:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                    else:
                                        require 10 * 10^18 * (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 == 10 * 10^18
                                        require ext_call.return_data[0] > 0
                                        require ext_call.return_data[0]
                                        require ext_code.size(feePoolAddress)
                                        call feePoolAddress.FEE_ADDRESS() with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor45A9)
                                        if 10 * 10^18 * (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), 10 * 10^18 * (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] / 10
                                        else:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), (10 * 10^18 * (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                                else:
                                    if not ((0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10:
                                        require ext_call.return_data[0] > 0
                                        require ext_call.return_data[0]
                                        require ext_code.size(feePoolAddress)
                                        call feePoolAddress.FEE_ADDRESS() with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor45A9)
                                        if 0 / ext_call.return_data[0] % 10 < 5:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                        else:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                    else:
                                        require 10 * 10^18 * ((0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ((0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 == 10 * 10^18
                                        require ext_call.return_data[0] > 0
                                        require ext_call.return_data[0]
                                        require ext_code.size(feePoolAddress)
                                        call feePoolAddress.FEE_ADDRESS() with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor45A9)
                                        if 10 * 10^18 * ((0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), 10 * 10^18 * ((0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                                        else:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), (10 * 10^18 * ((0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    call feePoolAddress.amountReceivedFromExchange(uint256 arg1) with:
                         gas gas_remaining wei
                        args ((0 / ext_call.return_data[0]) + 10 / 10)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= (0 / ext_call.return_data[0]) + 10 / 10
                    require ext_code.size(synths[Mask(32, 224, arg3)])
                    call synths[Mask(32, 224, arg3)].issue(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg4), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ((0 / ext_call.return_data[0]) + 10 / 10) - ext_call.return_data[0] > 0:
                        require ext_code.size(exchangeRatesAddress)
                        call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                             gas gas_remaining wei
                            args Mask(32, 224, arg3)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                        require ext_code.size(exchangeRatesAddress)
                        call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                             gas gas_remaining wei
                            args 0x5844520000000000000000000000000000000000000000000000000000000000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                        if 0x5844520000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg3):
                            require ext_code.size(feePoolAddress)
                            call feePoolAddress.FEE_ADDRESS() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor45A9)
                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), ((0 / ext_call.return_data[0]) + 10 / 10) - ext_call.return_data[0]
                        else:
                            require ext_code.size(exchangeRatesAddress)
                            call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                                 gas gas_remaining wei
                                args 0x5844520000000000000000000000000000000000000000000000000000000000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(exchangeRatesAddress)
                            call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                                 gas gas_remaining wei
                                args Mask(32, 224, arg3)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ((0 / ext_call.return_data[0]) + 10 / 10) - ext_call.return_data[0]:
                                require ext_call.return_data[0] > 0
                                require ext_call.return_data[0]
                                require ext_code.size(feePoolAddress)
                                call feePoolAddress.FEE_ADDRESS() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stor45A9)
                                if 0 / ext_call.return_data[0] % 10 < 5:
                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                else:
                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                            else:
                                require ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ((0 / ext_call.return_data[0]) + 10 / 10) - ext_call.return_data[0] == ext_call.return_data[0]
                                if ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 % 10 < 5:
                                    if not ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10:
                                        require ext_call.return_data[0] > 0
                                        require ext_call.return_data[0]
                                        require ext_code.size(feePoolAddress)
                                        call feePoolAddress.FEE_ADDRESS() with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor45A9)
                                        if 0 / ext_call.return_data[0] % 10 < 5:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                        else:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                    else:
                                        require 10 * 10^18 * ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 == 10 * 10^18
                                        require ext_call.return_data[0] > 0
                                        require ext_call.return_data[0]
                                        require ext_code.size(feePoolAddress)
                                        call feePoolAddress.FEE_ADDRESS() with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor45A9)
                                        if 10 * 10^18 * ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), 10 * 10^18 * ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] / 10
                                        else:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), (10 * 10^18 * ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                                else:
                                    if not (((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10:
                                        require ext_call.return_data[0] > 0
                                        require ext_call.return_data[0]
                                        require ext_code.size(feePoolAddress)
                                        call feePoolAddress.FEE_ADDRESS() with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor45A9)
                                        if 0 / ext_call.return_data[0] % 10 < 5:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                        else:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                    else:
                                        require 10 * 10^18 * (((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / (((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 == 10 * 10^18
                                        require ext_call.return_data[0] > 0
                                        require ext_call.return_data[0]
                                        require ext_code.size(feePoolAddress)
                                        call feePoolAddress.FEE_ADDRESS() with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor45A9)
                                        if 10 * 10^18 * (((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), 10 * 10^18 * (((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                                        else:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), (10 * 10^18 * (((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_call.return_data[0] * arg2 / arg2 == ext_call.return_data[0]
                if ext_call.return_data[0] * arg2 / 10^17 % 10 < 5:
                    if not ext_call.return_data[0] * arg2 / 10^17 / 10:
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        require ext_code.size(feePoolAddress)
                        if 0 / ext_call.return_data[0] % 10 < 5:
                            call feePoolAddress.amountReceivedFromExchange(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (0 / ext_call.return_data[0] / 10)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 0 / ext_call.return_data[0] / 10
                            require ext_code.size(synths[Mask(32, 224, arg3)])
                            call synths[Mask(32, 224, arg3)].issue(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg4), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (0 / ext_call.return_data[0] / 10) - ext_call.return_data[0] > 0:
                                require ext_code.size(exchangeRatesAddress)
                                call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                                     gas gas_remaining wei
                                    args Mask(32, 224, arg3)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                                require ext_code.size(exchangeRatesAddress)
                                call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                                     gas gas_remaining wei
                                    args 0x5844520000000000000000000000000000000000000000000000000000000000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                                if 0x5844520000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg3):
                                    require ext_code.size(feePoolAddress)
                                    call feePoolAddress.FEE_ADDRESS() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(stor45A9)
                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), (0 / ext_call.return_data[0] / 10) - ext_call.return_data[0]
                                else:
                                    require ext_code.size(exchangeRatesAddress)
                                    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                                         gas gas_remaining wei
                                        args 0x5844520000000000000000000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(exchangeRatesAddress)
                                    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                                         gas gas_remaining wei
                                        args Mask(32, 224, arg3)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not (0 / ext_call.return_data[0] / 10) - ext_call.return_data[0]:
                                        require ext_call.return_data[0] > 0
                                        require ext_call.return_data[0]
                                        require ext_code.size(feePoolAddress)
                                        call feePoolAddress.FEE_ADDRESS() with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor45A9)
                                        if 0 / ext_call.return_data[0] % 10 < 5:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                        else:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                    else:
                                        require (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / (0 / ext_call.return_data[0] / 10) - ext_call.return_data[0] == ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 % 10 < 5:
                                            if not (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10:
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 0 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                            else:
                                                require 10 * 10^18 * (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 == 10 * 10^18
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 10 * 10^18 * (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 10 * 10^18 * (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (10 * 10^18 * (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                                        else:
                                            if not ((0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10:
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 0 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                            else:
                                                require 10 * 10^18 * ((0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ((0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 == 10 * 10^18
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 10 * 10^18 * ((0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 10 * 10^18 * ((0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (10 * 10^18 * ((0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            call feePoolAddress.amountReceivedFromExchange(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ((0 / ext_call.return_data[0]) + 10 / 10)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= (0 / ext_call.return_data[0]) + 10 / 10
                            require ext_code.size(synths[Mask(32, 224, arg3)])
                            call synths[Mask(32, 224, arg3)].issue(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg4), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ((0 / ext_call.return_data[0]) + 10 / 10) - ext_call.return_data[0] > 0:
                                require ext_code.size(exchangeRatesAddress)
                                call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                                     gas gas_remaining wei
                                    args Mask(32, 224, arg3)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                                require ext_code.size(exchangeRatesAddress)
                                call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                                     gas gas_remaining wei
                                    args 0x5844520000000000000000000000000000000000000000000000000000000000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                                if 0x5844520000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg3):
                                    require ext_code.size(feePoolAddress)
                                    call feePoolAddress.FEE_ADDRESS() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(stor45A9)
                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), ((0 / ext_call.return_data[0]) + 10 / 10) - ext_call.return_data[0]
                                else:
                                    require ext_code.size(exchangeRatesAddress)
                                    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                                         gas gas_remaining wei
                                        args 0x5844520000000000000000000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(exchangeRatesAddress)
                                    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                                         gas gas_remaining wei
                                        args Mask(32, 224, arg3)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ((0 / ext_call.return_data[0]) + 10 / 10) - ext_call.return_data[0]:
                                        require ext_call.return_data[0] > 0
                                        require ext_call.return_data[0]
                                        require ext_code.size(feePoolAddress)
                                        call feePoolAddress.FEE_ADDRESS() with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor45A9)
                                        if 0 / ext_call.return_data[0] % 10 < 5:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                        else:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                    else:
                                        require ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ((0 / ext_call.return_data[0]) + 10 / 10) - ext_call.return_data[0] == ext_call.return_data[0]
                                        if ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 % 10 < 5:
                                            if not ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10:
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 0 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                            else:
                                                require 10 * 10^18 * ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 == 10 * 10^18
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 10 * 10^18 * ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 10 * 10^18 * ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (10 * 10^18 * ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                                        else:
                                            if not (((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10:
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 0 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                            else:
                                                require 10 * 10^18 * (((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / (((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 == 10 * 10^18
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 10 * 10^18 * (((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 10 * 10^18 * (((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (10 * 10^18 * (((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require 10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] * arg2 / 10^17 / 10 == 10 * 10^18
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        require ext_code.size(feePoolAddress)
                        if 10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                            call feePoolAddress.amountReceivedFromExchange(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] / 10)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] / 10
                            require ext_code.size(synths[Mask(32, 224, arg3)])
                            call synths[Mask(32, 224, arg3)].issue(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg4), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] / 10) - ext_call.return_data[0] > 0:
                                require ext_code.size(exchangeRatesAddress)
                                call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                                     gas gas_remaining wei
                                    args Mask(32, 224, arg3)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                                require ext_code.size(exchangeRatesAddress)
                                call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                                     gas gas_remaining wei
                                    args 0x5844520000000000000000000000000000000000000000000000000000000000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                                if 0x5844520000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg3):
                                    require ext_code.size(feePoolAddress)
                                    call feePoolAddress.FEE_ADDRESS() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(stor45A9)
                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), (10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] / 10) - ext_call.return_data[0]
                                else:
                                    require ext_code.size(exchangeRatesAddress)
                                    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                                         gas gas_remaining wei
                                        args 0x5844520000000000000000000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(exchangeRatesAddress)
                                    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                                         gas gas_remaining wei
                                        args Mask(32, 224, arg3)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not (10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] / 10) - ext_call.return_data[0]:
                                        require ext_call.return_data[0] > 0
                                        require ext_call.return_data[0]
                                        require ext_code.size(feePoolAddress)
                                        call feePoolAddress.FEE_ADDRESS() with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor45A9)
                                        if 0 / ext_call.return_data[0] % 10 < 5:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                        else:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                    else:
                                        require (10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / (10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] / 10) - ext_call.return_data[0] == ext_call.return_data[0]
                                        if (10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 % 10 < 5:
                                            if not (10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10:
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 0 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                            else:
                                                require 10 * 10^18 * (10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / (10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 == 10 * 10^18
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 10 * 10^18 * (10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 10 * 10^18 * (10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (10 * 10^18 * (10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                                        else:
                                            if not ((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10:
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 0 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                            else:
                                                require 10 * 10^18 * ((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 == 10 * 10^18
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 10 * 10^18 * ((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 10 * 10^18 * ((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (10 * 10^18 * ((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            call feePoolAddress.amountReceivedFromExchange(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= (10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                            require ext_code.size(synths[Mask(32, 224, arg3)])
                            call synths[Mask(32, 224, arg3)].issue(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg4), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) - ext_call.return_data[0] > 0:
                                require ext_code.size(exchangeRatesAddress)
                                call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                                     gas gas_remaining wei
                                    args Mask(32, 224, arg3)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                                require ext_code.size(exchangeRatesAddress)
                                call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                                     gas gas_remaining wei
                                    args 0x5844520000000000000000000000000000000000000000000000000000000000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                                if 0x5844520000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg3):
                                    require ext_code.size(feePoolAddress)
                                    call feePoolAddress.FEE_ADDRESS() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(stor45A9)
                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), ((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) - ext_call.return_data[0]
                                else:
                                    require ext_code.size(exchangeRatesAddress)
                                    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                                         gas gas_remaining wei
                                        args 0x5844520000000000000000000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(exchangeRatesAddress)
                                    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                                         gas gas_remaining wei
                                        args Mask(32, 224, arg3)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) - ext_call.return_data[0]:
                                        require ext_call.return_data[0] > 0
                                        require ext_call.return_data[0]
                                        require ext_code.size(feePoolAddress)
                                        call feePoolAddress.FEE_ADDRESS() with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor45A9)
                                        if 0 / ext_call.return_data[0] % 10 < 5:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                        else:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                    else:
                                        require ((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10) - ext_call.return_data[0] == ext_call.return_data[0]
                                        if ((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 % 10 < 5:
                                            if not ((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10:
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 0 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                            else:
                                                require 10 * 10^18 * ((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 == 10 * 10^18
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 10 * 10^18 * ((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 10 * 10^18 * ((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (10 * 10^18 * ((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                                        else:
                                            if not (((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10:
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 0 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                            else:
                                                require 10 * 10^18 * (((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / (((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 == 10 * 10^18
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 10 * 10^18 * (((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 10 * 10^18 * (((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (10 * 10^18 * (((10 * 10^18 * ext_call.return_data[0] * arg2 / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10:
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        require ext_code.size(feePoolAddress)
                        if 0 / ext_call.return_data[0] % 10 < 5:
                            call feePoolAddress.amountReceivedFromExchange(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (0 / ext_call.return_data[0] / 10)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 0 / ext_call.return_data[0] / 10
                            require ext_code.size(synths[Mask(32, 224, arg3)])
                            call synths[Mask(32, 224, arg3)].issue(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg4), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (0 / ext_call.return_data[0] / 10) - ext_call.return_data[0] > 0:
                                require ext_code.size(exchangeRatesAddress)
                                call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                                     gas gas_remaining wei
                                    args Mask(32, 224, arg3)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                                require ext_code.size(exchangeRatesAddress)
                                call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                                     gas gas_remaining wei
                                    args 0x5844520000000000000000000000000000000000000000000000000000000000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                                if 0x5844520000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg3):
                                    require ext_code.size(feePoolAddress)
                                    call feePoolAddress.FEE_ADDRESS() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(stor45A9)
                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), (0 / ext_call.return_data[0] / 10) - ext_call.return_data[0]
                                else:
                                    require ext_code.size(exchangeRatesAddress)
                                    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                                         gas gas_remaining wei
                                        args 0x5844520000000000000000000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(exchangeRatesAddress)
                                    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                                         gas gas_remaining wei
                                        args Mask(32, 224, arg3)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not (0 / ext_call.return_data[0] / 10) - ext_call.return_data[0]:
                                        require ext_call.return_data[0] > 0
                                        require ext_call.return_data[0]
                                        require ext_code.size(feePoolAddress)
                                        call feePoolAddress.FEE_ADDRESS() with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor45A9)
                                        if 0 / ext_call.return_data[0] % 10 < 5:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                        else:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                    else:
                                        require (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / (0 / ext_call.return_data[0] / 10) - ext_call.return_data[0] == ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 % 10 < 5:
                                            if not (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10:
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 0 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                            else:
                                                require 10 * 10^18 * (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 == 10 * 10^18
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 10 * 10^18 * (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 10 * 10^18 * (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (10 * 10^18 * (0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                                        else:
                                            if not ((0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10:
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 0 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                            else:
                                                require 10 * 10^18 * ((0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ((0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 == 10 * 10^18
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 10 * 10^18 * ((0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 10 * 10^18 * ((0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (10 * 10^18 * ((0 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            call feePoolAddress.amountReceivedFromExchange(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ((0 / ext_call.return_data[0]) + 10 / 10)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= (0 / ext_call.return_data[0]) + 10 / 10
                            require ext_code.size(synths[Mask(32, 224, arg3)])
                            call synths[Mask(32, 224, arg3)].issue(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg4), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ((0 / ext_call.return_data[0]) + 10 / 10) - ext_call.return_data[0] > 0:
                                require ext_code.size(exchangeRatesAddress)
                                call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                                     gas gas_remaining wei
                                    args Mask(32, 224, arg3)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                                require ext_code.size(exchangeRatesAddress)
                                call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                                     gas gas_remaining wei
                                    args 0x5844520000000000000000000000000000000000000000000000000000000000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                                if 0x5844520000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg3):
                                    require ext_code.size(feePoolAddress)
                                    call feePoolAddress.FEE_ADDRESS() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(stor45A9)
                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), ((0 / ext_call.return_data[0]) + 10 / 10) - ext_call.return_data[0]
                                else:
                                    require ext_code.size(exchangeRatesAddress)
                                    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                                         gas gas_remaining wei
                                        args 0x5844520000000000000000000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(exchangeRatesAddress)
                                    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                                         gas gas_remaining wei
                                        args Mask(32, 224, arg3)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ((0 / ext_call.return_data[0]) + 10 / 10) - ext_call.return_data[0]:
                                        require ext_call.return_data[0] > 0
                                        require ext_call.return_data[0]
                                        require ext_code.size(feePoolAddress)
                                        call feePoolAddress.FEE_ADDRESS() with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor45A9)
                                        if 0 / ext_call.return_data[0] % 10 < 5:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                        else:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                    else:
                                        require ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ((0 / ext_call.return_data[0]) + 10 / 10) - ext_call.return_data[0] == ext_call.return_data[0]
                                        if ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 % 10 < 5:
                                            if not ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10:
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 0 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                            else:
                                                require 10 * 10^18 * ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 == 10 * 10^18
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 10 * 10^18 * ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 10 * 10^18 * ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (10 * 10^18 * ((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                                        else:
                                            if not (((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10:
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 0 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                            else:
                                                require 10 * 10^18 * (((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / (((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 == 10 * 10^18
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 10 * 10^18 * (((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 10 * 10^18 * (((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (10 * 10^18 * (((0 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require 10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 == 10 * 10^18
                        require ext_call.return_data[0] > 0
                        require ext_call.return_data[0]
                        require ext_code.size(feePoolAddress)
                        if 10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                            call feePoolAddress.amountReceivedFromExchange(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= 10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                            require ext_code.size(synths[Mask(32, 224, arg3)])
                            call synths[Mask(32, 224, arg3)].issue(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg4), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) - ext_call.return_data[0] > 0:
                                require ext_code.size(exchangeRatesAddress)
                                call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                                     gas gas_remaining wei
                                    args Mask(32, 224, arg3)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                                require ext_code.size(exchangeRatesAddress)
                                call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                                     gas gas_remaining wei
                                    args 0x5844520000000000000000000000000000000000000000000000000000000000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                                if 0x5844520000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg3):
                                    require ext_code.size(feePoolAddress)
                                    call feePoolAddress.FEE_ADDRESS() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(stor45A9)
                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), (10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) - ext_call.return_data[0]
                                else:
                                    require ext_code.size(exchangeRatesAddress)
                                    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                                         gas gas_remaining wei
                                        args 0x5844520000000000000000000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(exchangeRatesAddress)
                                    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                                         gas gas_remaining wei
                                        args Mask(32, 224, arg3)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not (10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) - ext_call.return_data[0]:
                                        require ext_call.return_data[0] > 0
                                        require ext_call.return_data[0]
                                        require ext_code.size(feePoolAddress)
                                        call feePoolAddress.FEE_ADDRESS() with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor45A9)
                                        if 0 / ext_call.return_data[0] % 10 < 5:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                        else:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                    else:
                                        require (10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / (10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10) - ext_call.return_data[0] == ext_call.return_data[0]
                                        if (10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 % 10 < 5:
                                            if not (10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10:
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 0 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                            else:
                                                require 10 * 10^18 * (10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / (10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 == 10 * 10^18
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 10 * 10^18 * (10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 10 * 10^18 * (10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (10 * 10^18 * (10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                                        else:
                                            if not ((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10:
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 0 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                            else:
                                                require 10 * 10^18 * ((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 == 10 * 10^18
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 10 * 10^18 * ((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 10 * 10^18 * ((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (10 * 10^18 * ((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0] / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            call feePoolAddress.amountReceivedFromExchange(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= (10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
                            require ext_code.size(synths[Mask(32, 224, arg3)])
                            call synths[Mask(32, 224, arg3)].issue(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg4), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) - ext_call.return_data[0] > 0:
                                require ext_code.size(exchangeRatesAddress)
                                call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                                     gas gas_remaining wei
                                    args Mask(32, 224, arg3)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                                require ext_code.size(exchangeRatesAddress)
                                call exchangeRatesAddress.rateIsStale(bytes4 arg1) with:
                                     gas gas_remaining wei
                                    args 0x5844520000000000000000000000000000000000000000000000000000000000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rate stale or nonexistant currecy'
                                if 0x5844520000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg3):
                                    require ext_code.size(feePoolAddress)
                                    call feePoolAddress.FEE_ADDRESS() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(stor45A9)
                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(ext_call.return_data[0]), ((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) - ext_call.return_data[0]
                                else:
                                    require ext_code.size(exchangeRatesAddress)
                                    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                                         gas gas_remaining wei
                                        args 0x5844520000000000000000000000000000000000000000000000000000000000
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(exchangeRatesAddress)
                                    call exchangeRatesAddress.rateForCurrency(bytes4 arg1) with:
                                         gas gas_remaining wei
                                        args Mask(32, 224, arg3)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) - ext_call.return_data[0]:
                                        require ext_call.return_data[0] > 0
                                        require ext_call.return_data[0]
                                        require ext_code.size(feePoolAddress)
                                        call feePoolAddress.FEE_ADDRESS() with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(stor45A9)
                                        if 0 / ext_call.return_data[0] % 10 < 5:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                        else:
                                            call stor45A9.issue(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                    else:
                                        require ((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10) - ext_call.return_data[0] == ext_call.return_data[0]
                                        if ((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 % 10 < 5:
                                            if not ((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10:
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 0 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                            else:
                                                require 10 * 10^18 * ((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 == 10 * 10^18
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 10 * 10^18 * ((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 10 * 10^18 * ((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (10 * 10^18 * ((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17 / 10 / ext_call.return_data[0]) + 10 / 10
                                        else:
                                            if not (((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10:
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 0 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (0 / ext_call.return_data[0]) + 10 / 10
                                            else:
                                                require 10 * 10^18 * (((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / (((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 == 10 * 10^18
                                                require ext_call.return_data[0] > 0
                                                require ext_call.return_data[0]
                                                require ext_code.size(feePoolAddress)
                                                call feePoolAddress.FEE_ADDRESS() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(stor45A9)
                                                if 10 * 10^18 * (((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] % 10 < 5:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), 10 * 10^18 * (((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0] / 10
                                                else:
                                                    call stor45A9.issue(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(ext_call.return_data[0]), (10 * 10^18 * (((10 * 10^18 * (ext_call.return_data[0] * arg2 / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10^17) + 10 / 10 / ext_call.return_data[0]) + 10 / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(synths[Mask(32, 224, arg3)])
        call synths[Mask(32, 224, arg3)].triggerTokenFallbackIfNeeded(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(stor5), address(arg4), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(proxyAddress)
        call proxyAddress._emit(bytes arg1, uint256 arg2, bytes32 arg3, bytes32 arg4, bytes32 arg5, bytes32 arg6) with:
             gas gas_remaining wei
            args 192, 2, sha3('SynthExchange(address,bytes4,uin', 't256,bytes4,uint256,address)'), address(stor5), 0, 0, 160, Mask(32, 224, arg1), arg2, Mask(32, 224, arg3), ext_call.return_data[0], arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
