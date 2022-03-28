contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 9483]




// =====================  Runtime code  =====================


address multiAssetAddress;
uint256 symbol;
array of uint256 name;
address stor3;
uint256 txGasPriceLimit;
uint256 refundGas;
uint256 transferCallGas;
uint256 transferWithReferenceCallGas;
uint256 transferFromCallGas;
uint256 transferFromWithReferenceCallGas;
uint256 transferToICAPCallGas;
uint256 transferToICAPWithReferenceCallGas;
uint256 transferFromToICAPCallGas;
uint256 transferFromToICAPWithReferenceCallGas;
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

function transferFromToICAPCallGas() {
    return transferFromToICAPCallGas
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

function transferFromCallGas() {
    return transferFromCallGas
}

function treasury() {
    return treasuryAddress
}

function forwardCallGas() {
    return forwardCallGas
}

function transferFromWithReferenceCallGas() {
    return transferFromWithReferenceCallGas
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

function transferFromToICAPWithReferenceCallGas() {
    return transferFromToICAPWithReferenceCallGas
}

function transferToICAPCallGas() {
    return transferToICAPCallGas
}

function transferCallGas() {
    return transferCallGas
}

function emitApprove(address arg1, address arg2, uint256 arg3) {
    if multiAssetAddress == msg.sender:
        emit Approve(arg3, arg1, arg2);
}

function emitTransfer(address arg1, address arg2, uint256 arg3) {
    if multiAssetAddress == msg.sender:
        emit Transfer(arg3, arg1, arg2);
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

function setForward(bytes4 arg1, address arg2) {
    if not stor3:
        return 0
    require ext_code.size(stor3)
    call stor3.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 50 wei
        args address(this.address), 0x61646d696e000000000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    allowedForwards[arg1] = arg2
    return 1
}

function setupAmbi2(address arg1) {
    if stor3:
        return 0
    require ext_code.size(arg1)
    call arg1.claimFor(address rg1, address rg2) with:
         gas gas_remaining - 50 wei
        args address(this.address), msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.isOwner(address rg1, address rg2) with:
             gas gas_remaining - 50 wei
            args address(this.address), msg.sender
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
    stor3 = arg1
    return 1
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
        call treasuryAddress with:
           funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
             gas gas_remaining - 25050 wei
            args tx.origin, (setCosignerCallGas * block.gasprice) + (refundGas * block.gasprice)
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
        call treasuryAddress with:
           funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
             gas gas_remaining - 25050 wei
            args tx.origin, (approveCallGas * block.gasprice) + (refundGas * block.gasprice)
    return 1
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

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if tx.origin != msg.sender:
        return 0
    require ext_code.size(multiAssetAddress)
    call multiAssetAddress.proxyTransferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
         gas gas_remaining - 50 wei
        args 0, 0, 0, arg3, symbol, 160, 0
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if block.gasprice <= txGasPriceLimit:
        call treasuryAddress with:
           funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
             gas gas_remaining - 25050 wei
            args tx.origin, (transferFromCallGas * block.gasprice) + (refundGas * block.gasprice)
    return 1
}

function transferFromToICAP(address arg1, bytes32 arg2, uint256 arg3) {
    if tx.origin != msg.sender:
        return 0
    require ext_code.size(multiAssetAddress)
    call multiAssetAddress.proxyTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4) with:
         gas gas_remaining - 50 wei
        args 0, 0, arg2, arg3, 128, 0
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if block.gasprice <= txGasPriceLimit:
        call treasuryAddress with:
           funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
             gas gas_remaining - 25050 wei
            args tx.origin, (transferFromToICAPCallGas * block.gasprice) + (refundGas * block.gasprice)
    return 1
}

function transferToICAP(bytes32 arg1, uint256 arg2) {
    require ext_code.size(multiAssetAddress)
    if msg.sender == tx.origin:
        call multiAssetAddress.proxyTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4) with:
             gas gas_remaining - 50 wei
            args 0, 0, arg1, arg2, 128, 0
    else:
        call multiAssetAddress.0xa48a663c with:
             gas gas_remaining - 50 wei
            args 0, uint32(msg.sender), arg1, arg2, 128, 0
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if block.gasprice <= txGasPriceLimit:
        call treasuryAddress with:
           funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
             gas gas_remaining - 25050 wei
            args tx.origin, (transferToICAPCallGas * block.gasprice) + (refundGas * block.gasprice)
    return 1
}

function updateRefundGas() {
    if stor3:
        require ext_code.size(stor3)
        call stor3.hasRole(address rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 50 wei
            args address(this.address), 0x7365747570000000000000000000000000000000000000000000000000000000, msg.sender
        require ext_call.success
        if ext_call.return_data[0]:
            if block.gasprice <= txGasPriceLimit:
                call treasuryAddress with:
                   funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                     gas gas_remaining - 25050 wei
                    args tx.origin, 5 * 10^15
                if ext_call.success:
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

function transfer(address arg1, uint256 arg2) {
    require ext_code.size(multiAssetAddress)
    if msg.sender == tx.origin:
        call multiAssetAddress.proxyTransferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
             gas gas_remaining - 50 wei
            args 0, 0, 0, arg2, symbol, 160, 0
    else:
        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
             gas gas_remaining - 50 wei
            args 0, 0, 0, arg2, symbol, 160, 0
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if block.gasprice <= txGasPriceLimit:
        call treasuryAddress with:
           funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
             gas gas_remaining - 25050 wei
            args tx.origin, (transferCallGas * block.gasprice) + (refundGas * block.gasprice)
    return 1
}

function setOperationsCallGas(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, uint256 arg11) {
    if not stor3:
        return 0
    require ext_code.size(stor3)
    call stor3.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 50 wei
        args address(this.address), 0x7365747570000000000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    transferCallGas = arg1
    transferFromCallGas = arg2
    transferToICAPCallGas = arg3
    transferFromToICAPCallGas = arg4
    transferWithReferenceCallGas = arg5
    transferFromWithReferenceCallGas = arg6
    transferToICAPWithReferenceCallGas = arg7
    transferFromToICAPWithReferenceCallGas = arg8
    approveCallGas = arg9
    forwardCallGas = arg10
    setCosignerCallGas = arg11
    return 1
}

function setupTreasury(address arg1, uint256 arg2) payable {
    if not stor3:
        return 0
    require ext_code.size(stor3)
    call stor3.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 50 wei
        args address(this.address), 0x61646d696e000000000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if not arg2:
        if not msg.value:
            return 0
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

function transferFromToICAPWithReference(address arg1, bytes32 arg2, uint256 arg3, string arg4) {
    mem[128 len arg4.length] = arg4[all]
    if tx.origin != msg.sender:
        return 0
    mem[ceil32(arg4.length) + 128] = 0xea98e54000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg4.length) + 132] = arg1
    mem[ceil32(arg4.length) + 164] = arg2
    mem[ceil32(arg4.length) + 196] = arg3
    mem[ceil32(arg4.length) + 228] = 128
    mem[ceil32(arg4.length) + 260] = arg4.length
    if not arg4.length:
        if not arg4.length % 32:
            require ext_code.size(multiAssetAddress)
            call multiAssetAddress.proxyTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4) with:
                 gas gas_remaining - 50 wei
                args 0, 0, arg2, arg3, 128, arg4.length, mem[ceil32(arg4.length) + 292 len arg4.length]
        else:
            mem[floor32(arg4.length) + ceil32(arg4.length) + 292] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 324 len arg4.length % 32]
            require ext_code.size(multiAssetAddress)
            call multiAssetAddress.proxyTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4) with:
                 gas gas_remaining - 50 wei
                args address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 292 len floor32(arg4.length) + 32])
    else:
        mem[ceil32(arg4.length) + 292] = mem[128]
        mem[ceil32(arg4.length) + 324 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
        require ext_code.size(multiAssetAddress)
        call multiAssetAddress.proxyTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4) with:
             gas gas_remaining - 50 wei
            args address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 292 len arg4.length])
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if block.gasprice <= txGasPriceLimit:
        call treasuryAddress with:
           funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
             gas gas_remaining - 25050 wei
            args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
    return 1
}

function transferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4) {
    mem[128 len arg4.length] = arg4[all]
    if tx.origin != msg.sender:
        return 0
    mem[ceil32(arg4.length) + 128] = 0xf0cbe05900000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg4.length) + 132] = arg1
    mem[ceil32(arg4.length) + 164] = arg2
    mem[ceil32(arg4.length) + 196] = arg3
    mem[ceil32(arg4.length) + 228] = symbol
    mem[ceil32(arg4.length) + 260] = 160
    mem[ceil32(arg4.length) + 292] = arg4.length
    if not arg4.length:
        if not arg4.length % 32:
            require ext_code.size(multiAssetAddress)
            call multiAssetAddress.proxyTransferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                 gas gas_remaining - 50 wei
                args 0, 0, 0, arg3, symbol, 160, arg4.length, mem[ceil32(arg4.length) + 324 len arg4.length]
        else:
            mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
            require ext_code.size(multiAssetAddress)
            call multiAssetAddress.proxyTransferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                 gas gas_remaining - 50 wei
                args address(arg1), address(arg2), arg3, symbol, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len floor32(arg4.length) + 32])
    else:
        mem[ceil32(arg4.length) + 324] = mem[128]
        mem[ceil32(arg4.length) + 356 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
        require ext_code.size(multiAssetAddress)
        call multiAssetAddress.proxyTransferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
             gas gas_remaining - 50 wei
            args address(arg1), address(arg2), arg3, symbol, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len arg4.length])
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if block.gasprice <= txGasPriceLimit:
        call treasuryAddress with:
           funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
             gas gas_remaining - 25050 wei
            args tx.origin, (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
    return 1
}

