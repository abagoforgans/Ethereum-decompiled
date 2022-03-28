contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 13209]




// =====================  Runtime code  =====================


#
#  - transferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4)
#
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
uint256 absMinFee;
uint256 feePercent;
uint256 absMaxFee;
address treasuryAddress;
uint8 stor21; offset 160
uint32 stor21;
address feeAddress;
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

function feeAddress() {
    return feeAddress
}

function absMaxFee() {
    return absMaxFee
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

function feePercent() {
    return feePercent
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

function absMinFee() {
    return absMinFee
}

function transferToICAPCallGas() {
    return transferToICAPCallGas
}

function transferCallGas() {
    return transferCallGas
}

function setName(string arg1) {
    if Mask(255, 1, name.length and (256 * not bool(name.length)) - 1):
        return 0
    uint256(name[]) = Array(len=arg1.length, data=arg1[all])
    return 1
}

function calculateFee(uint256 arg1) {
    if arg1 * feePercent / 10000 < absMinFee:
        return absMinFee
    if arg1 * feePercent / 10000 <= absMaxFee:
        return (arg1 * feePercent / 10000)
    return absMaxFee
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

function setupFee(address arg1) {
    if not stor3:
        return 0
    require ext_code.size(stor3)
    call stor3.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 50 wei
        args address(this.address), 0x61646d696e000000000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    feeAddress = arg1
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

function setFeeStructure(uint256 arg1, uint256 arg2, uint256 arg3) {
    if not stor3:
        return 0
    require ext_code.size(stor3)
    call stor3.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 50 wei
        args address(this.address), 'cron', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if arg2 > 10000:
        return 0
    if arg3 < arg1:
        return 0
    absMinFee = arg1
    feePercent = arg2
    absMaxFee = arg3
    return 1
}

function calculateFeeDynamic(uint256 arg1, uint256 arg2) {
    if arg1 * feePercent / 10000 < absMinFee:
        if arg2 > 7500:
            return ((2 * absMinFee) + (arg2 / 100000 * absMinFee))
        return absMinFee
    if arg1 * feePercent / 10000 <= absMaxFee:
        if arg2 > 7500:
            return ((arg1 * feePercent / 10000) + absMinFee + (arg2 / 100000 * absMinFee))
        return (arg1 * feePercent / 10000)
    if arg2 > 7500:
        return (absMaxFee + absMinFee + (arg2 / 100000 * absMinFee))
    return absMaxFee
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

function updateRefundGas() {
    if stor3:
        require ext_code.size(stor3)
        call stor3.hasRole(address rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 50 wei
            args address(this.address), 0x7365747570000000000000000000000000000000000000000000000000000000, msg.sender
        require ext_call.success
        if ext_call.return_data[0]:
            if block.gasprice <= txGasPriceLimit:
                require ext_code.size(treasuryAddress)
                call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                     gas gas_remaining - 50 wei
                    args tx.origin, 5 * 10^15
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

function sendToOwner() {
    require ext_code.size(multiAssetAddress)
    call multiAssetAddress.owner(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args symbol
    require ext_call.success
    if eth.balance(this.address) <= 0:
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
        if not ext_call.return_data[0]:
            return bool(ext_call.return_data[0])
        return 1
    call ext_call.return_data[12 len 20] with:
       value eth.balance(this.address) wei
         gas gas_remaining - 34050 wei
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
    if not ext_call.return_data[0]:
        return bool(ext_call.return_data[0])
    return bool(ext_call.success)
}

function emitApprove(address arg1, address arg2, uint256 arg3) {
    if multiAssetAddress != msg.sender:
    else:
        emit Approve(arg3, arg1, arg2);
        if not uint8(stor21.field_160):
            if not feeAddress:
            else:
                if arg2 != this.address:
                    if 0 >= absMinFee:
                        if 0 <= absMaxFee:
                            if not feeAddress:
                            else:
                                if feeAddress == arg1:
                                else:
                        else:
                            if not feeAddress:
                            else:
                                if feeAddress == arg1:
                                else:
                                    if absMaxFee:
                                        require ext_code.size(multiAssetAddress)
                                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                             gas gas_remaining - 50 wei
                                            args 0, 0, uint32(stor21.field_0), absMaxFee, symbol, 160, 11, Mask(88, 0, 'Approve fee')
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                    else:
                    else:
                        if not feeAddress:
                        else:
                            if feeAddress == arg1:
                            else:
                                if absMinFee:
                                    require ext_code.size(multiAssetAddress)
                                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                         gas gas_remaining - 50 wei
                                        args 0, 0, uint32(stor21.field_0), absMinFee, symbol, 160, 11, Mask(88, 0, 'Approve fee')
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                else:
                else:
        else:
}

function takeFee(address arg1, uint256 arg2, string arg3) {
    mem[128 len arg3.length] = arg3[all]
    if not stor3:
        return 0
    require ext_code.size(stor3)
    call stor3.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 50 wei
        args address(this.address), 'fee', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if not feeAddress:
        return 1
    if feeAddress == arg1:
        return 1
    if not arg2:
        return 1
    mem[ceil32(arg3.length) + 128] = 0x31c6c4cf00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 132] = arg1
    mem[ceil32(arg3.length) + 164] = feeAddress
    mem[ceil32(arg3.length) + 196] = arg2
    mem[ceil32(arg3.length) + 228] = symbol
    mem[ceil32(arg3.length) + 260] = 160
    mem[ceil32(arg3.length) + 292] = arg3.length
    if not arg3.length:
        if not arg3.length % 32:
            if ext_code.size(multiAssetAddress):
                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args 0, 0, uint32(stor21.field_0), arg2, symbol, 160, arg3.length, mem[ceil32(arg3.length) + 324 len arg3.length]
                if ext_call.success:
                    return bool(ext_call.return_data[0])
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 324] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 356 len arg3.length % 32]
            if ext_code.size(multiAssetAddress):
                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args address(arg1), feeAddress, arg2, symbol, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len floor32(arg3.length) + 32])
                if ext_call.success:
                    return bool(ext_call.return_data[0])
    else:
        mem[ceil32(arg3.length) + 324] = mem[128]
        mem[ceil32(arg3.length) + 356 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
        if ext_code.size(multiAssetAddress):
            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                 gas gas_remaining - 50 wei
                args address(arg1), feeAddress, arg2, symbol, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len arg3.length])
            if ext_call.success:
                return bool(ext_call.return_data[0])
    revert
}

function emitTransfer(address arg1, address arg2, uint256 arg3) {
    if multiAssetAddress == msg.sender:
        emit Transfer(arg3, arg1, arg2);
        if not uint8(stor21.field_160):
            if feeAddress:
                if feeAddress != arg2:
                    if feeAddress != arg1:
                        if arg3 * feePercent / 10000 < absMinFee:
                            if feeAddress:
                                if feeAddress != arg1:
                                    if absMinFee:
                                        require ext_code.size(multiAssetAddress)
                                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                             gas gas_remaining - 50 wei
                                            args 0, 0, uint32(stor21.field_0), absMinFee, symbol, 160, 12, 0
                                        require ext_call.success
                                        require ext_call.return_data[0]
                        else:
                            if arg3 * feePercent / 10000 <= absMaxFee:
                                if feeAddress:
                                    if feeAddress != arg1:
                                        if arg3 * feePercent / 10000:
                                            require ext_code.size(multiAssetAddress)
                                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                 gas gas_remaining - 50 wei
                                                args 0, 0, uint32(stor21.field_0), arg3 * feePercent / 10000, symbol, 160, 12, 0
                                            require ext_call.success
                                            require ext_call.return_data[0]
                            else:
                                if feeAddress:
                                    if feeAddress != arg1:
                                        if absMaxFee:
                                            require ext_code.size(multiAssetAddress)
                                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                 gas gas_remaining - 50 wei
                                                args 0, 0, uint32(stor21.field_0), absMaxFee, symbol, 160, 12, 0
                                            require ext_call.success
                                            require ext_call.return_data[0]
}

function transferFromToICAPWithReference(address arg1, bytes32 arg2, uint256 arg3, string arg4) {
    mem[128 len arg4.length] = arg4[all]
    mem[ceil32(arg4.length) + 128] = 12
    mem[ceil32(arg4.length) + 160] = 'Transfer fee' << 160
    if arg3 * feePercent / 10000 < absMinFee:
        if 75 * arg4.length > 7500:
            if feeAddress:
                if feeAddress != arg1:
                    if (2 * absMinFee) + (75 * arg4.length / 100000 * absMinFee):
                        mem[ceil32(arg4.length) + 356] = 12
                        mem[ceil32(arg4.length) + 420 len 0] = None
                        mem[ceil32(arg4.length) + 388] = 0
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                             gas gas_remaining - 50 wei
                            args address(arg1), feeAddress, (2 * absMinFee) + (75 * arg4.length / 100000 * absMinFee), symbol, 160, 12, 0
                        require ext_call.success
                        if not ext_call.return_data[0]:
                            return 0
            uint8(stor21.field_160) = 1
            if tx.origin != msg.sender:
                uint8(stor21.field_160) = 0
            else:
                mem[ceil32(arg4.length) + 192] = 0xea98e54000000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg4.length) + 196] = arg1
                mem[ceil32(arg4.length) + 228] = arg2
                mem[ceil32(arg4.length) + 260] = arg3
                mem[ceil32(arg4.length) + 292] = 128
                mem[ceil32(arg4.length) + 324] = arg4.length
                if arg4.length:
                    mem[ceil32(arg4.length) + 356] = mem[128]
                    mem[ceil32(arg4.length) + 388 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.proxyTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4) with:
                     gas gas_remaining - 50 wei
                    args address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 356 len arg4.length])
                require ext_call.success
                uint8(stor21.field_160) = 0
                if ext_call.return_data[0]:
                    if block.gasprice > txGasPriceLimit:
                        return 1
                    require ext_code.size(treasuryAddress)
                    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                         gas gas_remaining - 50 wei
                        args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                    require ext_call.success
                    return 1
            if not feeAddress:
                return 0
            if feeAddress == arg1:
                return 0
            if not (2 * absMinFee) + (75 * arg4.length / 100000 * absMinFee):
                return 0
            require ext_code.size(multiAssetAddress)
            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                 gas gas_remaining - 50 wei
                args feeAddress, address(arg1), (2 * absMinFee) + (75 * arg4.length / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
        else:
            if feeAddress:
                if feeAddress != arg1:
                    if absMinFee:
                        mem[ceil32(arg4.length) + 356] = 12
                        mem[ceil32(arg4.length) + 420 len 0] = None
                        mem[ceil32(arg4.length) + 388] = 0
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                             gas gas_remaining - 50 wei
                            args address(arg1), feeAddress, absMinFee, symbol, 160, 12, 0
                        require ext_call.success
                        if not ext_call.return_data[0]:
                            return 0
            uint8(stor21.field_160) = 1
            if tx.origin != msg.sender:
                uint8(stor21.field_160) = 0
            else:
                mem[ceil32(arg4.length) + 192] = 0xea98e54000000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg4.length) + 196] = arg1
                mem[ceil32(arg4.length) + 228] = arg2
                mem[ceil32(arg4.length) + 260] = arg3
                mem[ceil32(arg4.length) + 292] = 128
                mem[ceil32(arg4.length) + 324] = arg4.length
                if arg4.length:
                    mem[ceil32(arg4.length) + 356] = mem[128]
                    mem[ceil32(arg4.length) + 388 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.proxyTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4) with:
                     gas gas_remaining - 50 wei
                    args address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 356 len arg4.length])
                require ext_call.success
                uint8(stor21.field_160) = 0
                if ext_call.return_data[0]:
                    if block.gasprice > txGasPriceLimit:
                        return 1
                    require ext_code.size(treasuryAddress)
                    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                         gas gas_remaining - 50 wei
                        args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                    require ext_call.success
                    return 1
            if not feeAddress:
                return 0
            if feeAddress == arg1:
                return 0
            if not absMinFee:
                return 0
            require ext_code.size(multiAssetAddress)
            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                 gas gas_remaining - 50 wei
                args feeAddress, address(arg1), absMinFee, symbol, Array(len=10, data='Fee return')
    else:
        if arg3 * feePercent / 10000 <= absMaxFee:
            if 75 * arg4.length > 7500:
                if feeAddress:
                    if feeAddress != arg1:
                        if (arg3 * feePercent / 10000) + absMinFee + (75 * arg4.length / 100000 * absMinFee):
                            mem[ceil32(arg4.length) + 356] = 12
                            mem[ceil32(arg4.length) + 420 len 0] = None
                            mem[ceil32(arg4.length) + 388] = 0
                            require ext_code.size(multiAssetAddress)
                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), feeAddress, (arg3 * feePercent / 10000) + absMinFee + (75 * arg4.length / 100000 * absMinFee), symbol, 160, 12, 0
                            require ext_call.success
                            if not ext_call.return_data[0]:
                                return 0
                uint8(stor21.field_160) = 1
                if tx.origin != msg.sender:
                    uint8(stor21.field_160) = 0
                else:
                    mem[ceil32(arg4.length) + 192] = 0xea98e54000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 196] = arg1
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = arg3
                    mem[ceil32(arg4.length) + 292] = 128
                    mem[ceil32(arg4.length) + 324] = arg4.length
                    if arg4.length:
                        mem[ceil32(arg4.length) + 356] = mem[128]
                        mem[ceil32(arg4.length) + 388 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.proxyTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4) with:
                         gas gas_remaining - 50 wei
                        args address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 356 len arg4.length])
                    require ext_call.success
                    uint8(stor21.field_160) = 0
                    if ext_call.return_data[0]:
                        if block.gasprice > txGasPriceLimit:
                            return 1
                        require ext_code.size(treasuryAddress)
                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                             gas gas_remaining - 50 wei
                            args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                        require ext_call.success
                        return 1
                if not feeAddress:
                    return 0
                if feeAddress == arg1:
                    return 0
                if not (arg3 * feePercent / 10000) + absMinFee + (75 * arg4.length / 100000 * absMinFee):
                    return 0
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args feeAddress, address(arg1), (arg3 * feePercent / 10000) + absMinFee + (75 * arg4.length / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
            else:
                if feeAddress:
                    if feeAddress != arg1:
                        if arg3 * feePercent / 10000:
                            mem[ceil32(arg4.length) + 356] = 12
                            mem[ceil32(arg4.length) + 420 len 0] = None
                            mem[ceil32(arg4.length) + 388] = 0
                            require ext_code.size(multiAssetAddress)
                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), feeAddress, arg3 * feePercent / 10000, symbol, 160, 12, 0
                            require ext_call.success
                            if not ext_call.return_data[0]:
                                return 0
                uint8(stor21.field_160) = 1
                if tx.origin != msg.sender:
                    uint8(stor21.field_160) = 0
                else:
                    mem[ceil32(arg4.length) + 192] = 0xea98e54000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 196] = arg1
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = arg3
                    mem[ceil32(arg4.length) + 292] = 128
                    mem[ceil32(arg4.length) + 324] = arg4.length
                    if arg4.length:
                        mem[ceil32(arg4.length) + 356] = mem[128]
                        mem[ceil32(arg4.length) + 388 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.proxyTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4) with:
                         gas gas_remaining - 50 wei
                        args address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 356 len arg4.length])
                    require ext_call.success
                    uint8(stor21.field_160) = 0
                    if ext_call.return_data[0]:
                        if block.gasprice > txGasPriceLimit:
                            return 1
                        require ext_code.size(treasuryAddress)
                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                             gas gas_remaining - 50 wei
                            args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                        require ext_call.success
                        return 1
                if not feeAddress:
                    return 0
                if feeAddress == arg1:
                    return 0
                if not arg3 * feePercent / 10000:
                    return 0
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args feeAddress, address(arg1), arg3 * feePercent / 10000, symbol, Array(len=10, data='Fee return')
        else:
            if 75 * arg4.length > 7500:
                if feeAddress:
                    if feeAddress != arg1:
                        if absMaxFee + absMinFee + (75 * arg4.length / 100000 * absMinFee):
                            mem[ceil32(arg4.length) + 356] = 12
                            mem[ceil32(arg4.length) + 420 len 0] = None
                            mem[ceil32(arg4.length) + 388] = 0
                            require ext_code.size(multiAssetAddress)
                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), feeAddress, absMaxFee + absMinFee + (75 * arg4.length / 100000 * absMinFee), symbol, 160, 12, 0
                            require ext_call.success
                            if not ext_call.return_data[0]:
                                return 0
                uint8(stor21.field_160) = 1
                if tx.origin != msg.sender:
                    uint8(stor21.field_160) = 0
                else:
                    mem[ceil32(arg4.length) + 192] = 0xea98e54000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 196] = arg1
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = arg3
                    mem[ceil32(arg4.length) + 292] = 128
                    mem[ceil32(arg4.length) + 324] = arg4.length
                    if arg4.length:
                        mem[ceil32(arg4.length) + 356] = mem[128]
                        mem[ceil32(arg4.length) + 388 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.proxyTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4) with:
                         gas gas_remaining - 50 wei
                        args address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 356 len arg4.length])
                    require ext_call.success
                    uint8(stor21.field_160) = 0
                    if ext_call.return_data[0]:
                        if block.gasprice > txGasPriceLimit:
                            return 1
                        require ext_code.size(treasuryAddress)
                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                             gas gas_remaining - 50 wei
                            args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                        require ext_call.success
                        return 1
                if not feeAddress:
                    return 0
                if feeAddress == arg1:
                    return 0
                if not absMaxFee + absMinFee + (75 * arg4.length / 100000 * absMinFee):
                    return 0
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args feeAddress, address(arg1), absMaxFee + absMinFee + (75 * arg4.length / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
            else:
                if feeAddress:
                    if feeAddress != arg1:
                        if absMaxFee:
                            mem[ceil32(arg4.length) + 356] = 12
                            mem[ceil32(arg4.length) + 420 len 0] = None
                            mem[ceil32(arg4.length) + 388] = 0
                            require ext_code.size(multiAssetAddress)
                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), feeAddress, absMaxFee, symbol, 160, 12, 0
                            require ext_call.success
                            if not ext_call.return_data[0]:
                                return 0
                uint8(stor21.field_160) = 1
                if tx.origin != msg.sender:
                    uint8(stor21.field_160) = 0
                else:
                    mem[ceil32(arg4.length) + 192] = 0xea98e54000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 196] = arg1
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = arg3
                    mem[ceil32(arg4.length) + 292] = 128
                    mem[ceil32(arg4.length) + 324] = arg4.length
                    if arg4.length:
                        mem[ceil32(arg4.length) + 356] = mem[128]
                        mem[ceil32(arg4.length) + 388 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.proxyTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4) with:
                         gas gas_remaining - 50 wei
                        args address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 356 len arg4.length])
                    require ext_call.success
                    uint8(stor21.field_160) = 0
                    if ext_call.return_data[0]:
                        if block.gasprice > txGasPriceLimit:
                            return 1
                        require ext_code.size(treasuryAddress)
                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                             gas gas_remaining - 50 wei
                            args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                        require ext_call.success
                        return 1
                if not feeAddress:
                    return 0
                if feeAddress == arg1:
                    return 0
                if not absMaxFee:
                    return 0
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args feeAddress, address(arg1), absMaxFee, symbol, Array(len=10, data='Fee return')
    require ext_call.success
    require ext_call.return_data[0]
    return 0
}

function transferFromToICAP(address arg1, bytes32 arg2, uint256 arg3) {
    if arg3 * feePercent / 10000 < absMinFee:
        if not feeAddress:
            uint8(stor21.field_160) = 1
            if tx.origin != msg.sender:
                uint8(stor21.field_160) = 0
            else:
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.proxyTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4) with:
                     gas gas_remaining - 50 wei
                    args address(arg1), arg2, arg3, 128, 0
                require ext_call.success
                uint8(stor21.field_160) = 0
                if ext_call.return_data[0]:
                    if block.gasprice > txGasPriceLimit:
                        return 1
                    require ext_code.size(treasuryAddress)
                    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                         gas gas_remaining - 50 wei
                        args tx.origin, (transferFromToICAPCallGas * block.gasprice) + (refundGas * block.gasprice)
                    require ext_call.success
                    return 1
            if not feeAddress:
                return 0
            if feeAddress == arg1:
                return 0
            if not absMinFee:
                return 0
            require ext_code.size(multiAssetAddress)
            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                 gas gas_remaining - 50 wei
                args 0, uint32(stor21.field_0), address(arg1), absMinFee, symbol, 160, 10, 'Fee return'
        else:
            if feeAddress == arg1:
                uint8(stor21.field_160) = 1
                if tx.origin != msg.sender:
                    uint8(stor21.field_160) = 0
                else:
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.proxyTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4) with:
                         gas gas_remaining - 50 wei
                        args address(arg1), arg2, arg3, 128, 0
                    require ext_call.success
                    uint8(stor21.field_160) = 0
                    if ext_call.return_data[0]:
                        if block.gasprice > txGasPriceLimit:
                            return 1
                        require ext_code.size(treasuryAddress)
                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                             gas gas_remaining - 50 wei
                            args tx.origin, (transferFromToICAPCallGas * block.gasprice) + (refundGas * block.gasprice)
                        require ext_call.success
                        return 1
                if not feeAddress:
                    return 0
                if feeAddress == arg1:
                    return 0
                if not absMinFee:
                    return 0
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args 0, uint32(stor21.field_0), address(arg1), absMinFee, symbol, 160, 10, 'Fee return'
            else:
                if not absMinFee:
                    uint8(stor21.field_160) = 1
                    if tx.origin != msg.sender:
                        uint8(stor21.field_160) = 0
                    else:
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.proxyTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4) with:
                             gas gas_remaining - 50 wei
                            args address(arg1), arg2, arg3, 128, 0
                        require ext_call.success
                        uint8(stor21.field_160) = 0
                        if ext_call.return_data[0]:
                            if block.gasprice > txGasPriceLimit:
                                return 1
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 50 wei
                                args tx.origin, (transferFromToICAPCallGas * block.gasprice) + (refundGas * block.gasprice)
                            require ext_call.success
                            return 1
                    if not feeAddress:
                        return 0
                    if feeAddress == arg1:
                        return 0
                    if not absMinFee:
                        return 0
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                         gas gas_remaining - 50 wei
                        args 0, uint32(stor21.field_0), address(arg1), absMinFee, symbol, 160, 10, 'Fee return'
                else:
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                         gas gas_remaining - 50 wei
                        args 0, 0, uint32(stor21.field_0), absMinFee, symbol, 160, 12, 0
                    require ext_call.success
                    if not ext_call.return_data[0]:
                        return 0
                    uint8(stor21.field_160) = 1
                    if tx.origin != msg.sender:
                        uint8(stor21.field_160) = 0
                    else:
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.proxyTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4) with:
                             gas gas_remaining - 50 wei
                            args address(arg1), arg2, arg3, 128, 0
                        require ext_call.success
                        uint8(stor21.field_160) = 0
                        if ext_call.return_data[0]:
                            if block.gasprice > txGasPriceLimit:
                                return 1
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 50 wei
                                args tx.origin, (transferFromToICAPCallGas * block.gasprice) + (refundGas * block.gasprice)
                            require ext_call.success
                            return 1
                    if not feeAddress:
                        return 0
                    if feeAddress == arg1:
                        return 0
                    if not absMinFee:
                        return 0
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                         gas gas_remaining - 50 wei
                        args 0, uint32(stor21.field_0), address(arg1), absMinFee, symbol, 160, 10, 0, 'Fee return'
    else:
        if arg3 * feePercent / 10000 <= absMaxFee:
            if not feeAddress:
                uint8(stor21.field_160) = 1
                if tx.origin != msg.sender:
                    uint8(stor21.field_160) = 0
                else:
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.proxyTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4) with:
                         gas gas_remaining - 50 wei
                        args address(arg1), arg2, arg3, 128, 0
                    require ext_call.success
                    uint8(stor21.field_160) = 0
                    if ext_call.return_data[0]:
                        if block.gasprice > txGasPriceLimit:
                            return 1
                        require ext_code.size(treasuryAddress)
                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                             gas gas_remaining - 50 wei
                            args tx.origin, (transferFromToICAPCallGas * block.gasprice) + (refundGas * block.gasprice)
                        require ext_call.success
                        return 1
                if not feeAddress:
                    return 0
                if feeAddress == arg1:
                    return 0
                if not arg3 * feePercent / 10000:
                    return 0
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args 0, uint32(stor21.field_0), address(arg1), arg3 * feePercent / 10000, symbol, 160, 10, 'Fee return'
            else:
                if feeAddress == arg1:
                    uint8(stor21.field_160) = 1
                    if tx.origin != msg.sender:
                        uint8(stor21.field_160) = 0
                    else:
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.proxyTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4) with:
                             gas gas_remaining - 50 wei
                            args address(arg1), arg2, arg3, 128, 0
                        require ext_call.success
                        uint8(stor21.field_160) = 0
                        if ext_call.return_data[0]:
                            if block.gasprice > txGasPriceLimit:
                                return 1
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 50 wei
                                args tx.origin, (transferFromToICAPCallGas * block.gasprice) + (refundGas * block.gasprice)
                            require ext_call.success
                            return 1
                    if not feeAddress:
                        return 0
                    if feeAddress == arg1:
                        return 0
                    if not arg3 * feePercent / 10000:
                        return 0
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                         gas gas_remaining - 50 wei
                        args 0, uint32(stor21.field_0), address(arg1), arg3 * feePercent / 10000, symbol, 160, 10, 'Fee return'
                else:
                    if not arg3 * feePercent / 10000:
                        uint8(stor21.field_160) = 1
                        if tx.origin != msg.sender:
                            uint8(stor21.field_160) = 0
                        else:
                            require ext_code.size(multiAssetAddress)
                            call multiAssetAddress.proxyTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4) with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), arg2, arg3, 128, 0
                            require ext_call.success
                            uint8(stor21.field_160) = 0
                            if ext_call.return_data[0]:
                                if block.gasprice > txGasPriceLimit:
                                    return 1
                                require ext_code.size(treasuryAddress)
                                call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 50 wei
                                    args tx.origin, (transferFromToICAPCallGas * block.gasprice) + (refundGas * block.gasprice)
                                require ext_call.success
                                return 1
                        if not feeAddress:
                            return 0
                        if feeAddress == arg1:
                            return 0
                        if not arg3 * feePercent / 10000:
                            return 0
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                             gas gas_remaining - 50 wei
                            args 0, uint32(stor21.field_0), address(arg1), arg3 * feePercent / 10000, symbol, 160, 10, 'Fee return'
                    else:
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                             gas gas_remaining - 50 wei
                            args 0, 0, uint32(stor21.field_0), arg3 * feePercent / 10000, symbol, 160, 12, 0
                        require ext_call.success
                        if not ext_call.return_data[0]:
                            return 0
                        uint8(stor21.field_160) = 1
                        if tx.origin != msg.sender:
                            uint8(stor21.field_160) = 0
                        else:
                            require ext_code.size(multiAssetAddress)
                            call multiAssetAddress.proxyTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4) with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), arg2, arg3, 128, 0
                            require ext_call.success
                            uint8(stor21.field_160) = 0
                            if ext_call.return_data[0]:
                                if block.gasprice > txGasPriceLimit:
                                    return 1
                                require ext_code.size(treasuryAddress)
                                call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 50 wei
                                    args tx.origin, (transferFromToICAPCallGas * block.gasprice) + (refundGas * block.gasprice)
                                require ext_call.success
                                return 1
                        if not feeAddress:
                            return 0
                        if feeAddress == arg1:
                            return 0
                        if not arg3 * feePercent / 10000:
                            return 0
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                             gas gas_remaining - 50 wei
                            args 0, uint32(stor21.field_0), address(arg1), arg3 * feePercent / 10000, symbol, 160, 10, 0, 'Fee return'
        else:
            if not feeAddress:
                uint8(stor21.field_160) = 1
                if tx.origin != msg.sender:
                    uint8(stor21.field_160) = 0
                else:
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.proxyTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4) with:
                         gas gas_remaining - 50 wei
                        args address(arg1), arg2, arg3, 128, 0
                    require ext_call.success
                    uint8(stor21.field_160) = 0
                    if ext_call.return_data[0]:
                        if block.gasprice > txGasPriceLimit:
                            return 1
                        require ext_code.size(treasuryAddress)
                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                             gas gas_remaining - 50 wei
                            args tx.origin, (transferFromToICAPCallGas * block.gasprice) + (refundGas * block.gasprice)
                        require ext_call.success
                        return 1
                if not feeAddress:
                    return 0
                if feeAddress == arg1:
                    return 0
                if not absMaxFee:
                    return 0
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args 0, uint32(stor21.field_0), address(arg1), absMaxFee, symbol, 160, 10, 'Fee return'
            else:
                if feeAddress == arg1:
                    uint8(stor21.field_160) = 1
                    if tx.origin != msg.sender:
                        uint8(stor21.field_160) = 0
                    else:
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.proxyTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4) with:
                             gas gas_remaining - 50 wei
                            args address(arg1), arg2, arg3, 128, 0
                        require ext_call.success
                        uint8(stor21.field_160) = 0
                        if ext_call.return_data[0]:
                            if block.gasprice > txGasPriceLimit:
                                return 1
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 50 wei
                                args tx.origin, (transferFromToICAPCallGas * block.gasprice) + (refundGas * block.gasprice)
                            require ext_call.success
                            return 1
                    if not feeAddress:
                        return 0
                    if feeAddress == arg1:
                        return 0
                    if not absMaxFee:
                        return 0
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                         gas gas_remaining - 50 wei
                        args 0, uint32(stor21.field_0), address(arg1), absMaxFee, symbol, 160, 10, 'Fee return'
                else:
                    if not absMaxFee:
                        uint8(stor21.field_160) = 1
                        if tx.origin != msg.sender:
                            uint8(stor21.field_160) = 0
                        else:
                            require ext_code.size(multiAssetAddress)
                            call multiAssetAddress.proxyTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4) with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), arg2, arg3, 128, 0
                            require ext_call.success
                            uint8(stor21.field_160) = 0
                            if ext_call.return_data[0]:
                                if block.gasprice > txGasPriceLimit:
                                    return 1
                                require ext_code.size(treasuryAddress)
                                call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 50 wei
                                    args tx.origin, (transferFromToICAPCallGas * block.gasprice) + (refundGas * block.gasprice)
                                require ext_call.success
                                return 1
                        if not feeAddress:
                            return 0
                        if feeAddress == arg1:
                            return 0
                        if not absMaxFee:
                            return 0
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                             gas gas_remaining - 50 wei
                            args 0, uint32(stor21.field_0), address(arg1), absMaxFee, symbol, 160, 10, 'Fee return'
                    else:
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                             gas gas_remaining - 50 wei
                            args 0, 0, uint32(stor21.field_0), absMaxFee, symbol, 160, 12, 0
                        require ext_call.success
                        if not ext_call.return_data[0]:
                            return 0
                        uint8(stor21.field_160) = 1
                        if tx.origin != msg.sender:
                            uint8(stor21.field_160) = 0
                        else:
                            require ext_code.size(multiAssetAddress)
                            call multiAssetAddress.proxyTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4) with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), arg2, arg3, 128, 0
                            require ext_call.success
                            uint8(stor21.field_160) = 0
                            if ext_call.return_data[0]:
                                if block.gasprice > txGasPriceLimit:
                                    return 1
                                require ext_code.size(treasuryAddress)
                                call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 50 wei
                                    args tx.origin, (transferFromToICAPCallGas * block.gasprice) + (refundGas * block.gasprice)
                                require ext_call.success
                                return 1
                        if not feeAddress:
                            return 0
                        if feeAddress == arg1:
                            return 0
                        if not absMaxFee:
                            return 0
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                             gas gas_remaining - 50 wei
                            args 0, uint32(stor21.field_0), address(arg1), absMaxFee, symbol, 160, 10, 0, 'Fee return'
    require ext_call.success
    require ext_call.return_data[0]
    return 0
}

