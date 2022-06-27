contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 10854]




// =====================  Runtime code  =====================


const getCurrentDay = (block.timestamp / 24 * 3600)

const getBridgeMode = Mask(32, 224, sha3(Mask(144, 112, 'native-to-erc-core') >> 112))

const getBridgeInterfacesVersion = 2, 2, 0


mapping of uint256 totalSpentPerDay;
mapping of address erc677token;
mapping of uint8 stor4;

function erc677token() {
    return erc677token['erc677token']
}

function relayedMessages(bytes32 arg1) {
    return bool(stor4['relayedMessages'][arg1])
}

function totalSpentPerDay(uint256 arg1) {
    return totalSpentPerDay['totalSpentPerDay'][arg1]
}

function isInitialized() {
    return bool(stor4['isInitialized'])
}

function requiredBlockConfirmations() {
    return totalSpentPerDay['requiredBlockConfirmations']
}

function executionDailyLimit() {
    return totalSpentPerDay['executionDailyLimit']
}

function totalExecutedPerDay(uint256 arg1) {
    return totalSpentPerDay['totalExecutedPerDay'][arg1]
}

function dailyLimit() {
    return totalSpentPerDay['dailyLimit']
}

function executionMaxPerTx() {
    return totalSpentPerDay['executionMaxPerTx']
}

function owner() {
    return erc677token['owner']
}

function validatorContract() {
    return erc677token['validatorContract']
}

function deployedAtBlock() {
    return totalSpentPerDay['deployedAtBlock']
}

function feeManagerContract() {
    return erc677token['feeManagerContract']
}

function minPerTx() {
    return totalSpentPerDay['minPerTx']
}

function maxPerTx() {
    return totalSpentPerDay['maxPerTx']
}

function gasPrice() {
    return totalSpentPerDay['gasPrice']
}

function _fallback() payable {
    revert
}

function setDailyLimit(uint256 arg1) {
    require msg.sender == erc677token['owner']
    totalSpentPerDay['dailyLimit'] = arg1
    emit DailyLimitChanged(arg1);
}

function setMaxPerTx(uint256 arg1) {
    require msg.sender == erc677token['owner']
    require arg1 < totalSpentPerDay['dailyLimit']
    totalSpentPerDay['maxPerTx'] = arg1
}

function setGasPrice(uint256 arg1) {
    require msg.sender == erc677token['owner']
    require arg1 > 0
    totalSpentPerDay['gasPrice'] = arg1
    emit GasPriceChanged(arg1);
}

function setExecutionDailyLimit(uint256 arg1) {
    require msg.sender == erc677token['owner']
    totalSpentPerDay['executionDailyLimit'] = arg1
    emit ExecutionDailyLimitChanged(arg1);
}

function setFeeManagerContract(address arg1) {
    require msg.sender == erc677token['owner']
    if arg1:
        require ext_code.size(arg1) > 0
    erc677token['feeManagerContract'] = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == erc677token['owner']
    require arg1
    emit OwnershipTransferred(erc677token['owner'], arg1);
    erc677token['owner'] = arg1
}

function setExecutionMaxPerTx(uint256 arg1) {
    require msg.sender == erc677token['owner']
    require arg1 < totalSpentPerDay['executionDailyLimit']
    totalSpentPerDay['executionMaxPerTx'] = arg1
}

function setMinPerTx(uint256 arg1) {
    require msg.sender == erc677token['owner']
    require arg1 < totalSpentPerDay['dailyLimit']
    require arg1 < totalSpentPerDay['maxPerTx']
    totalSpentPerDay['minPerTx'] = arg1
}