function _fallback() payable {
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    if allowedForwards[uint32(call.func_hash)]:
        if not calldata.size:
            if not calldata.size % 32:
                call allowedForwards[uint32(call.func_hash)].mem[ceil32(calldata.size) + 128 len 4] with:
                   value msg.value wei
                     gas gas_remaining - 34050 wei
                    args mem[ceil32(calldata.size) + 132 len calldata.size - 4]
            else:
                mem[floor32(calldata.size) + ceil32(calldata.size) + 128] = mem[floor32(calldata.size) + ceil32(calldata.size) + -(calldata.size % 32) + 160 len calldata.size % 32]
                call allowedForwards[uint32(call.func_hash)].mem[ceil32(calldata.size) + 128 len 4] with:
                   value msg.value wei
                     gas gas_remaining - 34050 wei
                    args mem[ceil32(calldata.size) + 132 len floor32(calldata.size) + 28]
        else:
            mem[ceil32(calldata.size) + 128] = mem[128]
            mem[ceil32(calldata.size) + 160 len floor32(calldata.size - 1)] = mem[160 len floor32(calldata.size - 1)]
            if not calldata.size % 32:
                call allowedForwards[uint32(call.func_hash)] with:
                   funct call.data[0 len 4]
                   value msg.value wei
                     gas gas_remaining - 34050 wei
                    args mem[ceil32(calldata.size) + 132 len calldata.size - 4]
            else:
                mem[floor32(calldata.size) + ceil32(calldata.size) + 128] = mem[floor32(calldata.size) + ceil32(calldata.size) + -(calldata.size % 32) + 160 len calldata.size % 32]
                call allowedForwards[uint32(call.func_hash)] with:
                   funct call.data[0 len 4]
                   value msg.value wei
                     gas gas_remaining - 34050 wei
                    args mem[132 len 28], mem[ceil32(calldata.size) + 160 len floor32(calldata.size)]
        if ext_call.success:
            if block.gasprice <= txGasPriceLimit:
                call treasuryAddress with:
                   funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                     gas gas_remaining - 25050 wei
                    args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
            return 1
    if not msg.value:
        return 0
    call msg.sender with:
       value msg.value wei
         gas gas_remaining - 34050 wei
    require ext_call.success
    return 0
}