function transferToICAP(bytes32 arg1, uint256 arg2) {
    if arg2 * feePercent / 10000 < absMinFee:
        if not feeAddress:
            uint8(stor21.field_160) = 1
            require ext_code.size(multiAssetAddress)
            if msg.sender == tx.origin:
                call multiAssetAddress.0xa48a663c with:
                     gas gas_remaining - 50 wei
                    args tx.origin, arg1, arg2, 128, 0
            else:
                call multiAssetAddress.0xa48a663c with:
                     gas gas_remaining - 50 wei
                    args msg.sender, arg1, arg2, 128, 0
            require ext_call.success
            uint8(stor21.field_160) = 0
            if ext_call.return_data[0]:
                if block.gasprice > txGasPriceLimit:
                    return 1
                require ext_code.size(treasuryAddress)
                call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                     gas gas_remaining - 50 wei
                    args tx.origin, (transferToICAPCallGas * block.gasprice) + (refundGas * block.gasprice)
                require ext_call.success
                return 1
            if not feeAddress:
                return 0
            if feeAddress == msg.sender:
                return 0
            if not absMinFee:
                return 0
            require ext_code.size(multiAssetAddress)
            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                 gas gas_remaining - 50 wei
                args 0, uint32(stor21.field_0), msg.sender, absMinFee, symbol, 160, 10, 'Fee return'
        else:
            if feeAddress == msg.sender:
                uint8(stor21.field_160) = 1
                require ext_code.size(multiAssetAddress)
                if msg.sender == tx.origin:
                    call multiAssetAddress.0xa48a663c with:
                         gas gas_remaining - 50 wei
                        args tx.origin, arg1, arg2, 128, 0
                else:
                    call multiAssetAddress.0xa48a663c with:
                         gas gas_remaining - 50 wei
                        args msg.sender, arg1, arg2, 128, 0
                require ext_call.success
                uint8(stor21.field_160) = 0
                if ext_call.return_data[0]:
                    if block.gasprice > txGasPriceLimit:
                        return 1
                    require ext_code.size(treasuryAddress)
                    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                         gas gas_remaining - 50 wei
                        args tx.origin, (transferToICAPCallGas * block.gasprice) + (refundGas * block.gasprice)
                    require ext_call.success
                    return 1
                if not feeAddress:
                    return 0
                if feeAddress == msg.sender:
                    return 0
                if not absMinFee:
                    return 0
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args 0, uint32(stor21.field_0), msg.sender, absMinFee, symbol, 160, 10, 'Fee return'
            else:
                if not absMinFee:
                    uint8(stor21.field_160) = 1
                    require ext_code.size(multiAssetAddress)
                    if msg.sender == tx.origin:
                        call multiAssetAddress.0xa48a663c with:
                             gas gas_remaining - 50 wei
                            args tx.origin, arg1, arg2, 128, 0
                    else:
                        call multiAssetAddress.0xa48a663c with:
                             gas gas_remaining - 50 wei
                            args msg.sender, arg1, arg2, 128, 0
                    require ext_call.success
                    uint8(stor21.field_160) = 0
                    if ext_call.return_data[0]:
                        if block.gasprice > txGasPriceLimit:
                            return 1
                        require ext_code.size(treasuryAddress)
                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                             gas gas_remaining - 50 wei
                            args tx.origin, (transferToICAPCallGas * block.gasprice) + (refundGas * block.gasprice)
                        require ext_call.success
                        return 1
                    if not feeAddress:
                        return 0
                    if feeAddress == msg.sender:
                        return 0
                    if not absMinFee:
                        return 0
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                         gas gas_remaining - 50 wei
                        args 0, uint32(stor21.field_0), msg.sender, absMinFee, symbol, 160, 10, 'Fee return'
                else:
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                         gas gas_remaining - 50 wei
                        args 0, 0, uint32(stor21.field_0), absMinFee, symbol, 160, 12, 0
                    require ext_call.success
                    if not ext_call.return_data[0]:
                        return 0
                    uint8(stor21.field_160) = 1
                    require ext_code.size(multiAssetAddress)
                    if msg.sender == tx.origin:
                        call multiAssetAddress.0xa48a663c with:
                             gas gas_remaining - 50 wei
                            args tx.origin, arg1, arg2, 128, 0
                    else:
                        call multiAssetAddress.0xa48a663c with:
                             gas gas_remaining - 50 wei
                            args msg.sender, arg1, arg2, 128, 0
                    require ext_call.success
                    uint8(stor21.field_160) = 0
                    if ext_call.return_data[0]:
                        if block.gasprice > txGasPriceLimit:
                            return 1
                        require ext_code.size(treasuryAddress)
                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                             gas gas_remaining - 50 wei
                            args tx.origin, (transferToICAPCallGas * block.gasprice) + (refundGas * block.gasprice)
                        require ext_call.success
                        return 1
                    if not feeAddress:
                        return 0
                    if feeAddress == msg.sender:
                        return 0
                    if not absMinFee:
                        return 0
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                         gas gas_remaining - 50 wei
                        args 0, uint32(stor21.field_0), msg.sender, absMinFee, symbol, 160, 10, 0, 'Fee return'
    else:
        if arg2 * feePercent / 10000 <= absMaxFee:
            if not feeAddress:
                uint8(stor21.field_160) = 1
                require ext_code.size(multiAssetAddress)
                if msg.sender == tx.origin:
                    call multiAssetAddress.0xa48a663c with:
                         gas gas_remaining - 50 wei
                        args tx.origin, arg1, arg2, 128, 0
                else:
                    call multiAssetAddress.0xa48a663c with:
                         gas gas_remaining - 50 wei
                        args msg.sender, arg1, arg2, 128, 0
                require ext_call.success
                uint8(stor21.field_160) = 0
                if ext_call.return_data[0]:
                    if block.gasprice > txGasPriceLimit:
                        return 1
                    require ext_code.size(treasuryAddress)
                    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                         gas gas_remaining - 50 wei
                        args tx.origin, (transferToICAPCallGas * block.gasprice) + (refundGas * block.gasprice)
                    require ext_call.success
                    return 1
                if not feeAddress:
                    return 0
                if feeAddress == msg.sender:
                    return 0
                if not arg2 * feePercent / 10000:
                    return 0
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args 0, uint32(stor21.field_0), msg.sender, arg2 * feePercent / 10000, symbol, 160, 10, 'Fee return'
            else:
                if feeAddress == msg.sender:
                    uint8(stor21.field_160) = 1
                    require ext_code.size(multiAssetAddress)
                    if msg.sender == tx.origin:
                        call multiAssetAddress.0xa48a663c with:
                             gas gas_remaining - 50 wei
                            args tx.origin, arg1, arg2, 128, 0
                    else:
                        call multiAssetAddress.0xa48a663c with:
                             gas gas_remaining - 50 wei
                            args msg.sender, arg1, arg2, 128, 0
                    require ext_call.success
                    uint8(stor21.field_160) = 0
                    if ext_call.return_data[0]:
                        if block.gasprice > txGasPriceLimit:
                            return 1
                        require ext_code.size(treasuryAddress)
                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                             gas gas_remaining - 50 wei
                            args tx.origin, (transferToICAPCallGas * block.gasprice) + (refundGas * block.gasprice)
                        require ext_call.success
                        return 1
                    if not feeAddress:
                        return 0
                    if feeAddress == msg.sender:
                        return 0
                    if not arg2 * feePercent / 10000:
                        return 0
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                         gas gas_remaining - 50 wei
                        args 0, uint32(stor21.field_0), msg.sender, arg2 * feePercent / 10000, symbol, 160, 10, 'Fee return'
                else:
                    if not arg2 * feePercent / 10000:
                        uint8(stor21.field_160) = 1
                        require ext_code.size(multiAssetAddress)
                        if msg.sender == tx.origin:
                            call multiAssetAddress.0xa48a663c with:
                                 gas gas_remaining - 50 wei
                                args tx.origin, arg1, arg2, 128, 0
                        else:
                            call multiAssetAddress.0xa48a663c with:
                                 gas gas_remaining - 50 wei
                                args msg.sender, arg1, arg2, 128, 0
                        require ext_call.success
                        uint8(stor21.field_160) = 0
                        if ext_call.return_data[0]:
                            if block.gasprice > txGasPriceLimit:
                                return 1
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 50 wei
                                args tx.origin, (transferToICAPCallGas * block.gasprice) + (refundGas * block.gasprice)
                            require ext_call.success
                            return 1
                        if not feeAddress:
                            return 0
                        if feeAddress == msg.sender:
                            return 0
                        if not arg2 * feePercent / 10000:
                            return 0
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                             gas gas_remaining - 50 wei
                            args 0, uint32(stor21.field_0), msg.sender, arg2 * feePercent / 10000, symbol, 160, 10, 'Fee return'
                    else:
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                             gas gas_remaining - 50 wei
                            args 0, 0, uint32(stor21.field_0), arg2 * feePercent / 10000, symbol, 160, 12, 0
                        require ext_call.success
                        if not ext_call.return_data[0]:
                            return 0
                        uint8(stor21.field_160) = 1
                        require ext_code.size(multiAssetAddress)
                        if msg.sender == tx.origin:
                            call multiAssetAddress.0xa48a663c with:
                                 gas gas_remaining - 50 wei
                                args tx.origin, arg1, arg2, 128, 0
                        else:
                            call multiAssetAddress.0xa48a663c with:
                                 gas gas_remaining - 50 wei
                                args msg.sender, arg1, arg2, 128, 0
                        require ext_call.success
                        uint8(stor21.field_160) = 0
                        if ext_call.return_data[0]:
                            if block.gasprice > txGasPriceLimit:
                                return 1
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 50 wei
                                args tx.origin, (transferToICAPCallGas * block.gasprice) + (refundGas * block.gasprice)
                            require ext_call.success
                            return 1
                        if not feeAddress:
                            return 0
                        if feeAddress == msg.sender:
                            return 0
                        if not arg2 * feePercent / 10000:
                            return 0
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                             gas gas_remaining - 50 wei
                            args 0, uint32(stor21.field_0), msg.sender, arg2 * feePercent / 10000, symbol, 160, 10, 0, 'Fee return'
        else:
            if not feeAddress:
                uint8(stor21.field_160) = 1
                require ext_code.size(multiAssetAddress)
                if msg.sender == tx.origin:
                    call multiAssetAddress.0xa48a663c with:
                         gas gas_remaining - 50 wei
                        args tx.origin, arg1, arg2, 128, 0
                else:
                    call multiAssetAddress.0xa48a663c with:
                         gas gas_remaining - 50 wei
                        args msg.sender, arg1, arg2, 128, 0
                require ext_call.success
                uint8(stor21.field_160) = 0
                if ext_call.return_data[0]:
                    if block.gasprice > txGasPriceLimit:
                        return 1
                    require ext_code.size(treasuryAddress)
                    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                         gas gas_remaining - 50 wei
                        args tx.origin, (transferToICAPCallGas * block.gasprice) + (refundGas * block.gasprice)
                    require ext_call.success
                    return 1
                if not feeAddress:
                    return 0
                if feeAddress == msg.sender:
                    return 0
                if not absMaxFee:
                    return 0
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args 0, uint32(stor21.field_0), msg.sender, absMaxFee, symbol, 160, 10, 'Fee return'
            else:
                if feeAddress == msg.sender:
                    uint8(stor21.field_160) = 1
                    require ext_code.size(multiAssetAddress)
                    if msg.sender == tx.origin:
                        call multiAssetAddress.0xa48a663c with:
                             gas gas_remaining - 50 wei
                            args tx.origin, arg1, arg2, 128, 0
                    else:
                        call multiAssetAddress.0xa48a663c with:
                             gas gas_remaining - 50 wei
                            args msg.sender, arg1, arg2, 128, 0
                    require ext_call.success
                    uint8(stor21.field_160) = 0
                    if ext_call.return_data[0]:
                        if block.gasprice > txGasPriceLimit:
                            return 1
                        require ext_code.size(treasuryAddress)
                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                             gas gas_remaining - 50 wei
                            args tx.origin, (transferToICAPCallGas * block.gasprice) + (refundGas * block.gasprice)
                        require ext_call.success
                        return 1
                    if not feeAddress:
                        return 0
                    if feeAddress == msg.sender:
                        return 0
                    if not absMaxFee:
                        return 0
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                         gas gas_remaining - 50 wei
                        args 0, uint32(stor21.field_0), msg.sender, absMaxFee, symbol, 160, 10, 'Fee return'
                else:
                    if not absMaxFee:
                        uint8(stor21.field_160) = 1
                        require ext_code.size(multiAssetAddress)
                        if msg.sender == tx.origin:
                            call multiAssetAddress.0xa48a663c with:
                                 gas gas_remaining - 50 wei
                                args tx.origin, arg1, arg2, 128, 0
                        else:
                            call multiAssetAddress.0xa48a663c with:
                                 gas gas_remaining - 50 wei
                                args msg.sender, arg1, arg2, 128, 0
                        require ext_call.success
                        uint8(stor21.field_160) = 0
                        if ext_call.return_data[0]:
                            if block.gasprice > txGasPriceLimit:
                                return 1
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 50 wei
                                args tx.origin, (transferToICAPCallGas * block.gasprice) + (refundGas * block.gasprice)
                            require ext_call.success
                            return 1
                        if not feeAddress:
                            return 0
                        if feeAddress == msg.sender:
                            return 0
                        if not absMaxFee:
                            return 0
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                             gas gas_remaining - 50 wei
                            args 0, uint32(stor21.field_0), msg.sender, absMaxFee, symbol, 160, 10, 'Fee return'
                    else:
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                             gas gas_remaining - 50 wei
                            args 0, 0, uint32(stor21.field_0), absMaxFee, symbol, 160, 12, 0
                        require ext_call.success
                        if not ext_call.return_data[0]:
                            return 0
                        uint8(stor21.field_160) = 1
                        require ext_code.size(multiAssetAddress)
                        if msg.sender == tx.origin:
                            call multiAssetAddress.0xa48a663c with:
                                 gas gas_remaining - 50 wei
                                args tx.origin, arg1, arg2, 128, 0
                        else:
                            call multiAssetAddress.0xa48a663c with:
                                 gas gas_remaining - 50 wei
                                args msg.sender, arg1, arg2, 128, 0
                        require ext_call.success
                        uint8(stor21.field_160) = 0
                        if ext_call.return_data[0]:
                            if block.gasprice > txGasPriceLimit:
                                return 1
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 50 wei
                                args tx.origin, (transferToICAPCallGas * block.gasprice) + (refundGas * block.gasprice)
                            require ext_call.success
                            return 1
                        if not feeAddress:
                            return 0
                        if feeAddress == msg.sender:
                            return 0
                        if not absMaxFee:
                            return 0
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                             gas gas_remaining - 50 wei
                            args 0, uint32(stor21.field_0), msg.sender, absMaxFee, symbol, 160, 10, 0, 'Fee return'
    require ext_call.success
    require ext_call.return_data[0]
    return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if arg3 * feePercent / 10000 < absMinFee:
        if not feeAddress:
            uint8(stor21.field_160) = 1
            if tx.origin != msg.sender:
                uint8(stor21.field_160) = 0
            else:
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.proxyTransferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args address(arg1), address(arg2), arg3, symbol, 160, 0
                require ext_call.success
                uint8(stor21.field_160) = 0
                if ext_call.return_data[0]:
                    if block.gasprice > txGasPriceLimit:
                        return 1
                    require ext_code.size(treasuryAddress)
                    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                         gas gas_remaining - 50 wei
                        args tx.origin, (transferFromCallGas * block.gasprice) + (refundGas * block.gasprice)
                    require ext_call.success
                    return 1
            if not feeAddress:
                return 0
            if feeAddress == arg1:
                return 0
            if not absMinFee:
                return 0
            require ext_code.size(multiAssetAddress)
            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                 gas gas_remaining - 50 wei
                args 0, uint32(stor21.field_0), address(arg1), absMinFee, symbol, 160, 10, 'Fee return'
        else:
            if feeAddress == arg1:
                uint8(stor21.field_160) = 1
                if tx.origin != msg.sender:
                    uint8(stor21.field_160) = 0
                else:
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.proxyTransferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                         gas gas_remaining - 50 wei
                        args address(arg1), address(arg2), arg3, symbol, 160, 0
                    require ext_call.success
                    uint8(stor21.field_160) = 0
                    if ext_call.return_data[0]:
                        if block.gasprice > txGasPriceLimit:
                            return 1
                        require ext_code.size(treasuryAddress)
                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                             gas gas_remaining - 50 wei
                            args tx.origin, (transferFromCallGas * block.gasprice) + (refundGas * block.gasprice)
                        require ext_call.success
                        return 1
                if not feeAddress:
                    return 0
                if feeAddress == arg1:
                    return 0
                if not absMinFee:
                    return 0
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args 0, uint32(stor21.field_0), address(arg1), absMinFee, symbol, 160, 10, 'Fee return'
            else:
                if not absMinFee:
                    uint8(stor21.field_160) = 1
                    if tx.origin != msg.sender:
                        uint8(stor21.field_160) = 0
                    else:
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.proxyTransferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                             gas gas_remaining - 50 wei
                            args address(arg1), address(arg2), arg3, symbol, 160, 0
                        require ext_call.success
                        uint8(stor21.field_160) = 0
                        if ext_call.return_data[0]:
                            if block.gasprice > txGasPriceLimit:
                                return 1
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 50 wei
                                args tx.origin, (transferFromCallGas * block.gasprice) + (refundGas * block.gasprice)
                            require ext_call.success
                            return 1
                    if not feeAddress:
                        return 0
                    if feeAddress == arg1:
                        return 0
                    if not absMinFee:
                        return 0
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                         gas gas_remaining - 50 wei
                        args 0, uint32(stor21.field_0), address(arg1), absMinFee, symbol, 160, 10, 'Fee return'
                else:
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                         gas gas_remaining - 50 wei
                        args 0, 0, uint32(stor21.field_0), absMinFee, symbol, 160, 12, 0
                    require ext_call.success
                    if not ext_call.return_data[0]:
                        return 0
                    uint8(stor21.field_160) = 1
                    if tx.origin != msg.sender:
                        uint8(stor21.field_160) = 0
                    else:
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.proxyTransferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                             gas gas_remaining - 50 wei
                            args address(arg1), address(arg2), arg3, symbol, 160, 0
                        require ext_call.success
                        uint8(stor21.field_160) = 0
                        if ext_call.return_data[0]:
                            if block.gasprice > txGasPriceLimit:
                                return 1
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 50 wei
                                args tx.origin, (transferFromCallGas * block.gasprice) + (refundGas * block.gasprice)
                            require ext_call.success
                            return 1
                    if not feeAddress:
                        return 0
                    if feeAddress == arg1:
                        return 0
                    if not absMinFee:
                        return 0
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                         gas gas_remaining - 50 wei
                        args 0, uint32(stor21.field_0), address(arg1), absMinFee, symbol, 160, 10, 0, 'Fee return'
    else:
        if arg3 * feePercent / 10000 <= absMaxFee:
            if not feeAddress:
                uint8(stor21.field_160) = 1
                if tx.origin != msg.sender:
                    uint8(stor21.field_160) = 0
                else:
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.proxyTransferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                         gas gas_remaining - 50 wei
                        args address(arg1), address(arg2), arg3, symbol, 160, 0
                    require ext_call.success
                    uint8(stor21.field_160) = 0
                    if ext_call.return_data[0]:
                        if block.gasprice > txGasPriceLimit:
                            return 1
                        require ext_code.size(treasuryAddress)
                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                             gas gas_remaining - 50 wei
                            args tx.origin, (transferFromCallGas * block.gasprice) + (refundGas * block.gasprice)
                        require ext_call.success
                        return 1
                if not feeAddress:
                    return 0
                if feeAddress == arg1:
                    return 0
                if not arg3 * feePercent / 10000:
                    return 0
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args 0, uint32(stor21.field_0), address(arg1), arg3 * feePercent / 10000, symbol, 160, 10, 'Fee return'
            else:
                if feeAddress == arg1:
                    uint8(stor21.field_160) = 1
                    if tx.origin != msg.sender:
                        uint8(stor21.field_160) = 0
                    else:
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.proxyTransferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                             gas gas_remaining - 50 wei
                            args address(arg1), address(arg2), arg3, symbol, 160, 0
                        require ext_call.success
                        uint8(stor21.field_160) = 0
                        if ext_call.return_data[0]:
                            if block.gasprice > txGasPriceLimit:
                                return 1
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 50 wei
                                args tx.origin, (transferFromCallGas * block.gasprice) + (refundGas * block.gasprice)
                            require ext_call.success
                            return 1
                    if not feeAddress:
                        return 0
                    if feeAddress == arg1:
                        return 0
                    if not arg3 * feePercent / 10000:
                        return 0
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                         gas gas_remaining - 50 wei
                        args 0, uint32(stor21.field_0), address(arg1), arg3 * feePercent / 10000, symbol, 160, 10, 'Fee return'
                else:
                    if not arg3 * feePercent / 10000:
                        uint8(stor21.field_160) = 1
                        if tx.origin != msg.sender:
                            uint8(stor21.field_160) = 0
                        else:
                            require ext_code.size(multiAssetAddress)
                            call multiAssetAddress.proxyTransferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), address(arg2), arg3, symbol, 160, 0
                            require ext_call.success
                            uint8(stor21.field_160) = 0
                            if ext_call.return_data[0]:
                                if block.gasprice > txGasPriceLimit:
                                    return 1
                                require ext_code.size(treasuryAddress)
                                call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 50 wei
                                    args tx.origin, (transferFromCallGas * block.gasprice) + (refundGas * block.gasprice)
                                require ext_call.success
                                return 1
                        if not feeAddress:
                            return 0
                        if feeAddress == arg1:
                            return 0
                        if not arg3 * feePercent / 10000:
                            return 0
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                             gas gas_remaining - 50 wei
                            args 0, uint32(stor21.field_0), address(arg1), arg3 * feePercent / 10000, symbol, 160, 10, 'Fee return'
                    else:
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                             gas gas_remaining - 50 wei
                            args 0, 0, uint32(stor21.field_0), arg3 * feePercent / 10000, symbol, 160, 12, 0
                        require ext_call.success
                        if not ext_call.return_data[0]:
                            return 0
                        uint8(stor21.field_160) = 1
                        if tx.origin != msg.sender:
                            uint8(stor21.field_160) = 0
                        else:
                            require ext_code.size(multiAssetAddress)
                            call multiAssetAddress.proxyTransferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), address(arg2), arg3, symbol, 160, 0
                            require ext_call.success
                            uint8(stor21.field_160) = 0
                            if ext_call.return_data[0]:
                                if block.gasprice > txGasPriceLimit:
                                    return 1
                                require ext_code.size(treasuryAddress)
                                call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 50 wei
                                    args tx.origin, (transferFromCallGas * block.gasprice) + (refundGas * block.gasprice)
                                require ext_call.success
                                return 1
                        if not feeAddress:
                            return 0
                        if feeAddress == arg1:
                            return 0
                        if not arg3 * feePercent / 10000:
                            return 0
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                             gas gas_remaining - 50 wei
                            args 0, uint32(stor21.field_0), address(arg1), arg3 * feePercent / 10000, symbol, 160, 10, 0, 'Fee return'
        else:
            if not feeAddress:
                uint8(stor21.field_160) = 1
                if tx.origin != msg.sender:
                    uint8(stor21.field_160) = 0
                else:
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.proxyTransferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                         gas gas_remaining - 50 wei
                        args address(arg1), address(arg2), arg3, symbol, 160, 0
                    require ext_call.success
                    uint8(stor21.field_160) = 0
                    if ext_call.return_data[0]:
                        if block.gasprice > txGasPriceLimit:
                            return 1
                        require ext_code.size(treasuryAddress)
                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                             gas gas_remaining - 50 wei
                            args tx.origin, (transferFromCallGas * block.gasprice) + (refundGas * block.gasprice)
                        require ext_call.success
                        return 1
                if not feeAddress:
                    return 0
                if feeAddress == arg1:
                    return 0
                if not absMaxFee:
                    return 0
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args 0, uint32(stor21.field_0), address(arg1), absMaxFee, symbol, 160, 10, 'Fee return'
            else:
                if feeAddress == arg1:
                    uint8(stor21.field_160) = 1
                    if tx.origin != msg.sender:
                        uint8(stor21.field_160) = 0
                    else:
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.proxyTransferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                             gas gas_remaining - 50 wei
                            args address(arg1), address(arg2), arg3, symbol, 160, 0
                        require ext_call.success
                        uint8(stor21.field_160) = 0
                        if ext_call.return_data[0]:
                            if block.gasprice > txGasPriceLimit:
                                return 1
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 50 wei
                                args tx.origin, (transferFromCallGas * block.gasprice) + (refundGas * block.gasprice)
                            require ext_call.success
                            return 1
                    if not feeAddress:
                        return 0
                    if feeAddress == arg1:
                        return 0
                    if not absMaxFee:
                        return 0
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                         gas gas_remaining - 50 wei
                        args 0, uint32(stor21.field_0), address(arg1), absMaxFee, symbol, 160, 10, 'Fee return'
                else:
                    if not absMaxFee:
                        uint8(stor21.field_160) = 1
                        if tx.origin != msg.sender:
                            uint8(stor21.field_160) = 0
                        else:
                            require ext_code.size(multiAssetAddress)
                            call multiAssetAddress.proxyTransferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), address(arg2), arg3, symbol, 160, 0
                            require ext_call.success
                            uint8(stor21.field_160) = 0
                            if ext_call.return_data[0]:
                                if block.gasprice > txGasPriceLimit:
                                    return 1
                                require ext_code.size(treasuryAddress)
                                call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 50 wei
                                    args tx.origin, (transferFromCallGas * block.gasprice) + (refundGas * block.gasprice)
                                require ext_call.success
                                return 1
                        if not feeAddress:
                            return 0
                        if feeAddress == arg1:
                            return 0
                        if not absMaxFee:
                            return 0
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                             gas gas_remaining - 50 wei
                            args 0, uint32(stor21.field_0), address(arg1), absMaxFee, symbol, 160, 10, 'Fee return'
                    else:
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                             gas gas_remaining - 50 wei
                            args 0, 0, uint32(stor21.field_0), absMaxFee, symbol, 160, 12, 0
                        require ext_call.success
                        if not ext_call.return_data[0]:
                            return 0
                        uint8(stor21.field_160) = 1
                        if tx.origin != msg.sender:
                            uint8(stor21.field_160) = 0
                        else:
                            require ext_code.size(multiAssetAddress)
                            call multiAssetAddress.proxyTransferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), address(arg2), arg3, symbol, 160, 0
                            require ext_call.success
                            uint8(stor21.field_160) = 0
                            if ext_call.return_data[0]:
                                if block.gasprice > txGasPriceLimit:
                                    return 1
                                require ext_code.size(treasuryAddress)
                                call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 50 wei
                                    args tx.origin, (transferFromCallGas * block.gasprice) + (refundGas * block.gasprice)
                                require ext_call.success
                                return 1
                        if not feeAddress:
                            return 0
                        if feeAddress == arg1:
                            return 0
                        if not absMaxFee:
                            return 0
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                             gas gas_remaining - 50 wei
                            args 0, uint32(stor21.field_0), address(arg1), absMaxFee, symbol, 160, 10, 0, 'Fee return'
    require ext_call.success
    require ext_call.return_data[0]
    return 0
}