function upgradeabilityAdmin() {
    require ext_code.size(this.address)
    call this.address.proxyOwner() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function setRequiredBlockConfirmations(uint256 arg1) {
    require msg.sender == erc677token['owner']
    require arg1 > 0
    totalSpentPerDay['requiredBlockConfirmations'] = arg1
    emit RequiredBlockConfirmationChanged(arg1);
}

function requiredSignatures() {
    require ext_code.size(erc677token['validatorContract'])
    call erc677token['validatorContract'].0x8d068043 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function getFeeManagerMode() {
    codecall erc677token['feeManagerContract'] with:
       funct (Mask(32, 224, sha3('getFeeManagerMode()')) >> 224)
         gas gas_remaining wei
        args 0
    require callcode.return_code
    return (callcode.return_data[0 len 4] << 224)
}

function getHomeFee() {
    mem[192 len 0] = None
    if sha3(29395913217500773) == sha3(29395913217500773):
        mem[192] = sha3(mem[192 len 12])
    else:
        mem[192] = sha3(mem[192 len 15])
    codecall erc677token['feeManagerContract'].mem[192 len 4] with:
         gas gas_remaining wei
        args 0
    require callcode.return_code
    return callcode.return_data[0]
}

function claimTokensFromErc677(address arg1, address arg2) {
    require ext_code.size(this.address)
    call this.address.proxyOwner() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    require ext_code.size(erc677token['erc677token'])
    call erc677token['erc677token'].0x69ffa08a with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function withinExecutionLimit(uint256 arg1) {
    require arg1 + totalSpentPerDay['totalExecutedPerDay'][block.timestamp / 24 * 3600] >= totalSpentPerDay['totalExecutedPerDay'][block.timestamp / 24 * 3600]
    if totalSpentPerDay['executionDailyLimit'] < arg1 + totalSpentPerDay['totalExecutedPerDay'][block.timestamp / 24 * 3600]:
        return totalSpentPerDay['executionDailyLimit'] >= arg1 + totalSpentPerDay['totalExecutedPerDay'][block.timestamp / 24 * 3600]
    return arg1 <= totalSpentPerDay['executionMaxPerTx']
}

function setHomeFee(uint256 arg1) {
    require msg.sender == erc677token['owner']
    mem[192 len 0] = None
    if sha3(29395913217500773) == sha3(29395913217500773):
        mem[192] = Mask(32, 224, sha3(mem[192 len 13], Mask(48, 104, 'setHomeFee(uint256)') >> 104))
    else:
        mem[192] = Mask(32, 224, sha3(mem[192 len 10], Mask(96, 80, 'setForeignFee(uint256)') >> 80))
    delegate erc677token['feeManagerContract'].mem[192 len 4] with:
         gas gas_remaining - 25710 wei
        args arg1
    require delegate.return_code
}

function withinLimit(uint256 arg1) {
    require arg1 + totalSpentPerDay['totalSpentPerDay'][block.timestamp / 24 * 3600] >= totalSpentPerDay['totalSpentPerDay'][block.timestamp / 24 * 3600]
    if totalSpentPerDay['dailyLimit'] < arg1 + totalSpentPerDay['totalSpentPerDay'][block.timestamp / 24 * 3600]:
        return totalSpentPerDay['dailyLimit'] >= arg1 + totalSpentPerDay['totalSpentPerDay'][block.timestamp / 24 * 3600]
    if arg1 > totalSpentPerDay['maxPerTx']:
        return arg1 <= totalSpentPerDay['maxPerTx']
    return arg1 >= totalSpentPerDay['minPerTx']
}

function claimTokens(address arg1, address arg2) {
    require ext_code.size(this.address)
    call this.address.proxyOwner() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    require arg2
    if not arg1:
        call arg2 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg2), ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
}

function sub_5ad1d7f9(?) {
    require not stor4['isInitialized']
    require arg1
    require ext_code.size(arg1) > 0
    require arg5 > 0
    require arg4 > arg5
    require arg3 > arg4
    require arg6 > 0
    require arg9 < arg8
    require arg10
    erc677token['validatorContract'] = arg1
    require arg2
    require ext_code.size(arg2) > 0
    erc677token['erc677token'] = arg2
    totalSpentPerDay['dailyLimit'] = arg3
    totalSpentPerDay['deployedAtBlock'] = block.number
    totalSpentPerDay['maxPerTx'] = arg4
    totalSpentPerDay['minPerTx'] = arg5
    totalSpentPerDay['gasPrice'] = arg6
    totalSpentPerDay['requiredBlockConfirmations'] = arg7
    totalSpentPerDay['executionDailyLimit'] = arg8
    totalSpentPerDay['executionMaxPerTx'] = arg9
    emit OwnershipTransferred(erc677token['owner'], arg10);
    erc677token['owner'] = arg10
    stor4['isInitialized'] = 1
    return bool(stor4['isInitialized'])
}

function onTokenTransfer(address arg1, uint256 arg2, bytes arg3) {
    require msg.sender == erc677token['erc677token']
    require arg2 + totalSpentPerDay['totalSpentPerDay'][block.timestamp / 24 * 3600] >= totalSpentPerDay['totalSpentPerDay'][block.timestamp / 24 * 3600]
    require totalSpentPerDay['dailyLimit'] >= arg2 + totalSpentPerDay['totalSpentPerDay'][block.timestamp / 24 * 3600]
    require arg2 <= totalSpentPerDay['maxPerTx']
    require arg2 >= totalSpentPerDay['minPerTx']
    require arg2 + totalSpentPerDay['totalSpentPerDay'][block.timestamp / 24 * 3600] >= totalSpentPerDay['totalSpentPerDay'][block.timestamp / 24 * 3600]
    totalSpentPerDay['totalSpentPerDay'][block.timestamp / 24 * 3600] += arg2
    require ext_code.size(erc677token['erc677token'])
    call erc677token['erc677token'].0x42966c68 with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    emit UserRequestForAffirmation(address(arg1), arg2);
    return 1
}

function sub_3fe1506e(?) {
    require not stor4['isInitialized']
    require arg1
    require ext_code.size(arg1) > 0
    require arg5 > 0
    require arg4 > arg5
    require arg3 > arg4
    require arg6 > 0
    require arg9 < arg8
    require arg10
    erc677token['validatorContract'] = arg1
    require arg2
    require ext_code.size(arg2) > 0
    erc677token['erc677token'] = arg2
    totalSpentPerDay['dailyLimit'] = arg3
    totalSpentPerDay['deployedAtBlock'] = block.number
    totalSpentPerDay['maxPerTx'] = arg4
    totalSpentPerDay['minPerTx'] = arg5
    totalSpentPerDay['gasPrice'] = arg6
    totalSpentPerDay['requiredBlockConfirmations'] = arg7
    totalSpentPerDay['executionDailyLimit'] = arg8
    totalSpentPerDay['executionMaxPerTx'] = arg9
    emit OwnershipTransferred(erc677token['owner'], arg10);
    erc677token['owner'] = arg10
    require ext_code.size(arg11) > 0
    erc677token['feeManagerContract'] = arg11
    mem[192 len 0] = None
    if sha3(29395913217500773) == sha3(29395913217500773):
        mem[192] = Mask(32, 224, sha3(mem[192 len 13], Mask(48, 104, 'setHomeFee(uint256)') >> 104))
    else:
        mem[192] = Mask(32, 224, sha3(mem[192 len 10], Mask(96, 80, 'setForeignFee(uint256)') >> 80))
    delegate arg11.mem[192 len 4] with:
         gas gas_remaining - 25710 wei
        args arg12
    require delegate.return_code
    stor4['isInitialized'] = 1
    return bool(stor4['isInitialized'])
}

function executeSignatures(uint8[] arg1, bytes32[] arg2, bytes32[] arg3, bytes arg4) {
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[ceil32(arg4.length) + 128] = arg1.length
    mem[ceil32(arg4.length) + 160 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[ceil32(arg4.length) + (32 * arg1.length) + 160] = arg2.length
    mem[ceil32(arg4.length) + (32 * arg1.length) + 192 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + 192] = arg3.length
    mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + 224 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[32] = 2
    mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = 0
    require arg4.length == 104
    require ext_code.size(erc677token['validatorContract'])
    call erc677token['validatorContract'].0x8d068043 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require arg1.length >= ext_call.return_data[0]
    mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256] = 0
    mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 288] = 0
    mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 320] = 26
    mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 352] = 0x19457468657265756d205369676e6564204d6573736167653a0a000000000000
    mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 384] = 3
    mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 416] = '104'
    mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 448 len 0] = None
    mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 454 len 26] = 0x65756d205369676e6564204d6573736167653a0a000000000000
    mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 474 len 0] = None
    mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 503 len 3] = '104' % 16777216
    mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 474 len 29] = Mask(232, 0, 0, mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 480 len 23])
    mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 477 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32(arg4.length) + -(arg4.length % 32) + 509 len arg4.length % 32] = mem[floor32(arg4.length) + -(arg4.length % 32) + 160 len arg4.length % 32]
    _712 = sha3(mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 448 len 6], 25973, mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 474 len 3], call.data[arg4 + 36 len floor32(arg4.length)], mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32(arg4.length) + 477 len arg4.length % 32])
    if floor32(arg4.length) + 509 < 448:
        mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 448] = ext_call.return_data[0]
        mem[64] = ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * ext_call.return_data[0]) + 480
        s = 0
        idx = 0
        while idx < ext_call.return_data[0]:
            require idx < mem[ceil32(arg4.length) + 128]
            _934 = mem[(32 * idx) + ceil32(arg4.length) + 160]
            require idx < mem[ceil32(arg4.length) + (32 * arg1.length) + 160]
            _939 = mem[(32 * idx) + ceil32(arg4.length) + (32 * arg1.length) + 192]
            require idx < mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + 192]
            _943 = mem[(32 * idx) + ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + 224]
            _944 = mem[64]
            mem[64] = mem[64] + 32
            mem[_944 + 96] = mem[(32 * idx) + ceil32(arg4.length) + (32 * arg1.length) + 192]
            mem[_944 + 128] = _943
            signer = erecover(_712, _934 << 248, _939, _943) 
            mem[_944] = signer
            require erecover.result
            mem[_944 + 64] = 0
            mem[_944 + 36] = address(signer)
            require ext_code.size(erc677token['validatorContract'])
            call erc677token['validatorContract'].0xfacd743b with:
                 gas gas_remaining - 710 wei
                args address(signer)
            mem[_944 + 32] = ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            t = 0
            while t < mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 448]:
                require t < mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 448]
                require mem[(32 * t) + ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 492 len 20] != address(signer)
                t = t + 1
                continue 
            require idx < mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 448]
            mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * idx) + 480] = address(signer)
            t = signer
            idx = idx + 1
            continue 
        _933 = mem[64]
        mem[64] = mem[64] + ceil32(arg4.length) + 32
        mem[_933 + 32 len arg4.length] = arg4[all]
        require arg4.length == 104
        require mem[_933 + 52] + totalSpentPerDay['totalExecutedPerDay'][block.timestamp / 24 * 3600] >= totalSpentPerDay['totalExecutedPerDay'][block.timestamp / 24 * 3600]
        require totalSpentPerDay['executionDailyLimit'] >= mem[_933 + 52] + totalSpentPerDay['totalExecutedPerDay'][block.timestamp / 24 * 3600]
        require mem[_933 + 52] <= totalSpentPerDay['executionMaxPerTx']
        require mem[_933 + 116 len 20] == this.address
        require not stor4['relayedMessages'][mem[_933 + 84]]
        stor4['relayedMessages'][mem[_933 + 84]] = 1
        require mem[_933 + 52] + totalSpentPerDay['totalExecutedPerDay'][block.timestamp / 24 * 3600] >= totalSpentPerDay['totalExecutedPerDay'][block.timestamp / 24 * 3600]
        totalSpentPerDay['totalExecutedPerDay'][block.timestamp / 24 * 3600] += mem[_933 + 52]
        if not erc677token['feeManagerContract']:
            require ext_code.size(erc677token['erc677token'])
            call erc677token['erc677token'].0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(mem[_933 + 32 len 20]), mem[_933 + 52]
        else:
            codecall erc677token['feeManagerContract'] with:
               funct (Mask(32, 224, sha3('calculateFee(uint256,bool,bytes3', '2)')) >> 224)
                 gas gas_remaining wei
                args mem[_933 + 52], 0, sha3(29395913217500773)
            require callcode.return_code
            if not callcode.return_data[0]:
                require ext_code.size(erc677token['erc677token'])
                call erc677token['erc677token'].0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(mem[_933 + 32 len 20]), mem[_933 + 52]
            else:
                delegate erc677token['feeManagerContract'] with:
                   funct (Mask(32, 224, sha3('distributeFeeFromSignatures(uint', '256)')) >> 224)
                     gas gas_remaining - 25710 wei
                    args callcode.return_data[0]
                require delegate.return_code
                require callcode.return_data[0] <= mem[_933 + 52]
                require ext_code.size(erc677token['erc677token'])
                call erc677token['erc677token'].0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(mem[_933 + 32 len 20]), mem[_933 + 52] - callcode.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        emit RelayedMessage(address(mem[_933 + 32 len 20]), mem[_933 + 52], mem[_933 + 84]);
    else:
        mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32(arg4.length) + 509] = ext_call.return_data[0]
        mem[64] = ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32(arg4.length) + (32 * ext_call.return_data[0]) + 541
        s = 0
        idx = 0
        while idx < ext_call.return_data[0]:
            require idx < mem[ceil32(arg4.length) + 128]
            _937 = mem[(32 * idx) + ceil32(arg4.length) + 160]
            require idx < mem[ceil32(arg4.length) + (32 * arg1.length) + 160]
            _941 = mem[(32 * idx) + ceil32(arg4.length) + (32 * arg1.length) + 192]
            require idx < mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + 192]
            _948 = mem[(32 * idx) + ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + 224]
            _949 = mem[64]
            mem[64] = mem[64] + 32
            mem[_949 + 96] = mem[(32 * idx) + ceil32(arg4.length) + (32 * arg1.length) + 192]
            mem[_949 + 128] = _948
            signer = erecover(_712, _937 << 248, _941, _948) 
            mem[_949] = signer
            require erecover.result
            mem[_949 + 64] = 0
            mem[_949 + 36] = address(signer)
            require ext_code.size(erc677token['validatorContract'])
            call erc677token['validatorContract'].0xfacd743b with:
                 gas gas_remaining - 710 wei
                args address(signer)
            mem[_949 + 32] = ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            t = 0
            while t < mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32(arg4.length) + 509]:
                require t < mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32(arg4.length) + 509]
                require mem[(32 * t) + ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32(arg4.length) + 553 len 20] != address(signer)
                t = t + 1
                continue 
            require idx < mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32(arg4.length) + 509]
            mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32(arg4.length) + (32 * idx) + 541] = address(signer)
            t = signer
            idx = idx + 1
            continue 
        _936 = mem[64]
        mem[64] = mem[64] + ceil32(arg4.length) + 32
        mem[_936 + 32 len arg4.length] = arg4[all]
        require arg4.length == 104
        require mem[_936 + 52] + totalSpentPerDay['totalExecutedPerDay'][block.timestamp / 24 * 3600] >= totalSpentPerDay['totalExecutedPerDay'][block.timestamp / 24 * 3600]
        require totalSpentPerDay['executionDailyLimit'] >= mem[_936 + 52] + totalSpentPerDay['totalExecutedPerDay'][block.timestamp / 24 * 3600]
        require mem[_936 + 52] <= totalSpentPerDay['executionMaxPerTx']
        require mem[_936 + 116 len 20] == this.address
        require not stor4['relayedMessages'][mem[_936 + 84]]
        stor4['relayedMessages'][mem[_936 + 84]] = 1
        require mem[_936 + 52] + totalSpentPerDay['totalExecutedPerDay'][block.timestamp / 24 * 3600] >= totalSpentPerDay['totalExecutedPerDay'][block.timestamp / 24 * 3600]
        totalSpentPerDay['totalExecutedPerDay'][block.timestamp / 24 * 3600] += mem[_936 + 52]
        if not erc677token['feeManagerContract']:
            require ext_code.size(erc677token['erc677token'])
            call erc677token['erc677token'].0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(mem[_936 + 32 len 20]), mem[_936 + 52]
        else:
            codecall erc677token['feeManagerContract'] with:
               funct (Mask(32, 224, sha3('calculateFee(uint256,bool,bytes3', '2)')) >> 224)
                 gas gas_remaining wei
                args mem[_936 + 52], 0, sha3(29395913217500773)
            require callcode.return_code
            if not callcode.return_data[0]:
                require ext_code.size(erc677token['erc677token'])
                call erc677token['erc677token'].0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(mem[_936 + 32 len 20]), mem[_936 + 52]
            else:
                delegate erc677token['feeManagerContract'] with:
                   funct (Mask(32, 224, sha3('distributeFeeFromSignatures(uint', '256)')) >> 224)
                     gas gas_remaining - 25710 wei
                    args callcode.return_data[0]
                require delegate.return_code
                require callcode.return_data[0] <= mem[_936 + 52]
                require ext_code.size(erc677token['erc677token'])
                call erc677token['erc677token'].0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(mem[_936 + 32 len 20]), mem[_936 + 52] - callcode.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        emit RelayedMessage(address(mem[_936 + 32 len 20]), mem[_936 + 52], mem[_936 + 84]);
}



}
