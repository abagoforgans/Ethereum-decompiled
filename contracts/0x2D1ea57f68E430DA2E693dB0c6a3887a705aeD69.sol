contract main {


// =======================  Init code  ======================


address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;

function _fallback() payable {
    stor4 = 21 * 10^9
    stor5 = 40000
    stor6 = 21000
    stor7 = 21000
    stor8 = 21000
    stor9 = 21000
    stor10 = 21000
    stor11 = 21000
    stor12 = 21000
    stor3 = msg.sender
    return code.data[104 len 6366]
}



// =====================  Runtime code  =====================


address multiAssetAddress;
uint256 symbol;
array of uint256 name;
address contractOwner;
uint256 txGasPriceLimit;
uint256 refundGas;
uint256 transferCallGas;
uint256 transferWithReferenceCallGas;
uint256 transferToICAPCallGas;
uint256 transferToICAPWithReferenceCallGas;
uint256 approveCallGas;
uint256 forwardCallGas;
uint256 setCosignerCallGas;
address treasuryAddress;
mapping of address allowedForwards;

function multiAsset() {
    return multiAssetAddress
}

function name() {
    return uint256(name[0 len name.length])
}

function setCosignerCallGas() {
    return setCosignerCallGas
}

function txGasPriceLimit() {
    return txGasPriceLimit
}

function approveCallGas() {
    return approveCallGas
}

function refundGas() {
    return refundGas
}

function transferToICAPWithReferenceCallGas() {
    return transferToICAPWithReferenceCallGas
}

function treasury() {
    return treasuryAddress
}

function forwardCallGas() {
    return forwardCallGas
}

function allowedForwards(bytes32 arg1) {
    return allowedForwards[arg1]
}

function symbol() {
    return symbol
}

function transferWithReferenceCallGas() {
    return transferWithReferenceCallGas
}

function transferToICAPCallGas() {
    return transferToICAPCallGas
}

function transferCallGas() {
    return transferCallGas
}

function contractOwner() {
    return contractOwner
}

function emitApprove(address arg1, address arg2, uint256 arg3) {
    if multiAssetAddress == msg.sender:
        emit Approve(arg3, arg1, arg2);
}

function emitTransfer(address arg1, address arg2, uint256 arg3) {
    if multiAssetAddress == msg.sender:
        emit Transfer(arg3, arg1, arg2);
}

function setForward(bytes4 arg1, address arg2) {
    if contractOwner != msg.sender:
        return 0
    allowedForwards[arg1] = arg2
    return 1
}

function setName(string arg1) {
    if Mask(255, 1, name.length and (256 * not bool(name.length)) - 1):
        return 0
    uint256(name[]) = Array(len=arg1.length, data=arg1[all])
    return 1
}

function totalSupply() {
    require ext_code.size(multiAssetAddress)
    call multiAssetAddress.totalSupply(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args symbol
    require ext_call.success
    return ext_call.return_data[0]
}

function decimals() {
    require ext_code.size(multiAssetAddress)
    call multiAssetAddress.baseUnit(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args symbol
    require ext_call.success
    return ext_call.return_data[31 len 1]
}

function balanceOf(address arg1) {
    require ext_code.size(multiAssetAddress)
    call multiAssetAddress.balanceOf(address rg1, bytes32 rg2) with:
         gas gas_remaining - 50 wei
        args address(arg1), symbol
    require ext_call.success
    return ext_call.return_data[0]
}

function allowance(address arg1, address arg2) {
    require ext_code.size(multiAssetAddress)
    call multiAssetAddress.allowance(address rg1, address rg2, bytes32 rg3) with:
         gas gas_remaining - 50 wei
        args address(arg1), address(arg2), symbol
    require ext_call.success
    return ext_call.return_data[0]
}

function init(address arg1, bytes32 arg2) {
    if multiAssetAddress:
        return 0
    require ext_code.size(arg1)
    call arg1.isCreated(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args arg2
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    multiAssetAddress = arg1
    symbol = arg2
    return 1
}

function setOperationsCallGas(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7) {
    if contractOwner != msg.sender:
        return 0
    transferCallGas = arg1
    transferToICAPCallGas = arg2
    transferWithReferenceCallGas = arg3
    transferToICAPWithReferenceCallGas = arg4
    approveCallGas = arg5
    forwardCallGas = arg6
    setCosignerCallGas = arg7
    return 1
}

function setupTreasury(address arg1, uint256 arg2) payable {
    if contractOwner != msg.sender:
        return 0
    if not arg2:
        call msg.sender with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        if ext_call.success:
            return 0
    else:
        treasuryAddress = arg1
        txGasPriceLimit = arg2
        if msg.value <= 0:
            return 1
        call arg1 with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        if ext_call.success:
            return 1
    ('iszero', 'ext_call.success')
    revert 
}

function updateRefundGas() {
    if contractOwner == msg.sender:
        if block.gasprice <= txGasPriceLimit:
            if treasuryAddress:
                require ext_code.size(treasuryAddress)
                call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                     gas gas_remaining - 50 wei
                    args tx.origin, 1
                require ext_call.success
                if ext_call.return_data[0]:
                    refundGas = 0
                    return 0
                else:
                    return 0
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function sendToOwner() {
    require ext_code.size(multiAssetAddress)
    call multiAssetAddress.owner(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args symbol
    require ext_call.success
    require ext_code.size(multiAssetAddress)
    call multiAssetAddress.balanceOf(address rg1, bytes32 rg2) with:
         gas gas_remaining - 50 wei
        args address(ext_call.return_data[0]), symbol
    require ext_call.success
    require ext_code.size(multiAssetAddress)
    call multiAssetAddress.transfer(address rg1, uint256 rg2, bytes32 rg3) with:
         gas gas_remaining - 50 wei
        args address(ext_call.return_data[0]), ext_call.return_data[0], symbol
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function setCosignerAddress(address arg1) {
    if tx.origin != msg.sender:
        return 0
    require ext_code.size(multiAssetAddress)
    call multiAssetAddress.proxySetCosignerAddress(address rg1, bytes32 rg2) with:
         gas gas_remaining - 50 wei
        args address(arg1), symbol
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if block.gasprice <= txGasPriceLimit:
        if treasuryAddress:
            require ext_code.size(treasuryAddress)
            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                 gas gas_remaining - 50 wei
                args tx.origin, (setCosignerCallGas * block.gasprice) + (refundGas * block.gasprice)
            require ext_call.success
    return 1
}

function approve(address arg1, uint256 arg2) {
    if tx.origin != msg.sender:
        return 0
    require ext_code.size(multiAssetAddress)
    call multiAssetAddress.proxyApprove(address rg1, uint256 rg2, bytes32 rg3) with:
         gas gas_remaining - 50 wei
        args address(arg1), arg2, symbol
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if block.gasprice <= txGasPriceLimit:
        if treasuryAddress:
            require ext_code.size(treasuryAddress)
            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                 gas gas_remaining - 50 wei
                args tx.origin, (approveCallGas * block.gasprice) + (refundGas * block.gasprice)
            require ext_call.success
    return 1
}

function checkSetCosignerAddress(address arg1) {
    if tx.origin != msg.sender:
        return 0
    require ext_code.size(multiAssetAddress)
    call multiAssetAddress.proxySetCosignerAddress(address rg1, bytes32 rg2) with:
         gas gas_remaining - 50 wei
        args address(arg1), symbol
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if block.gasprice > txGasPriceLimit:
        return 1, 0
    if not treasuryAddress:
        return 1, bool(treasuryAddress)
    require ext_code.size(treasuryAddress)
    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args tx.origin, (setCosignerCallGas * block.gasprice) + (refundGas * block.gasprice)
    require ext_call.success
    return 1, bool(ext_call.return_data[0])
}

function checkApprove(address arg1, uint256 arg2) {
    if tx.origin != msg.sender:
        return 0
    require ext_code.size(multiAssetAddress)
    call multiAssetAddress.proxyApprove(address rg1, uint256 rg2, bytes32 rg3) with:
         gas gas_remaining - 50 wei
        args address(arg1), arg2, symbol
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if block.gasprice > txGasPriceLimit:
        return 1, 0
    if not treasuryAddress:
        return 1, bool(treasuryAddress)
    require ext_code.size(treasuryAddress)
    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args tx.origin, (approveCallGas * block.gasprice) + (refundGas * block.gasprice)
    require ext_call.success
    return 1, bool(ext_call.return_data[0])
}

function transferToICAP(bytes32 arg1, uint256 arg2) {
    require ext_code.size(multiAssetAddress)
    if msg.sender == tx.origin:
        call multiAssetAddress.proxyTransferToICAPWithReference(bytes32 rg1, uint256 rg2, string rg3) with:
             gas gas_remaining - 50 wei
            args arg1, arg2, 96, 0
    else:
        call multiAssetAddress.transferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4) with:
             gas gas_remaining - 50 wei
            args 0, uint32(msg.sender), arg1, arg2, 128, 0, 0, None
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if block.gasprice <= txGasPriceLimit:
        if treasuryAddress:
            require ext_code.size(treasuryAddress)
            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                 gas gas_remaining - 50 wei
                args tx.origin, (transferToICAPCallGas * block.gasprice) + (refundGas * block.gasprice)
            require ext_call.success
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require ext_code.size(multiAssetAddress)
    if msg.sender == tx.origin:
        call multiAssetAddress.proxyTransferWithReference(address rg1, uint256 rg2, bytes32 rg3, string rg4) with:
             gas gas_remaining - 50 wei
            args 0, 0, arg2, symbol, 128, 0, 0, None
    else:
        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
             gas gas_remaining - 50 wei
            args 0, 0, 0, arg2, symbol, 160, 0, 0, None
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if block.gasprice <= txGasPriceLimit:
        if treasuryAddress:
            require ext_code.size(treasuryAddress)
            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                 gas gas_remaining - 50 wei
                args tx.origin, (transferCallGas * block.gasprice) + (refundGas * block.gasprice)
            require ext_call.success
    return 1
}

function checkTransferToICAP(bytes32 arg1, uint256 arg2) {
    require ext_code.size(multiAssetAddress)
    if msg.sender == tx.origin:
        call multiAssetAddress.proxyTransferToICAPWithReference(bytes32 rg1, uint256 rg2, string rg3) with:
             gas gas_remaining - 50 wei
            args arg1, arg2, 96, 0
    else:
        call multiAssetAddress.transferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4) with:
             gas gas_remaining - 50 wei
            args 0, uint32(msg.sender), arg1, arg2, 128, 0, 0, None
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if block.gasprice > txGasPriceLimit:
        return 1, 0
    if not treasuryAddress:
        return 1, bool(treasuryAddress)
    require ext_code.size(treasuryAddress)
    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args tx.origin, (transferToICAPCallGas * block.gasprice) + (refundGas * block.gasprice)
    require ext_call.success
    return 1, bool(ext_call.return_data[0])
}

function checkTransfer(address arg1, uint256 arg2) {
    require ext_code.size(multiAssetAddress)
    if msg.sender == tx.origin:
        call multiAssetAddress.proxyTransferWithReference(address rg1, uint256 rg2, bytes32 rg3, string rg4) with:
             gas gas_remaining - 50 wei
            args 0, 0, arg2, symbol, 128, 0, 0, None
    else:
        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
             gas gas_remaining - 50 wei
            args 0, 0, 0, arg2, symbol, 160, 0, 0, None
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if block.gasprice > txGasPriceLimit:
        return 1, 0
    if not treasuryAddress:
        return 1, bool(treasuryAddress)
    require ext_code.size(treasuryAddress)
    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args tx.origin, (transferCallGas * block.gasprice) + (refundGas * block.gasprice)
    require ext_call.success
    return 1, bool(ext_call.return_data[0])
}

function transferToICAPWithReference(bytes32 arg1, uint256 arg2, string arg3) {
    require ext_code.size(multiAssetAddress)
    if msg.sender == tx.origin:
        call multiAssetAddress.proxyTransferToICAPWithReference(bytes32 rg1, uint256 rg2, string rg3) with:
             gas gas_remaining - 50 wei
            args arg1, arg2, Array(len=arg3.length, data=arg3[all])
    else:
        call multiAssetAddress.transferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4) with:
             gas gas_remaining - 50 wei
            args msg.sender, arg1, arg2, Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if block.gasprice <= txGasPriceLimit:
        if treasuryAddress:
            require ext_code.size(treasuryAddress)
            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                 gas gas_remaining - 50 wei
                args tx.origin, (transferToICAPWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
            require ext_call.success
    return 1
}

function transferWithReference(address arg1, uint256 arg2, string arg3) {
    require ext_code.size(multiAssetAddress)
    if msg.sender == tx.origin:
        call multiAssetAddress.proxyTransferWithReference(address rg1, uint256 rg2, bytes32 rg3, string rg4) with:
             gas gas_remaining - 50 wei
            args address(arg1), arg2, symbol, Array(len=arg3.length, data=arg3[all])
    else:
        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
             gas gas_remaining - 50 wei
            args msg.sender, address(arg1), arg2, symbol, Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if block.gasprice <= txGasPriceLimit:
        if treasuryAddress:
            require ext_code.size(treasuryAddress)
            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                 gas gas_remaining - 50 wei
                args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
            require ext_call.success
    return 1
}

function checkTransferToICAPWithReference(bytes32 arg1, uint256 arg2, string arg3) {
    require ext_code.size(multiAssetAddress)
    if msg.sender == tx.origin:
        call multiAssetAddress.proxyTransferToICAPWithReference(bytes32 rg1, uint256 rg2, string rg3) with:
             gas gas_remaining - 50 wei
            args arg1, arg2, Array(len=arg3.length, data=arg3[all])
    else:
        call multiAssetAddress.transferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4) with:
             gas gas_remaining - 50 wei
            args msg.sender, arg1, arg2, Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if block.gasprice > txGasPriceLimit:
        return 1, 0
    if not treasuryAddress:
        return 1, bool(treasuryAddress)
    require ext_code.size(treasuryAddress)
    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args tx.origin, (transferToICAPWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
    require ext_call.success
    return 1, bool(ext_call.return_data[0])
}

function checkTransferWithReference(address arg1, uint256 arg2, string arg3) {
    require ext_code.size(multiAssetAddress)
    if msg.sender == tx.origin:
        call multiAssetAddress.proxyTransferWithReference(address rg1, uint256 rg2, bytes32 rg3, string rg4) with:
             gas gas_remaining - 50 wei
            args address(arg1), arg2, symbol, Array(len=arg3.length, data=arg3[all])
    else:
        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
             gas gas_remaining - 50 wei
            args msg.sender, address(arg1), arg2, symbol, Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if block.gasprice > txGasPriceLimit:
        return 1, 0
    if not treasuryAddress:
        return 1, bool(treasuryAddress)
    require ext_code.size(treasuryAddress)
    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
    require ext_call.success
    return 1, bool(ext_call.return_data[0])
}

function _fallback() payable {
    if not allowedForwards[uint32(call.func_hash)]:
        call msg.sender with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        require ext_call.success
    mem[ceil32(calldata.size) + 128 len calldata.size] = call.data[0 len calldata.size]
    if not calldata.size % 32:
        call allowedForwards[uint32(call.func_hash)] with:
           funct call.data[0 len 4]
           value msg.value wei
             gas gas_remaining - 34050 wei
            args call.data[4 len calldata.size - 4]
    else:
        mem[floor32(calldata.size) + ceil32(calldata.size) + 128] = mem[floor32(calldata.size) + ceil32(calldata.size) + -(calldata.size % 32) + 160 len calldata.size % 32]
        call allowedForwards[uint32(call.func_hash)] with:
           funct call.data[0 len 4]
           value msg.value wei
             gas gas_remaining - 34050 wei
            args call.data[4 len calldata.size - 4], mem[ceil32(calldata.size) + calldata.size + 128 len -(calldata.size % 32) + 32]
    if not ext_call.success:
        call msg.sender with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        revert 
    if block.gasprice <= txGasPriceLimit:
        if treasuryAddress:
            require ext_code.size(treasuryAddress)
            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                 gas gas_remaining - 50 wei
                args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
            require ext_call.success
}

function checkForward(bytes arg1) {
    mem[128 len arg1.length] = arg1[all]
    require 0 < arg1.length
    require 1 < arg1.length
    _5 = mem[129]
    require 2 < arg1.length
    _7 = mem[130]
    require 3 < arg1.length
    _9 = mem[131]
    mem[ceil32(arg1.length) + 128] = Mask(8, 248, mem[128])
    mem[ceil32(arg1.length) + 131] = Mask(8, 248, _9)
    _13 = sha3(sha3(mem[ceil32(arg1.length) + 128 len 1], Mask(8, 248, _5) >> 248, Mask(8, 248, _7) >> 248, Mask(8, 248, _9) >> 248), 14)
    if not allowedForwards[mem[ceil32(arg1.length) + 128 len 1]][Mask(8, 248, _5) >> 248][Mask(8, 248, _7) >> 248][Mask(8, 248, _9) >> 248]:
        call msg.sender with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        require ext_call.success
        return 0
    mem[ceil32(arg1.length) + 128 len arg1.length] = arg1[all]
    if not arg1.length % 32:
        call stor[_13] with:
           funct mem[ceil32(arg1.length) + 128 len 1], Mask(8, 248, _5) >> 248, Mask(8, 248, _7) >> 248, Mask(8, 248, _9) >> 248
           value msg.value wei
             gas gas_remaining - 34050 wei
            args mem[ceil32(arg1.length) + 132 len arg1.length - 4]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 128] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        call stor[_13] with:
           funct mem[ceil32(arg1.length) + 128 len 1], Mask(8, 248, _5) >> 248, Mask(8, 248, _7) >> 248, Mask(8, 248, _9) >> 248
           value msg.value wei
             gas gas_remaining - 34050 wei
            args mem[ceil32(arg1.length) + 132 len floor32(arg1.length) + 28]
    if not ext_call.success:
        call msg.sender with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        revert 
    if block.gasprice > txGasPriceLimit:
        return 1, 0
    if not treasuryAddress:
        return 1, bool(treasuryAddress)
    require ext_code.size(treasuryAddress)
    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args tx.origin, (forwardCallGas * block.gasprice) + (50 * arg1.length * block.gasprice) + (refundGas * block.gasprice)
    require ext_call.success
    return 1, bool(ext_call.return_data[0])
}



}