function transferToICAPWithReference(bytes32 arg1, uint256 arg2, string arg3) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = 12
    mem[ceil32(arg3.length) + 160] = 'Transfer fee' << 160
    if arg2 * feePercent / 10000 < absMinFee:
        if 75 * arg3.length > 7500:
            if feeAddress:
                if feeAddress != msg.sender:
                    if (2 * absMinFee) + (75 * arg3.length / 100000 * absMinFee):
                        mem[ceil32(arg3.length) + 356] = 12
                        mem[ceil32(arg3.length) + 420 len 0] = None
                        mem[ceil32(arg3.length) + 388] = 0
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                             gas gas_remaining - 50 wei
                            args msg.sender, feeAddress, (2 * absMinFee) + (75 * arg3.length / 100000 * absMinFee), symbol, 160, 12, 0
                        require ext_call.success
                        if not ext_call.return_data[0]:
                            return 0
            uint8(stor21.field_160) = 1
            mem[ceil32(arg3.length) + 192] = 0xa48a663c00000000000000000000000000000000000000000000000000000000
            if msg.sender == tx.origin:
                mem[ceil32(arg3.length) + 196] = tx.origin
                mem[ceil32(arg3.length) + 228] = arg1
                mem[ceil32(arg3.length) + 260] = arg2
                mem[ceil32(arg3.length) + 292] = 128
                mem[ceil32(arg3.length) + 324] = arg3.length
                if arg3.length:
                    mem[ceil32(arg3.length) + 356] = mem[128]
                    mem[ceil32(arg3.length) + 388 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.0xa48a663c with:
                     gas gas_remaining - 50 wei
                    args tx.origin, arg1, arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 356 len arg3.length])
            else:
                mem[ceil32(arg3.length) + 196] = msg.sender
                mem[ceil32(arg3.length) + 228] = arg1
                mem[ceil32(arg3.length) + 260] = arg2
                mem[ceil32(arg3.length) + 292] = 128
                mem[ceil32(arg3.length) + 324] = arg3.length
                if arg3.length:
                    mem[ceil32(arg3.length) + 356] = mem[128]
                    mem[ceil32(arg3.length) + 388 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.0xa48a663c with:
                     gas gas_remaining - 50 wei
                    args msg.sender, arg1, arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 356 len arg3.length])
            require ext_call.success
            uint8(stor21.field_160) = 0
            if ext_call.return_data[0]:
                if block.gasprice > txGasPriceLimit:
                    return 1
                require ext_code.size(treasuryAddress)
                call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                     gas gas_remaining - 50 wei
                    args tx.origin, (transferToICAPWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                require ext_call.success
                return 1
            if not feeAddress:
                return 0
            if feeAddress == msg.sender:
                return 0
            if not (2 * absMinFee) + (75 * arg3.length / 100000 * absMinFee):
                return 0
            require ext_code.size(multiAssetAddress)
            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                 gas gas_remaining - 50 wei
                args feeAddress, msg.sender, (2 * absMinFee) + (75 * arg3.length / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
        else:
            if feeAddress:
                if feeAddress != msg.sender:
                    if absMinFee:
                        mem[ceil32(arg3.length) + 356] = 12
                        mem[ceil32(arg3.length) + 420 len 0] = None
                        mem[ceil32(arg3.length) + 388] = 0
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                             gas gas_remaining - 50 wei
                            args msg.sender, feeAddress, absMinFee, symbol, 160, 12, 0
                        require ext_call.success
                        if not ext_call.return_data[0]:
                            return 0
            uint8(stor21.field_160) = 1
            mem[ceil32(arg3.length) + 192] = 0xa48a663c00000000000000000000000000000000000000000000000000000000
            if msg.sender == tx.origin:
                mem[ceil32(arg3.length) + 196] = tx.origin
                mem[ceil32(arg3.length) + 228] = arg1
                mem[ceil32(arg3.length) + 260] = arg2
                mem[ceil32(arg3.length) + 292] = 128
                mem[ceil32(arg3.length) + 324] = arg3.length
                if arg3.length:
                    mem[ceil32(arg3.length) + 356] = mem[128]
                    mem[ceil32(arg3.length) + 388 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.0xa48a663c with:
                     gas gas_remaining - 50 wei
                    args tx.origin, arg1, arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 356 len arg3.length])
            else:
                mem[ceil32(arg3.length) + 196] = msg.sender
                mem[ceil32(arg3.length) + 228] = arg1
                mem[ceil32(arg3.length) + 260] = arg2
                mem[ceil32(arg3.length) + 292] = 128
                mem[ceil32(arg3.length) + 324] = arg3.length
                if arg3.length:
                    mem[ceil32(arg3.length) + 356] = mem[128]
                    mem[ceil32(arg3.length) + 388 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.0xa48a663c with:
                     gas gas_remaining - 50 wei
                    args msg.sender, arg1, arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 356 len arg3.length])
            require ext_call.success
            uint8(stor21.field_160) = 0
            if ext_call.return_data[0]:
                if block.gasprice > txGasPriceLimit:
                    return 1
                require ext_code.size(treasuryAddress)
                call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                     gas gas_remaining - 50 wei
                    args tx.origin, (transferToICAPWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                require ext_call.success
                return 1
            if not feeAddress:
                return 0
            if feeAddress == msg.sender:
                return 0
            if not absMinFee:
                return 0
            require ext_code.size(multiAssetAddress)
            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                 gas gas_remaining - 50 wei
                args feeAddress, msg.sender, absMinFee, symbol, Array(len=10, data='Fee return')
    else:
        if arg2 * feePercent / 10000 <= absMaxFee:
            if 75 * arg3.length > 7500:
                if feeAddress:
                    if feeAddress != msg.sender:
                        if (arg2 * feePercent / 10000) + absMinFee + (75 * arg3.length / 100000 * absMinFee):
                            mem[ceil32(arg3.length) + 356] = 12
                            mem[ceil32(arg3.length) + 420 len 0] = None
                            mem[ceil32(arg3.length) + 388] = 0
                            require ext_code.size(multiAssetAddress)
                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                 gas gas_remaining - 50 wei
                                args msg.sender, feeAddress, (arg2 * feePercent / 10000) + absMinFee + (75 * arg3.length / 100000 * absMinFee), symbol, 160, 12, 0
                            require ext_call.success
                            if not ext_call.return_data[0]:
                                return 0
                uint8(stor21.field_160) = 1
                mem[ceil32(arg3.length) + 192] = 0xa48a663c00000000000000000000000000000000000000000000000000000000
                if msg.sender == tx.origin:
                    mem[ceil32(arg3.length) + 196] = tx.origin
                    mem[ceil32(arg3.length) + 228] = arg1
                    mem[ceil32(arg3.length) + 260] = arg2
                    mem[ceil32(arg3.length) + 292] = 128
                    mem[ceil32(arg3.length) + 324] = arg3.length
                    if arg3.length:
                        mem[ceil32(arg3.length) + 356] = mem[128]
                        mem[ceil32(arg3.length) + 388 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.0xa48a663c with:
                         gas gas_remaining - 50 wei
                        args tx.origin, arg1, arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 356 len arg3.length])
                else:
                    mem[ceil32(arg3.length) + 196] = msg.sender
                    mem[ceil32(arg3.length) + 228] = arg1
                    mem[ceil32(arg3.length) + 260] = arg2
                    mem[ceil32(arg3.length) + 292] = 128
                    mem[ceil32(arg3.length) + 324] = arg3.length
                    if arg3.length:
                        mem[ceil32(arg3.length) + 356] = mem[128]
                        mem[ceil32(arg3.length) + 388 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.0xa48a663c with:
                         gas gas_remaining - 50 wei
                        args msg.sender, arg1, arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 356 len arg3.length])
                require ext_call.success
                uint8(stor21.field_160) = 0
                if ext_call.return_data[0]:
                    if block.gasprice > txGasPriceLimit:
                        return 1
                    require ext_code.size(treasuryAddress)
                    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                         gas gas_remaining - 50 wei
                        args tx.origin, (transferToICAPWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                    require ext_call.success
                    return 1
                if not feeAddress:
                    return 0
                if feeAddress == msg.sender:
                    return 0
                if not (arg2 * feePercent / 10000) + absMinFee + (75 * arg3.length / 100000 * absMinFee):
                    return 0
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args feeAddress, msg.sender, (arg2 * feePercent / 10000) + absMinFee + (75 * arg3.length / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
            else:
                if feeAddress:
                    if feeAddress != msg.sender:
                        if arg2 * feePercent / 10000:
                            mem[ceil32(arg3.length) + 356] = 12
                            mem[ceil32(arg3.length) + 420 len 0] = None
                            mem[ceil32(arg3.length) + 388] = 0
                            require ext_code.size(multiAssetAddress)
                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                 gas gas_remaining - 50 wei
                                args msg.sender, feeAddress, arg2 * feePercent / 10000, symbol, 160, 12, 0
                            require ext_call.success
                            if not ext_call.return_data[0]:
                                return 0
                uint8(stor21.field_160) = 1
                mem[ceil32(arg3.length) + 192] = 0xa48a663c00000000000000000000000000000000000000000000000000000000
                if msg.sender == tx.origin:
                    mem[ceil32(arg3.length) + 196] = tx.origin
                    mem[ceil32(arg3.length) + 228] = arg1
                    mem[ceil32(arg3.length) + 260] = arg2
                    mem[ceil32(arg3.length) + 292] = 128
                    mem[ceil32(arg3.length) + 324] = arg3.length
                    if arg3.length:
                        mem[ceil32(arg3.length) + 356] = mem[128]
                        mem[ceil32(arg3.length) + 388 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.0xa48a663c with:
                         gas gas_remaining - 50 wei
                        args tx.origin, arg1, arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 356 len arg3.length])
                else:
                    mem[ceil32(arg3.length) + 196] = msg.sender
                    mem[ceil32(arg3.length) + 228] = arg1
                    mem[ceil32(arg3.length) + 260] = arg2
                    mem[ceil32(arg3.length) + 292] = 128
                    mem[ceil32(arg3.length) + 324] = arg3.length
                    if arg3.length:
                        mem[ceil32(arg3.length) + 356] = mem[128]
                        mem[ceil32(arg3.length) + 388 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.0xa48a663c with:
                         gas gas_remaining - 50 wei
                        args msg.sender, arg1, arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 356 len arg3.length])
                require ext_call.success
                uint8(stor21.field_160) = 0
                if ext_call.return_data[0]:
                    if block.gasprice > txGasPriceLimit:
                        return 1
                    require ext_code.size(treasuryAddress)
                    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                         gas gas_remaining - 50 wei
                        args tx.origin, (transferToICAPWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                    require ext_call.success
                    return 1
                if not feeAddress:
                    return 0
                if feeAddress == msg.sender:
                    return 0
                if not arg2 * feePercent / 10000:
                    return 0
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args feeAddress, msg.sender, arg2 * feePercent / 10000, symbol, Array(len=10, data='Fee return')
        else:
            if 75 * arg3.length > 7500:
                if feeAddress:
                    if feeAddress != msg.sender:
                        if absMaxFee + absMinFee + (75 * arg3.length / 100000 * absMinFee):
                            mem[ceil32(arg3.length) + 356] = 12
                            mem[ceil32(arg3.length) + 420 len 0] = None
                            mem[ceil32(arg3.length) + 388] = 0
                            require ext_code.size(multiAssetAddress)
                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                 gas gas_remaining - 50 wei
                                args msg.sender, feeAddress, absMaxFee + absMinFee + (75 * arg3.length / 100000 * absMinFee), symbol, 160, 12, 0
                            require ext_call.success
                            if not ext_call.return_data[0]:
                                return 0
                uint8(stor21.field_160) = 1
                mem[ceil32(arg3.length) + 192] = 0xa48a663c00000000000000000000000000000000000000000000000000000000
                if msg.sender == tx.origin:
                    mem[ceil32(arg3.length) + 196] = tx.origin
                    mem[ceil32(arg3.length) + 228] = arg1
                    mem[ceil32(arg3.length) + 260] = arg2
                    mem[ceil32(arg3.length) + 292] = 128
                    mem[ceil32(arg3.length) + 324] = arg3.length
                    if arg3.length:
                        mem[ceil32(arg3.length) + 356] = mem[128]
                        mem[ceil32(arg3.length) + 388 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.0xa48a663c with:
                         gas gas_remaining - 50 wei
                        args tx.origin, arg1, arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 356 len arg3.length])
                else:
                    mem[ceil32(arg3.length) + 196] = msg.sender
                    mem[ceil32(arg3.length) + 228] = arg1
                    mem[ceil32(arg3.length) + 260] = arg2
                    mem[ceil32(arg3.length) + 292] = 128
                    mem[ceil32(arg3.length) + 324] = arg3.length
                    if arg3.length:
                        mem[ceil32(arg3.length) + 356] = mem[128]
                        mem[ceil32(arg3.length) + 388 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.0xa48a663c with:
                         gas gas_remaining - 50 wei
                        args msg.sender, arg1, arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 356 len arg3.length])
                require ext_call.success
                uint8(stor21.field_160) = 0
                if ext_call.return_data[0]:
                    if block.gasprice > txGasPriceLimit:
                        return 1
                    require ext_code.size(treasuryAddress)
                    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                         gas gas_remaining - 50 wei
                        args tx.origin, (transferToICAPWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                    require ext_call.success
                    return 1
                if not feeAddress:
                    return 0
                if feeAddress == msg.sender:
                    return 0
                if not absMaxFee + absMinFee + (75 * arg3.length / 100000 * absMinFee):
                    return 0
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args feeAddress, msg.sender, absMaxFee + absMinFee + (75 * arg3.length / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
            else:
                if feeAddress:
                    if feeAddress != msg.sender:
                        if absMaxFee:
                            mem[ceil32(arg3.length) + 356] = 12
                            mem[ceil32(arg3.length) + 420 len 0] = None
                            mem[ceil32(arg3.length) + 388] = 0
                            require ext_code.size(multiAssetAddress)
                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                 gas gas_remaining - 50 wei
                                args msg.sender, feeAddress, absMaxFee, symbol, 160, 12, 0
                            require ext_call.success
                            if not ext_call.return_data[0]:
                                return 0
                uint8(stor21.field_160) = 1
                mem[ceil32(arg3.length) + 192] = 0xa48a663c00000000000000000000000000000000000000000000000000000000
                if msg.sender == tx.origin:
                    mem[ceil32(arg3.length) + 196] = tx.origin
                    mem[ceil32(arg3.length) + 228] = arg1
                    mem[ceil32(arg3.length) + 260] = arg2
                    mem[ceil32(arg3.length) + 292] = 128
                    mem[ceil32(arg3.length) + 324] = arg3.length
                    if arg3.length:
                        mem[ceil32(arg3.length) + 356] = mem[128]
                        mem[ceil32(arg3.length) + 388 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.0xa48a663c with:
                         gas gas_remaining - 50 wei
                        args tx.origin, arg1, arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 356 len arg3.length])
                else:
                    mem[ceil32(arg3.length) + 196] = msg.sender
                    mem[ceil32(arg3.length) + 228] = arg1
                    mem[ceil32(arg3.length) + 260] = arg2
                    mem[ceil32(arg3.length) + 292] = 128
                    mem[ceil32(arg3.length) + 324] = arg3.length
                    if arg3.length:
                        mem[ceil32(arg3.length) + 356] = mem[128]
                        mem[ceil32(arg3.length) + 388 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.0xa48a663c with:
                         gas gas_remaining - 50 wei
                        args msg.sender, arg1, arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 356 len arg3.length])
                require ext_call.success
                uint8(stor21.field_160) = 0
                if ext_call.return_data[0]:
                    if block.gasprice > txGasPriceLimit:
                        return 1
                    require ext_code.size(treasuryAddress)
                    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                         gas gas_remaining - 50 wei
                        args tx.origin, (transferToICAPWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                    require ext_call.success
                    return 1
                if not feeAddress:
                    return 0
                if feeAddress == msg.sender:
                    return 0
                if not absMaxFee:
                    return 0
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args feeAddress, msg.sender, absMaxFee, symbol, Array(len=10, data='Fee return')
    require ext_call.success
    require ext_call.return_data[0]
    return 0
}

function transfer(address arg1, uint256 arg2) {
    if arg2 * feePercent / 10000 < absMinFee:
        if not feeAddress:
            uint8(stor21.field_160) = 1
            require ext_code.size(multiAssetAddress)
            if msg.sender == tx.origin:
                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args tx.origin, address(arg1), arg2, symbol, 160, 0
            else:
                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args msg.sender, address(arg1), arg2, symbol, 160, 0
            require ext_call.success
            uint8(stor21.field_160) = 0
            if ext_call.return_data[0]:
                if block.gasprice > txGasPriceLimit:
                    return 1
                require ext_code.size(treasuryAddress)
                call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                     gas gas_remaining - 50 wei
                    args tx.origin, (transferCallGas * block.gasprice) + (refundGas * block.gasprice)
                require ext_call.success
                return 1
            if not feeAddress:
                return 0
            if feeAddress == msg.sender:
                return 0
            if not absMinFee:
                return 0
            require ext_code.size(multiAssetAddress)
            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                 gas gas_remaining - 50 wei
                args 0, uint32(stor21.field_0), msg.sender, absMinFee, symbol, 160, 10, 'Fee return'
        else:
            if feeAddress == msg.sender:
                uint8(stor21.field_160) = 1
                require ext_code.size(multiAssetAddress)
                if msg.sender == tx.origin:
                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                         gas gas_remaining - 50 wei
                        args tx.origin, address(arg1), arg2, symbol, 160, 0
                else:
                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                         gas gas_remaining - 50 wei
                        args msg.sender, address(arg1), arg2, symbol, 160, 0
                require ext_call.success
                uint8(stor21.field_160) = 0
                if ext_call.return_data[0]:
                    if block.gasprice > txGasPriceLimit:
                        return 1
                    require ext_code.size(treasuryAddress)
                    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                         gas gas_remaining - 50 wei
                        args tx.origin, (transferCallGas * block.gasprice) + (refundGas * block.gasprice)
                    require ext_call.success
                    return 1
                if not feeAddress:
                    return 0
                if feeAddress == msg.sender:
                    return 0
                if not absMinFee:
                    return 0
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args 0, uint32(stor21.field_0), msg.sender, absMinFee, symbol, 160, 10, 'Fee return'
            else:
                if not absMinFee:
                    uint8(stor21.field_160) = 1
                    require ext_code.size(multiAssetAddress)
                    if msg.sender == tx.origin:
                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                             gas gas_remaining - 50 wei
                            args tx.origin, address(arg1), arg2, symbol, 160, 0
                    else:
                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                             gas gas_remaining - 50 wei
                            args msg.sender, address(arg1), arg2, symbol, 160, 0
                    require ext_call.success
                    uint8(stor21.field_160) = 0
                    if ext_call.return_data[0]:
                        if block.gasprice > txGasPriceLimit:
                            return 1
                        require ext_code.size(treasuryAddress)
                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                             gas gas_remaining - 50 wei
                            args tx.origin, (transferCallGas * block.gasprice) + (refundGas * block.gasprice)
                        require ext_call.success
                        return 1
                    if not feeAddress:
                        return 0
                    if feeAddress == msg.sender:
                        return 0
                    if not absMinFee:
                        return 0
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                         gas gas_remaining - 50 wei
                        args 0, uint32(stor21.field_0), msg.sender, absMinFee, symbol, 160, 10, 'Fee return'
                else:
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                         gas gas_remaining - 50 wei
                        args 0, 0, uint32(stor21.field_0), absMinFee, symbol, 160, 12, 0
                    require ext_call.success
                    if not ext_call.return_data[0]:
                        return 0
                    uint8(stor21.field_160) = 1
                    require ext_code.size(multiAssetAddress)
                    if msg.sender == tx.origin:
                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                             gas gas_remaining - 50 wei
                            args tx.origin, address(arg1), arg2, symbol, 160, 0
                    else:
                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                             gas gas_remaining - 50 wei
                            args msg.sender, address(arg1), arg2, symbol, 160, 0
                    require ext_call.success
                    uint8(stor21.field_160) = 0
                    if ext_call.return_data[0]:
                        if block.gasprice > txGasPriceLimit:
                            return 1
                        require ext_code.size(treasuryAddress)
                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                             gas gas_remaining - 50 wei
                            args tx.origin, (transferCallGas * block.gasprice) + (refundGas * block.gasprice)
                        require ext_call.success
                        return 1
                    if not feeAddress:
                        return 0
                    if feeAddress == msg.sender:
                        return 0
                    if not absMinFee:
                        return 0
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                         gas gas_remaining - 50 wei
                        args 0, uint32(stor21.field_0), msg.sender, absMinFee, symbol, 160, 10, 0, 'Fee return'
    else:
        if arg2 * feePercent / 10000 <= absMaxFee:
            if not feeAddress:
                uint8(stor21.field_160) = 1
                require ext_code.size(multiAssetAddress)
                if msg.sender == tx.origin:
                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                         gas gas_remaining - 50 wei
                        args tx.origin, address(arg1), arg2, symbol, 160, 0
                else:
                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                         gas gas_remaining - 50 wei
                        args msg.sender, address(arg1), arg2, symbol, 160, 0
                require ext_call.success
                uint8(stor21.field_160) = 0
                if ext_call.return_data[0]:
                    if block.gasprice > txGasPriceLimit:
                        return 1
                    require ext_code.size(treasuryAddress)
                    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                         gas gas_remaining - 50 wei
                        args tx.origin, (transferCallGas * block.gasprice) + (refundGas * block.gasprice)
                    require ext_call.success
                    return 1
                if not feeAddress:
                    return 0
                if feeAddress == msg.sender:
                    return 0
                if not arg2 * feePercent / 10000:
                    return 0
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args 0, uint32(stor21.field_0), msg.sender, arg2 * feePercent / 10000, symbol, 160, 10, 'Fee return'
            else:
                if feeAddress == msg.sender:
                    uint8(stor21.field_160) = 1
                    require ext_code.size(multiAssetAddress)
                    if msg.sender == tx.origin:
                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                             gas gas_remaining - 50 wei
                            args tx.origin, address(arg1), arg2, symbol, 160, 0
                    else:
                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                             gas gas_remaining - 50 wei
                            args msg.sender, address(arg1), arg2, symbol, 160, 0
                    require ext_call.success
                    uint8(stor21.field_160) = 0
                    if ext_call.return_data[0]:
                        if block.gasprice > txGasPriceLimit:
                            return 1
                        require ext_code.size(treasuryAddress)
                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                             gas gas_remaining - 50 wei
                            args tx.origin, (transferCallGas * block.gasprice) + (refundGas * block.gasprice)
                        require ext_call.success
                        return 1
                    if not feeAddress:
                        return 0
                    if feeAddress == msg.sender:
                        return 0
                    if not arg2 * feePercent / 10000:
                        return 0
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                         gas gas_remaining - 50 wei
                        args 0, uint32(stor21.field_0), msg.sender, arg2 * feePercent / 10000, symbol, 160, 10, 'Fee return'
                else:
                    if not arg2 * feePercent / 10000:
                        uint8(stor21.field_160) = 1
                        require ext_code.size(multiAssetAddress)
                        if msg.sender == tx.origin:
                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                 gas gas_remaining - 50 wei
                                args tx.origin, address(arg1), arg2, symbol, 160, 0
                        else:
                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                 gas gas_remaining - 50 wei
                                args msg.sender, address(arg1), arg2, symbol, 160, 0
                        require ext_call.success
                        uint8(stor21.field_160) = 0
                        if ext_call.return_data[0]:
                            if block.gasprice > txGasPriceLimit:
                                return 1
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 50 wei
                                args tx.origin, (transferCallGas * block.gasprice) + (refundGas * block.gasprice)
                            require ext_call.success
                            return 1
                        if not feeAddress:
                            return 0
                        if feeAddress == msg.sender:
                            return 0
                        if not arg2 * feePercent / 10000:
                            return 0
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                             gas gas_remaining - 50 wei
                            args 0, uint32(stor21.field_0), msg.sender, arg2 * feePercent / 10000, symbol, 160, 10, 'Fee return'
                    else:
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                             gas gas_remaining - 50 wei
                            args 0, 0, uint32(stor21.field_0), arg2 * feePercent / 10000, symbol, 160, 12, 0
                        require ext_call.success
                        if not ext_call.return_data[0]:
                            return 0
                        uint8(stor21.field_160) = 1
                        require ext_code.size(multiAssetAddress)
                        if msg.sender == tx.origin:
                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                 gas gas_remaining - 50 wei
                                args tx.origin, address(arg1), arg2, symbol, 160, 0
                        else:
                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                 gas gas_remaining - 50 wei
                                args msg.sender, address(arg1), arg2, symbol, 160, 0
                        require ext_call.success
                        uint8(stor21.field_160) = 0
                        if ext_call.return_data[0]:
                            if block.gasprice > txGasPriceLimit:
                                return 1
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 50 wei
                                args tx.origin, (transferCallGas * block.gasprice) + (refundGas * block.gasprice)
                            require ext_call.success
                            return 1
                        if not feeAddress:
                            return 0
                        if feeAddress == msg.sender:
                            return 0
                        if not arg2 * feePercent / 10000:
                            return 0
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                             gas gas_remaining - 50 wei
                            args 0, uint32(stor21.field_0), msg.sender, arg2 * feePercent / 10000, symbol, 160, 10, 0, 'Fee return'
        else:
            if not feeAddress:
                uint8(stor21.field_160) = 1
                require ext_code.size(multiAssetAddress)
                if msg.sender == tx.origin:
                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                         gas gas_remaining - 50 wei
                        args tx.origin, address(arg1), arg2, symbol, 160, 0
                else:
                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                         gas gas_remaining - 50 wei
                        args msg.sender, address(arg1), arg2, symbol, 160, 0
                require ext_call.success
                uint8(stor21.field_160) = 0
                if ext_call.return_data[0]:
                    if block.gasprice > txGasPriceLimit:
                        return 1
                    require ext_code.size(treasuryAddress)
                    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                         gas gas_remaining - 50 wei
                        args tx.origin, (transferCallGas * block.gasprice) + (refundGas * block.gasprice)
                    require ext_call.success
                    return 1
                if not feeAddress:
                    return 0
                if feeAddress == msg.sender:
                    return 0
                if not absMaxFee:
                    return 0
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args 0, uint32(stor21.field_0), msg.sender, absMaxFee, symbol, 160, 10, 'Fee return'
            else:
                if feeAddress == msg.sender:
                    uint8(stor21.field_160) = 1
                    require ext_code.size(multiAssetAddress)
                    if msg.sender == tx.origin:
                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                             gas gas_remaining - 50 wei
                            args tx.origin, address(arg1), arg2, symbol, 160, 0
                    else:
                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                             gas gas_remaining - 50 wei
                            args msg.sender, address(arg1), arg2, symbol, 160, 0
                    require ext_call.success
                    uint8(stor21.field_160) = 0
                    if ext_call.return_data[0]:
                        if block.gasprice > txGasPriceLimit:
                            return 1
                        require ext_code.size(treasuryAddress)
                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                             gas gas_remaining - 50 wei
                            args tx.origin, (transferCallGas * block.gasprice) + (refundGas * block.gasprice)
                        require ext_call.success
                        return 1
                    if not feeAddress:
                        return 0
                    if feeAddress == msg.sender:
                        return 0
                    if not absMaxFee:
                        return 0
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                         gas gas_remaining - 50 wei
                        args 0, uint32(stor21.field_0), msg.sender, absMaxFee, symbol, 160, 10, 'Fee return'
                else:
                    if not absMaxFee:
                        uint8(stor21.field_160) = 1
                        require ext_code.size(multiAssetAddress)
                        if msg.sender == tx.origin:
                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                 gas gas_remaining - 50 wei
                                args tx.origin, address(arg1), arg2, symbol, 160, 0
                        else:
                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                 gas gas_remaining - 50 wei
                                args msg.sender, address(arg1), arg2, symbol, 160, 0
                        require ext_call.success
                        uint8(stor21.field_160) = 0
                        if ext_call.return_data[0]:
                            if block.gasprice > txGasPriceLimit:
                                return 1
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 50 wei
                                args tx.origin, (transferCallGas * block.gasprice) + (refundGas * block.gasprice)
                            require ext_call.success
                            return 1
                        if not feeAddress:
                            return 0
                        if feeAddress == msg.sender:
                            return 0
                        if not absMaxFee:
                            return 0
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                             gas gas_remaining - 50 wei
                            args 0, uint32(stor21.field_0), msg.sender, absMaxFee, symbol, 160, 10, 'Fee return'
                    else:
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                             gas gas_remaining - 50 wei
                            args 0, 0, uint32(stor21.field_0), absMaxFee, symbol, 160, 12, 0
                        require ext_call.success
                        if not ext_call.return_data[0]:
                            return 0
                        uint8(stor21.field_160) = 1
                        require ext_code.size(multiAssetAddress)
                        if msg.sender == tx.origin:
                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                 gas gas_remaining - 50 wei
                                args tx.origin, address(arg1), arg2, symbol, 160, 0
                        else:
                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                 gas gas_remaining - 50 wei
                                args msg.sender, address(arg1), arg2, symbol, 160, 0
                        require ext_call.success
                        uint8(stor21.field_160) = 0
                        if ext_call.return_data[0]:
                            if block.gasprice > txGasPriceLimit:
                                return 1
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 50 wei
                                args tx.origin, (transferCallGas * block.gasprice) + (refundGas * block.gasprice)
                            require ext_call.success
                            return 1
                        if not feeAddress:
                            return 0
                        if feeAddress == msg.sender:
                            return 0
                        if not absMaxFee:
                            return 0
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                             gas gas_remaining - 50 wei
                            args 0, uint32(stor21.field_0), msg.sender, absMaxFee, symbol, 160, 10, 0, 'Fee return'
    require ext_call.success
    require ext_call.return_data[0]
    return 0
}