function transferToICAPWithReference(bytes32 arg1, uint256 arg2, string arg3) {
    mem[128 len arg3.length] = arg3[all]
    if msg.sender == tx.origin:
        mem[ceil32(arg3.length) + 128] = 0xea98e54000000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg3.length) + 132] = tx.origin
        mem[ceil32(arg3.length) + 164] = arg1
        mem[ceil32(arg3.length) + 196] = arg2
        mem[ceil32(arg3.length) + 228] = 128
        mem[ceil32(arg3.length) + 260] = arg3.length
        if not arg3.length:
            if not arg3.length % 32:
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.proxyTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4) with:
                     gas gas_remaining - 50 wei
                    args 0, 0, arg1, arg2, 128, arg3.length, mem[ceil32(arg3.length) + 292 len arg3.length]
            else:
                mem[floor32(arg3.length) + ceil32(arg3.length) + 292] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 324 len arg3.length % 32]
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.proxyTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4) with:
                     gas gas_remaining - 50 wei
                    args tx.origin, arg1, arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 292 len floor32(arg3.length) + 32])
        else:
            mem[ceil32(arg3.length) + 292] = mem[128]
            mem[ceil32(arg3.length) + 324 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
            require ext_code.size(multiAssetAddress)
            call multiAssetAddress.proxyTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4) with:
                 gas gas_remaining - 50 wei
                args tx.origin, arg1, arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 292 len arg3.length])
    else:
        mem[ceil32(arg3.length) + 128] = 0xa48a663c00000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg3.length) + 132] = msg.sender
        mem[ceil32(arg3.length) + 164] = arg1
        mem[ceil32(arg3.length) + 196] = arg2
        mem[ceil32(arg3.length) + 228] = 128
        mem[ceil32(arg3.length) + 260] = arg3.length
        if not arg3.length:
            if not arg3.length % 32:
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.0xa48a663c with:
                     gas gas_remaining - 50 wei
                    args 0, uint32(msg.sender), arg1, arg2, 128, arg3.length, mem[ceil32(arg3.length) + 292 len arg3.length]
            else:
                mem[floor32(arg3.length) + ceil32(arg3.length) + 292] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 324 len arg3.length % 32]
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.0xa48a663c with:
                     gas gas_remaining - 50 wei
                    args msg.sender, arg1, arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 292 len floor32(arg3.length) + 32])
        else:
            mem[ceil32(arg3.length) + 292] = mem[128]
            mem[ceil32(arg3.length) + 324 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
            require ext_code.size(multiAssetAddress)
            call multiAssetAddress.0xa48a663c with:
                 gas gas_remaining - 50 wei
                args msg.sender, arg1, arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 292 len arg3.length])
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if block.gasprice <= txGasPriceLimit:
        call treasuryAddress with:
           funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
             gas gas_remaining - 25050 wei
            args tx.origin, (transferToICAPWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
    return 1
}

function transferWithReference(address arg1, uint256 arg2, string arg3) {
    mem[128 len arg3.length] = arg3[all]
    if msg.sender == tx.origin:
        mem[ceil32(arg3.length) + 128] = 0xf0cbe05900000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg3.length) + 132] = tx.origin
        mem[ceil32(arg3.length) + 164] = arg1
        mem[ceil32(arg3.length) + 196] = arg2
        mem[ceil32(arg3.length) + 228] = symbol
        mem[ceil32(arg3.length) + 260] = 160
        mem[ceil32(arg3.length) + 292] = arg3.length
        if not arg3.length:
            if not arg3.length % 32:
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.proxyTransferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args 0, 0, 0, arg2, symbol, 160, arg3.length, mem[ceil32(arg3.length) + 324 len arg3.length]
            else:
                mem[floor32(arg3.length) + ceil32(arg3.length) + 324] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 356 len arg3.length % 32]
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.proxyTransferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args tx.origin, address(arg1), arg2, symbol, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len floor32(arg3.length) + 32])
        else:
            mem[ceil32(arg3.length) + 324] = mem[128]
            mem[ceil32(arg3.length) + 356 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
            require ext_code.size(multiAssetAddress)
            call multiAssetAddress.proxyTransferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                 gas gas_remaining - 50 wei
                args tx.origin, address(arg1), arg2, symbol, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len arg3.length])
    else:
        mem[ceil32(arg3.length) + 128] = 0x31c6c4cf00000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg3.length) + 132] = msg.sender
        mem[ceil32(arg3.length) + 164] = arg1
        mem[ceil32(arg3.length) + 196] = arg2
        mem[ceil32(arg3.length) + 228] = symbol
        mem[ceil32(arg3.length) + 260] = 160
        mem[ceil32(arg3.length) + 292] = arg3.length
        if not arg3.length:
            if not arg3.length % 32:
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args 0, 0, 0, arg2, symbol, 160, arg3.length, mem[ceil32(arg3.length) + 324 len arg3.length]
            else:
                mem[floor32(arg3.length) + ceil32(arg3.length) + 324] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 356 len arg3.length % 32]
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args msg.sender, address(arg1), arg2, symbol, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len floor32(arg3.length) + 32])
        else:
            mem[ceil32(arg3.length) + 324] = mem[128]
            mem[ceil32(arg3.length) + 356 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
            require ext_code.size(multiAssetAddress)
            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                 gas gas_remaining - 50 wei
                args msg.sender, address(arg1), arg2, symbol, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len arg3.length])
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if block.gasprice <= txGasPriceLimit:
        call treasuryAddress with:
           funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
             gas gas_remaining - 25050 wei
            args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
    return 1
}



}