function transferWithReference(address arg1, uint256 arg2, string arg3) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = 12
    mem[ceil32(arg3.length) + 160] = 'Transfer fee' << 160
    if arg2 * feePercent / 10000 < absMinFee:
        if 75 * arg3.length > 7500:
            if feeAddress:
                if feeAddress != msg.sender:
                    if (2 * absMinFee) + (75 * arg3.length / 100000 * absMinFee):
                        mem[ceil32(arg3.length) + 420 len 0] = None
                        mem[ceil32(arg3.length) + 388] = 0
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                             gas gas_remaining - 50 wei
                            args msg.sender, feeAddress, (2 * absMinFee) + (75 * arg3.length / 100000 * absMinFee), symbol, 160, 12, 0
                        require ext_call.success
                        if not ext_call.return_data[0]:
                            return 0
            uint8(stor21.field_160) = 1
            mem[ceil32(arg3.length) + 192] = 0x31c6c4cf00000000000000000000000000000000000000000000000000000000
            if msg.sender == tx.origin:
                mem[ceil32(arg3.length) + 196] = tx.origin
                mem[ceil32(arg3.length) + 228] = arg1
                mem[ceil32(arg3.length) + 260] = arg2
                mem[ceil32(arg3.length) + 292] = symbol
                mem[ceil32(arg3.length) + 324] = 160
                mem[ceil32(arg3.length) + 356] = arg3.length
                if arg3.length:
                    mem[ceil32(arg3.length) + 388] = mem[128]
                    if arg3.length > 32:
                        mem[ceil32(arg3.length) + 420] = mem[160]
                        mem[ceil32(arg3.length) + 452 len floor32(arg3.length - 33)] = mem[192 len floor32(arg3.length - 33)]
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args tx.origin, address(arg1), arg2, symbol, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 388 len arg3.length])
            else:
                mem[ceil32(arg3.length) + 196] = msg.sender
                mem[ceil32(arg3.length) + 228] = arg1
                mem[ceil32(arg3.length) + 260] = arg2
                mem[ceil32(arg3.length) + 292] = symbol
                mem[ceil32(arg3.length) + 324] = 160
                mem[ceil32(arg3.length) + 356] = arg3.length
                if arg3.length:
                    mem[ceil32(arg3.length) + 388] = mem[128]
                    if arg3.length > 32:
                        mem[ceil32(arg3.length) + 420] = mem[160]
                        mem[ceil32(arg3.length) + 452 len floor32(arg3.length - 33)] = mem[192 len floor32(arg3.length - 33)]
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args msg.sender, address(arg1), arg2, symbol, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 388 len arg3.length])
            require ext_call.success
            uint8(stor21.field_160) = 0
            if ext_call.return_data[0]:
                if block.gasprice > txGasPriceLimit:
                    return 1
                require ext_code.size(treasuryAddress)
                call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                     gas gas_remaining - 50 wei
                    args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                require ext_call.success
                return 1
            if not feeAddress:
                return 0
            if feeAddress == msg.sender:
                return 0
            if not (2 * absMinFee) + (75 * arg3.length / 100000 * absMinFee):
                return 0
            require ext_code.size(multiAssetAddress)
            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                 gas gas_remaining - 50 wei
                args feeAddress, msg.sender, (2 * absMinFee) + (75 * arg3.length / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
        else:
            if feeAddress:
                if feeAddress != msg.sender:
                    if absMinFee:
                        mem[ceil32(arg3.length) + 420 len 0] = None
                        mem[ceil32(arg3.length) + 388] = 0
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                             gas gas_remaining - 50 wei
                            args msg.sender, feeAddress, absMinFee, symbol, 160, 12, 0
                        require ext_call.success
                        if not ext_call.return_data[0]:
                            return 0
            uint8(stor21.field_160) = 1
            mem[ceil32(arg3.length) + 192] = 0x31c6c4cf00000000000000000000000000000000000000000000000000000000
            if msg.sender == tx.origin:
                mem[ceil32(arg3.length) + 196] = tx.origin
                mem[ceil32(arg3.length) + 228] = arg1
                mem[ceil32(arg3.length) + 260] = arg2
                mem[ceil32(arg3.length) + 292] = symbol
                mem[ceil32(arg3.length) + 324] = 160
                mem[ceil32(arg3.length) + 356] = arg3.length
                if arg3.length:
                    mem[ceil32(arg3.length) + 388] = mem[128]
                    if arg3.length > 32:
                        mem[ceil32(arg3.length) + 420] = mem[160]
                        mem[ceil32(arg3.length) + 452 len floor32(arg3.length - 33)] = mem[192 len floor32(arg3.length - 33)]
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args tx.origin, address(arg1), arg2, symbol, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 388 len arg3.length])
            else:
                mem[ceil32(arg3.length) + 196] = msg.sender
                mem[ceil32(arg3.length) + 228] = arg1
                mem[ceil32(arg3.length) + 260] = arg2
                mem[ceil32(arg3.length) + 292] = symbol
                mem[ceil32(arg3.length) + 324] = 160
                mem[ceil32(arg3.length) + 356] = arg3.length
                if arg3.length:
                    mem[ceil32(arg3.length) + 388] = mem[128]
                    if arg3.length > 32:
                        mem[ceil32(arg3.length) + 420] = mem[160]
                        mem[ceil32(arg3.length) + 452 len floor32(arg3.length - 33)] = mem[192 len floor32(arg3.length - 33)]
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args msg.sender, address(arg1), arg2, symbol, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 388 len arg3.length])
            require ext_call.success
            uint8(stor21.field_160) = 0
            if ext_call.return_data[0]:
                if block.gasprice > txGasPriceLimit:
                    return 1
                require ext_code.size(treasuryAddress)
                call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                     gas gas_remaining - 50 wei
                    args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                require ext_call.success
                return 1
            if not feeAddress:
                return 0
            if feeAddress == msg.sender:
                return 0
            if not absMinFee:
                return 0
            require ext_code.size(multiAssetAddress)
            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                 gas gas_remaining - 50 wei
                args feeAddress, msg.sender, absMinFee, symbol, Array(len=10, data='Fee return')
    else:
        if arg2 * feePercent / 10000 <= absMaxFee:
            if 75 * arg3.length > 7500:
                if feeAddress:
                    if feeAddress != msg.sender:
                        if (arg2 * feePercent / 10000) + absMinFee + (75 * arg3.length / 100000 * absMinFee):
                            mem[ceil32(arg3.length) + 420 len 0] = None
                            mem[ceil32(arg3.length) + 388] = 0
                            require ext_code.size(multiAssetAddress)
                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                 gas gas_remaining - 50 wei
                                args msg.sender, feeAddress, (arg2 * feePercent / 10000) + absMinFee + (75 * arg3.length / 100000 * absMinFee), symbol, 160, 12, 0
                            require ext_call.success
                            if not ext_call.return_data[0]:
                                return 0
                uint8(stor21.field_160) = 1
                mem[ceil32(arg3.length) + 192] = 0x31c6c4cf00000000000000000000000000000000000000000000000000000000
                if msg.sender == tx.origin:
                    mem[ceil32(arg3.length) + 196] = tx.origin
                    mem[ceil32(arg3.length) + 228] = arg1
                    mem[ceil32(arg3.length) + 260] = arg2
                    mem[ceil32(arg3.length) + 292] = symbol
                    mem[ceil32(arg3.length) + 324] = 160
                    mem[ceil32(arg3.length) + 356] = arg3.length
                    if arg3.length:
                        mem[ceil32(arg3.length) + 388] = mem[128]
                        if arg3.length > 32:
                            mem[ceil32(arg3.length) + 420] = mem[160]
                            mem[ceil32(arg3.length) + 452 len floor32(arg3.length - 33)] = mem[192 len floor32(arg3.length - 33)]
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                         gas gas_remaining - 50 wei
                        args tx.origin, address(arg1), arg2, symbol, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 388 len arg3.length])
                else:
                    mem[ceil32(arg3.length) + 196] = msg.sender
                    mem[ceil32(arg3.length) + 228] = arg1
                    mem[ceil32(arg3.length) + 260] = arg2
                    mem[ceil32(arg3.length) + 292] = symbol
                    mem[ceil32(arg3.length) + 324] = 160
                    mem[ceil32(arg3.length) + 356] = arg3.length
                    if arg3.length:
                        mem[ceil32(arg3.length) + 388] = mem[128]
                        if arg3.length > 32:
                            mem[ceil32(arg3.length) + 420] = mem[160]
                            mem[ceil32(arg3.length) + 452 len floor32(arg3.length - 33)] = mem[192 len floor32(arg3.length - 33)]
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                         gas gas_remaining - 50 wei
                        args msg.sender, address(arg1), arg2, symbol, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 388 len arg3.length])
                require ext_call.success
                uint8(stor21.field_160) = 0
                if ext_call.return_data[0]:
                    if block.gasprice > txGasPriceLimit:
                        return 1
                    require ext_code.size(treasuryAddress)
                    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                         gas gas_remaining - 50 wei
                        args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                    require ext_call.success
                    return 1
                if not feeAddress:
                    return 0
                if feeAddress == msg.sender:
                    return 0
                if not (arg2 * feePercent / 10000) + absMinFee + (75 * arg3.length / 100000 * absMinFee):
                    return 0
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args feeAddress, msg.sender, (arg2 * feePercent / 10000) + absMinFee + (75 * arg3.length / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
            else:
                if feeAddress:
                    if feeAddress != msg.sender:
                        if arg2 * feePercent / 10000:
                            mem[ceil32(arg3.length) + 420 len 0] = None
                            mem[ceil32(arg3.length) + 388] = 0
                            require ext_code.size(multiAssetAddress)
                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                 gas gas_remaining - 50 wei
                                args msg.sender, feeAddress, arg2 * feePercent / 10000, symbol, 160, 12, 0
                            require ext_call.success
                            if not ext_call.return_data[0]:
                                return 0
                uint8(stor21.field_160) = 1
                mem[ceil32(arg3.length) + 192] = 0x31c6c4cf00000000000000000000000000000000000000000000000000000000
                if msg.sender == tx.origin:
                    mem[ceil32(arg3.length) + 196] = tx.origin
                    mem[ceil32(arg3.length) + 228] = arg1
                    mem[ceil32(arg3.length) + 260] = arg2
                    mem[ceil32(arg3.length) + 292] = symbol
                    mem[ceil32(arg3.length) + 324] = 160
                    mem[ceil32(arg3.length) + 356] = arg3.length
                    if arg3.length:
                        mem[ceil32(arg3.length) + 388] = mem[128]
                        if arg3.length > 32:
                            mem[ceil32(arg3.length) + 420] = mem[160]
                            mem[ceil32(arg3.length) + 452 len floor32(arg3.length - 33)] = mem[192 len floor32(arg3.length - 33)]
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                         gas gas_remaining - 50 wei
                        args tx.origin, address(arg1), arg2, symbol, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 388 len arg3.length])
                else:
                    mem[ceil32(arg3.length) + 196] = msg.sender
                    mem[ceil32(arg3.length) + 228] = arg1
                    mem[ceil32(arg3.length) + 260] = arg2
                    mem[ceil32(arg3.length) + 292] = symbol
                    mem[ceil32(arg3.length) + 324] = 160
                    mem[ceil32(arg3.length) + 356] = arg3.length
                    if arg3.length:
                        mem[ceil32(arg3.length) + 388] = mem[128]
                        if arg3.length > 32:
                            mem[ceil32(arg3.length) + 420] = mem[160]
                            mem[ceil32(arg3.length) + 452 len floor32(arg3.length - 33)] = mem[192 len floor32(arg3.length - 33)]
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                         gas gas_remaining - 50 wei
                        args msg.sender, address(arg1), arg2, symbol, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 388 len arg3.length])
                require ext_call.success
                uint8(stor21.field_160) = 0
                if ext_call.return_data[0]:
                    if block.gasprice > txGasPriceLimit:
                        return 1
                    require ext_code.size(treasuryAddress)
                    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                         gas gas_remaining - 50 wei
                        args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                    require ext_call.success
                    return 1
                if not feeAddress:
                    return 0
                if feeAddress == msg.sender:
                    return 0
                if not arg2 * feePercent / 10000:
                    return 0
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args feeAddress, msg.sender, arg2 * feePercent / 10000, symbol, Array(len=10, data='Fee return')
        else:
            if 75 * arg3.length > 7500:
                if feeAddress:
                    if feeAddress != msg.sender:
                        if absMaxFee + absMinFee + (75 * arg3.length / 100000 * absMinFee):
                            mem[ceil32(arg3.length) + 420 len 0] = None
                            mem[ceil32(arg3.length) + 388] = 0
                            require ext_code.size(multiAssetAddress)
                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                 gas gas_remaining - 50 wei
                                args msg.sender, feeAddress, absMaxFee + absMinFee + (75 * arg3.length / 100000 * absMinFee), symbol, 160, 12, 0
                            require ext_call.success
                            if not ext_call.return_data[0]:
                                return 0
                uint8(stor21.field_160) = 1
                mem[ceil32(arg3.length) + 192] = 0x31c6c4cf00000000000000000000000000000000000000000000000000000000
                if msg.sender == tx.origin:
                    mem[ceil32(arg3.length) + 196] = tx.origin
                    mem[ceil32(arg3.length) + 228] = arg1
                    mem[ceil32(arg3.length) + 260] = arg2
                    mem[ceil32(arg3.length) + 292] = symbol
                    mem[ceil32(arg3.length) + 324] = 160
                    mem[ceil32(arg3.length) + 356] = arg3.length
                    if arg3.length:
                        mem[ceil32(arg3.length) + 388] = mem[128]
                        if arg3.length > 32:
                            mem[ceil32(arg3.length) + 420] = mem[160]
                            mem[ceil32(arg3.length) + 452 len floor32(arg3.length - 33)] = mem[192 len floor32(arg3.length - 33)]
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                         gas gas_remaining - 50 wei
                        args tx.origin, address(arg1), arg2, symbol, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 388 len arg3.length])
                else:
                    mem[ceil32(arg3.length) + 196] = msg.sender
                    mem[ceil32(arg3.length) + 228] = arg1
                    mem[ceil32(arg3.length) + 260] = arg2
                    mem[ceil32(arg3.length) + 292] = symbol
                    mem[ceil32(arg3.length) + 324] = 160
                    mem[ceil32(arg3.length) + 356] = arg3.length
                    if arg3.length:
                        mem[ceil32(arg3.length) + 388] = mem[128]
                        if arg3.length > 32:
                            mem[ceil32(arg3.length) + 420] = mem[160]
                            mem[ceil32(arg3.length) + 452 len floor32(arg3.length - 33)] = mem[192 len floor32(arg3.length - 33)]
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                         gas gas_remaining - 50 wei
                        args msg.sender, address(arg1), arg2, symbol, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 388 len arg3.length])
                require ext_call.success
                uint8(stor21.field_160) = 0
                if ext_call.return_data[0]:
                    if block.gasprice > txGasPriceLimit:
                        return 1
                    require ext_code.size(treasuryAddress)
                    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                         gas gas_remaining - 50 wei
                        args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                    require ext_call.success
                    return 1
                if not feeAddress:
                    return 0
                if feeAddress == msg.sender:
                    return 0
                if not absMaxFee + absMinFee + (75 * arg3.length / 100000 * absMinFee):
                    return 0
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args feeAddress, msg.sender, absMaxFee + absMinFee + (75 * arg3.length / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
            else:
                if feeAddress:
                    if feeAddress != msg.sender:
                        if absMaxFee:
                            mem[ceil32(arg3.length) + 420 len 0] = None
                            mem[ceil32(arg3.length) + 388] = 0
                            require ext_code.size(multiAssetAddress)
                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                 gas gas_remaining - 50 wei
                                args msg.sender, feeAddress, absMaxFee, symbol, 160, 12, 0
                            require ext_call.success
                            if not ext_call.return_data[0]:
                                return 0
                uint8(stor21.field_160) = 1
                mem[ceil32(arg3.length) + 192] = 0x31c6c4cf00000000000000000000000000000000000000000000000000000000
                if msg.sender == tx.origin:
                    mem[ceil32(arg3.length) + 196] = tx.origin
                    mem[ceil32(arg3.length) + 228] = arg1
                    mem[ceil32(arg3.length) + 260] = arg2
                    mem[ceil32(arg3.length) + 292] = symbol
                    mem[ceil32(arg3.length) + 324] = 160
                    mem[ceil32(arg3.length) + 356] = arg3.length
                    if arg3.length:
                        mem[ceil32(arg3.length) + 388] = mem[128]
                        if arg3.length > 32:
                            mem[ceil32(arg3.length) + 420] = mem[160]
                            mem[ceil32(arg3.length) + 452 len floor32(arg3.length - 33)] = mem[192 len floor32(arg3.length - 33)]
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                         gas gas_remaining - 50 wei
                        args tx.origin, address(arg1), arg2, symbol, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 388 len arg3.length])
                else:
                    mem[ceil32(arg3.length) + 196] = msg.sender
                    mem[ceil32(arg3.length) + 228] = arg1
                    mem[ceil32(arg3.length) + 260] = arg2
                    mem[ceil32(arg3.length) + 292] = symbol
                    mem[ceil32(arg3.length) + 324] = 160
                    mem[ceil32(arg3.length) + 356] = arg3.length
                    if arg3.length:
                        mem[ceil32(arg3.length) + 388] = mem[128]
                        if arg3.length > 32:
                            mem[ceil32(arg3.length) + 420] = mem[160]
                            mem[ceil32(arg3.length) + 452 len floor32(arg3.length - 33)] = mem[192 len floor32(arg3.length - 33)]
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                         gas gas_remaining - 50 wei
                        args msg.sender, address(arg1), arg2, symbol, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 388 len arg3.length])
                require ext_call.success
                uint8(stor21.field_160) = 0
                if ext_call.return_data[0]:
                    if block.gasprice > txGasPriceLimit:
                        return 1
                    require ext_code.size(treasuryAddress)
                    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                         gas gas_remaining - 50 wei
                        args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                    require ext_call.success
                    return 1
                if not feeAddress:
                    return 0
                if feeAddress == msg.sender:
                    return 0
                if not absMaxFee:
                    return 0
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args feeAddress, msg.sender, absMaxFee, symbol, Array(len=10, data='Fee return')
    require ext_call.success
    require ext_call.return_data[0]
    return 0
}

function setCosignerAddress(address arg1) {
    if 0 >= absMinFee:
        if 0 <= absMaxFee:
            if not feeAddress:
                if tx.origin != msg.sender:
                    if not feeAddress:
                        return 0
                    else:
                        if feeAddress == msg.sender:
                            return 0
                        else:
                            return 0
                else:
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.proxySetCosignerAddress(address rg1, bytes32 rg2) with:
                         gas gas_remaining - 50 wei
                        args address(arg1), symbol
                    require ext_call.success
                    if ext_call.return_data[0]:
                        if block.gasprice <= txGasPriceLimit:
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 50 wei
                                args tx.origin, (setCosignerCallGas * block.gasprice) + (refundGas * block.gasprice)
                            require ext_call.success
                            return 1
                        else:
                            return 1
                    else:
                        if not feeAddress:
                            return 0
                        else:
                            if feeAddress == msg.sender:
                                return 0
                            else:
                                return 0
            else:
                if feeAddress == msg.sender:
                    if tx.origin != msg.sender:
                        if not feeAddress:
                            return 0
                        else:
                            if feeAddress == msg.sender:
                                return 0
                            else:
                                return 0
                    else:
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.proxySetCosignerAddress(address rg1, bytes32 rg2) with:
                             gas gas_remaining - 50 wei
                            args address(arg1), symbol
                        require ext_call.success
                        if ext_call.return_data[0]:
                            if block.gasprice <= txGasPriceLimit:
                                require ext_code.size(treasuryAddress)
                                call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 50 wei
                                    args tx.origin, (setCosignerCallGas * block.gasprice) + (refundGas * block.gasprice)
                                require ext_call.success
                                return 1
                            else:
                                return 1
                        else:
                            if not feeAddress:
                                return 0
                            else:
                                if feeAddress == msg.sender:
                                    return 0
                                else:
                                    return 0
                else:
                    if tx.origin != msg.sender:
                        if not feeAddress:
                            return 0
                        else:
                            if feeAddress == msg.sender:
                                return 0
                            else:
                                return 0
                    else:
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.proxySetCosignerAddress(address rg1, bytes32 rg2) with:
                             gas gas_remaining - 50 wei
                            args address(arg1), symbol
                        require ext_call.success
                        if ext_call.return_data[0]:
                            if block.gasprice <= txGasPriceLimit:
                                require ext_code.size(treasuryAddress)
                                call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 50 wei
                                    args tx.origin, (setCosignerCallGas * block.gasprice) + (refundGas * block.gasprice)
                                require ext_call.success
                                return 1
                            else:
                                return 1
                        else:
                            if not feeAddress:
                                return 0
                            else:
                                if feeAddress == msg.sender:
                                    return 0
                                else:
                                    return 0
        else:
            if not feeAddress:
                if tx.origin != msg.sender:
                    if not feeAddress:
                        return 0
                    else:
                        if feeAddress == msg.sender:
                            return 0
                        else:
                            if absMaxFee:
                                require ext_code.size(multiAssetAddress)
                                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                     gas gas_remaining - 50 wei
                                    args 0, 0, uint32(msg.sender), absMaxFee, symbol, 160, 10, 'Fee return'
                                require ext_call.success
                                require ext_call.return_data[0]
                                return 0
                            else:
                                return 0
                else:
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.proxySetCosignerAddress(address rg1, bytes32 rg2) with:
                         gas gas_remaining - 50 wei
                        args address(arg1), symbol
                    require ext_call.success
                    if ext_call.return_data[0]:
                        if block.gasprice <= txGasPriceLimit:
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 50 wei
                                args tx.origin, (setCosignerCallGas * block.gasprice) + (refundGas * block.gasprice)
                            require ext_call.success
                            return 1
                        else:
                            return 1
                    else:
                        if not feeAddress:
                            return 0
                        else:
                            if feeAddress == msg.sender:
                                return 0
                            else:
                                if absMaxFee:
                                    require ext_code.size(multiAssetAddress)
                                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                         gas gas_remaining - 50 wei
                                        args 0, 0, uint32(msg.sender), absMaxFee, symbol, 160, 10, 'Fee return'
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    return 0
                                else:
                                    return 0
            else:
                if feeAddress == msg.sender:
                    if tx.origin != msg.sender:
                        if not feeAddress:
                            return 0
                        else:
                            if feeAddress == msg.sender:
                                return 0
                            else:
                                if absMaxFee:
                                    require ext_code.size(multiAssetAddress)
                                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                         gas gas_remaining - 50 wei
                                        args 0, 0, uint32(msg.sender), absMaxFee, symbol, 160, 10, 'Fee return'
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    return 0
                                else:
                                    return 0
                    else:
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.proxySetCosignerAddress(address rg1, bytes32 rg2) with:
                             gas gas_remaining - 50 wei
                            args address(arg1), symbol
                        require ext_call.success
                        if ext_call.return_data[0]:
                            if block.gasprice <= txGasPriceLimit:
                                require ext_code.size(treasuryAddress)
                                call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 50 wei
                                    args tx.origin, (setCosignerCallGas * block.gasprice) + (refundGas * block.gasprice)
                                require ext_call.success
                                return 1
                            else:
                                return 1
                        else:
                            if not feeAddress:
                                return 0
                            else:
                                if feeAddress == msg.sender:
                                    return 0
                                else:
                                    if absMaxFee:
                                        require ext_code.size(multiAssetAddress)
                                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                             gas gas_remaining - 50 wei
                                            args 0, 0, uint32(msg.sender), absMaxFee, symbol, 160, 10, 'Fee return'
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        return 0
                                    else:
                                        return 0
                else:
                    if absMaxFee:
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                             gas gas_remaining - 50 wei
                            args 0, 0, uint32(stor21.field_0), absMaxFee, symbol, 160, 12, Mask(96, 0, 'Cosigner fee')
                        require ext_call.success
                        if ext_call.return_data[0]:
                            if tx.origin != msg.sender:
                                if not feeAddress:
                                    return 0
                                else:
                                    if feeAddress == msg.sender:
                                        return 0
                                    else:
                                        if absMaxFee:
                                            require ext_code.size(multiAssetAddress)
                                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                 gas gas_remaining - 50 wei
                                                args 0, 0, uint32(msg.sender), absMaxFee, symbol, 160, 10, 'Fee return'
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            return 0
                                        else:
                                            return 0
                            else:
                                require ext_code.size(multiAssetAddress)
                                call multiAssetAddress.proxySetCosignerAddress(address rg1, bytes32 rg2) with:
                                     gas gas_remaining - 50 wei
                                    args address(arg1), symbol
                                require ext_call.success
                                if ext_call.return_data[0]:
                                    if block.gasprice <= txGasPriceLimit:
                                        require ext_code.size(treasuryAddress)
                                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 50 wei
                                            args tx.origin, (setCosignerCallGas * block.gasprice) + (refundGas * block.gasprice)
                                        require ext_call.success
                                        return 1
                                    else:
                                        return 1
                                else:
                                    if not feeAddress:
                                        return 0
                                    else:
                                        if feeAddress == msg.sender:
                                            return 0
                                        else:
                                            if absMaxFee:
                                                require ext_code.size(multiAssetAddress)
                                                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                     gas gas_remaining - 50 wei
                                                    args 0, 0, uint32(msg.sender), absMaxFee, symbol, 160, 10, 'Fee return'
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                return 0
                                            else:
                                                return 0
                        else:
                            return 0
                    else:
                        if tx.origin != msg.sender:
                            if not feeAddress:
                                return 0
                            else:
                                if feeAddress == msg.sender:
                                    return 0
                                else:
                                    if absMaxFee:
                                        require ext_code.size(multiAssetAddress)
                                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                             gas gas_remaining - 50 wei
                                            args 0, 0, uint32(msg.sender), absMaxFee, symbol, 160, 10, 'Fee return'
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        return 0
                                    else:
                                        return 0
                        else:
                            require ext_code.size(multiAssetAddress)
                            call multiAssetAddress.proxySetCosignerAddress(address rg1, bytes32 rg2) with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), symbol
                            require ext_call.success
                            if ext_call.return_data[0]:
                                if block.gasprice <= txGasPriceLimit:
                                    require ext_code.size(treasuryAddress)
                                    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 50 wei
                                        args tx.origin, (setCosignerCallGas * block.gasprice) + (refundGas * block.gasprice)
                                    require ext_call.success
                                    return 1
                                else:
                                    return 1
                            else:
                                if not feeAddress:
                                    return 0
                                else:
                                    if feeAddress == msg.sender:
                                        return 0
                                    else:
                                        if absMaxFee:
                                            require ext_code.size(multiAssetAddress)
                                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                 gas gas_remaining - 50 wei
                                                args 0, 0, uint32(msg.sender), absMaxFee, symbol, 160, 10, 'Fee return'
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            return 0
                                        else:
                                            return 0
    else:
        if not feeAddress:
            if tx.origin != msg.sender:
                if not feeAddress:
                    return 0
                else:
                    if feeAddress == msg.sender:
                        return 0
                    else:
                        if absMinFee:
                            require ext_code.size(multiAssetAddress)
                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                 gas gas_remaining - 50 wei
                                args 0, 0, uint32(msg.sender), absMinFee, symbol, 160, 10, 'Fee return'
                            require ext_call.success
                            require ext_call.return_data[0]
                            return 0
                        else:
                            return 0
            else:
                require ext_code.size(multiAssetAddress)
                call multiAssetAddress.proxySetCosignerAddress(address rg1, bytes32 rg2) with:
                     gas gas_remaining - 50 wei
                    args address(arg1), symbol
                require ext_call.success
                if ext_call.return_data[0]:
                    if block.gasprice <= txGasPriceLimit:
                        require ext_code.size(treasuryAddress)
                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                             gas gas_remaining - 50 wei
                            args tx.origin, (setCosignerCallGas * block.gasprice) + (refundGas * block.gasprice)
                        require ext_call.success
                        return 1
                    else:
                        return 1
                else:
                    if not feeAddress:
                        return 0
                    else:
                        if feeAddress == msg.sender:
                            return 0
                        else:
                            if absMinFee:
                                require ext_code.size(multiAssetAddress)
                                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                     gas gas_remaining - 50 wei
                                    args 0, 0, uint32(msg.sender), absMinFee, symbol, 160, 10, 'Fee return'
                                require ext_call.success
                                require ext_call.return_data[0]
                                return 0
                            else:
                                return 0
        else:
            if feeAddress == msg.sender:
                if tx.origin != msg.sender:
                    if not feeAddress:
                        return 0
                    else:
                        if feeAddress == msg.sender:
                            return 0
                        else:
                            if absMinFee:
                                require ext_code.size(multiAssetAddress)
                                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                     gas gas_remaining - 50 wei
                                    args 0, 0, uint32(msg.sender), absMinFee, symbol, 160, 10, 'Fee return'
                                require ext_call.success
                                require ext_call.return_data[0]
                                return 0
                            else:
                                return 0
                else:
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.proxySetCosignerAddress(address rg1, bytes32 rg2) with:
                         gas gas_remaining - 50 wei
                        args address(arg1), symbol
                    require ext_call.success
                    if ext_call.return_data[0]:
                        if block.gasprice <= txGasPriceLimit:
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 50 wei
                                args tx.origin, (setCosignerCallGas * block.gasprice) + (refundGas * block.gasprice)
                            require ext_call.success
                            return 1
                        else:
                            return 1
                    else:
                        if not feeAddress:
                            return 0
                        else:
                            if feeAddress == msg.sender:
                                return 0
                            else:
                                if absMinFee:
                                    require ext_code.size(multiAssetAddress)
                                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                         gas gas_remaining - 50 wei
                                        args 0, 0, uint32(msg.sender), absMinFee, symbol, 160, 10, 'Fee return'
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    return 0
                                else:
                                    return 0
            else:
                if absMinFee:
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                         gas gas_remaining - 50 wei
                        args 0, 0, uint32(stor21.field_0), absMinFee, symbol, 160, 12, Mask(96, 0, 'Cosigner fee')
                    require ext_call.success
                    if ext_call.return_data[0]:
                        if tx.origin != msg.sender:
                            if not feeAddress:
                                return 0
                            else:
                                if feeAddress == msg.sender:
                                    return 0
                                else:
                                    if absMinFee:
                                        require ext_code.size(multiAssetAddress)
                                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                             gas gas_remaining - 50 wei
                                            args 0, 0, uint32(msg.sender), absMinFee, symbol, 160, 10, 'Fee return'
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        return 0
                                    else:
                                        return 0
                        else:
                            require ext_code.size(multiAssetAddress)
                            call multiAssetAddress.proxySetCosignerAddress(address rg1, bytes32 rg2) with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), symbol
                            require ext_call.success
                            if ext_call.return_data[0]:
                                if block.gasprice <= txGasPriceLimit:
                                    require ext_code.size(treasuryAddress)
                                    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 50 wei
                                        args tx.origin, (setCosignerCallGas * block.gasprice) + (refundGas * block.gasprice)
                                    require ext_call.success
                                    return 1
                                else:
                                    return 1
                            else:
                                if not feeAddress:
                                    return 0
                                else:
                                    if feeAddress == msg.sender:
                                        return 0
                                    else:
                                        if absMinFee:
                                            require ext_code.size(multiAssetAddress)
                                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                 gas gas_remaining - 50 wei
                                                args 0, 0, uint32(msg.sender), absMinFee, symbol, 160, 10, 'Fee return'
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            return 0
                                        else:
                                            return 0
                    else:
                        return 0
                else:
                    if tx.origin != msg.sender:
                        if not feeAddress:
                            return 0
                        else:
                            if feeAddress == msg.sender:
                                return 0
                            else:
                                if absMinFee:
                                    require ext_code.size(multiAssetAddress)
                                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                         gas gas_remaining - 50 wei
                                        args 0, 0, uint32(msg.sender), absMinFee, symbol, 160, 10, 'Fee return'
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    return 0
                                else:
                                    return 0
                    else:
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.proxySetCosignerAddress(address rg1, bytes32 rg2) with:
                             gas gas_remaining - 50 wei
                            args address(arg1), symbol
                        require ext_call.success
                        if ext_call.return_data[0]:
                            if block.gasprice <= txGasPriceLimit:
                                require ext_code.size(treasuryAddress)
                                call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 50 wei
                                    args tx.origin, (setCosignerCallGas * block.gasprice) + (refundGas * block.gasprice)
                                require ext_call.success
                                return 1
                            else:
                                return 1
                        else:
                            if not feeAddress:
                                return 0
                            else:
                                if feeAddress == msg.sender:
                                    return 0
                                else:
                                    if absMinFee:
                                        require ext_code.size(multiAssetAddress)
                                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                             gas gas_remaining - 50 wei
                                            args 0, 0, uint32(msg.sender), absMinFee, symbol, 160, 10, 'Fee return'
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        return 0
                                    else:
                                        return 0
}

function approve(address arg1, uint256 arg2) {
    if arg1 != this.address:
        if 0 >= absMinFee:
            if 0 <= absMaxFee:
                if not feeAddress:
                    uint8(stor21.field_160) = 1
                    if tx.origin != msg.sender:
                        uint8(stor21.field_160) = 0
                        if not feeAddress:
                            return 0
                        else:
                            if feeAddress == msg.sender:
                                return 0
                            else:
                                return 0
                    else:
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.proxyApprove(address rg1, uint256 rg2, bytes32 rg3) with:
                             gas gas_remaining - 50 wei
                            args address(arg1), arg2, symbol
                        require ext_call.success
                        uint8(stor21.field_160) = 0
                        if ext_call.return_data[0]:
                            if block.gasprice <= txGasPriceLimit:
                                require ext_code.size(treasuryAddress)
                                call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 50 wei
                                    args tx.origin, (approveCallGas * block.gasprice) + (refundGas * block.gasprice)
                                require ext_call.success
                                return 1
                            else:
                                return 1
                        else:
                            if not feeAddress:
                                return 0
                            else:
                                if feeAddress == msg.sender:
                                    return 0
                                else:
                                    return 0
                else:
                    if feeAddress == msg.sender:
                        uint8(stor21.field_160) = 1
                        if tx.origin != msg.sender:
                            uint8(stor21.field_160) = 0
                            if not feeAddress:
                                return 0
                            else:
                                if feeAddress == msg.sender:
                                    return 0
                                else:
                                    return 0
                        else:
                            require ext_code.size(multiAssetAddress)
                            call multiAssetAddress.proxyApprove(address rg1, uint256 rg2, bytes32 rg3) with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), arg2, symbol
                            require ext_call.success
                            uint8(stor21.field_160) = 0
                            if ext_call.return_data[0]:
                                if block.gasprice <= txGasPriceLimit:
                                    require ext_code.size(treasuryAddress)
                                    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 50 wei
                                        args tx.origin, (approveCallGas * block.gasprice) + (refundGas * block.gasprice)
                                    require ext_call.success
                                    return 1
                                else:
                                    return 1
                            else:
                                if not feeAddress:
                                    return 0
                                else:
                                    if feeAddress == msg.sender:
                                        return 0
                                    else:
                                        return 0
                    else:
                        uint8(stor21.field_160) = 1
                        if tx.origin != msg.sender:
                            uint8(stor21.field_160) = 0
                            if not feeAddress:
                                return 0
                            else:
                                if feeAddress == msg.sender:
                                    return 0
                                else:
                                    return 0
                        else:
                            require ext_code.size(multiAssetAddress)
                            call multiAssetAddress.proxyApprove(address rg1, uint256 rg2, bytes32 rg3) with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), arg2, symbol
                            require ext_call.success
                            uint8(stor21.field_160) = 0
                            if ext_call.return_data[0]:
                                if block.gasprice <= txGasPriceLimit:
                                    require ext_code.size(treasuryAddress)
                                    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 50 wei
                                        args tx.origin, (approveCallGas * block.gasprice) + (refundGas * block.gasprice)
                                    require ext_call.success
                                    return 1
                                else:
                                    return 1
                            else:
                                if not feeAddress:
                                    return 0
                                else:
                                    if feeAddress == msg.sender:
                                        return 0
                                    else:
                                        return 0
            else:
                if not feeAddress:
                    uint8(stor21.field_160) = 1
                    if tx.origin != msg.sender:
                        uint8(stor21.field_160) = 0
                        if not feeAddress:
                            return 0
                        else:
                            if feeAddress == msg.sender:
                                return 0
                            else:
                                if absMaxFee:
                                    require ext_code.size(multiAssetAddress)
                                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                         gas gas_remaining - 50 wei
                                        args 0, 0, uint32(msg.sender), absMaxFee, symbol, 160, 10, 'Fee return'
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    return 0
                                else:
                                    return 0
                    else:
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.proxyApprove(address rg1, uint256 rg2, bytes32 rg3) with:
                             gas gas_remaining - 50 wei
                            args address(arg1), arg2, symbol
                        require ext_call.success
                        uint8(stor21.field_160) = 0
                        if ext_call.return_data[0]:
                            if block.gasprice <= txGasPriceLimit:
                                require ext_code.size(treasuryAddress)
                                call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 50 wei
                                    args tx.origin, (approveCallGas * block.gasprice) + (refundGas * block.gasprice)
                                require ext_call.success
                                return 1
                            else:
                                return 1
                        else:
                            if not feeAddress:
                                return 0
                            else:
                                if feeAddress == msg.sender:
                                    return 0
                                else:
                                    if absMaxFee:
                                        require ext_code.size(multiAssetAddress)
                                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                             gas gas_remaining - 50 wei
                                            args 0, 0, uint32(msg.sender), absMaxFee, symbol, 160, 10, 'Fee return'
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        return 0
                                    else:
                                        return 0
                else:
                    if feeAddress == msg.sender:
                        uint8(stor21.field_160) = 1
                        if tx.origin != msg.sender:
                            uint8(stor21.field_160) = 0
                            if not feeAddress:
                                return 0
                            else:
                                if feeAddress == msg.sender:
                                    return 0
                                else:
                                    if absMaxFee:
                                        require ext_code.size(multiAssetAddress)
                                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                             gas gas_remaining - 50 wei
                                            args 0, 0, uint32(msg.sender), absMaxFee, symbol, 160, 10, 'Fee return'
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        return 0
                                    else:
                                        return 0
                        else:
                            require ext_code.size(multiAssetAddress)
                            call multiAssetAddress.proxyApprove(address rg1, uint256 rg2, bytes32 rg3) with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), arg2, symbol
                            require ext_call.success
                            uint8(stor21.field_160) = 0
                            if ext_call.return_data[0]:
                                if block.gasprice <= txGasPriceLimit:
                                    require ext_code.size(treasuryAddress)
                                    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 50 wei
                                        args tx.origin, (approveCallGas * block.gasprice) + (refundGas * block.gasprice)
                                    require ext_call.success
                                    return 1
                                else:
                                    return 1
                            else:
                                if not feeAddress:
                                    return 0
                                else:
                                    if feeAddress == msg.sender:
                                        return 0
                                    else:
                                        if absMaxFee:
                                            require ext_code.size(multiAssetAddress)
                                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                 gas gas_remaining - 50 wei
                                                args 0, 0, uint32(msg.sender), absMaxFee, symbol, 160, 10, 'Fee return'
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            return 0
                                        else:
                                            return 0
                    else:
                        if absMaxFee:
                            require ext_code.size(multiAssetAddress)
                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                 gas gas_remaining - 50 wei
                                args 0, 0, uint32(stor21.field_0), absMaxFee, symbol, 160, 11, Mask(88, 0, 'Approve fee')
                            require ext_call.success
                            if ext_call.return_data[0]:
                                uint8(stor21.field_160) = 1
                                if tx.origin != msg.sender:
                                    uint8(stor21.field_160) = 0
                                    if not feeAddress:
                                        return 0
                                    else:
                                        if feeAddress == msg.sender:
                                            return 0
                                        else:
                                            if absMaxFee:
                                                require ext_code.size(multiAssetAddress)
                                                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                     gas gas_remaining - 50 wei
                                                    args 0, 0, uint32(msg.sender), absMaxFee, symbol, 160, 10, 'Fee return'
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                return 0
                                            else:
                                                return 0
                                else:
                                    require ext_code.size(multiAssetAddress)
                                    call multiAssetAddress.proxyApprove(address rg1, uint256 rg2, bytes32 rg3) with:
                                         gas gas_remaining - 50 wei
                                        args address(arg1), arg2, symbol
                                    require ext_call.success
                                    uint8(stor21.field_160) = 0
                                    if ext_call.return_data[0]:
                                        if block.gasprice <= txGasPriceLimit:
                                            require ext_code.size(treasuryAddress)
                                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 50 wei
                                                args tx.origin, (approveCallGas * block.gasprice) + (refundGas * block.gasprice)
                                            require ext_call.success
                                            return 1
                                        else:
                                            return 1
                                    else:
                                        if not feeAddress:
                                            return 0
                                        else:
                                            if feeAddress == msg.sender:
                                                return 0
                                            else:
                                                if absMaxFee:
                                                    require ext_code.size(multiAssetAddress)
                                                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                         gas gas_remaining - 50 wei
                                                        args 0, 0, uint32(msg.sender), absMaxFee, symbol, 160, 10, 'Fee return'
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    return 0
                                                else:
                                                    return 0
                            else:
                                return 0
                        else:
                            uint8(stor21.field_160) = 1
                            if tx.origin != msg.sender:
                                uint8(stor21.field_160) = 0
                                if not feeAddress:
                                    return 0
                                else:
                                    if feeAddress == msg.sender:
                                        return 0
                                    else:
                                        if absMaxFee:
                                            require ext_code.size(multiAssetAddress)
                                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                 gas gas_remaining - 50 wei
                                                args 0, 0, uint32(msg.sender), absMaxFee, symbol, 160, 10, 'Fee return'
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            return 0
                                        else:
                                            return 0
                            else:
                                require ext_code.size(multiAssetAddress)
                                call multiAssetAddress.proxyApprove(address rg1, uint256 rg2, bytes32 rg3) with:
                                     gas gas_remaining - 50 wei
                                    args address(arg1), arg2, symbol
                                require ext_call.success
                                uint8(stor21.field_160) = 0
                                if ext_call.return_data[0]:
                                    if block.gasprice <= txGasPriceLimit:
                                        require ext_code.size(treasuryAddress)
                                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 50 wei
                                            args tx.origin, (approveCallGas * block.gasprice) + (refundGas * block.gasprice)
                                        require ext_call.success
                                        return 1
                                    else:
                                        return 1
                                else:
                                    if not feeAddress:
                                        return 0
                                    else:
                                        if feeAddress == msg.sender:
                                            return 0
                                        else:
                                            if absMaxFee:
                                                require ext_code.size(multiAssetAddress)
                                                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                     gas gas_remaining - 50 wei
                                                    args 0, 0, uint32(msg.sender), absMaxFee, symbol, 160, 10, 'Fee return'
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                return 0
                                            else:
                                                return 0
        else:
            if not feeAddress:
                uint8(stor21.field_160) = 1
                if tx.origin != msg.sender:
                    uint8(stor21.field_160) = 0
                    if not feeAddress:
                        return 0
                    else:
                        if feeAddress == msg.sender:
                            return 0
                        else:
                            if absMinFee:
                                require ext_code.size(multiAssetAddress)
                                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                     gas gas_remaining - 50 wei
                                    args 0, 0, uint32(msg.sender), absMinFee, symbol, 160, 10, 'Fee return'
                                require ext_call.success
                                require ext_call.return_data[0]
                                return 0
                            else:
                                return 0
                else:
                    require ext_code.size(multiAssetAddress)
                    call multiAssetAddress.proxyApprove(address rg1, uint256 rg2, bytes32 rg3) with:
                         gas gas_remaining - 50 wei
                        args address(arg1), arg2, symbol
                    require ext_call.success
                    uint8(stor21.field_160) = 0
                    if ext_call.return_data[0]:
                        if block.gasprice <= txGasPriceLimit:
                            require ext_code.size(treasuryAddress)
                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 50 wei
                                args tx.origin, (approveCallGas * block.gasprice) + (refundGas * block.gasprice)
                            require ext_call.success
                            return 1
                        else:
                            return 1
                    else:
                        if not feeAddress:
                            return 0
                        else:
                            if feeAddress == msg.sender:
                                return 0
                            else:
                                if absMinFee:
                                    require ext_code.size(multiAssetAddress)
                                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                         gas gas_remaining - 50 wei
                                        args 0, 0, uint32(msg.sender), absMinFee, symbol, 160, 10, 'Fee return'
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    return 0
                                else:
                                    return 0
            else:
                if feeAddress == msg.sender:
                    uint8(stor21.field_160) = 1
                    if tx.origin != msg.sender:
                        uint8(stor21.field_160) = 0
                        if not feeAddress:
                            return 0
                        else:
                            if feeAddress == msg.sender:
                                return 0
                            else:
                                if absMinFee:
                                    require ext_code.size(multiAssetAddress)
                                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                         gas gas_remaining - 50 wei
                                        args 0, 0, uint32(msg.sender), absMinFee, symbol, 160, 10, 'Fee return'
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    return 0
                                else:
                                    return 0
                    else:
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.proxyApprove(address rg1, uint256 rg2, bytes32 rg3) with:
                             gas gas_remaining - 50 wei
                            args address(arg1), arg2, symbol
                        require ext_call.success
                        uint8(stor21.field_160) = 0
                        if ext_call.return_data[0]:
                            if block.gasprice <= txGasPriceLimit:
                                require ext_code.size(treasuryAddress)
                                call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 50 wei
                                    args tx.origin, (approveCallGas * block.gasprice) + (refundGas * block.gasprice)
                                require ext_call.success
                                return 1
                            else:
                                return 1
                        else:
                            if not feeAddress:
                                return 0
                            else:
                                if feeAddress == msg.sender:
                                    return 0
                                else:
                                    if absMinFee:
                                        require ext_code.size(multiAssetAddress)
                                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                             gas gas_remaining - 50 wei
                                            args 0, 0, uint32(msg.sender), absMinFee, symbol, 160, 10, 'Fee return'
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        return 0
                                    else:
                                        return 0
                else:
                    if absMinFee:
                        require ext_code.size(multiAssetAddress)
                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                             gas gas_remaining - 50 wei
                            args 0, 0, uint32(stor21.field_0), absMinFee, symbol, 160, 11, Mask(88, 0, 'Approve fee')
                        require ext_call.success
                        if ext_call.return_data[0]:
                            uint8(stor21.field_160) = 1
                            if tx.origin != msg.sender:
                                uint8(stor21.field_160) = 0
                                if not feeAddress:
                                    return 0
                                else:
                                    if feeAddress == msg.sender:
                                        return 0
                                    else:
                                        if absMinFee:
                                            require ext_code.size(multiAssetAddress)
                                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                 gas gas_remaining - 50 wei
                                                args 0, 0, uint32(msg.sender), absMinFee, symbol, 160, 10, 'Fee return'
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            return 0
                                        else:
                                            return 0
                            else:
                                require ext_code.size(multiAssetAddress)
                                call multiAssetAddress.proxyApprove(address rg1, uint256 rg2, bytes32 rg3) with:
                                     gas gas_remaining - 50 wei
                                    args address(arg1), arg2, symbol
                                require ext_call.success
                                uint8(stor21.field_160) = 0
                                if ext_call.return_data[0]:
                                    if block.gasprice <= txGasPriceLimit:
                                        require ext_code.size(treasuryAddress)
                                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 50 wei
                                            args tx.origin, (approveCallGas * block.gasprice) + (refundGas * block.gasprice)
                                        require ext_call.success
                                        return 1
                                    else:
                                        return 1
                                else:
                                    if not feeAddress:
                                        return 0
                                    else:
                                        if feeAddress == msg.sender:
                                            return 0
                                        else:
                                            if absMinFee:
                                                require ext_code.size(multiAssetAddress)
                                                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                     gas gas_remaining - 50 wei
                                                    args 0, 0, uint32(msg.sender), absMinFee, symbol, 160, 10, 'Fee return'
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                return 0
                                            else:
                                                return 0
                        else:
                            return 0
                    else:
                        uint8(stor21.field_160) = 1
                        if tx.origin != msg.sender:
                            uint8(stor21.field_160) = 0
                            if not feeAddress:
                                return 0
                            else:
                                if feeAddress == msg.sender:
                                    return 0
                                else:
                                    if absMinFee:
                                        require ext_code.size(multiAssetAddress)
                                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                             gas gas_remaining - 50 wei
                                            args 0, 0, uint32(msg.sender), absMinFee, symbol, 160, 10, 'Fee return'
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        return 0
                                    else:
                                        return 0
                        else:
                            require ext_code.size(multiAssetAddress)
                            call multiAssetAddress.proxyApprove(address rg1, uint256 rg2, bytes32 rg3) with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), arg2, symbol
                            require ext_call.success
                            uint8(stor21.field_160) = 0
                            if ext_call.return_data[0]:
                                if block.gasprice <= txGasPriceLimit:
                                    require ext_code.size(treasuryAddress)
                                    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 50 wei
                                        args tx.origin, (approveCallGas * block.gasprice) + (refundGas * block.gasprice)
                                    require ext_call.success
                                    return 1
                                else:
                                    return 1
                            else:
                                if not feeAddress:
                                    return 0
                                else:
                                    if feeAddress == msg.sender:
                                        return 0
                                    else:
                                        if absMinFee:
                                            require ext_code.size(multiAssetAddress)
                                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                 gas gas_remaining - 50 wei
                                                args 0, 0, uint32(msg.sender), absMinFee, symbol, 160, 10, 'Fee return'
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            return 0
                                        else:
                                            return 0
    else:
        if tx.origin != msg.sender:
            return 0
        else:
            require ext_code.size(multiAssetAddress)
            call multiAssetAddress.proxyApprove(address rg1, uint256 rg2, bytes32 rg3) with:
                 gas gas_remaining - 50 wei
                args address(arg1), arg2, symbol
            require ext_call.success
            return bool(ext_call.return_data[0])
}

function _fallback() payable {
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    if allowedForwards[uint32(call.func_hash)] != 0:
        if 0 >= absMinFee:
            if 0 <= absMaxFee:
                if 50 * calldata.size > 7500:
                    mem[ceil32(calldata.size) + 128] = 11
                    if not feeAddress:
                        if not calldata.size:
                            if not calldata.size % 32:
                                call allowedForwards[uint32(call.func_hash)].mem[ceil32(calldata.size) + 192 len 4] with:
                                   value msg.value wei
                                     gas gas_remaining - 34050 wei
                                    args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                                if ext_call.success:
                                    if block.gasprice <= txGasPriceLimit:
                                        require ext_code.size(treasuryAddress)
                                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 50 wei
                                            args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                        require ext_call.success
                                        return 1
                                    else:
                                        return 1
                                else:
                                    if not feeAddress:
                                        if not msg.value:
                                            return 0
                                        else:
                                            call msg.sender with:
                                               value msg.value wei
                                                 gas gas_remaining - 34050 wei
                                            require ext_call.success
                                            return 0
                                    else:
                                        if feeAddress == msg.sender:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if absMinFee + (50 * calldata.size / 100000 * absMinFee):
                                                require ext_code.size(multiAssetAddress)
                                                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                     gas gas_remaining - 50 wei
                                                    args feeAddress, msg.sender, absMinFee + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                            else:
                                mem[floor32(calldata.size) + ceil32(calldata.size) + 192] = mem[floor32(calldata.size) + ceil32(calldata.size) + -(calldata.size % 32) + 224 len calldata.size % 32]
                                call allowedForwards[uint32(call.func_hash)].mem[ceil32(calldata.size) + 192 len 4] with:
                                   value msg.value wei
                                     gas gas_remaining - 34050 wei
                                    args mem[ceil32(calldata.size) + 196 len floor32(calldata.size) + 28]
                                if ext_call.success:
                                    if block.gasprice <= txGasPriceLimit:
                                        require ext_code.size(treasuryAddress)
                                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 50 wei
                                            args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                        require ext_call.success
                                        return 1
                                    else:
                                        return 1
                                else:
                                    if not feeAddress:
                                        if not msg.value:
                                            return 0
                                        else:
                                            call msg.sender with:
                                               value msg.value wei
                                                 gas gas_remaining - 34050 wei
                                            require ext_call.success
                                            return 0
                                    else:
                                        if feeAddress == msg.sender:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if absMinFee + (50 * calldata.size / 100000 * absMinFee):
                                                require ext_code.size(multiAssetAddress)
                                                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                     gas gas_remaining - 50 wei
                                                    args feeAddress, msg.sender, absMinFee + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                        else:
                            mem[ceil32(calldata.size) + 192] = mem[128]
                            mem[ceil32(calldata.size) + 224 len floor32(calldata.size - 1)] = mem[160 len floor32(calldata.size - 1)]
                            if not calldata.size % 32:
                                call allowedForwards[uint32(call.func_hash)] with:
                                   funct call.data[0 len 4]
                                   value msg.value wei
                                     gas gas_remaining - 34050 wei
                                    args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                                if ext_call.success:
                                    if block.gasprice <= txGasPriceLimit:
                                        require ext_code.size(treasuryAddress)
                                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 50 wei
                                            args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                        require ext_call.success
                                        return 1
                                    else:
                                        return 1
                                else:
                                    if not feeAddress:
                                        if not msg.value:
                                            return 0
                                        else:
                                            call msg.sender with:
                                               value msg.value wei
                                                 gas gas_remaining - 34050 wei
                                            require ext_call.success
                                            return 0
                                    else:
                                        if feeAddress == msg.sender:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if absMinFee + (50 * calldata.size / 100000 * absMinFee):
                                                require ext_code.size(multiAssetAddress)
                                                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                     gas gas_remaining - 50 wei
                                                    args feeAddress, msg.sender, absMinFee + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                            else:
                                call allowedForwards[uint32(call.func_hash)] with:
                                   funct call.data[0 len 4]
                                   value msg.value wei
                                     gas gas_remaining - 34050 wei
                                    args mem[132 len 28], mem[160 len floor32(calldata.size - 1)], mem[ceil32(calldata.size) + floor32(calldata.size - 1) + 224 len floor32(calldata.size) - floor32(calldata.size - 1)]
                                if ext_call.success:
                                    if block.gasprice <= txGasPriceLimit:
                                        require ext_code.size(treasuryAddress)
                                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 50 wei
                                            args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                        require ext_call.success
                                        return 1
                                    else:
                                        return 1
                                else:
                                    if not feeAddress:
                                        if not msg.value:
                                            return 0
                                        else:
                                            call msg.sender with:
                                               value msg.value wei
                                                 gas gas_remaining - 34050 wei
                                            require ext_call.success
                                            return 0
                                    else:
                                        if feeAddress == msg.sender:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if absMinFee + (50 * calldata.size / 100000 * absMinFee):
                                                require ext_code.size(multiAssetAddress)
                                                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                     gas gas_remaining - 50 wei
                                                    args feeAddress, msg.sender, absMinFee + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                    else:
                        if feeAddress == msg.sender:
                            if not calldata.size:
                                if not calldata.size % 32:
                                    call allowedForwards[uint32(call.func_hash)].mem[ceil32(calldata.size) + 192 len 4] with:
                                       value msg.value wei
                                         gas gas_remaining - 34050 wei
                                        args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                                    if ext_call.success:
                                        if block.gasprice <= txGasPriceLimit:
                                            require ext_code.size(treasuryAddress)
                                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 50 wei
                                                args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                            require ext_call.success
                                            return 1
                                        else:
                                            return 1
                                    else:
                                        if not feeAddress:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if feeAddress == msg.sender:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if absMinFee + (50 * calldata.size / 100000 * absMinFee):
                                                    require ext_code.size(multiAssetAddress)
                                                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                         gas gas_remaining - 50 wei
                                                        args feeAddress, msg.sender, absMinFee + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                else:
                                    mem[floor32(calldata.size) + ceil32(calldata.size) + 192] = mem[floor32(calldata.size) + ceil32(calldata.size) + -(calldata.size % 32) + 224 len calldata.size % 32]
                                    call allowedForwards[uint32(call.func_hash)].mem[ceil32(calldata.size) + 192 len 4] with:
                                       value msg.value wei
                                         gas gas_remaining - 34050 wei
                                        args mem[ceil32(calldata.size) + 196 len floor32(calldata.size) + 28]
                                    if ext_call.success:
                                        if block.gasprice <= txGasPriceLimit:
                                            require ext_code.size(treasuryAddress)
                                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 50 wei
                                                args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                            require ext_call.success
                                            return 1
                                        else:
                                            return 1
                                    else:
                                        if not feeAddress:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if feeAddress == msg.sender:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if absMinFee + (50 * calldata.size / 100000 * absMinFee):
                                                    require ext_code.size(multiAssetAddress)
                                                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                         gas gas_remaining - 50 wei
                                                        args feeAddress, msg.sender, absMinFee + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                            else:
                                mem[ceil32(calldata.size) + 192] = mem[128]
                                mem[ceil32(calldata.size) + 224 len floor32(calldata.size - 1)] = mem[160 len floor32(calldata.size - 1)]
                                if not calldata.size % 32:
                                    call allowedForwards[uint32(call.func_hash)] with:
                                       funct call.data[0 len 4]
                                       value msg.value wei
                                         gas gas_remaining - 34050 wei
                                        args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                                    if ext_call.success:
                                        if block.gasprice <= txGasPriceLimit:
                                            require ext_code.size(treasuryAddress)
                                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 50 wei
                                                args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                            require ext_call.success
                                            return 1
                                        else:
                                            return 1
                                    else:
                                        if not feeAddress:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if feeAddress == msg.sender:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if absMinFee + (50 * calldata.size / 100000 * absMinFee):
                                                    require ext_code.size(multiAssetAddress)
                                                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                         gas gas_remaining - 50 wei
                                                        args feeAddress, msg.sender, absMinFee + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                else:
                                    call allowedForwards[uint32(call.func_hash)] with:
                                       funct call.data[0 len 4]
                                       value msg.value wei
                                         gas gas_remaining - 34050 wei
                                        args mem[132 len 28], mem[160 len floor32(calldata.size - 1)], mem[ceil32(calldata.size) + floor32(calldata.size - 1) + 224 len floor32(calldata.size) - floor32(calldata.size - 1)]
                                    if ext_call.success:
                                        if block.gasprice <= txGasPriceLimit:
                                            require ext_code.size(treasuryAddress)
                                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 50 wei
                                                args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                            require ext_call.success
                                            return 1
                                        else:
                                            return 1
                                    else:
                                        if not feeAddress:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if feeAddress == msg.sender:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if absMinFee + (50 * calldata.size / 100000 * absMinFee):
                                                    require ext_code.size(multiAssetAddress)
                                                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                         gas gas_remaining - 50 wei
                                                        args feeAddress, msg.sender, absMinFee + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                        else:
                            if absMinFee + (50 * calldata.size / 100000 * absMinFee):
                                mem[ceil32(calldata.size) + 196] = msg.sender
                                mem[ceil32(calldata.size) + 228] = feeAddress
                                mem[ceil32(calldata.size) + 260] = absMinFee + (50 * calldata.size / 100000 * absMinFee)
                                mem[ceil32(calldata.size) + 292] = symbol
                                mem[ceil32(calldata.size) + 324] = 160
                                mem[ceil32(calldata.size) + 356] = 11
                                mem[ceil32(calldata.size) + 420 len 0] = None
                                mem[ceil32(calldata.size) + 388] = Mask(88, 0, 'Forward fee')
                                require ext_code.size(multiAssetAddress)
                                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                     gas gas_remaining - 50 wei
                                    args msg.sender, feeAddress, absMinFee + (50 * calldata.size / 100000 * absMinFee), symbol, 'Forward fee'
                                mem[ceil32(calldata.size) + 192] = ext_call.return_data[0]
                                require ext_call.success
                                if ext_call.return_data[0]:
                                    if not calldata.size:
                                        if not calldata.size % 32:
                                            call allowedForwards[uint32(call.func_hash)] with:
                                               funct ext_call.return_data[0 len 4]
                                               value msg.value wei
                                                 gas gas_remaining - 34050 wei
                                                args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                                            if ext_call.success:
                                                if block.gasprice <= txGasPriceLimit:
                                                    require ext_code.size(treasuryAddress)
                                                    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 50 wei
                                                        args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                                    require ext_call.success
                                                    return 1
                                                else:
                                                    return 1
                                            else:
                                                if not feeAddress:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if feeAddress == msg.sender:
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                                    else:
                                                        if absMinFee + (50 * calldata.size / 100000 * absMinFee):
                                                            require ext_code.size(multiAssetAddress)
                                                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                                 gas gas_remaining - 50 wei
                                                                args feeAddress, msg.sender, absMinFee + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            if not msg.value:
                                                                return 0
                                                            else:
                                                                call msg.sender with:
                                                                   value msg.value wei
                                                                     gas gas_remaining - 34050 wei
                                                                require ext_call.success
                                                                return 0
                                                        else:
                                                            if not msg.value:
                                                                return 0
                                                            else:
                                                                call msg.sender with:
                                                                   value msg.value wei
                                                                     gas gas_remaining - 34050 wei
                                                                require ext_call.success
                                                                return 0
                                        else:
                                            mem[floor32(calldata.size) + ceil32(calldata.size) + 192] = mem[floor32(calldata.size) + ceil32(calldata.size) + -(calldata.size % 32) + 224 len calldata.size % 32]
                                            call allowedForwards[uint32(call.func_hash)] with:
                                               funct ext_call.return_data[0 len 4]
                                               value msg.value wei
                                                 gas gas_remaining - 34050 wei
                                                args ext_call.return_data[4 len 28], mem[ceil32(calldata.size) + 224 len floor32(calldata.size)]
                                            if ext_call.success:
                                                if block.gasprice <= txGasPriceLimit:
                                                    require ext_code.size(treasuryAddress)
                                                    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 50 wei
                                                        args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                                    require ext_call.success
                                                    return 1
                                                else:
                                                    return 1
                                            else:
                                                if not feeAddress:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if feeAddress == msg.sender:
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                                    else:
                                                        if absMinFee + (50 * calldata.size / 100000 * absMinFee):
                                                            require ext_code.size(multiAssetAddress)
                                                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                                 gas gas_remaining - 50 wei
                                                                args feeAddress, msg.sender, absMinFee + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            if not msg.value:
                                                                return 0
                                                            else:
                                                                call msg.sender with:
                                                                   value msg.value wei
                                                                     gas gas_remaining - 34050 wei
                                                                require ext_call.success
                                                                return 0
                                                        else:
                                                            if not msg.value:
                                                                return 0
                                                            else:
                                                                call msg.sender with:
                                                                   value msg.value wei
                                                                     gas gas_remaining - 34050 wei
                                                                require ext_call.success
                                                                return 0
                                    else:
                                        mem[ceil32(calldata.size) + 192] = mem[128]
                                        mem[ceil32(calldata.size) + 224 len floor32(calldata.size - 1)] = mem[160 len floor32(calldata.size - 1)]
                                        if not calldata.size % 32:
                                            call allowedForwards[uint32(call.func_hash)] with:
                                               funct call.data[0 len 4]
                                               value msg.value wei
                                                 gas gas_remaining - 34050 wei
                                                args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                                            if ext_call.success:
                                                if block.gasprice <= txGasPriceLimit:
                                                    require ext_code.size(treasuryAddress)
                                                    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 50 wei
                                                        args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                                    require ext_call.success
                                                    return 1
                                                else:
                                                    return 1
                                            else:
                                                if not feeAddress:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if feeAddress == msg.sender:
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                                    else:
                                                        if absMinFee + (50 * calldata.size / 100000 * absMinFee):
                                                            require ext_code.size(multiAssetAddress)
                                                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                                 gas gas_remaining - 50 wei
                                                                args feeAddress, msg.sender, absMinFee + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            if not msg.value:
                                                                return 0
                                                            else:
                                                                call msg.sender with:
                                                                   value msg.value wei
                                                                     gas gas_remaining - 34050 wei
                                                                require ext_call.success
                                                                return 0
                                                        else:
                                                            if not msg.value:
                                                                return 0
                                                            else:
                                                                call msg.sender with:
                                                                   value msg.value wei
                                                                     gas gas_remaining - 34050 wei
                                                                require ext_call.success
                                                                return 0
                                        else:
                                            call allowedForwards[uint32(call.func_hash)] with:
                                               funct call.data[0 len 4]
                                               value msg.value wei
                                                 gas gas_remaining - 34050 wei
                                                args mem[132 len 28], mem[160 len floor32(calldata.size - 1)], mem[ceil32(calldata.size) + floor32(calldata.size - 1) + 224 len floor32(calldata.size) - floor32(calldata.size - 1)]
                                            if ext_call.success:
                                                if block.gasprice <= txGasPriceLimit:
                                                    require ext_code.size(treasuryAddress)
                                                    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 50 wei
                                                        args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                                    require ext_call.success
                                                    return 1
                                                else:
                                                    return 1
                                            else:
                                                if not feeAddress:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if feeAddress == msg.sender:
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                                    else:
                                                        if absMinFee + (50 * calldata.size / 100000 * absMinFee):
                                                            require ext_code.size(multiAssetAddress)
                                                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                                 gas gas_remaining - 50 wei
                                                                args feeAddress, msg.sender, absMinFee + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            if not msg.value:
                                                                return 0
                                                            else:
                                                                call msg.sender with:
                                                                   value msg.value wei
                                                                     gas gas_remaining - 34050 wei
                                                                require ext_call.success
                                                                return 0
                                                        else:
                                                            if not msg.value:
                                                                return 0
                                                            else:
                                                                call msg.sender with:
                                                                   value msg.value wei
                                                                     gas gas_remaining - 34050 wei
                                                                require ext_call.success
                                                                return 0
                                else:
                                    if not msg.value:
                                        return 0
                                    else:
                                        call msg.sender with:
                                           value msg.value wei
                                             gas gas_remaining - 34050 wei
                                        require ext_call.success
                                        return 0
                            else:
                                if not calldata.size:
                                    if not calldata.size % 32:
                                        call allowedForwards[uint32(call.func_hash)].mem[ceil32(calldata.size) + 192 len 4] with:
                                           value msg.value wei
                                             gas gas_remaining - 34050 wei
                                            args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                                        if ext_call.success:
                                            if block.gasprice <= txGasPriceLimit:
                                                require ext_code.size(treasuryAddress)
                                                call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 50 wei
                                                    args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                                require ext_call.success
                                                return 1
                                            else:
                                                return 1
                                        else:
                                            if not feeAddress:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if feeAddress == msg.sender:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if absMinFee + (50 * calldata.size / 100000 * absMinFee):
                                                        require ext_code.size(multiAssetAddress)
                                                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                             gas gas_remaining - 50 wei
                                                            args feeAddress, msg.sender, absMinFee + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                                    else:
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                    else:
                                        mem[floor32(calldata.size) + ceil32(calldata.size) + 192] = mem[floor32(calldata.size) + ceil32(calldata.size) + -(calldata.size % 32) + 224 len calldata.size % 32]
                                        call allowedForwards[uint32(call.func_hash)].mem[ceil32(calldata.size) + 192 len 4] with:
                                           value msg.value wei
                                             gas gas_remaining - 34050 wei
                                            args mem[ceil32(calldata.size) + 196 len floor32(calldata.size) + 28]
                                        if ext_call.success:
                                            if block.gasprice <= txGasPriceLimit:
                                                require ext_code.size(treasuryAddress)
                                                call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 50 wei
                                                    args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                                require ext_call.success
                                                return 1
                                            else:
                                                return 1
                                        else:
                                            if not feeAddress:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if feeAddress == msg.sender:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if absMinFee + (50 * calldata.size / 100000 * absMinFee):
                                                        require ext_code.size(multiAssetAddress)
                                                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                             gas gas_remaining - 50 wei
                                                            args feeAddress, msg.sender, absMinFee + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                                    else:
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                else:
                                    mem[ceil32(calldata.size) + 192] = mem[128]
                                    mem[ceil32(calldata.size) + 224 len floor32(calldata.size - 1)] = mem[160 len floor32(calldata.size - 1)]
                                    if not calldata.size % 32:
                                        call allowedForwards[uint32(call.func_hash)] with:
                                           funct call.data[0 len 4]
                                           value msg.value wei
                                             gas gas_remaining - 34050 wei
                                            args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                                        if ext_call.success:
                                            if block.gasprice <= txGasPriceLimit:
                                                require ext_code.size(treasuryAddress)
                                                call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 50 wei
                                                    args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                                require ext_call.success
                                                return 1
                                            else:
                                                return 1
                                        else:
                                            if not feeAddress:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if feeAddress == msg.sender:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if absMinFee + (50 * calldata.size / 100000 * absMinFee):
                                                        require ext_code.size(multiAssetAddress)
                                                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                             gas gas_remaining - 50 wei
                                                            args feeAddress, msg.sender, absMinFee + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                                    else:
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                    else:
                                        call allowedForwards[uint32(call.func_hash)] with:
                                           funct call.data[0 len 4]
                                           value msg.value wei
                                             gas gas_remaining - 34050 wei
                                            args mem[132 len 28], mem[160 len floor32(calldata.size - 1)], mem[ceil32(calldata.size) + floor32(calldata.size - 1) + 224 len floor32(calldata.size) - floor32(calldata.size - 1)]
                                        if ext_call.success:
                                            if block.gasprice <= txGasPriceLimit:
                                                require ext_code.size(treasuryAddress)
                                                call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 50 wei
                                                    args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                                require ext_call.success
                                                return 1
                                            else:
                                                return 1
                                        else:
                                            if not feeAddress:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if feeAddress == msg.sender:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if absMinFee + (50 * calldata.size / 100000 * absMinFee):
                                                        require ext_code.size(multiAssetAddress)
                                                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                             gas gas_remaining - 50 wei
                                                            args feeAddress, msg.sender, absMinFee + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                                    else:
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                else:
                    mem[ceil32(calldata.size) + 128] = 11
                    if not feeAddress:
                        if not calldata.size:
                            if not calldata.size % 32:
                                call allowedForwards[uint32(call.func_hash)].mem[ceil32(calldata.size) + 192 len 4] with:
                                   value msg.value wei
                                     gas gas_remaining - 34050 wei
                                    args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                                if ext_call.success:
                                    if block.gasprice <= txGasPriceLimit:
                                        require ext_code.size(treasuryAddress)
                                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 50 wei
                                            args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                        require ext_call.success
                                        return 1
                                    else:
                                        return 1
                                else:
                                    if not feeAddress:
                                        if not msg.value:
                                            return 0
                                        else:
                                            call msg.sender with:
                                               value msg.value wei
                                                 gas gas_remaining - 34050 wei
                                            require ext_call.success
                                            return 0
                                    else:
                                        if feeAddress == msg.sender:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                            else:
                                mem[floor32(calldata.size) + ceil32(calldata.size) + 192] = mem[floor32(calldata.size) + ceil32(calldata.size) + -(calldata.size % 32) + 224 len calldata.size % 32]
                                call allowedForwards[uint32(call.func_hash)].mem[ceil32(calldata.size) + 192 len 4] with:
                                   value msg.value wei
                                     gas gas_remaining - 34050 wei
                                    args mem[ceil32(calldata.size) + 196 len floor32(calldata.size) + 28]
                                if ext_call.success:
                                    if block.gasprice <= txGasPriceLimit:
                                        require ext_code.size(treasuryAddress)
                                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 50 wei
                                            args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                        require ext_call.success
                                        return 1
                                    else:
                                        return 1
                                else:
                                    if not feeAddress:
                                        if not msg.value:
                                            return 0
                                        else:
                                            call msg.sender with:
                                               value msg.value wei
                                                 gas gas_remaining - 34050 wei
                                            require ext_call.success
                                            return 0
                                    else:
                                        if feeAddress == msg.sender:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                        else:
                            mem[ceil32(calldata.size) + 192] = mem[128]
                            mem[ceil32(calldata.size) + 224 len floor32(calldata.size - 1)] = mem[160 len floor32(calldata.size - 1)]
                            if not calldata.size % 32:
                                call allowedForwards[uint32(call.func_hash)] with:
                                   funct call.data[0 len 4]
                                   value msg.value wei
                                     gas gas_remaining - 34050 wei
                                    args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                                if ext_call.success:
                                    if block.gasprice <= txGasPriceLimit:
                                        require ext_code.size(treasuryAddress)
                                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 50 wei
                                            args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                        require ext_call.success
                                        return 1
                                    else:
                                        return 1
                                else:
                                    if not feeAddress:
                                        if not msg.value:
                                            return 0
                                        else:
                                            call msg.sender with:
                                               value msg.value wei
                                                 gas gas_remaining - 34050 wei
                                            require ext_call.success
                                            return 0
                                    else:
                                        if feeAddress == msg.sender:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                            else:
                                call allowedForwards[uint32(call.func_hash)] with:
                                   funct call.data[0 len 4]
                                   value msg.value wei
                                     gas gas_remaining - 34050 wei
                                    args mem[132 len 28], mem[160 len floor32(calldata.size - 1)], mem[ceil32(calldata.size) + floor32(calldata.size - 1) + 224 len floor32(calldata.size) - floor32(calldata.size - 1)]
                                if ext_call.success:
                                    if block.gasprice <= txGasPriceLimit:
                                        require ext_code.size(treasuryAddress)
                                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 50 wei
                                            args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                        require ext_call.success
                                        return 1
                                    else:
                                        return 1
                                else:
                                    if not feeAddress:
                                        if not msg.value:
                                            return 0
                                        else:
                                            call msg.sender with:
                                               value msg.value wei
                                                 gas gas_remaining - 34050 wei
                                            require ext_call.success
                                            return 0
                                    else:
                                        if feeAddress == msg.sender:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                    else:
                        if feeAddress == msg.sender:
                            if not calldata.size:
                                if not calldata.size % 32:
                                    call allowedForwards[uint32(call.func_hash)].mem[ceil32(calldata.size) + 192 len 4] with:
                                       value msg.value wei
                                         gas gas_remaining - 34050 wei
                                        args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                                    if ext_call.success:
                                        if block.gasprice <= txGasPriceLimit:
                                            require ext_code.size(treasuryAddress)
                                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 50 wei
                                                args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                            require ext_call.success
                                            return 1
                                        else:
                                            return 1
                                    else:
                                        if not feeAddress:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if feeAddress == msg.sender:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                else:
                                    mem[floor32(calldata.size) + ceil32(calldata.size) + 192] = mem[floor32(calldata.size) + ceil32(calldata.size) + -(calldata.size % 32) + 224 len calldata.size % 32]
                                    call allowedForwards[uint32(call.func_hash)].mem[ceil32(calldata.size) + 192 len 4] with:
                                       value msg.value wei
                                         gas gas_remaining - 34050 wei
                                        args mem[ceil32(calldata.size) + 196 len floor32(calldata.size) + 28]
                                    if ext_call.success:
                                        if block.gasprice <= txGasPriceLimit:
                                            require ext_code.size(treasuryAddress)
                                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 50 wei
                                                args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                            require ext_call.success
                                            return 1
                                        else:
                                            return 1
                                    else:
                                        if not feeAddress:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if feeAddress == msg.sender:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                            else:
                                mem[ceil32(calldata.size) + 192] = mem[128]
                                mem[ceil32(calldata.size) + 224 len floor32(calldata.size - 1)] = mem[160 len floor32(calldata.size - 1)]
                                if not calldata.size % 32:
                                    call allowedForwards[uint32(call.func_hash)] with:
                                       funct call.data[0 len 4]
                                       value msg.value wei
                                         gas gas_remaining - 34050 wei
                                        args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                                    if ext_call.success:
                                        if block.gasprice <= txGasPriceLimit:
                                            require ext_code.size(treasuryAddress)
                                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 50 wei
                                                args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                            require ext_call.success
                                            return 1
                                        else:
                                            return 1
                                    else:
                                        if not feeAddress:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if feeAddress == msg.sender:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                else:
                                    call allowedForwards[uint32(call.func_hash)] with:
                                       funct call.data[0 len 4]
                                       value msg.value wei
                                         gas gas_remaining - 34050 wei
                                        args mem[132 len 28], mem[160 len floor32(calldata.size - 1)], mem[ceil32(calldata.size) + floor32(calldata.size - 1) + 224 len floor32(calldata.size) - floor32(calldata.size - 1)]
                                    if ext_call.success:
                                        if block.gasprice <= txGasPriceLimit:
                                            require ext_code.size(treasuryAddress)
                                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 50 wei
                                                args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                            require ext_call.success
                                            return 1
                                        else:
                                            return 1
                                    else:
                                        if not feeAddress:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if feeAddress == msg.sender:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                        else:
                            if not calldata.size:
                                if not calldata.size % 32:
                                    call allowedForwards[uint32(call.func_hash)].mem[ceil32(calldata.size) + 192 len 4] with:
                                       value msg.value wei
                                         gas gas_remaining - 34050 wei
                                        args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                                    if ext_call.success:
                                        if block.gasprice <= txGasPriceLimit:
                                            require ext_code.size(treasuryAddress)
                                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 50 wei
                                                args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                            require ext_call.success
                                            return 1
                                        else:
                                            return 1
                                    else:
                                        if not feeAddress:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if feeAddress == msg.sender:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                else:
                                    mem[floor32(calldata.size) + ceil32(calldata.size) + 192] = mem[floor32(calldata.size) + ceil32(calldata.size) + -(calldata.size % 32) + 224 len calldata.size % 32]
                                    call allowedForwards[uint32(call.func_hash)].mem[ceil32(calldata.size) + 192 len 4] with:
                                       value msg.value wei
                                         gas gas_remaining - 34050 wei
                                        args mem[ceil32(calldata.size) + 196 len floor32(calldata.size) + 28]
                                    if ext_call.success:
                                        if block.gasprice <= txGasPriceLimit:
                                            require ext_code.size(treasuryAddress)
                                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 50 wei
                                                args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                            require ext_call.success
                                            return 1
                                        else:
                                            return 1
                                    else:
                                        if not feeAddress:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if feeAddress == msg.sender:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                            else:
                                mem[ceil32(calldata.size) + 192] = mem[128]
                                mem[ceil32(calldata.size) + 224 len floor32(calldata.size - 1)] = mem[160 len floor32(calldata.size - 1)]
                                if not calldata.size % 32:
                                    call allowedForwards[uint32(call.func_hash)] with:
                                       funct call.data[0 len 4]
                                       value msg.value wei
                                         gas gas_remaining - 34050 wei
                                        args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                                    if ext_call.success:
                                        if block.gasprice <= txGasPriceLimit:
                                            require ext_code.size(treasuryAddress)
                                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 50 wei
                                                args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                            require ext_call.success
                                            return 1
                                        else:
                                            return 1
                                    else:
                                        if not feeAddress:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if feeAddress == msg.sender:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                else:
                                    call allowedForwards[uint32(call.func_hash)] with:
                                       funct call.data[0 len 4]
                                       value msg.value wei
                                         gas gas_remaining - 34050 wei
                                        args mem[132 len 28], mem[160 len floor32(calldata.size - 1)], mem[ceil32(calldata.size) + floor32(calldata.size - 1) + 224 len floor32(calldata.size) - floor32(calldata.size - 1)]
                                    if ext_call.success:
                                        if block.gasprice <= txGasPriceLimit:
                                            require ext_code.size(treasuryAddress)
                                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 50 wei
                                                args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                            require ext_call.success
                                            return 1
                                        else:
                                            return 1
                                    else:
                                        if not feeAddress:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if feeAddress == msg.sender:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
            else:
                if 50 * calldata.size > 7500:
                    mem[ceil32(calldata.size) + 128] = 11
                    if not feeAddress:
                        if not calldata.size:
                            if not calldata.size % 32:
                                call allowedForwards[uint32(call.func_hash)].mem[ceil32(calldata.size) + 192 len 4] with:
                                   value msg.value wei
                                     gas gas_remaining - 34050 wei
                                    args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                                if ext_call.success:
                                    if block.gasprice <= txGasPriceLimit:
                                        require ext_code.size(treasuryAddress)
                                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 50 wei
                                            args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                        require ext_call.success
                                        return 1
                                    else:
                                        return 1
                                else:
                                    if not feeAddress:
                                        if not msg.value:
                                            return 0
                                        else:
                                            call msg.sender with:
                                               value msg.value wei
                                                 gas gas_remaining - 34050 wei
                                            require ext_call.success
                                            return 0
                                    else:
                                        if feeAddress == msg.sender:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if absMaxFee + absMinFee + (50 * calldata.size / 100000 * absMinFee):
                                                require ext_code.size(multiAssetAddress)
                                                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                     gas gas_remaining - 50 wei
                                                    args feeAddress, msg.sender, absMaxFee + absMinFee + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                            else:
                                mem[floor32(calldata.size) + ceil32(calldata.size) + 192] = mem[floor32(calldata.size) + ceil32(calldata.size) + -(calldata.size % 32) + 224 len calldata.size % 32]
                                call allowedForwards[uint32(call.func_hash)].mem[ceil32(calldata.size) + 192 len 4] with:
                                   value msg.value wei
                                     gas gas_remaining - 34050 wei
                                    args mem[ceil32(calldata.size) + 196 len floor32(calldata.size) + 28]
                                if ext_call.success:
                                    if block.gasprice <= txGasPriceLimit:
                                        require ext_code.size(treasuryAddress)
                                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 50 wei
                                            args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                        require ext_call.success
                                        return 1
                                    else:
                                        return 1
                                else:
                                    if not feeAddress:
                                        if not msg.value:
                                            return 0
                                        else:
                                            call msg.sender with:
                                               value msg.value wei
                                                 gas gas_remaining - 34050 wei
                                            require ext_call.success
                                            return 0
                                    else:
                                        if feeAddress == msg.sender:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if absMaxFee + absMinFee + (50 * calldata.size / 100000 * absMinFee):
                                                require ext_code.size(multiAssetAddress)
                                                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                     gas gas_remaining - 50 wei
                                                    args feeAddress, msg.sender, absMaxFee + absMinFee + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                        else:
                            mem[ceil32(calldata.size) + 192] = mem[128]
                            mem[ceil32(calldata.size) + 224 len floor32(calldata.size - 1)] = mem[160 len floor32(calldata.size - 1)]
                            if not calldata.size % 32:
                                call allowedForwards[uint32(call.func_hash)] with:
                                   funct call.data[0 len 4]
                                   value msg.value wei
                                     gas gas_remaining - 34050 wei
                                    args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                                if ext_call.success:
                                    if block.gasprice <= txGasPriceLimit:
                                        require ext_code.size(treasuryAddress)
                                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 50 wei
                                            args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                        require ext_call.success
                                        return 1
                                    else:
                                        return 1
                                else:
                                    if not feeAddress:
                                        if not msg.value:
                                            return 0
                                        else:
                                            call msg.sender with:
                                               value msg.value wei
                                                 gas gas_remaining - 34050 wei
                                            require ext_call.success
                                            return 0
                                    else:
                                        if feeAddress == msg.sender:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if absMaxFee + absMinFee + (50 * calldata.size / 100000 * absMinFee):
                                                require ext_code.size(multiAssetAddress)
                                                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                     gas gas_remaining - 50 wei
                                                    args feeAddress, msg.sender, absMaxFee + absMinFee + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                            else:
                                call allowedForwards[uint32(call.func_hash)] with:
                                   funct call.data[0 len 4]
                                   value msg.value wei
                                     gas gas_remaining - 34050 wei
                                    args mem[132 len 28], mem[160 len floor32(calldata.size - 1)], mem[ceil32(calldata.size) + floor32(calldata.size - 1) + 224 len floor32(calldata.size) - floor32(calldata.size - 1)]
                                if ext_call.success:
                                    if block.gasprice <= txGasPriceLimit:
                                        require ext_code.size(treasuryAddress)
                                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 50 wei
                                            args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                        require ext_call.success
                                        return 1
                                    else:
                                        return 1
                                else:
                                    if not feeAddress:
                                        if not msg.value:
                                            return 0
                                        else:
                                            call msg.sender with:
                                               value msg.value wei
                                                 gas gas_remaining - 34050 wei
                                            require ext_call.success
                                            return 0
                                    else:
                                        if feeAddress == msg.sender:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if absMaxFee + absMinFee + (50 * calldata.size / 100000 * absMinFee):
                                                require ext_code.size(multiAssetAddress)
                                                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                     gas gas_remaining - 50 wei
                                                    args feeAddress, msg.sender, absMaxFee + absMinFee + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                    else:
                        if feeAddress == msg.sender:
                            if not calldata.size:
                                if not calldata.size % 32:
                                    call allowedForwards[uint32(call.func_hash)].mem[ceil32(calldata.size) + 192 len 4] with:
                                       value msg.value wei
                                         gas gas_remaining - 34050 wei
                                        args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                                    if ext_call.success:
                                        if block.gasprice <= txGasPriceLimit:
                                            require ext_code.size(treasuryAddress)
                                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 50 wei
                                                args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                            require ext_call.success
                                            return 1
                                        else:
                                            return 1
                                    else:
                                        if not feeAddress:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if feeAddress == msg.sender:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if absMaxFee + absMinFee + (50 * calldata.size / 100000 * absMinFee):
                                                    require ext_code.size(multiAssetAddress)
                                                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                         gas gas_remaining - 50 wei
                                                        args feeAddress, msg.sender, absMaxFee + absMinFee + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                else:
                                    mem[floor32(calldata.size) + ceil32(calldata.size) + 192] = mem[floor32(calldata.size) + ceil32(calldata.size) + -(calldata.size % 32) + 224 len calldata.size % 32]
                                    call allowedForwards[uint32(call.func_hash)].mem[ceil32(calldata.size) + 192 len 4] with:
                                       value msg.value wei
                                         gas gas_remaining - 34050 wei
                                        args mem[ceil32(calldata.size) + 196 len floor32(calldata.size) + 28]
                                    if ext_call.success:
                                        if block.gasprice <= txGasPriceLimit:
                                            require ext_code.size(treasuryAddress)
                                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 50 wei
                                                args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                            require ext_call.success
                                            return 1
                                        else:
                                            return 1
                                    else:
                                        if not feeAddress:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if feeAddress == msg.sender:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if absMaxFee + absMinFee + (50 * calldata.size / 100000 * absMinFee):
                                                    require ext_code.size(multiAssetAddress)
                                                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                         gas gas_remaining - 50 wei
                                                        args feeAddress, msg.sender, absMaxFee + absMinFee + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                            else:
                                mem[ceil32(calldata.size) + 192] = mem[128]
                                mem[ceil32(calldata.size) + 224 len floor32(calldata.size - 1)] = mem[160 len floor32(calldata.size - 1)]
                                if not calldata.size % 32:
                                    call allowedForwards[uint32(call.func_hash)] with:
                                       funct call.data[0 len 4]
                                       value msg.value wei
                                         gas gas_remaining - 34050 wei
                                        args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                                    if ext_call.success:
                                        if block.gasprice <= txGasPriceLimit:
                                            require ext_code.size(treasuryAddress)
                                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 50 wei
                                                args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                            require ext_call.success
                                            return 1
                                        else:
                                            return 1
                                    else:
                                        if not feeAddress:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if feeAddress == msg.sender:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if absMaxFee + absMinFee + (50 * calldata.size / 100000 * absMinFee):
                                                    require ext_code.size(multiAssetAddress)
                                                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                         gas gas_remaining - 50 wei
                                                        args feeAddress, msg.sender, absMaxFee + absMinFee + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                else:
                                    call allowedForwards[uint32(call.func_hash)] with:
                                       funct call.data[0 len 4]
                                       value msg.value wei
                                         gas gas_remaining - 34050 wei
                                        args mem[132 len 28], mem[160 len floor32(calldata.size - 1)], mem[ceil32(calldata.size) + floor32(calldata.size - 1) + 224 len floor32(calldata.size) - floor32(calldata.size - 1)]
                                    if ext_call.success:
                                        if block.gasprice <= txGasPriceLimit:
                                            require ext_code.size(treasuryAddress)
                                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 50 wei
                                                args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                            require ext_call.success
                                            return 1
                                        else:
                                            return 1
                                    else:
                                        if not feeAddress:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if feeAddress == msg.sender:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if absMaxFee + absMinFee + (50 * calldata.size / 100000 * absMinFee):
                                                    require ext_code.size(multiAssetAddress)
                                                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                         gas gas_remaining - 50 wei
                                                        args feeAddress, msg.sender, absMaxFee + absMinFee + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                        else:
                            if absMaxFee + absMinFee + (50 * calldata.size / 100000 * absMinFee):
                                mem[ceil32(calldata.size) + 196] = msg.sender
                                mem[ceil32(calldata.size) + 228] = feeAddress
                                mem[ceil32(calldata.size) + 260] = absMaxFee + absMinFee + (50 * calldata.size / 100000 * absMinFee)
                                mem[ceil32(calldata.size) + 292] = symbol
                                mem[ceil32(calldata.size) + 324] = 160
                                mem[ceil32(calldata.size) + 356] = 11
                                mem[ceil32(calldata.size) + 420 len 0] = None
                                mem[ceil32(calldata.size) + 388] = Mask(88, 0, 'Forward fee')
                                require ext_code.size(multiAssetAddress)
                                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                     gas gas_remaining - 50 wei
                                    args msg.sender, feeAddress, absMaxFee + absMinFee + (50 * calldata.size / 100000 * absMinFee), symbol, 'Forward fee'
                                mem[ceil32(calldata.size) + 192] = ext_call.return_data[0]
                                require ext_call.success
                                if ext_call.return_data[0]:
                                    if not calldata.size:
                                        if not calldata.size % 32:
                                            call allowedForwards[uint32(call.func_hash)] with:
                                               funct ext_call.return_data[0 len 4]
                                               value msg.value wei
                                                 gas gas_remaining - 34050 wei
                                                args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                                            if ext_call.success:
                                                if block.gasprice <= txGasPriceLimit:
                                                    require ext_code.size(treasuryAddress)
                                                    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 50 wei
                                                        args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                                    require ext_call.success
                                                    return 1
                                                else:
                                                    return 1
                                            else:
                                                if not feeAddress:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if feeAddress == msg.sender:
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                                    else:
                                                        if absMaxFee + absMinFee + (50 * calldata.size / 100000 * absMinFee):
                                                            require ext_code.size(multiAssetAddress)
                                                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                                 gas gas_remaining - 50 wei
                                                                args feeAddress, msg.sender, absMaxFee + absMinFee + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            if not msg.value:
                                                                return 0
                                                            else:
                                                                call msg.sender with:
                                                                   value msg.value wei
                                                                     gas gas_remaining - 34050 wei
                                                                require ext_call.success
                                                                return 0
                                                        else:
                                                            if not msg.value:
                                                                return 0
                                                            else:
                                                                call msg.sender with:
                                                                   value msg.value wei
                                                                     gas gas_remaining - 34050 wei
                                                                require ext_call.success
                                                                return 0
                                        else:
                                            mem[floor32(calldata.size) + ceil32(calldata.size) + 192] = mem[floor32(calldata.size) + ceil32(calldata.size) + -(calldata.size % 32) + 224 len calldata.size % 32]
                                            call allowedForwards[uint32(call.func_hash)] with:
                                               funct ext_call.return_data[0 len 4]
                                               value msg.value wei
                                                 gas gas_remaining - 34050 wei
                                                args ext_call.return_data[4 len 28], mem[ceil32(calldata.size) + 224 len floor32(calldata.size)]
                                            if ext_call.success:
                                                if block.gasprice <= txGasPriceLimit:
                                                    require ext_code.size(treasuryAddress)
                                                    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 50 wei
                                                        args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                                    require ext_call.success
                                                    return 1
                                                else:
                                                    return 1
                                            else:
                                                if not feeAddress:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if feeAddress == msg.sender:
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                                    else:
                                                        if absMaxFee + absMinFee + (50 * calldata.size / 100000 * absMinFee):
                                                            require ext_code.size(multiAssetAddress)
                                                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                                 gas gas_remaining - 50 wei
                                                                args feeAddress, msg.sender, absMaxFee + absMinFee + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            if not msg.value:
                                                                return 0
                                                            else:
                                                                call msg.sender with:
                                                                   value msg.value wei
                                                                     gas gas_remaining - 34050 wei
                                                                require ext_call.success
                                                                return 0
                                                        else:
                                                            if not msg.value:
                                                                return 0
                                                            else:
                                                                call msg.sender with:
                                                                   value msg.value wei
                                                                     gas gas_remaining - 34050 wei
                                                                require ext_call.success
                                                                return 0
                                    else:
                                        mem[ceil32(calldata.size) + 192] = mem[128]
                                        mem[ceil32(calldata.size) + 224 len floor32(calldata.size - 1)] = mem[160 len floor32(calldata.size - 1)]
                                        if not calldata.size % 32:
                                            call allowedForwards[uint32(call.func_hash)] with:
                                               funct call.data[0 len 4]
                                               value msg.value wei
                                                 gas gas_remaining - 34050 wei
                                                args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                                            if ext_call.success:
                                                if block.gasprice <= txGasPriceLimit:
                                                    require ext_code.size(treasuryAddress)
                                                    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 50 wei
                                                        args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                                    require ext_call.success
                                                    return 1
                                                else:
                                                    return 1
                                            else:
                                                if not feeAddress:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if feeAddress == msg.sender:
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                                    else:
                                                        if absMaxFee + absMinFee + (50 * calldata.size / 100000 * absMinFee):
                                                            require ext_code.size(multiAssetAddress)
                                                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                                 gas gas_remaining - 50 wei
                                                                args feeAddress, msg.sender, absMaxFee + absMinFee + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            if not msg.value:
                                                                return 0
                                                            else:
                                                                call msg.sender with:
                                                                   value msg.value wei
                                                                     gas gas_remaining - 34050 wei
                                                                require ext_call.success
                                                                return 0
                                                        else:
                                                            if not msg.value:
                                                                return 0
                                                            else:
                                                                call msg.sender with:
                                                                   value msg.value wei
                                                                     gas gas_remaining - 34050 wei
                                                                require ext_call.success
                                                                return 0
                                        else:
                                            call allowedForwards[uint32(call.func_hash)] with:
                                               funct call.data[0 len 4]
                                               value msg.value wei
                                                 gas gas_remaining - 34050 wei
                                                args mem[132 len 28], mem[160 len floor32(calldata.size - 1)], mem[ceil32(calldata.size) + floor32(calldata.size - 1) + 224 len floor32(calldata.size) - floor32(calldata.size - 1)]
                                            if ext_call.success:
                                                if block.gasprice <= txGasPriceLimit:
                                                    require ext_code.size(treasuryAddress)
                                                    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 50 wei
                                                        args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                                    require ext_call.success
                                                    return 1
                                                else:
                                                    return 1
                                            else:
                                                if not feeAddress:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if feeAddress == msg.sender:
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                                    else:
                                                        if absMaxFee + absMinFee + (50 * calldata.size / 100000 * absMinFee):
                                                            require ext_code.size(multiAssetAddress)
                                                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                                 gas gas_remaining - 50 wei
                                                                args feeAddress, msg.sender, absMaxFee + absMinFee + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            if not msg.value:
                                                                return 0
                                                            else:
                                                                call msg.sender with:
                                                                   value msg.value wei
                                                                     gas gas_remaining - 34050 wei
                                                                require ext_call.success
                                                                return 0
                                                        else:
                                                            if not msg.value:
                                                                return 0
                                                            else:
                                                                call msg.sender with:
                                                                   value msg.value wei
                                                                     gas gas_remaining - 34050 wei
                                                                require ext_call.success
                                                                return 0
                                else:
                                    if not msg.value:
                                        return 0
                                    else:
                                        call msg.sender with:
                                           value msg.value wei
                                             gas gas_remaining - 34050 wei
                                        require ext_call.success
                                        return 0
                            else:
                                if not calldata.size:
                                    if not calldata.size % 32:
                                        call allowedForwards[uint32(call.func_hash)].mem[ceil32(calldata.size) + 192 len 4] with:
                                           value msg.value wei
                                             gas gas_remaining - 34050 wei
                                            args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                                        if ext_call.success:
                                            if block.gasprice <= txGasPriceLimit:
                                                require ext_code.size(treasuryAddress)
                                                call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 50 wei
                                                    args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                                require ext_call.success
                                                return 1
                                            else:
                                                return 1
                                        else:
                                            if not feeAddress:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if feeAddress == msg.sender:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if absMaxFee + absMinFee + (50 * calldata.size / 100000 * absMinFee):
                                                        require ext_code.size(multiAssetAddress)
                                                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                             gas gas_remaining - 50 wei
                                                            args feeAddress, msg.sender, absMaxFee + absMinFee + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                                    else:
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                    else:
                                        mem[floor32(calldata.size) + ceil32(calldata.size) + 192] = mem[floor32(calldata.size) + ceil32(calldata.size) + -(calldata.size % 32) + 224 len calldata.size % 32]
                                        call allowedForwards[uint32(call.func_hash)].mem[ceil32(calldata.size) + 192 len 4] with:
                                           value msg.value wei
                                             gas gas_remaining - 34050 wei
                                            args mem[ceil32(calldata.size) + 196 len floor32(calldata.size) + 28]
                                        if ext_call.success:
                                            if block.gasprice <= txGasPriceLimit:
                                                require ext_code.size(treasuryAddress)
                                                call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 50 wei
                                                    args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                                require ext_call.success
                                                return 1
                                            else:
                                                return 1
                                        else:
                                            if not feeAddress:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if feeAddress == msg.sender:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if absMaxFee + absMinFee + (50 * calldata.size / 100000 * absMinFee):
                                                        require ext_code.size(multiAssetAddress)
                                                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                             gas gas_remaining - 50 wei
                                                            args feeAddress, msg.sender, absMaxFee + absMinFee + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                                    else:
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                else:
                                    mem[ceil32(calldata.size) + 192] = mem[128]
                                    mem[ceil32(calldata.size) + 224 len floor32(calldata.size - 1)] = mem[160 len floor32(calldata.size - 1)]
                                    if not calldata.size % 32:
                                        call allowedForwards[uint32(call.func_hash)] with:
                                           funct call.data[0 len 4]
                                           value msg.value wei
                                             gas gas_remaining - 34050 wei
                                            args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                                        if ext_call.success:
                                            if block.gasprice <= txGasPriceLimit:
                                                require ext_code.size(treasuryAddress)
                                                call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 50 wei
                                                    args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                                require ext_call.success
                                                return 1
                                            else:
                                                return 1
                                        else:
                                            if not feeAddress:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if feeAddress == msg.sender:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if absMaxFee + absMinFee + (50 * calldata.size / 100000 * absMinFee):
                                                        require ext_code.size(multiAssetAddress)
                                                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                             gas gas_remaining - 50 wei
                                                            args feeAddress, msg.sender, absMaxFee + absMinFee + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                                    else:
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                    else:
                                        call allowedForwards[uint32(call.func_hash)] with:
                                           funct call.data[0 len 4]
                                           value msg.value wei
                                             gas gas_remaining - 34050 wei
                                            args mem[132 len 28], mem[160 len floor32(calldata.size - 1)], mem[ceil32(calldata.size) + floor32(calldata.size - 1) + 224 len floor32(calldata.size) - floor32(calldata.size - 1)]
                                        if ext_call.success:
                                            if block.gasprice <= txGasPriceLimit:
                                                require ext_code.size(treasuryAddress)
                                                call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 50 wei
                                                    args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                                require ext_call.success
                                                return 1
                                            else:
                                                return 1
                                        else:
                                            if not feeAddress:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if feeAddress == msg.sender:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if absMaxFee + absMinFee + (50 * calldata.size / 100000 * absMinFee):
                                                        require ext_code.size(multiAssetAddress)
                                                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                             gas gas_remaining - 50 wei
                                                            args feeAddress, msg.sender, absMaxFee + absMinFee + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                                    else:
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                else:
                    mem[ceil32(calldata.size) + 128] = 11
                    if not feeAddress:
                        if not calldata.size:
                            if not calldata.size % 32:
                                call allowedForwards[uint32(call.func_hash)].mem[ceil32(calldata.size) + 192 len 4] with:
                                   value msg.value wei
                                     gas gas_remaining - 34050 wei
                                    args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                                if ext_call.success:
                                    if block.gasprice <= txGasPriceLimit:
                                        require ext_code.size(treasuryAddress)
                                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 50 wei
                                            args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                        require ext_call.success
                                        return 1
                                    else:
                                        return 1
                                else:
                                    if not feeAddress:
                                        if not msg.value:
                                            return 0
                                        else:
                                            call msg.sender with:
                                               value msg.value wei
                                                 gas gas_remaining - 34050 wei
                                            require ext_call.success
                                            return 0
                                    else:
                                        if feeAddress == msg.sender:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if absMaxFee:
                                                require ext_code.size(multiAssetAddress)
                                                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                     gas gas_remaining - 50 wei
                                                    args feeAddress, msg.sender, absMaxFee, symbol, Array(len=10, data='Fee return')
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                            else:
                                mem[floor32(calldata.size) + ceil32(calldata.size) + 192] = mem[floor32(calldata.size) + ceil32(calldata.size) + -(calldata.size % 32) + 224 len calldata.size % 32]
                                call allowedForwards[uint32(call.func_hash)].mem[ceil32(calldata.size) + 192 len 4] with:
                                   value msg.value wei
                                     gas gas_remaining - 34050 wei
                                    args mem[ceil32(calldata.size) + 196 len floor32(calldata.size) + 28]
                                if ext_call.success:
                                    if block.gasprice <= txGasPriceLimit:
                                        require ext_code.size(treasuryAddress)
                                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 50 wei
                                            args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                        require ext_call.success
                                        return 1
                                    else:
                                        return 1
                                else:
                                    if not feeAddress:
                                        if not msg.value:
                                            return 0
                                        else:
                                            call msg.sender with:
                                               value msg.value wei
                                                 gas gas_remaining - 34050 wei
                                            require ext_call.success
                                            return 0
                                    else:
                                        if feeAddress == msg.sender:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if absMaxFee:
                                                require ext_code.size(multiAssetAddress)
                                                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                     gas gas_remaining - 50 wei
                                                    args feeAddress, msg.sender, absMaxFee, symbol, Array(len=10, data='Fee return')
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                        else:
                            mem[ceil32(calldata.size) + 192] = mem[128]
                            mem[ceil32(calldata.size) + 224 len floor32(calldata.size - 1)] = mem[160 len floor32(calldata.size - 1)]
                            if not calldata.size % 32:
                                call allowedForwards[uint32(call.func_hash)] with:
                                   funct call.data[0 len 4]
                                   value msg.value wei
                                     gas gas_remaining - 34050 wei
                                    args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                                if ext_call.success:
                                    if block.gasprice <= txGasPriceLimit:
                                        require ext_code.size(treasuryAddress)
                                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 50 wei
                                            args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                        require ext_call.success
                                        return 1
                                    else:
                                        return 1
                                else:
                                    if not feeAddress:
                                        if not msg.value:
                                            return 0
                                        else:
                                            call msg.sender with:
                                               value msg.value wei
                                                 gas gas_remaining - 34050 wei
                                            require ext_call.success
                                            return 0
                                    else:
                                        if feeAddress == msg.sender:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if absMaxFee:
                                                require ext_code.size(multiAssetAddress)
                                                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                     gas gas_remaining - 50 wei
                                                    args feeAddress, msg.sender, absMaxFee, symbol, Array(len=10, data='Fee return')
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                            else:
                                call allowedForwards[uint32(call.func_hash)] with:
                                   funct call.data[0 len 4]
                                   value msg.value wei
                                     gas gas_remaining - 34050 wei
                                    args mem[132 len 28], mem[160 len floor32(calldata.size - 1)], mem[ceil32(calldata.size) + floor32(calldata.size - 1) + 224 len floor32(calldata.size) - floor32(calldata.size - 1)]
                                if ext_call.success:
                                    if block.gasprice <= txGasPriceLimit:
                                        require ext_code.size(treasuryAddress)
                                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 50 wei
                                            args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                        require ext_call.success
                                        return 1
                                    else:
                                        return 1
                                else:
                                    if not feeAddress:
                                        if not msg.value:
                                            return 0
                                        else:
                                            call msg.sender with:
                                               value msg.value wei
                                                 gas gas_remaining - 34050 wei
                                            require ext_call.success
                                            return 0
                                    else:
                                        if feeAddress == msg.sender:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if absMaxFee:
                                                require ext_code.size(multiAssetAddress)
                                                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                     gas gas_remaining - 50 wei
                                                    args feeAddress, msg.sender, absMaxFee, symbol, Array(len=10, data='Fee return')
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                    else:
                        if feeAddress == msg.sender:
                            if not calldata.size:
                                if not calldata.size % 32:
                                    call allowedForwards[uint32(call.func_hash)].mem[ceil32(calldata.size) + 192 len 4] with:
                                       value msg.value wei
                                         gas gas_remaining - 34050 wei
                                        args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                                    if ext_call.success:
                                        if block.gasprice <= txGasPriceLimit:
                                            require ext_code.size(treasuryAddress)
                                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 50 wei
                                                args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                            require ext_call.success
                                            return 1
                                        else:
                                            return 1
                                    else:
                                        if not feeAddress:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if feeAddress == msg.sender:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if absMaxFee:
                                                    require ext_code.size(multiAssetAddress)
                                                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                         gas gas_remaining - 50 wei
                                                        args feeAddress, msg.sender, absMaxFee, symbol, Array(len=10, data='Fee return')
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                else:
                                    mem[floor32(calldata.size) + ceil32(calldata.size) + 192] = mem[floor32(calldata.size) + ceil32(calldata.size) + -(calldata.size % 32) + 224 len calldata.size % 32]
                                    call allowedForwards[uint32(call.func_hash)].mem[ceil32(calldata.size) + 192 len 4] with:
                                       value msg.value wei
                                         gas gas_remaining - 34050 wei
                                        args mem[ceil32(calldata.size) + 196 len floor32(calldata.size) + 28]
                                    if ext_call.success:
                                        if block.gasprice <= txGasPriceLimit:
                                            require ext_code.size(treasuryAddress)
                                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 50 wei
                                                args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                            require ext_call.success
                                            return 1
                                        else:
                                            return 1
                                    else:
                                        if not feeAddress:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if feeAddress == msg.sender:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if absMaxFee:
                                                    require ext_code.size(multiAssetAddress)
                                                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                         gas gas_remaining - 50 wei
                                                        args feeAddress, msg.sender, absMaxFee, symbol, Array(len=10, data='Fee return')
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                            else:
                                mem[ceil32(calldata.size) + 192] = mem[128]
                                mem[ceil32(calldata.size) + 224 len floor32(calldata.size - 1)] = mem[160 len floor32(calldata.size - 1)]
                                if not calldata.size % 32:
                                    call allowedForwards[uint32(call.func_hash)] with:
                                       funct call.data[0 len 4]
                                       value msg.value wei
                                         gas gas_remaining - 34050 wei
                                        args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                                    if ext_call.success:
                                        if block.gasprice <= txGasPriceLimit:
                                            require ext_code.size(treasuryAddress)
                                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 50 wei
                                                args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                            require ext_call.success
                                            return 1
                                        else:
                                            return 1
                                    else:
                                        if not feeAddress:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if feeAddress == msg.sender:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if absMaxFee:
                                                    require ext_code.size(multiAssetAddress)
                                                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                         gas gas_remaining - 50 wei
                                                        args feeAddress, msg.sender, absMaxFee, symbol, Array(len=10, data='Fee return')
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                else:
                                    call allowedForwards[uint32(call.func_hash)] with:
                                       funct call.data[0 len 4]
                                       value msg.value wei
                                         gas gas_remaining - 34050 wei
                                        args mem[132 len 28], mem[160 len floor32(calldata.size - 1)], mem[ceil32(calldata.size) + floor32(calldata.size - 1) + 224 len floor32(calldata.size) - floor32(calldata.size - 1)]
                                    if ext_call.success:
                                        if block.gasprice <= txGasPriceLimit:
                                            require ext_code.size(treasuryAddress)
                                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 50 wei
                                                args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                            require ext_call.success
                                            return 1
                                        else:
                                            return 1
                                    else:
                                        if not feeAddress:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if feeAddress == msg.sender:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if absMaxFee:
                                                    require ext_code.size(multiAssetAddress)
                                                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                         gas gas_remaining - 50 wei
                                                        args feeAddress, msg.sender, absMaxFee, symbol, Array(len=10, data='Fee return')
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                        else:
                            if absMaxFee:
                                mem[ceil32(calldata.size) + 196] = msg.sender
                                mem[ceil32(calldata.size) + 228] = feeAddress
                                mem[ceil32(calldata.size) + 260] = absMaxFee
                                mem[ceil32(calldata.size) + 292] = symbol
                                mem[ceil32(calldata.size) + 324] = 160
                                mem[ceil32(calldata.size) + 356] = 11
                                mem[ceil32(calldata.size) + 420 len 0] = None
                                mem[ceil32(calldata.size) + 388] = Mask(88, 0, 'Forward fee')
                                require ext_code.size(multiAssetAddress)
                                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                     gas gas_remaining - 50 wei
                                    args msg.sender, feeAddress, absMaxFee, symbol, 'Forward fee'
                                mem[ceil32(calldata.size) + 192] = ext_call.return_data[0]
                                require ext_call.success
                                if ext_call.return_data[0]:
                                    if not calldata.size:
                                        if not calldata.size % 32:
                                            call allowedForwards[uint32(call.func_hash)] with:
                                               funct ext_call.return_data[0 len 4]
                                               value msg.value wei
                                                 gas gas_remaining - 34050 wei
                                                args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                                            if ext_call.success:
                                                if block.gasprice <= txGasPriceLimit:
                                                    require ext_code.size(treasuryAddress)
                                                    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 50 wei
                                                        args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                                    require ext_call.success
                                                    return 1
                                                else:
                                                    return 1
                                            else:
                                                if not feeAddress:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if feeAddress == msg.sender:
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                                    else:
                                                        if absMaxFee:
                                                            require ext_code.size(multiAssetAddress)
                                                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                                 gas gas_remaining - 50 wei
                                                                args feeAddress, msg.sender, absMaxFee, symbol, Array(len=10, data='Fee return')
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            if not msg.value:
                                                                return 0
                                                            else:
                                                                call msg.sender with:
                                                                   value msg.value wei
                                                                     gas gas_remaining - 34050 wei
                                                                require ext_call.success
                                                                return 0
                                                        else:
                                                            if not msg.value:
                                                                return 0
                                                            else:
                                                                call msg.sender with:
                                                                   value msg.value wei
                                                                     gas gas_remaining - 34050 wei
                                                                require ext_call.success
                                                                return 0
                                        else:
                                            mem[floor32(calldata.size) + ceil32(calldata.size) + 192] = mem[floor32(calldata.size) + ceil32(calldata.size) + -(calldata.size % 32) + 224 len calldata.size % 32]
                                            call allowedForwards[uint32(call.func_hash)] with:
                                               funct ext_call.return_data[0 len 4]
                                               value msg.value wei
                                                 gas gas_remaining - 34050 wei
                                                args ext_call.return_data[4 len 28], mem[ceil32(calldata.size) + 224 len floor32(calldata.size)]
                                            if ext_call.success:
                                                if block.gasprice <= txGasPriceLimit:
                                                    require ext_code.size(treasuryAddress)
                                                    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 50 wei
                                                        args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                                    require ext_call.success
                                                    return 1
                                                else:
                                                    return 1
                                            else:
                                                if not feeAddress:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if feeAddress == msg.sender:
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                                    else:
                                                        if absMaxFee:
                                                            require ext_code.size(multiAssetAddress)
                                                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                                 gas gas_remaining - 50 wei
                                                                args feeAddress, msg.sender, absMaxFee, symbol, Array(len=10, data='Fee return')
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            if not msg.value:
                                                                return 0
                                                            else:
                                                                call msg.sender with:
                                                                   value msg.value wei
                                                                     gas gas_remaining - 34050 wei
                                                                require ext_call.success
                                                                return 0
                                                        else:
                                                            if not msg.value:
                                                                return 0
                                                            else:
                                                                call msg.sender with:
                                                                   value msg.value wei
                                                                     gas gas_remaining - 34050 wei
                                                                require ext_call.success
                                                                return 0
                                    else:
                                        mem[ceil32(calldata.size) + 192] = mem[128]
                                        mem[ceil32(calldata.size) + 224 len floor32(calldata.size - 1)] = mem[160 len floor32(calldata.size - 1)]
                                        if not calldata.size % 32:
                                            call allowedForwards[uint32(call.func_hash)] with:
                                               funct call.data[0 len 4]
                                               value msg.value wei
                                                 gas gas_remaining - 34050 wei
                                                args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                                            if ext_call.success:
                                                if block.gasprice <= txGasPriceLimit:
                                                    require ext_code.size(treasuryAddress)
                                                    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 50 wei
                                                        args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                                    require ext_call.success
                                                    return 1
                                                else:
                                                    return 1
                                            else:
                                                if not feeAddress:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if feeAddress == msg.sender:
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                                    else:
                                                        if absMaxFee:
                                                            require ext_code.size(multiAssetAddress)
                                                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                                 gas gas_remaining - 50 wei
                                                                args feeAddress, msg.sender, absMaxFee, symbol, Array(len=10, data='Fee return')
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            if not msg.value:
                                                                return 0
                                                            else:
                                                                call msg.sender with:
                                                                   value msg.value wei
                                                                     gas gas_remaining - 34050 wei
                                                                require ext_call.success
                                                                return 0
                                                        else:
                                                            if not msg.value:
                                                                return 0
                                                            else:
                                                                call msg.sender with:
                                                                   value msg.value wei
                                                                     gas gas_remaining - 34050 wei
                                                                require ext_call.success
                                                                return 0
                                        else:
                                            call allowedForwards[uint32(call.func_hash)] with:
                                               funct call.data[0 len 4]
                                               value msg.value wei
                                                 gas gas_remaining - 34050 wei
                                                args mem[132 len 28], mem[160 len floor32(calldata.size - 1)], mem[ceil32(calldata.size) + floor32(calldata.size - 1) + 224 len floor32(calldata.size) - floor32(calldata.size - 1)]
                                            if ext_call.success:
                                                if block.gasprice <= txGasPriceLimit:
                                                    require ext_code.size(treasuryAddress)
                                                    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 50 wei
                                                        args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                                    require ext_call.success
                                                    return 1
                                                else:
                                                    return 1
                                            else:
                                                if not feeAddress:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if feeAddress == msg.sender:
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                                    else:
                                                        if absMaxFee:
                                                            require ext_code.size(multiAssetAddress)
                                                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                                 gas gas_remaining - 50 wei
                                                                args feeAddress, msg.sender, absMaxFee, symbol, Array(len=10, data='Fee return')
                                                            require ext_call.success
                                                            require ext_call.return_data[0]
                                                            if not msg.value:
                                                                return 0
                                                            else:
                                                                call msg.sender with:
                                                                   value msg.value wei
                                                                     gas gas_remaining - 34050 wei
                                                                require ext_call.success
                                                                return 0
                                                        else:
                                                            if not msg.value:
                                                                return 0
                                                            else:
                                                                call msg.sender with:
                                                                   value msg.value wei
                                                                     gas gas_remaining - 34050 wei
                                                                require ext_call.success
                                                                return 0
                                else:
                                    if not msg.value:
                                        return 0
                                    else:
                                        call msg.sender with:
                                           value msg.value wei
                                             gas gas_remaining - 34050 wei
                                        require ext_call.success
                                        return 0
                            else:
                                if not calldata.size:
                                    if not calldata.size % 32:
                                        call allowedForwards[uint32(call.func_hash)].mem[ceil32(calldata.size) + 192 len 4] with:
                                           value msg.value wei
                                             gas gas_remaining - 34050 wei
                                            args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                                        if ext_call.success:
                                            if block.gasprice <= txGasPriceLimit:
                                                require ext_code.size(treasuryAddress)
                                                call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 50 wei
                                                    args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                                require ext_call.success
                                                return 1
                                            else:
                                                return 1
                                        else:
                                            if not feeAddress:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if feeAddress == msg.sender:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if absMaxFee:
                                                        require ext_code.size(multiAssetAddress)
                                                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                             gas gas_remaining - 50 wei
                                                            args feeAddress, msg.sender, absMaxFee, symbol, Array(len=10, data='Fee return')
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                                    else:
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                    else:
                                        mem[floor32(calldata.size) + ceil32(calldata.size) + 192] = mem[floor32(calldata.size) + ceil32(calldata.size) + -(calldata.size % 32) + 224 len calldata.size % 32]
                                        call allowedForwards[uint32(call.func_hash)].mem[ceil32(calldata.size) + 192 len 4] with:
                                           value msg.value wei
                                             gas gas_remaining - 34050 wei
                                            args mem[ceil32(calldata.size) + 196 len floor32(calldata.size) + 28]
                                        if ext_call.success:
                                            if block.gasprice <= txGasPriceLimit:
                                                require ext_code.size(treasuryAddress)
                                                call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 50 wei
                                                    args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                                require ext_call.success
                                                return 1
                                            else:
                                                return 1
                                        else:
                                            if not feeAddress:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if feeAddress == msg.sender:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if absMaxFee:
                                                        require ext_code.size(multiAssetAddress)
                                                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                             gas gas_remaining - 50 wei
                                                            args feeAddress, msg.sender, absMaxFee, symbol, Array(len=10, data='Fee return')
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                                    else:
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                else:
                                    mem[ceil32(calldata.size) + 192] = mem[128]
                                    mem[ceil32(calldata.size) + 224 len floor32(calldata.size - 1)] = mem[160 len floor32(calldata.size - 1)]
                                    if not calldata.size % 32:
                                        call allowedForwards[uint32(call.func_hash)] with:
                                           funct call.data[0 len 4]
                                           value msg.value wei
                                             gas gas_remaining - 34050 wei
                                            args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                                        if ext_call.success:
                                            if block.gasprice <= txGasPriceLimit:
                                                require ext_code.size(treasuryAddress)
                                                call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 50 wei
                                                    args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                                require ext_call.success
                                                return 1
                                            else:
                                                return 1
                                        else:
                                            if not feeAddress:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if feeAddress == msg.sender:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if absMaxFee:
                                                        require ext_code.size(multiAssetAddress)
                                                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                             gas gas_remaining - 50 wei
                                                            args feeAddress, msg.sender, absMaxFee, symbol, Array(len=10, data='Fee return')
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                                    else:
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                    else:
                                        call allowedForwards[uint32(call.func_hash)] with:
                                           funct call.data[0 len 4]
                                           value msg.value wei
                                             gas gas_remaining - 34050 wei
                                            args mem[132 len 28], mem[160 len floor32(calldata.size - 1)], mem[ceil32(calldata.size) + floor32(calldata.size - 1) + 224 len floor32(calldata.size) - floor32(calldata.size - 1)]
                                        if ext_call.success:
                                            if block.gasprice <= txGasPriceLimit:
                                                require ext_code.size(treasuryAddress)
                                                call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 50 wei
                                                    args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                                require ext_call.success
                                                return 1
                                            else:
                                                return 1
                                        else:
                                            if not feeAddress:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if feeAddress == msg.sender:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if absMaxFee:
                                                        require ext_code.size(multiAssetAddress)
                                                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                             gas gas_remaining - 50 wei
                                                            args feeAddress, msg.sender, absMaxFee, symbol, Array(len=10, data='Fee return')
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                                    else:
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
        else:
            if 50 * calldata.size > 7500:
                mem[ceil32(calldata.size) + 128] = 11
                if not feeAddress:
                    if not calldata.size:
                        if not calldata.size % 32:
                            call allowedForwards[uint32(call.func_hash)].mem[ceil32(calldata.size) + 192 len 4] with:
                               value msg.value wei
                                 gas gas_remaining - 34050 wei
                                args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                            if ext_call.success:
                                if block.gasprice <= txGasPriceLimit:
                                    require ext_code.size(treasuryAddress)
                                    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 50 wei
                                        args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                    require ext_call.success
                                    return 1
                                else:
                                    return 1
                            else:
                                if not feeAddress:
                                    if not msg.value:
                                        return 0
                                    else:
                                        call msg.sender with:
                                           value msg.value wei
                                             gas gas_remaining - 34050 wei
                                        require ext_call.success
                                        return 0
                                else:
                                    if feeAddress == msg.sender:
                                        if not msg.value:
                                            return 0
                                        else:
                                            call msg.sender with:
                                               value msg.value wei
                                                 gas gas_remaining - 34050 wei
                                            require ext_call.success
                                            return 0
                                    else:
                                        if (2 * absMinFee) + (50 * calldata.size / 100000 * absMinFee):
                                            require ext_code.size(multiAssetAddress)
                                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                 gas gas_remaining - 50 wei
                                                args feeAddress, msg.sender, (2 * absMinFee) + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                        else:
                            mem[floor32(calldata.size) + ceil32(calldata.size) + 192] = mem[floor32(calldata.size) + ceil32(calldata.size) + -(calldata.size % 32) + 224 len calldata.size % 32]
                            call allowedForwards[uint32(call.func_hash)].mem[ceil32(calldata.size) + 192 len 4] with:
                               value msg.value wei
                                 gas gas_remaining - 34050 wei
                                args mem[ceil32(calldata.size) + 196 len floor32(calldata.size) + 28]
                            if ext_call.success:
                                if block.gasprice <= txGasPriceLimit:
                                    require ext_code.size(treasuryAddress)
                                    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 50 wei
                                        args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                    require ext_call.success
                                    return 1
                                else:
                                    return 1
                            else:
                                if not feeAddress:
                                    if not msg.value:
                                        return 0
                                    else:
                                        call msg.sender with:
                                           value msg.value wei
                                             gas gas_remaining - 34050 wei
                                        require ext_call.success
                                        return 0
                                else:
                                    if feeAddress == msg.sender:
                                        if not msg.value:
                                            return 0
                                        else:
                                            call msg.sender with:
                                               value msg.value wei
                                                 gas gas_remaining - 34050 wei
                                            require ext_call.success
                                            return 0
                                    else:
                                        if (2 * absMinFee) + (50 * calldata.size / 100000 * absMinFee):
                                            require ext_code.size(multiAssetAddress)
                                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                 gas gas_remaining - 50 wei
                                                args feeAddress, msg.sender, (2 * absMinFee) + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                    else:
                        mem[ceil32(calldata.size) + 192] = mem[128]
                        mem[ceil32(calldata.size) + 224 len floor32(calldata.size - 1)] = mem[160 len floor32(calldata.size - 1)]
                        if not calldata.size % 32:
                            call allowedForwards[uint32(call.func_hash)] with:
                               funct call.data[0 len 4]
                               value msg.value wei
                                 gas gas_remaining - 34050 wei
                                args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                            if ext_call.success:
                                if block.gasprice <= txGasPriceLimit:
                                    require ext_code.size(treasuryAddress)
                                    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 50 wei
                                        args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                    require ext_call.success
                                    return 1
                                else:
                                    return 1
                            else:
                                if not feeAddress:
                                    if not msg.value:
                                        return 0
                                    else:
                                        call msg.sender with:
                                           value msg.value wei
                                             gas gas_remaining - 34050 wei
                                        require ext_call.success
                                        return 0
                                else:
                                    if feeAddress == msg.sender:
                                        if not msg.value:
                                            return 0
                                        else:
                                            call msg.sender with:
                                               value msg.value wei
                                                 gas gas_remaining - 34050 wei
                                            require ext_call.success
                                            return 0
                                    else:
                                        if (2 * absMinFee) + (50 * calldata.size / 100000 * absMinFee):
                                            require ext_code.size(multiAssetAddress)
                                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                 gas gas_remaining - 50 wei
                                                args feeAddress, msg.sender, (2 * absMinFee) + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                        else:
                            call allowedForwards[uint32(call.func_hash)] with:
                               funct call.data[0 len 4]
                               value msg.value wei
                                 gas gas_remaining - 34050 wei
                                args mem[132 len 28], mem[160 len floor32(calldata.size - 1)], mem[ceil32(calldata.size) + floor32(calldata.size - 1) + 224 len floor32(calldata.size) - floor32(calldata.size - 1)]
                            if ext_call.success:
                                if block.gasprice <= txGasPriceLimit:
                                    require ext_code.size(treasuryAddress)
                                    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 50 wei
                                        args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                    require ext_call.success
                                    return 1
                                else:
                                    return 1
                            else:
                                if not feeAddress:
                                    if not msg.value:
                                        return 0
                                    else:
                                        call msg.sender with:
                                           value msg.value wei
                                             gas gas_remaining - 34050 wei
                                        require ext_call.success
                                        return 0
                                else:
                                    if feeAddress == msg.sender:
                                        if not msg.value:
                                            return 0
                                        else:
                                            call msg.sender with:
                                               value msg.value wei
                                                 gas gas_remaining - 34050 wei
                                            require ext_call.success
                                            return 0
                                    else:
                                        if (2 * absMinFee) + (50 * calldata.size / 100000 * absMinFee):
                                            require ext_code.size(multiAssetAddress)
                                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                 gas gas_remaining - 50 wei
                                                args feeAddress, msg.sender, (2 * absMinFee) + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                else:
                    if feeAddress == msg.sender:
                        if not calldata.size:
                            if not calldata.size % 32:
                                call allowedForwards[uint32(call.func_hash)].mem[ceil32(calldata.size) + 192 len 4] with:
                                   value msg.value wei
                                     gas gas_remaining - 34050 wei
                                    args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                                if ext_call.success:
                                    if block.gasprice <= txGasPriceLimit:
                                        require ext_code.size(treasuryAddress)
                                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 50 wei
                                            args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                        require ext_call.success
                                        return 1
                                    else:
                                        return 1
                                else:
                                    if not feeAddress:
                                        if not msg.value:
                                            return 0
                                        else:
                                            call msg.sender with:
                                               value msg.value wei
                                                 gas gas_remaining - 34050 wei
                                            require ext_call.success
                                            return 0
                                    else:
                                        if feeAddress == msg.sender:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if (2 * absMinFee) + (50 * calldata.size / 100000 * absMinFee):
                                                require ext_code.size(multiAssetAddress)
                                                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                     gas gas_remaining - 50 wei
                                                    args feeAddress, msg.sender, (2 * absMinFee) + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                            else:
                                mem[floor32(calldata.size) + ceil32(calldata.size) + 192] = mem[floor32(calldata.size) + ceil32(calldata.size) + -(calldata.size % 32) + 224 len calldata.size % 32]
                                call allowedForwards[uint32(call.func_hash)].mem[ceil32(calldata.size) + 192 len 4] with:
                                   value msg.value wei
                                     gas gas_remaining - 34050 wei
                                    args mem[ceil32(calldata.size) + 196 len floor32(calldata.size) + 28]
                                if ext_call.success:
                                    if block.gasprice <= txGasPriceLimit:
                                        require ext_code.size(treasuryAddress)
                                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 50 wei
                                            args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                        require ext_call.success
                                        return 1
                                    else:
                                        return 1
                                else:
                                    if not feeAddress:
                                        if not msg.value:
                                            return 0
                                        else:
                                            call msg.sender with:
                                               value msg.value wei
                                                 gas gas_remaining - 34050 wei
                                            require ext_call.success
                                            return 0
                                    else:
                                        if feeAddress == msg.sender:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if (2 * absMinFee) + (50 * calldata.size / 100000 * absMinFee):
                                                require ext_code.size(multiAssetAddress)
                                                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                     gas gas_remaining - 50 wei
                                                    args feeAddress, msg.sender, (2 * absMinFee) + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                        else:
                            mem[ceil32(calldata.size) + 192] = mem[128]
                            mem[ceil32(calldata.size) + 224 len floor32(calldata.size - 1)] = mem[160 len floor32(calldata.size - 1)]
                            if not calldata.size % 32:
                                call allowedForwards[uint32(call.func_hash)] with:
                                   funct call.data[0 len 4]
                                   value msg.value wei
                                     gas gas_remaining - 34050 wei
                                    args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                                if ext_call.success:
                                    if block.gasprice <= txGasPriceLimit:
                                        require ext_code.size(treasuryAddress)
                                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 50 wei
                                            args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                        require ext_call.success
                                        return 1
                                    else:
                                        return 1
                                else:
                                    if not feeAddress:
                                        if not msg.value:
                                            return 0
                                        else:
                                            call msg.sender with:
                                               value msg.value wei
                                                 gas gas_remaining - 34050 wei
                                            require ext_call.success
                                            return 0
                                    else:
                                        if feeAddress == msg.sender:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if (2 * absMinFee) + (50 * calldata.size / 100000 * absMinFee):
                                                require ext_code.size(multiAssetAddress)
                                                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                     gas gas_remaining - 50 wei
                                                    args feeAddress, msg.sender, (2 * absMinFee) + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                            else:
                                call allowedForwards[uint32(call.func_hash)] with:
                                   funct call.data[0 len 4]
                                   value msg.value wei
                                     gas gas_remaining - 34050 wei
                                    args mem[132 len 28], mem[160 len floor32(calldata.size - 1)], mem[ceil32(calldata.size) + floor32(calldata.size - 1) + 224 len floor32(calldata.size) - floor32(calldata.size - 1)]
                                if ext_call.success:
                                    if block.gasprice <= txGasPriceLimit:
                                        require ext_code.size(treasuryAddress)
                                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 50 wei
                                            args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                        require ext_call.success
                                        return 1
                                    else:
                                        return 1
                                else:
                                    if not feeAddress:
                                        if not msg.value:
                                            return 0
                                        else:
                                            call msg.sender with:
                                               value msg.value wei
                                                 gas gas_remaining - 34050 wei
                                            require ext_call.success
                                            return 0
                                    else:
                                        if feeAddress == msg.sender:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if (2 * absMinFee) + (50 * calldata.size / 100000 * absMinFee):
                                                require ext_code.size(multiAssetAddress)
                                                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                     gas gas_remaining - 50 wei
                                                    args feeAddress, msg.sender, (2 * absMinFee) + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                    else:
                        if (2 * absMinFee) + (50 * calldata.size / 100000 * absMinFee):
                            mem[ceil32(calldata.size) + 196] = msg.sender
                            mem[ceil32(calldata.size) + 228] = feeAddress
                            mem[ceil32(calldata.size) + 260] = (2 * absMinFee) + (50 * calldata.size / 100000 * absMinFee)
                            mem[ceil32(calldata.size) + 292] = symbol
                            mem[ceil32(calldata.size) + 324] = 160
                            mem[ceil32(calldata.size) + 356] = 11
                            mem[ceil32(calldata.size) + 420 len 0] = None
                            mem[ceil32(calldata.size) + 388] = Mask(88, 0, 'Forward fee')
                            require ext_code.size(multiAssetAddress)
                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                 gas gas_remaining - 50 wei
                                args msg.sender, feeAddress, (2 * absMinFee) + (50 * calldata.size / 100000 * absMinFee), symbol, 'Forward fee'
                            mem[ceil32(calldata.size) + 192] = ext_call.return_data[0]
                            require ext_call.success
                            if ext_call.return_data[0]:
                                if not calldata.size:
                                    if not calldata.size % 32:
                                        call allowedForwards[uint32(call.func_hash)] with:
                                           funct ext_call.return_data[0 len 4]
                                           value msg.value wei
                                             gas gas_remaining - 34050 wei
                                            args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                                        if ext_call.success:
                                            if block.gasprice <= txGasPriceLimit:
                                                require ext_code.size(treasuryAddress)
                                                call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 50 wei
                                                    args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                                require ext_call.success
                                                return 1
                                            else:
                                                return 1
                                        else:
                                            if not feeAddress:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if feeAddress == msg.sender:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if (2 * absMinFee) + (50 * calldata.size / 100000 * absMinFee):
                                                        require ext_code.size(multiAssetAddress)
                                                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                             gas gas_remaining - 50 wei
                                                            args feeAddress, msg.sender, (2 * absMinFee) + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                                    else:
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                    else:
                                        mem[floor32(calldata.size) + ceil32(calldata.size) + 192] = mem[floor32(calldata.size) + ceil32(calldata.size) + -(calldata.size % 32) + 224 len calldata.size % 32]
                                        call allowedForwards[uint32(call.func_hash)] with:
                                           funct ext_call.return_data[0 len 4]
                                           value msg.value wei
                                             gas gas_remaining - 34050 wei
                                            args ext_call.return_data[4 len 28], mem[ceil32(calldata.size) + 224 len floor32(calldata.size)]
                                        if ext_call.success:
                                            if block.gasprice <= txGasPriceLimit:
                                                require ext_code.size(treasuryAddress)
                                                call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 50 wei
                                                    args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                                require ext_call.success
                                                return 1
                                            else:
                                                return 1
                                        else:
                                            if not feeAddress:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if feeAddress == msg.sender:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if (2 * absMinFee) + (50 * calldata.size / 100000 * absMinFee):
                                                        require ext_code.size(multiAssetAddress)
                                                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                             gas gas_remaining - 50 wei
                                                            args feeAddress, msg.sender, (2 * absMinFee) + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                                    else:
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                else:
                                    mem[ceil32(calldata.size) + 192] = mem[128]
                                    mem[ceil32(calldata.size) + 224 len floor32(calldata.size - 1)] = mem[160 len floor32(calldata.size - 1)]
                                    if not calldata.size % 32:
                                        call allowedForwards[uint32(call.func_hash)] with:
                                           funct call.data[0 len 4]
                                           value msg.value wei
                                             gas gas_remaining - 34050 wei
                                            args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                                        if ext_call.success:
                                            if block.gasprice <= txGasPriceLimit:
                                                require ext_code.size(treasuryAddress)
                                                call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 50 wei
                                                    args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                                require ext_call.success
                                                return 1
                                            else:
                                                return 1
                                        else:
                                            if not feeAddress:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if feeAddress == msg.sender:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if (2 * absMinFee) + (50 * calldata.size / 100000 * absMinFee):
                                                        require ext_code.size(multiAssetAddress)
                                                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                             gas gas_remaining - 50 wei
                                                            args feeAddress, msg.sender, (2 * absMinFee) + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                                    else:
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                    else:
                                        call allowedForwards[uint32(call.func_hash)] with:
                                           funct call.data[0 len 4]
                                           value msg.value wei
                                             gas gas_remaining - 34050 wei
                                            args mem[132 len 28], mem[160 len floor32(calldata.size - 1)], mem[ceil32(calldata.size) + floor32(calldata.size - 1) + 224 len floor32(calldata.size) - floor32(calldata.size - 1)]
                                        if ext_call.success:
                                            if block.gasprice <= txGasPriceLimit:
                                                require ext_code.size(treasuryAddress)
                                                call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 50 wei
                                                    args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                                require ext_call.success
                                                return 1
                                            else:
                                                return 1
                                        else:
                                            if not feeAddress:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if feeAddress == msg.sender:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if (2 * absMinFee) + (50 * calldata.size / 100000 * absMinFee):
                                                        require ext_code.size(multiAssetAddress)
                                                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                             gas gas_remaining - 50 wei
                                                            args feeAddress, msg.sender, (2 * absMinFee) + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                                    else:
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                            else:
                                if not msg.value:
                                    return 0
                                else:
                                    call msg.sender with:
                                       value msg.value wei
                                         gas gas_remaining - 34050 wei
                                    require ext_call.success
                                    return 0
                        else:
                            if not calldata.size:
                                if not calldata.size % 32:
                                    call allowedForwards[uint32(call.func_hash)].mem[ceil32(calldata.size) + 192 len 4] with:
                                       value msg.value wei
                                         gas gas_remaining - 34050 wei
                                        args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                                    if ext_call.success:
                                        if block.gasprice <= txGasPriceLimit:
                                            require ext_code.size(treasuryAddress)
                                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 50 wei
                                                args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                            require ext_call.success
                                            return 1
                                        else:
                                            return 1
                                    else:
                                        if not feeAddress:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if feeAddress == msg.sender:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if (2 * absMinFee) + (50 * calldata.size / 100000 * absMinFee):
                                                    require ext_code.size(multiAssetAddress)
                                                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                         gas gas_remaining - 50 wei
                                                        args feeAddress, msg.sender, (2 * absMinFee) + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                else:
                                    mem[floor32(calldata.size) + ceil32(calldata.size) + 192] = mem[floor32(calldata.size) + ceil32(calldata.size) + -(calldata.size % 32) + 224 len calldata.size % 32]
                                    call allowedForwards[uint32(call.func_hash)].mem[ceil32(calldata.size) + 192 len 4] with:
                                       value msg.value wei
                                         gas gas_remaining - 34050 wei
                                        args mem[ceil32(calldata.size) + 196 len floor32(calldata.size) + 28]
                                    if ext_call.success:
                                        if block.gasprice <= txGasPriceLimit:
                                            require ext_code.size(treasuryAddress)
                                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 50 wei
                                                args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                            require ext_call.success
                                            return 1
                                        else:
                                            return 1
                                    else:
                                        if not feeAddress:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if feeAddress == msg.sender:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if (2 * absMinFee) + (50 * calldata.size / 100000 * absMinFee):
                                                    require ext_code.size(multiAssetAddress)
                                                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                         gas gas_remaining - 50 wei
                                                        args feeAddress, msg.sender, (2 * absMinFee) + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                            else:
                                mem[ceil32(calldata.size) + 192] = mem[128]
                                mem[ceil32(calldata.size) + 224 len floor32(calldata.size - 1)] = mem[160 len floor32(calldata.size - 1)]
                                if not calldata.size % 32:
                                    call allowedForwards[uint32(call.func_hash)] with:
                                       funct call.data[0 len 4]
                                       value msg.value wei
                                         gas gas_remaining - 34050 wei
                                        args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                                    if ext_call.success:
                                        if block.gasprice <= txGasPriceLimit:
                                            require ext_code.size(treasuryAddress)
                                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 50 wei
                                                args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                            require ext_call.success
                                            return 1
                                        else:
                                            return 1
                                    else:
                                        if not feeAddress:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if feeAddress == msg.sender:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if (2 * absMinFee) + (50 * calldata.size / 100000 * absMinFee):
                                                    require ext_code.size(multiAssetAddress)
                                                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                         gas gas_remaining - 50 wei
                                                        args feeAddress, msg.sender, (2 * absMinFee) + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                else:
                                    call allowedForwards[uint32(call.func_hash)] with:
                                       funct call.data[0 len 4]
                                       value msg.value wei
                                         gas gas_remaining - 34050 wei
                                        args mem[132 len 28], mem[160 len floor32(calldata.size - 1)], mem[ceil32(calldata.size) + floor32(calldata.size - 1) + 224 len floor32(calldata.size) - floor32(calldata.size - 1)]
                                    if ext_call.success:
                                        if block.gasprice <= txGasPriceLimit:
                                            require ext_code.size(treasuryAddress)
                                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 50 wei
                                                args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                            require ext_call.success
                                            return 1
                                        else:
                                            return 1
                                    else:
                                        if not feeAddress:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if feeAddress == msg.sender:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if (2 * absMinFee) + (50 * calldata.size / 100000 * absMinFee):
                                                    require ext_code.size(multiAssetAddress)
                                                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                         gas gas_remaining - 50 wei
                                                        args feeAddress, msg.sender, (2 * absMinFee) + (50 * calldata.size / 100000 * absMinFee), symbol, Array(len=10, data='Fee return')
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
            else:
                mem[ceil32(calldata.size) + 128] = 11
                if not feeAddress:
                    if not calldata.size:
                        if not calldata.size % 32:
                            call allowedForwards[uint32(call.func_hash)].mem[ceil32(calldata.size) + 192 len 4] with:
                               value msg.value wei
                                 gas gas_remaining - 34050 wei
                                args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                            if ext_call.success:
                                if block.gasprice <= txGasPriceLimit:
                                    require ext_code.size(treasuryAddress)
                                    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 50 wei
                                        args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                    require ext_call.success
                                    return 1
                                else:
                                    return 1
                            else:
                                if not feeAddress:
                                    if not msg.value:
                                        return 0
                                    else:
                                        call msg.sender with:
                                           value msg.value wei
                                             gas gas_remaining - 34050 wei
                                        require ext_call.success
                                        return 0
                                else:
                                    if feeAddress == msg.sender:
                                        if not msg.value:
                                            return 0
                                        else:
                                            call msg.sender with:
                                               value msg.value wei
                                                 gas gas_remaining - 34050 wei
                                            require ext_call.success
                                            return 0
                                    else:
                                        if absMinFee:
                                            require ext_code.size(multiAssetAddress)
                                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                 gas gas_remaining - 50 wei
                                                args feeAddress, msg.sender, absMinFee, symbol, Array(len=10, data='Fee return')
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                        else:
                            mem[floor32(calldata.size) + ceil32(calldata.size) + 192] = mem[floor32(calldata.size) + ceil32(calldata.size) + -(calldata.size % 32) + 224 len calldata.size % 32]
                            call allowedForwards[uint32(call.func_hash)].mem[ceil32(calldata.size) + 192 len 4] with:
                               value msg.value wei
                                 gas gas_remaining - 34050 wei
                                args mem[ceil32(calldata.size) + 196 len floor32(calldata.size) + 28]
                            if ext_call.success:
                                if block.gasprice <= txGasPriceLimit:
                                    require ext_code.size(treasuryAddress)
                                    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 50 wei
                                        args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                    require ext_call.success
                                    return 1
                                else:
                                    return 1
                            else:
                                if not feeAddress:
                                    if not msg.value:
                                        return 0
                                    else:
                                        call msg.sender with:
                                           value msg.value wei
                                             gas gas_remaining - 34050 wei
                                        require ext_call.success
                                        return 0
                                else:
                                    if feeAddress == msg.sender:
                                        if not msg.value:
                                            return 0
                                        else:
                                            call msg.sender with:
                                               value msg.value wei
                                                 gas gas_remaining - 34050 wei
                                            require ext_call.success
                                            return 0
                                    else:
                                        if absMinFee:
                                            require ext_code.size(multiAssetAddress)
                                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                 gas gas_remaining - 50 wei
                                                args feeAddress, msg.sender, absMinFee, symbol, Array(len=10, data='Fee return')
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                    else:
                        mem[ceil32(calldata.size) + 192] = mem[128]
                        mem[ceil32(calldata.size) + 224 len floor32(calldata.size - 1)] = mem[160 len floor32(calldata.size - 1)]
                        if not calldata.size % 32:
                            call allowedForwards[uint32(call.func_hash)] with:
                               funct call.data[0 len 4]
                               value msg.value wei
                                 gas gas_remaining - 34050 wei
                                args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                            if ext_call.success:
                                if block.gasprice <= txGasPriceLimit:
                                    require ext_code.size(treasuryAddress)
                                    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 50 wei
                                        args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                    require ext_call.success
                                    return 1
                                else:
                                    return 1
                            else:
                                if not feeAddress:
                                    if not msg.value:
                                        return 0
                                    else:
                                        call msg.sender with:
                                           value msg.value wei
                                             gas gas_remaining - 34050 wei
                                        require ext_call.success
                                        return 0
                                else:
                                    if feeAddress == msg.sender:
                                        if not msg.value:
                                            return 0
                                        else:
                                            call msg.sender with:
                                               value msg.value wei
                                                 gas gas_remaining - 34050 wei
                                            require ext_call.success
                                            return 0
                                    else:
                                        if absMinFee:
                                            require ext_code.size(multiAssetAddress)
                                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                 gas gas_remaining - 50 wei
                                                args feeAddress, msg.sender, absMinFee, symbol, Array(len=10, data='Fee return')
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                        else:
                            call allowedForwards[uint32(call.func_hash)] with:
                               funct call.data[0 len 4]
                               value msg.value wei
                                 gas gas_remaining - 34050 wei
                                args mem[132 len 28], mem[160 len floor32(calldata.size - 1)], mem[ceil32(calldata.size) + floor32(calldata.size - 1) + 224 len floor32(calldata.size) - floor32(calldata.size - 1)]
                            if ext_call.success:
                                if block.gasprice <= txGasPriceLimit:
                                    require ext_code.size(treasuryAddress)
                                    call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 50 wei
                                        args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                    require ext_call.success
                                    return 1
                                else:
                                    return 1
                            else:
                                if not feeAddress:
                                    if not msg.value:
                                        return 0
                                    else:
                                        call msg.sender with:
                                           value msg.value wei
                                             gas gas_remaining - 34050 wei
                                        require ext_call.success
                                        return 0
                                else:
                                    if feeAddress == msg.sender:
                                        if not msg.value:
                                            return 0
                                        else:
                                            call msg.sender with:
                                               value msg.value wei
                                                 gas gas_remaining - 34050 wei
                                            require ext_call.success
                                            return 0
                                    else:
                                        if absMinFee:
                                            require ext_code.size(multiAssetAddress)
                                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                 gas gas_remaining - 50 wei
                                                args feeAddress, msg.sender, absMinFee, symbol, Array(len=10, data='Fee return')
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                else:
                    if feeAddress == msg.sender:
                        if not calldata.size:
                            if not calldata.size % 32:
                                call allowedForwards[uint32(call.func_hash)].mem[ceil32(calldata.size) + 192 len 4] with:
                                   value msg.value wei
                                     gas gas_remaining - 34050 wei
                                    args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                                if ext_call.success:
                                    if block.gasprice <= txGasPriceLimit:
                                        require ext_code.size(treasuryAddress)
                                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 50 wei
                                            args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                        require ext_call.success
                                        return 1
                                    else:
                                        return 1
                                else:
                                    if not feeAddress:
                                        if not msg.value:
                                            return 0
                                        else:
                                            call msg.sender with:
                                               value msg.value wei
                                                 gas gas_remaining - 34050 wei
                                            require ext_call.success
                                            return 0
                                    else:
                                        if feeAddress == msg.sender:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if absMinFee:
                                                require ext_code.size(multiAssetAddress)
                                                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                     gas gas_remaining - 50 wei
                                                    args feeAddress, msg.sender, absMinFee, symbol, Array(len=10, data='Fee return')
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                            else:
                                mem[floor32(calldata.size) + ceil32(calldata.size) + 192] = mem[floor32(calldata.size) + ceil32(calldata.size) + -(calldata.size % 32) + 224 len calldata.size % 32]
                                call allowedForwards[uint32(call.func_hash)].mem[ceil32(calldata.size) + 192 len 4] with:
                                   value msg.value wei
                                     gas gas_remaining - 34050 wei
                                    args mem[ceil32(calldata.size) + 196 len floor32(calldata.size) + 28]
                                if ext_call.success:
                                    if block.gasprice <= txGasPriceLimit:
                                        require ext_code.size(treasuryAddress)
                                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 50 wei
                                            args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                        require ext_call.success
                                        return 1
                                    else:
                                        return 1
                                else:
                                    if not feeAddress:
                                        if not msg.value:
                                            return 0
                                        else:
                                            call msg.sender with:
                                               value msg.value wei
                                                 gas gas_remaining - 34050 wei
                                            require ext_call.success
                                            return 0
                                    else:
                                        if feeAddress == msg.sender:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if absMinFee:
                                                require ext_code.size(multiAssetAddress)
                                                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                     gas gas_remaining - 50 wei
                                                    args feeAddress, msg.sender, absMinFee, symbol, Array(len=10, data='Fee return')
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                        else:
                            mem[ceil32(calldata.size) + 192] = mem[128]
                            mem[ceil32(calldata.size) + 224 len floor32(calldata.size - 1)] = mem[160 len floor32(calldata.size - 1)]
                            if not calldata.size % 32:
                                call allowedForwards[uint32(call.func_hash)] with:
                                   funct call.data[0 len 4]
                                   value msg.value wei
                                     gas gas_remaining - 34050 wei
                                    args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                                if ext_call.success:
                                    if block.gasprice <= txGasPriceLimit:
                                        require ext_code.size(treasuryAddress)
                                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 50 wei
                                            args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                        require ext_call.success
                                        return 1
                                    else:
                                        return 1
                                else:
                                    if not feeAddress:
                                        if not msg.value:
                                            return 0
                                        else:
                                            call msg.sender with:
                                               value msg.value wei
                                                 gas gas_remaining - 34050 wei
                                            require ext_call.success
                                            return 0
                                    else:
                                        if feeAddress == msg.sender:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if absMinFee:
                                                require ext_code.size(multiAssetAddress)
                                                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                     gas gas_remaining - 50 wei
                                                    args feeAddress, msg.sender, absMinFee, symbol, Array(len=10, data='Fee return')
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                            else:
                                call allowedForwards[uint32(call.func_hash)] with:
                                   funct call.data[0 len 4]
                                   value msg.value wei
                                     gas gas_remaining - 34050 wei
                                    args mem[132 len 28], mem[160 len floor32(calldata.size - 1)], mem[ceil32(calldata.size) + floor32(calldata.size - 1) + 224 len floor32(calldata.size) - floor32(calldata.size - 1)]
                                if ext_call.success:
                                    if block.gasprice <= txGasPriceLimit:
                                        require ext_code.size(treasuryAddress)
                                        call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 50 wei
                                            args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                        require ext_call.success
                                        return 1
                                    else:
                                        return 1
                                else:
                                    if not feeAddress:
                                        if not msg.value:
                                            return 0
                                        else:
                                            call msg.sender with:
                                               value msg.value wei
                                                 gas gas_remaining - 34050 wei
                                            require ext_call.success
                                            return 0
                                    else:
                                        if feeAddress == msg.sender:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if absMinFee:
                                                require ext_code.size(multiAssetAddress)
                                                call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                     gas gas_remaining - 50 wei
                                                    args feeAddress, msg.sender, absMinFee, symbol, Array(len=10, data='Fee return')
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                    else:
                        if absMinFee:
                            mem[ceil32(calldata.size) + 196] = msg.sender
                            mem[ceil32(calldata.size) + 228] = feeAddress
                            mem[ceil32(calldata.size) + 260] = absMinFee
                            mem[ceil32(calldata.size) + 292] = symbol
                            mem[ceil32(calldata.size) + 324] = 160
                            mem[ceil32(calldata.size) + 356] = 11
                            mem[ceil32(calldata.size) + 420 len 0] = None
                            mem[ceil32(calldata.size) + 388] = Mask(88, 0, 'Forward fee')
                            require ext_code.size(multiAssetAddress)
                            call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                 gas gas_remaining - 50 wei
                                args msg.sender, feeAddress, absMinFee, symbol, 'Forward fee'
                            mem[ceil32(calldata.size) + 192] = ext_call.return_data[0]
                            require ext_call.success
                            if ext_call.return_data[0]:
                                if not calldata.size:
                                    if not calldata.size % 32:
                                        call allowedForwards[uint32(call.func_hash)] with:
                                           funct ext_call.return_data[0 len 4]
                                           value msg.value wei
                                             gas gas_remaining - 34050 wei
                                            args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                                        if ext_call.success:
                                            if block.gasprice <= txGasPriceLimit:
                                                require ext_code.size(treasuryAddress)
                                                call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 50 wei
                                                    args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                                require ext_call.success
                                                return 1
                                            else:
                                                return 1
                                        else:
                                            if not feeAddress:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if feeAddress == msg.sender:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if absMinFee:
                                                        require ext_code.size(multiAssetAddress)
                                                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                             gas gas_remaining - 50 wei
                                                            args feeAddress, msg.sender, absMinFee, symbol, Array(len=10, data='Fee return')
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                                    else:
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                    else:
                                        mem[floor32(calldata.size) + ceil32(calldata.size) + 192] = mem[floor32(calldata.size) + ceil32(calldata.size) + -(calldata.size % 32) + 224 len calldata.size % 32]
                                        call allowedForwards[uint32(call.func_hash)] with:
                                           funct ext_call.return_data[0 len 4]
                                           value msg.value wei
                                             gas gas_remaining - 34050 wei
                                            args ext_call.return_data[4 len 28], mem[ceil32(calldata.size) + 224 len floor32(calldata.size)]
                                        if ext_call.success:
                                            if block.gasprice <= txGasPriceLimit:
                                                require ext_code.size(treasuryAddress)
                                                call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 50 wei
                                                    args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                                require ext_call.success
                                                return 1
                                            else:
                                                return 1
                                        else:
                                            if not feeAddress:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if feeAddress == msg.sender:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if absMinFee:
                                                        require ext_code.size(multiAssetAddress)
                                                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                             gas gas_remaining - 50 wei
                                                            args feeAddress, msg.sender, absMinFee, symbol, Array(len=10, data='Fee return')
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                                    else:
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                else:
                                    mem[ceil32(calldata.size) + 192] = mem[128]
                                    mem[ceil32(calldata.size) + 224 len floor32(calldata.size - 1)] = mem[160 len floor32(calldata.size - 1)]
                                    if not calldata.size % 32:
                                        call allowedForwards[uint32(call.func_hash)] with:
                                           funct call.data[0 len 4]
                                           value msg.value wei
                                             gas gas_remaining - 34050 wei
                                            args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                                        if ext_call.success:
                                            if block.gasprice <= txGasPriceLimit:
                                                require ext_code.size(treasuryAddress)
                                                call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 50 wei
                                                    args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                                require ext_call.success
                                                return 1
                                            else:
                                                return 1
                                        else:
                                            if not feeAddress:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if feeAddress == msg.sender:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if absMinFee:
                                                        require ext_code.size(multiAssetAddress)
                                                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                             gas gas_remaining - 50 wei
                                                            args feeAddress, msg.sender, absMinFee, symbol, Array(len=10, data='Fee return')
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                                    else:
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                    else:
                                        call allowedForwards[uint32(call.func_hash)] with:
                                           funct call.data[0 len 4]
                                           value msg.value wei
                                             gas gas_remaining - 34050 wei
                                            args mem[132 len 28], mem[160 len floor32(calldata.size - 1)], mem[ceil32(calldata.size) + floor32(calldata.size - 1) + 224 len floor32(calldata.size) - floor32(calldata.size - 1)]
                                        if ext_call.success:
                                            if block.gasprice <= txGasPriceLimit:
                                                require ext_code.size(treasuryAddress)
                                                call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 50 wei
                                                    args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                                require ext_call.success
                                                return 1
                                            else:
                                                return 1
                                        else:
                                            if not feeAddress:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if feeAddress == msg.sender:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if absMinFee:
                                                        require ext_code.size(multiAssetAddress)
                                                        call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                             gas gas_remaining - 50 wei
                                                            args feeAddress, msg.sender, absMinFee, symbol, Array(len=10, data='Fee return')
                                                        require ext_call.success
                                                        require ext_call.return_data[0]
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                                                    else:
                                                        if not msg.value:
                                                            return 0
                                                        else:
                                                            call msg.sender with:
                                                               value msg.value wei
                                                                 gas gas_remaining - 34050 wei
                                                            require ext_call.success
                                                            return 0
                            else:
                                if not msg.value:
                                    return 0
                                else:
                                    call msg.sender with:
                                       value msg.value wei
                                         gas gas_remaining - 34050 wei
                                    require ext_call.success
                                    return 0
                        else:
                            if not calldata.size:
                                if not calldata.size % 32:
                                    call allowedForwards[uint32(call.func_hash)].mem[ceil32(calldata.size) + 192 len 4] with:
                                       value msg.value wei
                                         gas gas_remaining - 34050 wei
                                        args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                                    if ext_call.success:
                                        if block.gasprice <= txGasPriceLimit:
                                            require ext_code.size(treasuryAddress)
                                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 50 wei
                                                args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                            require ext_call.success
                                            return 1
                                        else:
                                            return 1
                                    else:
                                        if not feeAddress:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if feeAddress == msg.sender:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if absMinFee:
                                                    require ext_code.size(multiAssetAddress)
                                                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                         gas gas_remaining - 50 wei
                                                        args feeAddress, msg.sender, absMinFee, symbol, Array(len=10, data='Fee return')
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                else:
                                    mem[floor32(calldata.size) + ceil32(calldata.size) + 192] = mem[floor32(calldata.size) + ceil32(calldata.size) + -(calldata.size % 32) + 224 len calldata.size % 32]
                                    call allowedForwards[uint32(call.func_hash)].mem[ceil32(calldata.size) + 192 len 4] with:
                                       value msg.value wei
                                         gas gas_remaining - 34050 wei
                                        args mem[ceil32(calldata.size) + 196 len floor32(calldata.size) + 28]
                                    if ext_call.success:
                                        if block.gasprice <= txGasPriceLimit:
                                            require ext_code.size(treasuryAddress)
                                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 50 wei
                                                args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                            require ext_call.success
                                            return 1
                                        else:
                                            return 1
                                    else:
                                        if not feeAddress:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if feeAddress == msg.sender:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if absMinFee:
                                                    require ext_code.size(multiAssetAddress)
                                                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                         gas gas_remaining - 50 wei
                                                        args feeAddress, msg.sender, absMinFee, symbol, Array(len=10, data='Fee return')
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                            else:
                                mem[ceil32(calldata.size) + 192] = mem[128]
                                mem[ceil32(calldata.size) + 224 len floor32(calldata.size - 1)] = mem[160 len floor32(calldata.size - 1)]
                                if not calldata.size % 32:
                                    call allowedForwards[uint32(call.func_hash)] with:
                                       funct call.data[0 len 4]
                                       value msg.value wei
                                         gas gas_remaining - 34050 wei
                                        args mem[ceil32(calldata.size) + 196 len calldata.size - 4]
                                    if ext_call.success:
                                        if block.gasprice <= txGasPriceLimit:
                                            require ext_code.size(treasuryAddress)
                                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 50 wei
                                                args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                            require ext_call.success
                                            return 1
                                        else:
                                            return 1
                                    else:
                                        if not feeAddress:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if feeAddress == msg.sender:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if absMinFee:
                                                    require ext_code.size(multiAssetAddress)
                                                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                         gas gas_remaining - 50 wei
                                                        args feeAddress, msg.sender, absMinFee, symbol, Array(len=10, data='Fee return')
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                else:
                                    call allowedForwards[uint32(call.func_hash)] with:
                                       funct call.data[0 len 4]
                                       value msg.value wei
                                         gas gas_remaining - 34050 wei
                                        args mem[132 len 28], mem[160 len floor32(calldata.size - 1)], mem[ceil32(calldata.size) + floor32(calldata.size - 1) + 224 len floor32(calldata.size) - floor32(calldata.size - 1)]
                                    if ext_call.success:
                                        if block.gasprice <= txGasPriceLimit:
                                            require ext_code.size(treasuryAddress)
                                            call treasuryAddress.withdraw(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 50 wei
                                                args tx.origin, (forwardCallGas * block.gasprice) + (50 * calldata.size * block.gasprice) + (refundGas * block.gasprice)
                                            require ext_call.success
                                            return 1
                                        else:
                                            return 1
                                    else:
                                        if not feeAddress:
                                            if not msg.value:
                                                return 0
                                            else:
                                                call msg.sender with:
                                                   value msg.value wei
                                                     gas gas_remaining - 34050 wei
                                                require ext_call.success
                                                return 0
                                        else:
                                            if feeAddress == msg.sender:
                                                if not msg.value:
                                                    return 0
                                                else:
                                                    call msg.sender with:
                                                       value msg.value wei
                                                         gas gas_remaining - 34050 wei
                                                    require ext_call.success
                                                    return 0
                                            else:
                                                if absMinFee:
                                                    require ext_code.size(multiAssetAddress)
                                                    call multiAssetAddress.transferFromWithReference(address rg1, address rg2, uint256 rg3, bytes32 rg4, string rg5) with:
                                                         gas gas_remaining - 50 wei
                                                        args feeAddress, msg.sender, absMinFee, symbol, Array(len=10, data='Fee return')
                                                    require ext_call.success
                                                    require ext_call.return_data[0]
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
                                                else:
                                                    if not msg.value:
                                                        return 0
                                                    else:
                                                        call msg.sender with:
                                                           value msg.value wei
                                                             gas gas_remaining - 34050 wei
                                                        require ext_call.success
                                                        return 0
    else:
        if not msg.value:
            return 0
        else:
            call msg.sender with:
               value msg.value wei
                 gas gas_remaining - 34050 wei
            require ext_call.success
            return 0
}



}
