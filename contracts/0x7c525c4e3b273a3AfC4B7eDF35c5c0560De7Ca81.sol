contract main {


// =======================  Init code  ======================


uint256 stor13;

function _fallback() payable {
    stor13 = 10000
    require not msg.value
    return code.data[31 len 7640]
}



// =====================  Runtime code  =====================


#
#  - _performTransferToICAPWithReference(bytes32 arg1, uint256 arg2, string arg3, address arg4)
#
address proxyAddress;
address stor1;
address stor2;
uint256 txGasPriceLimit;
uint256 refundGas;
uint256 transferWithReferenceCallGas;
uint256 transferFromWithReferenceCallGas;
uint256 transferToICAPWithReferenceCallGas;
uint256 transferFromToICAPWithReferenceCallGas;
uint256 approveCallGas;
uint256 absMinFee;
uint256 feePercent;
uint256 absMaxFee;
uint256 sub_9223ccda;
address treasuryAddress;
uint32 stor15;
address feeAddress;

function txGasPriceLimit() {
    return txGasPriceLimit
}

function approveCallGas() {
    return approveCallGas
}

function feeAddress() {
    return address(feeAddress)
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

function treasury() {
    return treasuryAddress
}

function transferFromWithReferenceCallGas() {
    return transferFromWithReferenceCallGas
}

function feePercent() {
    return feePercent
}

function sub_9223ccda(?) {
    return sub_9223ccda
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

function proxy() {
    return proxyAddress
}

function _fallback() payable {
    revert 
}

function init(address arg1) {
    if proxyAddress:
        return 0
    proxyAddress = arg1
    return 1
}

function calculateFee(uint256 arg1) {
    if arg1 * feePercent / 10000 < absMinFee:
        return absMinFee
    if arg1 * feePercent / 10000 <= absMaxFee:
        return (arg1 * feePercent / 10000)
    return absMaxFee
}

function _performGeneric(bytes arg1, address arg2) payable {
    if proxyAddress != msg.sender:
        return 0
    require not stor1
    stor1 = arg2
    call this.address with:
       value msg.value wei
         gas 63 * gas_remaining / 64 wei
        args arg1[all]
    require ext_call.success
    stor1 = 0
    return ext_call.return_data[0]
}

function calculateFeeDynamic(uint256 arg1, uint256 arg2) {
    if arg1 * feePercent / 10000 < absMinFee:
        if arg2 > 7500:
            return ((2 * absMinFee) + (arg2 / 100000 * absMinFee))
        return absMinFee
    if arg1 * feePercent / 10000 <= absMaxFee:
        if arg2 > 7500:
            return (absMinFee + (arg2 / 100000 * absMinFee) + (arg1 * feePercent / 10000))
        return (arg1 * feePercent / 10000)
    if arg2 > 7500:
        return (absMinFee + (arg2 / 100000 * absMinFee) + absMaxFee)
    return absMaxFee
}

function setupAmbi2(address arg1) {
    if stor2:
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
    stor2 = arg1
    return 1
}

function setupFee(address arg1) {
    if not stor2:
        return 0
    require ext_code.size(stor2)
    if this.address == msg.sender:
        call stor2.hasRole(address rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 50 wei
            args address(this.address), 0x61646d696e000000000000000000000000000000000000000000000000000000, stor1
    else:
        call stor2.hasRole(address rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 50 wei
            args address(this.address), 0x61646d696e000000000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    address(feeAddress) = arg1
    return 1
}

function setFeeStructure(uint256 arg1, uint256 arg2, uint256 arg3) {
    if not stor2:
        return 0
    require ext_code.size(stor2)
    if this.address == msg.sender:
        call stor2.hasRole(address rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 50 wei
            args address(this.address), 'cron', stor1
    else:
        call stor2.hasRole(address rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 50 wei
            args address(this.address), 'cron', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if arg2 > sub_9223ccda:
        return 0
    if arg3 < arg1:
        return 0
    absMinFee = arg1
    feePercent = arg2
    absMaxFee = arg3
    return 1
}

function setupTreasury(address arg1, uint256 arg2) {
    if not stor2:
        return 0
    require ext_code.size(stor2)
    if this.address == msg.sender:
        call stor2.hasRole(address rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 50 wei
            args address(this.address), 0x61646d696e000000000000000000000000000000000000000000000000000000, stor1
    else:
        call stor2.hasRole(address rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 50 wei
            args address(this.address), 0x61646d696e000000000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if not arg2:
        return 0
    treasuryAddress = arg1
    txGasPriceLimit = arg2
    return 1
}

function sub_16865b2e(?) {
    if not stor2:
        return 0
    require ext_code.size(stor2)
    if this.address == msg.sender:
        call stor2.hasRole(address rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 50 wei
            args address(this.address), 0x61646d696e000000000000000000000000000000000000000000000000000000, stor1
    else:
        call stor2.hasRole(address rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 50 wei
            args address(this.address), 0x61646d696e000000000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if arg1 >= sub_9223ccda:
        return 0
    if arg1 < feePercent:
        feePercent = arg1
    sub_9223ccda = arg1
    return 1
}

function sub_c358d4ff(?) {
    if not stor2:
        return 0
    require ext_code.size(stor2)
    if this.address == msg.sender:
        call stor2.hasRole(address rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 50 wei
            args address(this.address), 0x7365747570000000000000000000000000000000000000000000000000000000, stor1
    else:
        call stor2.hasRole(address rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 50 wei
            args address(this.address), 0x7365747570000000000000000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    transferWithReferenceCallGas = arg1
    transferFromWithReferenceCallGas = arg2
    transferToICAPWithReferenceCallGas = arg3
    transferFromToICAPWithReferenceCallGas = arg4
    approveCallGas = arg5
    return 1
}

function updateRefundGas() {
    if stor2:
        require ext_code.size(stor2)
        if this.address == msg.sender:
            call stor2.hasRole(address rg1, bytes32 rg2, address rg3) with:
                 gas gas_remaining - 50 wei
                args address(this.address), 0x7365747570000000000000000000000000000000000000000000000000000000, stor1
        else:
            call stor2.hasRole(address rg1, bytes32 rg2, address rg3) with:
                 gas gas_remaining - 50 wei
                args address(this.address), 0x7365747570000000000000000000000000000000000000000000000000000000, msg.sender
        require ext_call.success
        if ext_call.return_data[0]:
            if block.gasprice <= txGasPriceLimit:
                call treasuryAddress with:
                   funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                     gas gas_remaining - 25050 wei
                    args tx.origin, 10^15
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

function takeFee(address arg1, uint256 arg2, string arg3) {
    mem[128 len arg3.length] = arg3[all]
    if not stor2:
        return 0
    require ext_code.size(stor2)
    if this.address == msg.sender:
        call stor2.hasRole(address rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 50 wei
            args address(this.address), 'fee', stor1
    else:
        call stor2.hasRole(address rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 50 wei
            args address(this.address), 'fee', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    mem[ceil32(arg3.length) + 128] = 0x14cba00200000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 132] = arg1
    mem[ceil32(arg3.length) + 164] = address(feeAddress)
    mem[ceil32(arg3.length) + 196] = arg2
    mem[ceil32(arg3.length) + 260] = proxyAddress
    mem[ceil32(arg3.length) + 228] = 160
    mem[ceil32(arg3.length) + 292] = arg3.length
    if not arg3.length:
        if not arg3.length % 32:
            require ext_code.size(proxyAddress)
            call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                 gas gas_remaining - 50 wei
                args 0, 0, uint32(stor15), arg2, 160, proxyAddress, arg3.length, mem[ceil32(arg3.length) + 324 len arg3.length]
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 324] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 356 len arg3.length % 32]
            require ext_code.size(proxyAddress)
            call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                 gas gas_remaining - 50 wei
                args address(arg1), address(feeAddress), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len floor32(arg3.length) + 32]), proxyAddress
    else:
        mem[ceil32(arg3.length) + 324] = mem[128]
        mem[ceil32(arg3.length) + 356 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
        require ext_code.size(proxyAddress)
        call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
             gas gas_remaining - 50 wei
            args address(arg1), address(feeAddress), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len arg3.length]), proxyAddress
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function _performApprove(address arg1, uint256 arg2, address arg3) {
    if proxyAddress != msg.sender:
        return 0
    else:
        if 0 >= absMinFee:
            if 0 <= absMaxFee:
                if not address(feeAddress):
                    require ext_code.size(proxyAddress)
                    call proxyAddress._forwardApprove(address rg1, uint256 rg2, address rg3) with:
                         gas gas_remaining - 50 wei
                        args address(arg1), arg2, arg3
                    require ext_call.success
                    if ext_call.return_data[0]:
                        if block.gasprice <= txGasPriceLimit:
                            call treasuryAddress with:
                               funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                 gas gas_remaining - 25050 wei
                                args tx.origin, (approveCallGas * block.gasprice) + (refundGas * block.gasprice)
                            return 1
                        else:
                            return 1
                    else:
                        if not address(feeAddress):
                            return 0
                        else:
                            if address(feeAddress) == arg3:
                                return 0
                            else:
                                return 0
                else:
                    if address(feeAddress) == arg3:
                        require ext_code.size(proxyAddress)
                        call proxyAddress._forwardApprove(address rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining - 50 wei
                            args address(arg1), arg2, arg3
                        require ext_call.success
                        if ext_call.return_data[0]:
                            if block.gasprice <= txGasPriceLimit:
                                call treasuryAddress with:
                                   funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                     gas gas_remaining - 25050 wei
                                    args tx.origin, (approveCallGas * block.gasprice) + (refundGas * block.gasprice)
                                return 1
                            else:
                                return 1
                        else:
                            if not address(feeAddress):
                                return 0
                            else:
                                if address(feeAddress) == arg3:
                                    return 0
                                else:
                                    return 0
                    else:
                        require ext_code.size(proxyAddress)
                        call proxyAddress._forwardApprove(address rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining - 50 wei
                            args address(arg1), arg2, arg3
                        require ext_call.success
                        if ext_call.return_data[0]:
                            if block.gasprice <= txGasPriceLimit:
                                call treasuryAddress with:
                                   funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                     gas gas_remaining - 25050 wei
                                    args tx.origin, (approveCallGas * block.gasprice) + (refundGas * block.gasprice)
                                return 1
                            else:
                                return 1
                        else:
                            if not address(feeAddress):
                                return 0
                            else:
                                if address(feeAddress) == arg3:
                                    return 0
                                else:
                                    return 0
            else:
                if not address(feeAddress):
                    require ext_code.size(proxyAddress)
                    call proxyAddress._forwardApprove(address rg1, uint256 rg2, address rg3) with:
                         gas gas_remaining - 50 wei
                        args address(arg1), arg2, arg3
                    require ext_call.success
                    if ext_call.return_data[0]:
                        if block.gasprice <= txGasPriceLimit:
                            call treasuryAddress with:
                               funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                 gas gas_remaining - 25050 wei
                                args tx.origin, (approveCallGas * block.gasprice) + (refundGas * block.gasprice)
                            return 1
                        else:
                            return 1
                    else:
                        if not address(feeAddress):
                            return 0
                        else:
                            if address(feeAddress) == arg3:
                                return 0
                            else:
                                if absMaxFee:
                                    require ext_code.size(proxyAddress)
                                    call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                         gas gas_remaining - 50 wei
                                        args address(feeAddress), address(arg3), absMaxFee, 'Fee return', address(feeAddress)
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    return 0
                                else:
                                    return 0
                else:
                    if address(feeAddress) == arg3:
                        require ext_code.size(proxyAddress)
                        call proxyAddress._forwardApprove(address rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining - 50 wei
                            args address(arg1), arg2, arg3
                        require ext_call.success
                        if ext_call.return_data[0]:
                            if block.gasprice <= txGasPriceLimit:
                                call treasuryAddress with:
                                   funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                     gas gas_remaining - 25050 wei
                                    args tx.origin, (approveCallGas * block.gasprice) + (refundGas * block.gasprice)
                                return 1
                            else:
                                return 1
                        else:
                            if not address(feeAddress):
                                return 0
                            else:
                                if address(feeAddress) == arg3:
                                    return 0
                                else:
                                    if absMaxFee:
                                        require ext_code.size(proxyAddress)
                                        call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                             gas gas_remaining - 50 wei
                                            args address(feeAddress), address(arg3), absMaxFee, 'Fee return', address(feeAddress)
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        return 0
                                    else:
                                        return 0
                    else:
                        if absMaxFee:
                            require ext_code.size(proxyAddress)
                            call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                 gas gas_remaining - 50 wei
                                args 0, 0, uint32(stor15), absMaxFee, 160, address(arg3), 11, Mask(88, 0, 'Approve fee')
                            require ext_call.success
                            if ext_call.return_data[0]:
                                require ext_code.size(proxyAddress)
                                call proxyAddress._forwardApprove(address rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining - 50 wei
                                    args address(arg1), arg2, arg3
                                require ext_call.success
                                if ext_call.return_data[0]:
                                    if block.gasprice <= txGasPriceLimit:
                                        call treasuryAddress with:
                                           funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                             gas gas_remaining - 25050 wei
                                            args tx.origin, (approveCallGas * block.gasprice) + (refundGas * block.gasprice)
                                        return 1
                                    else:
                                        return 1
                                else:
                                    if not address(feeAddress):
                                        return 0
                                    else:
                                        if address(feeAddress) == arg3:
                                            return 0
                                        else:
                                            if absMaxFee:
                                                require ext_code.size(proxyAddress)
                                                call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                                     gas gas_remaining - 50 wei
                                                    args address(feeAddress), address(arg3), absMaxFee, 160, address(feeAddress), 0, 10, Mask(80, 0, 'Fee return')
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                                return 0
                                            else:
                                                return 0
                            else:
                                return 0
                        else:
                            require ext_code.size(proxyAddress)
                            call proxyAddress._forwardApprove(address rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), arg2, arg3
                            require ext_call.success
                            if ext_call.return_data[0]:
                                if block.gasprice <= txGasPriceLimit:
                                    call treasuryAddress with:
                                       funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                         gas gas_remaining - 25050 wei
                                        args tx.origin, (approveCallGas * block.gasprice) + (refundGas * block.gasprice)
                                    return 1
                                else:
                                    return 1
                            else:
                                if not address(feeAddress):
                                    return 0
                                else:
                                    if address(feeAddress) == arg3:
                                        return 0
                                    else:
                                        if absMaxFee:
                                            require ext_code.size(proxyAddress)
                                            call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                                 gas gas_remaining - 50 wei
                                                args address(feeAddress), address(arg3), absMaxFee, 'Fee return', address(feeAddress)
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            return 0
                                        else:
                                            return 0
        else:
            if not address(feeAddress):
                require ext_code.size(proxyAddress)
                call proxyAddress._forwardApprove(address rg1, uint256 rg2, address rg3) with:
                     gas gas_remaining - 50 wei
                    args address(arg1), arg2, arg3
                require ext_call.success
                if ext_call.return_data[0]:
                    if block.gasprice <= txGasPriceLimit:
                        call treasuryAddress with:
                           funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                             gas gas_remaining - 25050 wei
                            args tx.origin, (approveCallGas * block.gasprice) + (refundGas * block.gasprice)
                        return 1
                    else:
                        return 1
                else:
                    if not address(feeAddress):
                        return 0
                    else:
                        if address(feeAddress) == arg3:
                            return 0
                        else:
                            if absMinFee:
                                require ext_code.size(proxyAddress)
                                call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                     gas gas_remaining - 50 wei
                                    args address(feeAddress), address(arg3), absMinFee, 'Fee return', address(feeAddress)
                                require ext_call.success
                                require ext_call.return_data[0]
                                return 0
                            else:
                                return 0
            else:
                if address(feeAddress) == arg3:
                    require ext_code.size(proxyAddress)
                    call proxyAddress._forwardApprove(address rg1, uint256 rg2, address rg3) with:
                         gas gas_remaining - 50 wei
                        args address(arg1), arg2, arg3
                    require ext_call.success
                    if ext_call.return_data[0]:
                        if block.gasprice <= txGasPriceLimit:
                            call treasuryAddress with:
                               funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                 gas gas_remaining - 25050 wei
                                args tx.origin, (approveCallGas * block.gasprice) + (refundGas * block.gasprice)
                            return 1
                        else:
                            return 1
                    else:
                        if not address(feeAddress):
                            return 0
                        else:
                            if address(feeAddress) == arg3:
                                return 0
                            else:
                                if absMinFee:
                                    require ext_code.size(proxyAddress)
                                    call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                         gas gas_remaining - 50 wei
                                        args address(feeAddress), address(arg3), absMinFee, 'Fee return', address(feeAddress)
                                    require ext_call.success
                                    require ext_call.return_data[0]
                                    return 0
                                else:
                                    return 0
                else:
                    if absMinFee:
                        require ext_code.size(proxyAddress)
                        call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                             gas gas_remaining - 50 wei
                            args 0, 0, uint32(stor15), absMinFee, 160, address(arg3), 11, Mask(88, 0, 'Approve fee')
                        require ext_call.success
                        if ext_call.return_data[0]:
                            require ext_code.size(proxyAddress)
                            call proxyAddress._forwardApprove(address rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), arg2, arg3
                            require ext_call.success
                            if ext_call.return_data[0]:
                                if block.gasprice <= txGasPriceLimit:
                                    call treasuryAddress with:
                                       funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                         gas gas_remaining - 25050 wei
                                        args tx.origin, (approveCallGas * block.gasprice) + (refundGas * block.gasprice)
                                    return 1
                                else:
                                    return 1
                            else:
                                if not address(feeAddress):
                                    return 0
                                else:
                                    if address(feeAddress) == arg3:
                                        return 0
                                    else:
                                        if absMinFee:
                                            require ext_code.size(proxyAddress)
                                            call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                                 gas gas_remaining - 50 wei
                                                args address(feeAddress), address(arg3), absMinFee, 160, address(feeAddress), 0, 10, Mask(80, 0, 'Fee return')
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                            return 0
                                        else:
                                            return 0
                        else:
                            return 0
                    else:
                        require ext_code.size(proxyAddress)
                        call proxyAddress._forwardApprove(address rg1, uint256 rg2, address rg3) with:
                             gas gas_remaining - 50 wei
                            args address(arg1), arg2, arg3
                        require ext_call.success
                        if ext_call.return_data[0]:
                            if block.gasprice <= txGasPriceLimit:
                                call treasuryAddress with:
                                   funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                     gas gas_remaining - 25050 wei
                                    args tx.origin, (approveCallGas * block.gasprice) + (refundGas * block.gasprice)
                                return 1
                            else:
                                return 1
                        else:
                            if not address(feeAddress):
                                return 0
                            else:
                                if address(feeAddress) == arg3:
                                    return 0
                                else:
                                    if absMinFee:
                                        require ext_code.size(proxyAddress)
                                        call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                             gas gas_remaining - 50 wei
                                            args address(feeAddress), address(arg3), absMinFee, 'Fee return', address(feeAddress)
                                        require ext_call.success
                                        require ext_call.return_data[0]
                                        return 0
                                    else:
                                        return 0
}

function _performTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) {
    mem[128 len arg4.length] = arg4[all]
    if proxyAddress == msg.sender:
        mem[ceil32(arg4.length) + 128] = 12
        mem[ceil32(arg4.length) + 160] = 'Transfer fee' << 160
        if arg3 * feePercent / 10000 < absMinFee:
            if 75 * arg4.length > 7500:
                if not address(feeAddress):
                    mem[ceil32(arg4.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 196] = arg1
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = arg3
                    mem[ceil32(arg4.length) + 324] = arg5
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 356] = arg4.length
                    if arg4.length:
                        mem[ceil32(arg4.length) + 388] = mem[128]
                        mem[ceil32(arg4.length) + 420 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                    require ext_code.size(proxyAddress)
                    call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                         gas gas_remaining - 50 wei
                        args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                    require ext_call.success
                    if ext_call.return_data[0]:
                        if block.gasprice <= txGasPriceLimit:
                            call treasuryAddress with:
                               funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                 gas gas_remaining - 25050 wei
                                args tx.origin, (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                        return 1
                    if address(feeAddress):
                        if address(feeAddress) != arg1:
                            require not (2 * absMinFee) + (75 * arg4.length / 100000 * absMinFee)
                else:
                    if address(feeAddress) == arg1:
                        mem[ceil32(arg4.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 196] = arg1
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = arg3
                        mem[ceil32(arg4.length) + 324] = arg5
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 356] = arg4.length
                        if arg4.length:
                            mem[ceil32(arg4.length) + 388] = mem[128]
                            mem[ceil32(arg4.length) + 420 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                        require ext_code.size(proxyAddress)
                        call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                             gas gas_remaining - 50 wei
                            args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                        require ext_call.success
                        if ext_call.return_data[0]:
                            if block.gasprice <= txGasPriceLimit:
                                call treasuryAddress with:
                                   funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                     gas gas_remaining - 25050 wei
                                    args tx.origin, (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                            return 1
                        if address(feeAddress):
                            if address(feeAddress) != arg1:
                                require not (2 * absMinFee) + (75 * arg4.length / 100000 * absMinFee)
                    else:
                        if not (2 * absMinFee) + (75 * arg4.length / 100000 * absMinFee):
                            mem[ceil32(arg4.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg4.length) + 196] = arg1
                            mem[ceil32(arg4.length) + 228] = arg2
                            mem[ceil32(arg4.length) + 260] = arg3
                            mem[ceil32(arg4.length) + 324] = arg5
                            mem[ceil32(arg4.length) + 292] = 160
                            mem[ceil32(arg4.length) + 356] = arg4.length
                            if arg4.length:
                                mem[ceil32(arg4.length) + 388] = mem[128]
                                mem[ceil32(arg4.length) + 420 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                            require ext_code.size(proxyAddress)
                            call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                            require ext_call.success
                            if ext_call.return_data[0]:
                                if block.gasprice <= txGasPriceLimit:
                                    call treasuryAddress with:
                                       funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                         gas gas_remaining - 25050 wei
                                        args tx.origin, (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                                return 1
                            if address(feeAddress):
                                if address(feeAddress) != arg1:
                                    require not (2 * absMinFee) + (75 * arg4.length / 100000 * absMinFee)
                        else:
                            mem[ceil32(arg4.length) + 420 len 0] = None
                            mem[ceil32(arg4.length) + 388] = 0
                            require ext_code.size(proxyAddress)
                            call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), address(feeAddress), (2 * absMinFee) + (75 * arg4.length / 100000 * absMinFee), 160, address(arg1), 12, 0
                            require ext_call.success
                            if ext_call.return_data[0]:
                                mem[ceil32(arg4.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                                mem[ceil32(arg4.length) + 196] = arg1
                                mem[ceil32(arg4.length) + 228] = arg2
                                mem[ceil32(arg4.length) + 260] = arg3
                                mem[ceil32(arg4.length) + 324] = arg5
                                mem[ceil32(arg4.length) + 292] = 160
                                mem[ceil32(arg4.length) + 356] = arg4.length
                                if arg4.length:
                                    mem[ceil32(arg4.length) + 388] = mem[128]
                                    mem[ceil32(arg4.length) + 420 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                                require ext_code.size(proxyAddress)
                                call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                     gas gas_remaining - 50 wei
                                    args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                                require ext_call.success
                                if ext_call.return_data[0]:
                                    if block.gasprice <= txGasPriceLimit:
                                        call treasuryAddress with:
                                           funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                             gas gas_remaining - 25050 wei
                                            args tx.origin, (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                                    return 1
                                if address(feeAddress):
                                    if address(feeAddress) != arg1:
                                        require not (2 * absMinFee) + (75 * arg4.length / 100000 * absMinFee)
            else:
                if not address(feeAddress):
                    mem[ceil32(arg4.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 196] = arg1
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = arg3
                    mem[ceil32(arg4.length) + 324] = arg5
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 356] = arg4.length
                    if arg4.length:
                        mem[ceil32(arg4.length) + 388] = mem[128]
                        mem[ceil32(arg4.length) + 420 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                    require ext_code.size(proxyAddress)
                    call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                         gas gas_remaining - 50 wei
                        args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                    require ext_call.success
                    if ext_call.return_data[0]:
                        if block.gasprice <= txGasPriceLimit:
                            call treasuryAddress with:
                               funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                 gas gas_remaining - 25050 wei
                                args tx.origin, (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                        return 1
                    if address(feeAddress):
                        if address(feeAddress) != arg1:
                            require not absMinFee
                else:
                    if address(feeAddress) == arg1:
                        mem[ceil32(arg4.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 196] = arg1
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = arg3
                        mem[ceil32(arg4.length) + 324] = arg5
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 356] = arg4.length
                        if arg4.length:
                            mem[ceil32(arg4.length) + 388] = mem[128]
                            mem[ceil32(arg4.length) + 420 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                        require ext_code.size(proxyAddress)
                        call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                             gas gas_remaining - 50 wei
                            args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                        require ext_call.success
                        if ext_call.return_data[0]:
                            if block.gasprice <= txGasPriceLimit:
                                call treasuryAddress with:
                                   funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                     gas gas_remaining - 25050 wei
                                    args tx.origin, (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                            return 1
                        if address(feeAddress):
                            if address(feeAddress) != arg1:
                                require not absMinFee
                    else:
                        if not absMinFee:
                            mem[ceil32(arg4.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg4.length) + 196] = arg1
                            mem[ceil32(arg4.length) + 228] = arg2
                            mem[ceil32(arg4.length) + 260] = arg3
                            mem[ceil32(arg4.length) + 324] = arg5
                            mem[ceil32(arg4.length) + 292] = 160
                            mem[ceil32(arg4.length) + 356] = arg4.length
                            if arg4.length:
                                mem[ceil32(arg4.length) + 388] = mem[128]
                                mem[ceil32(arg4.length) + 420 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                            require ext_code.size(proxyAddress)
                            call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                            require ext_call.success
                            if ext_call.return_data[0]:
                                if block.gasprice <= txGasPriceLimit:
                                    call treasuryAddress with:
                                       funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                         gas gas_remaining - 25050 wei
                                        args tx.origin, (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                                return 1
                            if address(feeAddress):
                                if address(feeAddress) != arg1:
                                    require not absMinFee
                        else:
                            mem[ceil32(arg4.length) + 420 len 0] = None
                            mem[ceil32(arg4.length) + 388] = 0
                            require ext_code.size(proxyAddress)
                            call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), address(feeAddress), absMinFee, 160, address(arg1), 12, 0
                            require ext_call.success
                            if ext_call.return_data[0]:
                                mem[ceil32(arg4.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                                mem[ceil32(arg4.length) + 196] = arg1
                                mem[ceil32(arg4.length) + 228] = arg2
                                mem[ceil32(arg4.length) + 260] = arg3
                                mem[ceil32(arg4.length) + 324] = arg5
                                mem[ceil32(arg4.length) + 292] = 160
                                mem[ceil32(arg4.length) + 356] = arg4.length
                                if arg4.length:
                                    mem[ceil32(arg4.length) + 388] = mem[128]
                                    mem[ceil32(arg4.length) + 420 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                                require ext_code.size(proxyAddress)
                                call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                     gas gas_remaining - 50 wei
                                    args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                                require ext_call.success
                                if ext_call.return_data[0]:
                                    if block.gasprice <= txGasPriceLimit:
                                        call treasuryAddress with:
                                           funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                             gas gas_remaining - 25050 wei
                                            args tx.origin, (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                                    return 1
                                if address(feeAddress):
                                    if address(feeAddress) != arg1:
                                        require not absMinFee
        else:
            if arg3 * feePercent / 10000 <= absMaxFee:
                if 75 * arg4.length > 7500:
                    if not address(feeAddress):
                        mem[ceil32(arg4.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 196] = arg1
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = arg3
                        mem[ceil32(arg4.length) + 324] = arg5
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 356] = arg4.length
                        if arg4.length:
                            mem[ceil32(arg4.length) + 388] = mem[128]
                            mem[ceil32(arg4.length) + 420 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                        require ext_code.size(proxyAddress)
                        call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                             gas gas_remaining - 50 wei
                            args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                        require ext_call.success
                        if ext_call.return_data[0]:
                            if block.gasprice <= txGasPriceLimit:
                                call treasuryAddress with:
                                   funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                     gas gas_remaining - 25050 wei
                                    args tx.origin, (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                            return 1
                        if address(feeAddress):
                            if address(feeAddress) != arg1:
                                require not absMinFee + (75 * arg4.length / 100000 * absMinFee) + (arg3 * feePercent / 10000)
                    else:
                        if address(feeAddress) == arg1:
                            mem[ceil32(arg4.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg4.length) + 196] = arg1
                            mem[ceil32(arg4.length) + 228] = arg2
                            mem[ceil32(arg4.length) + 260] = arg3
                            mem[ceil32(arg4.length) + 324] = arg5
                            mem[ceil32(arg4.length) + 292] = 160
                            mem[ceil32(arg4.length) + 356] = arg4.length
                            if arg4.length:
                                mem[ceil32(arg4.length) + 388] = mem[128]
                                mem[ceil32(arg4.length) + 420 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                            require ext_code.size(proxyAddress)
                            call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                            require ext_call.success
                            if ext_call.return_data[0]:
                                if block.gasprice <= txGasPriceLimit:
                                    call treasuryAddress with:
                                       funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                         gas gas_remaining - 25050 wei
                                        args tx.origin, (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                                return 1
                            if address(feeAddress):
                                if address(feeAddress) != arg1:
                                    require not absMinFee + (75 * arg4.length / 100000 * absMinFee) + (arg3 * feePercent / 10000)
                        else:
                            if not absMinFee + (75 * arg4.length / 100000 * absMinFee) + (arg3 * feePercent / 10000):
                                mem[ceil32(arg4.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                                mem[ceil32(arg4.length) + 196] = arg1
                                mem[ceil32(arg4.length) + 228] = arg2
                                mem[ceil32(arg4.length) + 260] = arg3
                                mem[ceil32(arg4.length) + 324] = arg5
                                mem[ceil32(arg4.length) + 292] = 160
                                mem[ceil32(arg4.length) + 356] = arg4.length
                                if arg4.length:
                                    mem[ceil32(arg4.length) + 388] = mem[128]
                                    mem[ceil32(arg4.length) + 420 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                                require ext_code.size(proxyAddress)
                                call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                     gas gas_remaining - 50 wei
                                    args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                                require ext_call.success
                                if ext_call.return_data[0]:
                                    if block.gasprice <= txGasPriceLimit:
                                        call treasuryAddress with:
                                           funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                             gas gas_remaining - 25050 wei
                                            args tx.origin, (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                                    return 1
                                if address(feeAddress):
                                    if address(feeAddress) != arg1:
                                        require not absMinFee + (75 * arg4.length / 100000 * absMinFee) + (arg3 * feePercent / 10000)
                            else:
                                mem[ceil32(arg4.length) + 420 len 0] = None
                                mem[ceil32(arg4.length) + 388] = 0
                                require ext_code.size(proxyAddress)
                                call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                     gas gas_remaining - 50 wei
                                    args address(arg1), address(feeAddress), absMinFee + (75 * arg4.length / 100000 * absMinFee) + (arg3 * feePercent / 10000), 160, address(arg1), 12, 0
                                require ext_call.success
                                if ext_call.return_data[0]:
                                    mem[ceil32(arg4.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + 196] = arg1
                                    mem[ceil32(arg4.length) + 228] = arg2
                                    mem[ceil32(arg4.length) + 260] = arg3
                                    mem[ceil32(arg4.length) + 324] = arg5
                                    mem[ceil32(arg4.length) + 292] = 160
                                    mem[ceil32(arg4.length) + 356] = arg4.length
                                    if arg4.length:
                                        mem[ceil32(arg4.length) + 388] = mem[128]
                                        mem[ceil32(arg4.length) + 420 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                                    require ext_code.size(proxyAddress)
                                    call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                         gas gas_remaining - 50 wei
                                        args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                                    require ext_call.success
                                    if ext_call.return_data[0]:
                                        if block.gasprice <= txGasPriceLimit:
                                            call treasuryAddress with:
                                               funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                                 gas gas_remaining - 25050 wei
                                                args tx.origin, (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                                        return 1
                                    if address(feeAddress):
                                        if address(feeAddress) != arg1:
                                            require not absMinFee + (75 * arg4.length / 100000 * absMinFee) + (arg3 * feePercent / 10000)
                else:
                    if not address(feeAddress):
                        mem[ceil32(arg4.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 196] = arg1
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = arg3
                        mem[ceil32(arg4.length) + 324] = arg5
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 356] = arg4.length
                        if arg4.length:
                            mem[ceil32(arg4.length) + 388] = mem[128]
                            mem[ceil32(arg4.length) + 420 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                        require ext_code.size(proxyAddress)
                        call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                             gas gas_remaining - 50 wei
                            args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                        require ext_call.success
                        if ext_call.return_data[0]:
                            if block.gasprice <= txGasPriceLimit:
                                call treasuryAddress with:
                                   funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                     gas gas_remaining - 25050 wei
                                    args tx.origin, (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                            return 1
                        if address(feeAddress):
                            if address(feeAddress) != arg1:
                                require not arg3 * feePercent / 10000
                    else:
                        if address(feeAddress) == arg1:
                            mem[ceil32(arg4.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg4.length) + 196] = arg1
                            mem[ceil32(arg4.length) + 228] = arg2
                            mem[ceil32(arg4.length) + 260] = arg3
                            mem[ceil32(arg4.length) + 324] = arg5
                            mem[ceil32(arg4.length) + 292] = 160
                            mem[ceil32(arg4.length) + 356] = arg4.length
                            if arg4.length:
                                mem[ceil32(arg4.length) + 388] = mem[128]
                                mem[ceil32(arg4.length) + 420 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                            require ext_code.size(proxyAddress)
                            call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                            require ext_call.success
                            if ext_call.return_data[0]:
                                if block.gasprice <= txGasPriceLimit:
                                    call treasuryAddress with:
                                       funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                         gas gas_remaining - 25050 wei
                                        args tx.origin, (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                                return 1
                            if address(feeAddress):
                                if address(feeAddress) != arg1:
                                    require not arg3 * feePercent / 10000
                        else:
                            if not arg3 * feePercent / 10000:
                                mem[ceil32(arg4.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                                mem[ceil32(arg4.length) + 196] = arg1
                                mem[ceil32(arg4.length) + 228] = arg2
                                mem[ceil32(arg4.length) + 260] = arg3
                                mem[ceil32(arg4.length) + 324] = arg5
                                mem[ceil32(arg4.length) + 292] = 160
                                mem[ceil32(arg4.length) + 356] = arg4.length
                                if arg4.length:
                                    mem[ceil32(arg4.length) + 388] = mem[128]
                                    mem[ceil32(arg4.length) + 420 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                                require ext_code.size(proxyAddress)
                                call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                     gas gas_remaining - 50 wei
                                    args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                                require ext_call.success
                                if ext_call.return_data[0]:
                                    if block.gasprice <= txGasPriceLimit:
                                        call treasuryAddress with:
                                           funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                             gas gas_remaining - 25050 wei
                                            args tx.origin, (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                                    return 1
                                if address(feeAddress):
                                    if address(feeAddress) != arg1:
                                        require not arg3 * feePercent / 10000
                            else:
                                mem[ceil32(arg4.length) + 420 len 0] = None
                                mem[ceil32(arg4.length) + 388] = 0
                                require ext_code.size(proxyAddress)
                                call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                     gas gas_remaining - 50 wei
                                    args address(arg1), address(feeAddress), arg3 * feePercent / 10000, 160, address(arg1), 12, 0
                                require ext_call.success
                                if ext_call.return_data[0]:
                                    mem[ceil32(arg4.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + 196] = arg1
                                    mem[ceil32(arg4.length) + 228] = arg2
                                    mem[ceil32(arg4.length) + 260] = arg3
                                    mem[ceil32(arg4.length) + 324] = arg5
                                    mem[ceil32(arg4.length) + 292] = 160
                                    mem[ceil32(arg4.length) + 356] = arg4.length
                                    if arg4.length:
                                        mem[ceil32(arg4.length) + 388] = mem[128]
                                        mem[ceil32(arg4.length) + 420 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                                    require ext_code.size(proxyAddress)
                                    call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                         gas gas_remaining - 50 wei
                                        args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                                    require ext_call.success
                                    if ext_call.return_data[0]:
                                        if block.gasprice <= txGasPriceLimit:
                                            call treasuryAddress with:
                                               funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                                 gas gas_remaining - 25050 wei
                                                args tx.origin, (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                                        return 1
                                    if address(feeAddress):
                                        if address(feeAddress) != arg1:
                                            require not arg3 * feePercent / 10000
            else:
                if 75 * arg4.length > 7500:
                    if not address(feeAddress):
                        mem[ceil32(arg4.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 196] = arg1
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = arg3
                        mem[ceil32(arg4.length) + 324] = arg5
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 356] = arg4.length
                        if arg4.length:
                            mem[ceil32(arg4.length) + 388] = mem[128]
                            mem[ceil32(arg4.length) + 420 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                        require ext_code.size(proxyAddress)
                        call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                             gas gas_remaining - 50 wei
                            args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                        require ext_call.success
                        if ext_call.return_data[0]:
                            if block.gasprice <= txGasPriceLimit:
                                call treasuryAddress with:
                                   funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                     gas gas_remaining - 25050 wei
                                    args tx.origin, (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                            return 1
                        if address(feeAddress):
                            if address(feeAddress) != arg1:
                                require not absMinFee + (75 * arg4.length / 100000 * absMinFee) + absMaxFee
                    else:
                        if address(feeAddress) == arg1:
                            mem[ceil32(arg4.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg4.length) + 196] = arg1
                            mem[ceil32(arg4.length) + 228] = arg2
                            mem[ceil32(arg4.length) + 260] = arg3
                            mem[ceil32(arg4.length) + 324] = arg5
                            mem[ceil32(arg4.length) + 292] = 160
                            mem[ceil32(arg4.length) + 356] = arg4.length
                            if arg4.length:
                                mem[ceil32(arg4.length) + 388] = mem[128]
                                mem[ceil32(arg4.length) + 420 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                            require ext_code.size(proxyAddress)
                            call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                            require ext_call.success
                            if ext_call.return_data[0]:
                                if block.gasprice <= txGasPriceLimit:
                                    call treasuryAddress with:
                                       funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                         gas gas_remaining - 25050 wei
                                        args tx.origin, (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                                return 1
                            if address(feeAddress):
                                if address(feeAddress) != arg1:
                                    require not absMinFee + (75 * arg4.length / 100000 * absMinFee) + absMaxFee
                        else:
                            if not absMinFee + (75 * arg4.length / 100000 * absMinFee) + absMaxFee:
                                mem[ceil32(arg4.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                                mem[ceil32(arg4.length) + 196] = arg1
                                mem[ceil32(arg4.length) + 228] = arg2
                                mem[ceil32(arg4.length) + 260] = arg3
                                mem[ceil32(arg4.length) + 324] = arg5
                                mem[ceil32(arg4.length) + 292] = 160
                                mem[ceil32(arg4.length) + 356] = arg4.length
                                if arg4.length:
                                    mem[ceil32(arg4.length) + 388] = mem[128]
                                    mem[ceil32(arg4.length) + 420 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                                require ext_code.size(proxyAddress)
                                call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                     gas gas_remaining - 50 wei
                                    args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                                require ext_call.success
                                if ext_call.return_data[0]:
                                    if block.gasprice <= txGasPriceLimit:
                                        call treasuryAddress with:
                                           funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                             gas gas_remaining - 25050 wei
                                            args tx.origin, (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                                    return 1
                                if address(feeAddress):
                                    if address(feeAddress) != arg1:
                                        require not absMinFee + (75 * arg4.length / 100000 * absMinFee) + absMaxFee
                            else:
                                mem[ceil32(arg4.length) + 420 len 0] = None
                                mem[ceil32(arg4.length) + 388] = 0
                                require ext_code.size(proxyAddress)
                                call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                     gas gas_remaining - 50 wei
                                    args address(arg1), address(feeAddress), absMinFee + (75 * arg4.length / 100000 * absMinFee) + absMaxFee, 160, address(arg1), 12, 0
                                require ext_call.success
                                if ext_call.return_data[0]:
                                    mem[ceil32(arg4.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + 196] = arg1
                                    mem[ceil32(arg4.length) + 228] = arg2
                                    mem[ceil32(arg4.length) + 260] = arg3
                                    mem[ceil32(arg4.length) + 324] = arg5
                                    mem[ceil32(arg4.length) + 292] = 160
                                    mem[ceil32(arg4.length) + 356] = arg4.length
                                    if arg4.length:
                                        mem[ceil32(arg4.length) + 388] = mem[128]
                                        mem[ceil32(arg4.length) + 420 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                                    require ext_code.size(proxyAddress)
                                    call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                         gas gas_remaining - 50 wei
                                        args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                                    require ext_call.success
                                    if ext_call.return_data[0]:
                                        if block.gasprice <= txGasPriceLimit:
                                            call treasuryAddress with:
                                               funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                                 gas gas_remaining - 25050 wei
                                                args tx.origin, (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                                        return 1
                                    if address(feeAddress):
                                        if address(feeAddress) != arg1:
                                            require not absMinFee + (75 * arg4.length / 100000 * absMinFee) + absMaxFee
                else:
                    if not address(feeAddress):
                        mem[ceil32(arg4.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 196] = arg1
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = arg3
                        mem[ceil32(arg4.length) + 324] = arg5
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 356] = arg4.length
                        if arg4.length:
                            mem[ceil32(arg4.length) + 388] = mem[128]
                            mem[ceil32(arg4.length) + 420 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                        require ext_code.size(proxyAddress)
                        call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                             gas gas_remaining - 50 wei
                            args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                        require ext_call.success
                        if ext_call.return_data[0]:
                            if block.gasprice <= txGasPriceLimit:
                                call treasuryAddress with:
                                   funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                     gas gas_remaining - 25050 wei
                                    args tx.origin, (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                            return 1
                        if address(feeAddress):
                            if address(feeAddress) != arg1:
                                require not absMaxFee
                    else:
                        if address(feeAddress) == arg1:
                            mem[ceil32(arg4.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg4.length) + 196] = arg1
                            mem[ceil32(arg4.length) + 228] = arg2
                            mem[ceil32(arg4.length) + 260] = arg3
                            mem[ceil32(arg4.length) + 324] = arg5
                            mem[ceil32(arg4.length) + 292] = 160
                            mem[ceil32(arg4.length) + 356] = arg4.length
                            if arg4.length:
                                mem[ceil32(arg4.length) + 388] = mem[128]
                                mem[ceil32(arg4.length) + 420 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                            require ext_code.size(proxyAddress)
                            call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                            require ext_call.success
                            if ext_call.return_data[0]:
                                if block.gasprice <= txGasPriceLimit:
                                    call treasuryAddress with:
                                       funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                         gas gas_remaining - 25050 wei
                                        args tx.origin, (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                                return 1
                            if address(feeAddress):
                                if address(feeAddress) != arg1:
                                    require not absMaxFee
                        else:
                            if not absMaxFee:
                                mem[ceil32(arg4.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                                mem[ceil32(arg4.length) + 196] = arg1
                                mem[ceil32(arg4.length) + 228] = arg2
                                mem[ceil32(arg4.length) + 260] = arg3
                                mem[ceil32(arg4.length) + 324] = arg5
                                mem[ceil32(arg4.length) + 292] = 160
                                mem[ceil32(arg4.length) + 356] = arg4.length
                                if arg4.length:
                                    mem[ceil32(arg4.length) + 388] = mem[128]
                                    mem[ceil32(arg4.length) + 420 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                                require ext_code.size(proxyAddress)
                                call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                     gas gas_remaining - 50 wei
                                    args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                                require ext_call.success
                                if ext_call.return_data[0]:
                                    if block.gasprice <= txGasPriceLimit:
                                        call treasuryAddress with:
                                           funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                             gas gas_remaining - 25050 wei
                                            args tx.origin, (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                                    return 1
                                if address(feeAddress):
                                    if address(feeAddress) != arg1:
                                        require not absMaxFee
                            else:
                                mem[ceil32(arg4.length) + 420 len 0] = None
                                mem[ceil32(arg4.length) + 388] = 0
                                require ext_code.size(proxyAddress)
                                call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                     gas gas_remaining - 50 wei
                                    args address(arg1), address(feeAddress), absMaxFee, 160, address(arg1), 12, 0
                                require ext_call.success
                                if ext_call.return_data[0]:
                                    mem[ceil32(arg4.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + 196] = arg1
                                    mem[ceil32(arg4.length) + 228] = arg2
                                    mem[ceil32(arg4.length) + 260] = arg3
                                    mem[ceil32(arg4.length) + 324] = arg5
                                    mem[ceil32(arg4.length) + 292] = 160
                                    mem[ceil32(arg4.length) + 356] = arg4.length
                                    if arg4.length:
                                        mem[ceil32(arg4.length) + 388] = mem[128]
                                        mem[ceil32(arg4.length) + 420 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                                    require ext_code.size(proxyAddress)
                                    call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                         gas gas_remaining - 50 wei
                                        args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                                    require ext_call.success
                                    if ext_call.return_data[0]:
                                        if block.gasprice <= txGasPriceLimit:
                                            call treasuryAddress with:
                                               funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                                 gas gas_remaining - 25050 wei
                                                args tx.origin, (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                                        return 1
                                    if address(feeAddress):
                                        if address(feeAddress) != arg1:
                                            require not absMaxFee
        return 0
    else:
        return 0
}

function _performTransferFromToICAPWithReference(address arg1, bytes32 arg2, uint256 arg3, string arg4, address arg5) {
    mem[128 len arg4.length] = arg4[all]
    if proxyAddress == msg.sender:
        mem[ceil32(arg4.length) + 128] = 12
        mem[ceil32(arg4.length) + 160] = 'Transfer fee' << 160
        if arg3 * feePercent / 10000 < absMinFee:
            if 75 * arg4.length > 7500:
                if not address(feeAddress):
                    mem[ceil32(arg4.length) + 192] = 0x9b487f3f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 196] = arg1
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = arg3
                    mem[ceil32(arg4.length) + 324] = arg5
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 356] = arg4.length
                    if arg4.length:
                        mem[ceil32(arg4.length) + 388] = mem[128]
                        if arg4.length > 32:
                            mem[ceil32(arg4.length) + 420] = mem[160]
                            mem[ceil32(arg4.length) + 452 len floor32(arg4.length - 33)] = mem[192 len floor32(arg4.length - 33)]
                    require ext_code.size(proxyAddress)
                    call proxyAddress._forwardTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4, address rg5) with:
                         gas gas_remaining - 50 wei
                        args address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                    require ext_call.success
                    if ext_call.return_data[0]:
                        if block.gasprice <= txGasPriceLimit:
                            call treasuryAddress with:
                               funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                 gas gas_remaining - 25050 wei
                                args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                        return 1
                    if address(feeAddress):
                        if address(feeAddress) != arg1:
                            require not (2 * absMinFee) + (75 * arg4.length / 100000 * absMinFee)
                else:
                    if address(feeAddress) == arg1:
                        mem[ceil32(arg4.length) + 192] = 0x9b487f3f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 196] = arg1
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = arg3
                        mem[ceil32(arg4.length) + 324] = arg5
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 356] = arg4.length
                        if arg4.length:
                            mem[ceil32(arg4.length) + 388] = mem[128]
                            if arg4.length > 32:
                                mem[ceil32(arg4.length) + 420] = mem[160]
                                mem[ceil32(arg4.length) + 452 len floor32(arg4.length - 33)] = mem[192 len floor32(arg4.length - 33)]
                        require ext_code.size(proxyAddress)
                        call proxyAddress._forwardTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4, address rg5) with:
                             gas gas_remaining - 50 wei
                            args address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                        require ext_call.success
                        if ext_call.return_data[0]:
                            if block.gasprice <= txGasPriceLimit:
                                call treasuryAddress with:
                                   funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                     gas gas_remaining - 25050 wei
                                    args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                            return 1
                        if address(feeAddress):
                            if address(feeAddress) != arg1:
                                require not (2 * absMinFee) + (75 * arg4.length / 100000 * absMinFee)
                    else:
                        if not (2 * absMinFee) + (75 * arg4.length / 100000 * absMinFee):
                            mem[ceil32(arg4.length) + 192] = 0x9b487f3f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg4.length) + 196] = arg1
                            mem[ceil32(arg4.length) + 228] = arg2
                            mem[ceil32(arg4.length) + 260] = arg3
                            mem[ceil32(arg4.length) + 324] = arg5
                            mem[ceil32(arg4.length) + 292] = 160
                            mem[ceil32(arg4.length) + 356] = arg4.length
                            if arg4.length:
                                mem[ceil32(arg4.length) + 388] = mem[128]
                                if arg4.length > 32:
                                    mem[ceil32(arg4.length) + 420] = mem[160]
                                    mem[ceil32(arg4.length) + 452 len floor32(arg4.length - 33)] = mem[192 len floor32(arg4.length - 33)]
                            require ext_code.size(proxyAddress)
                            call proxyAddress._forwardTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4, address rg5) with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                            require ext_call.success
                            if ext_call.return_data[0]:
                                if block.gasprice <= txGasPriceLimit:
                                    call treasuryAddress with:
                                       funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                         gas gas_remaining - 25050 wei
                                        args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                                return 1
                            if address(feeAddress):
                                if address(feeAddress) != arg1:
                                    require not (2 * absMinFee) + (75 * arg4.length / 100000 * absMinFee)
                        else:
                            mem[ceil32(arg4.length) + 420 len 0] = None
                            mem[ceil32(arg4.length) + 388] = 0
                            require ext_code.size(proxyAddress)
                            call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), address(feeAddress), (2 * absMinFee) + (75 * arg4.length / 100000 * absMinFee), 160, address(arg1), 12, 0
                            require ext_call.success
                            if ext_call.return_data[0]:
                                mem[ceil32(arg4.length) + 192] = 0x9b487f3f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(arg4.length) + 196] = arg1
                                mem[ceil32(arg4.length) + 228] = arg2
                                mem[ceil32(arg4.length) + 260] = arg3
                                mem[ceil32(arg4.length) + 324] = arg5
                                mem[ceil32(arg4.length) + 292] = 160
                                mem[ceil32(arg4.length) + 356] = arg4.length
                                if arg4.length:
                                    mem[ceil32(arg4.length) + 388] = mem[128]
                                    if arg4.length > 32:
                                        mem[ceil32(arg4.length) + 420] = mem[160]
                                        mem[ceil32(arg4.length) + 452 len floor32(arg4.length - 33)] = mem[192 len floor32(arg4.length - 33)]
                                require ext_code.size(proxyAddress)
                                call proxyAddress._forwardTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4, address rg5) with:
                                     gas gas_remaining - 50 wei
                                    args address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                                require ext_call.success
                                if ext_call.return_data[0]:
                                    if block.gasprice <= txGasPriceLimit:
                                        call treasuryAddress with:
                                           funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                             gas gas_remaining - 25050 wei
                                            args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                                    return 1
                                if address(feeAddress):
                                    if address(feeAddress) != arg1:
                                        require not (2 * absMinFee) + (75 * arg4.length / 100000 * absMinFee)
            else:
                if not address(feeAddress):
                    mem[ceil32(arg4.length) + 192] = 0x9b487f3f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 196] = arg1
                    mem[ceil32(arg4.length) + 228] = arg2
                    mem[ceil32(arg4.length) + 260] = arg3
                    mem[ceil32(arg4.length) + 324] = arg5
                    mem[ceil32(arg4.length) + 292] = 160
                    mem[ceil32(arg4.length) + 356] = arg4.length
                    if arg4.length:
                        mem[ceil32(arg4.length) + 388] = mem[128]
                        if arg4.length > 32:
                            mem[ceil32(arg4.length) + 420] = mem[160]
                            mem[ceil32(arg4.length) + 452 len floor32(arg4.length - 33)] = mem[192 len floor32(arg4.length - 33)]
                    require ext_code.size(proxyAddress)
                    call proxyAddress._forwardTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4, address rg5) with:
                         gas gas_remaining - 50 wei
                        args address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                    require ext_call.success
                    if ext_call.return_data[0]:
                        if block.gasprice <= txGasPriceLimit:
                            call treasuryAddress with:
                               funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                 gas gas_remaining - 25050 wei
                                args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                        return 1
                    if address(feeAddress):
                        if address(feeAddress) != arg1:
                            require not absMinFee
                else:
                    if address(feeAddress) == arg1:
                        mem[ceil32(arg4.length) + 192] = 0x9b487f3f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 196] = arg1
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = arg3
                        mem[ceil32(arg4.length) + 324] = arg5
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 356] = arg4.length
                        if arg4.length:
                            mem[ceil32(arg4.length) + 388] = mem[128]
                            if arg4.length > 32:
                                mem[ceil32(arg4.length) + 420] = mem[160]
                                mem[ceil32(arg4.length) + 452 len floor32(arg4.length - 33)] = mem[192 len floor32(arg4.length - 33)]
                        require ext_code.size(proxyAddress)
                        call proxyAddress._forwardTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4, address rg5) with:
                             gas gas_remaining - 50 wei
                            args address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                        require ext_call.success
                        if ext_call.return_data[0]:
                            if block.gasprice <= txGasPriceLimit:
                                call treasuryAddress with:
                                   funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                     gas gas_remaining - 25050 wei
                                    args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                            return 1
                        if address(feeAddress):
                            if address(feeAddress) != arg1:
                                require not absMinFee
                    else:
                        if not absMinFee:
                            mem[ceil32(arg4.length) + 192] = 0x9b487f3f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg4.length) + 196] = arg1
                            mem[ceil32(arg4.length) + 228] = arg2
                            mem[ceil32(arg4.length) + 260] = arg3
                            mem[ceil32(arg4.length) + 324] = arg5
                            mem[ceil32(arg4.length) + 292] = 160
                            mem[ceil32(arg4.length) + 356] = arg4.length
                            if arg4.length:
                                mem[ceil32(arg4.length) + 388] = mem[128]
                                if arg4.length > 32:
                                    mem[ceil32(arg4.length) + 420] = mem[160]
                                    mem[ceil32(arg4.length) + 452 len floor32(arg4.length - 33)] = mem[192 len floor32(arg4.length - 33)]
                            require ext_code.size(proxyAddress)
                            call proxyAddress._forwardTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4, address rg5) with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                            require ext_call.success
                            if ext_call.return_data[0]:
                                if block.gasprice <= txGasPriceLimit:
                                    call treasuryAddress with:
                                       funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                         gas gas_remaining - 25050 wei
                                        args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                                return 1
                            if address(feeAddress):
                                if address(feeAddress) != arg1:
                                    require not absMinFee
                        else:
                            mem[ceil32(arg4.length) + 420 len 0] = None
                            mem[ceil32(arg4.length) + 388] = 0
                            require ext_code.size(proxyAddress)
                            call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), address(feeAddress), absMinFee, 160, address(arg1), 12, 0
                            require ext_call.success
                            if ext_call.return_data[0]:
                                mem[ceil32(arg4.length) + 192] = 0x9b487f3f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(arg4.length) + 196] = arg1
                                mem[ceil32(arg4.length) + 228] = arg2
                                mem[ceil32(arg4.length) + 260] = arg3
                                mem[ceil32(arg4.length) + 324] = arg5
                                mem[ceil32(arg4.length) + 292] = 160
                                mem[ceil32(arg4.length) + 356] = arg4.length
                                if arg4.length:
                                    mem[ceil32(arg4.length) + 388] = mem[128]
                                    if arg4.length > 32:
                                        mem[ceil32(arg4.length) + 420] = mem[160]
                                        mem[ceil32(arg4.length) + 452 len floor32(arg4.length - 33)] = mem[192 len floor32(arg4.length - 33)]
                                require ext_code.size(proxyAddress)
                                call proxyAddress._forwardTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4, address rg5) with:
                                     gas gas_remaining - 50 wei
                                    args address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                                require ext_call.success
                                if ext_call.return_data[0]:
                                    if block.gasprice <= txGasPriceLimit:
                                        call treasuryAddress with:
                                           funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                             gas gas_remaining - 25050 wei
                                            args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                                    return 1
                                if address(feeAddress):
                                    if address(feeAddress) != arg1:
                                        require not absMinFee
        else:
            if arg3 * feePercent / 10000 <= absMaxFee:
                if 75 * arg4.length > 7500:
                    if not address(feeAddress):
                        mem[ceil32(arg4.length) + 192] = 0x9b487f3f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 196] = arg1
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = arg3
                        mem[ceil32(arg4.length) + 324] = arg5
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 356] = arg4.length
                        if arg4.length:
                            mem[ceil32(arg4.length) + 388] = mem[128]
                            if arg4.length > 32:
                                mem[ceil32(arg4.length) + 420] = mem[160]
                                mem[ceil32(arg4.length) + 452 len floor32(arg4.length - 33)] = mem[192 len floor32(arg4.length - 33)]
                        require ext_code.size(proxyAddress)
                        call proxyAddress._forwardTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4, address rg5) with:
                             gas gas_remaining - 50 wei
                            args address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                        require ext_call.success
                        if ext_call.return_data[0]:
                            if block.gasprice <= txGasPriceLimit:
                                call treasuryAddress with:
                                   funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                     gas gas_remaining - 25050 wei
                                    args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                            return 1
                        if address(feeAddress):
                            if address(feeAddress) != arg1:
                                require not absMinFee + (75 * arg4.length / 100000 * absMinFee) + (arg3 * feePercent / 10000)
                    else:
                        if address(feeAddress) == arg1:
                            mem[ceil32(arg4.length) + 192] = 0x9b487f3f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg4.length) + 196] = arg1
                            mem[ceil32(arg4.length) + 228] = arg2
                            mem[ceil32(arg4.length) + 260] = arg3
                            mem[ceil32(arg4.length) + 324] = arg5
                            mem[ceil32(arg4.length) + 292] = 160
                            mem[ceil32(arg4.length) + 356] = arg4.length
                            if arg4.length:
                                mem[ceil32(arg4.length) + 388] = mem[128]
                                if arg4.length > 32:
                                    mem[ceil32(arg4.length) + 420] = mem[160]
                                    mem[ceil32(arg4.length) + 452 len floor32(arg4.length - 33)] = mem[192 len floor32(arg4.length - 33)]
                            require ext_code.size(proxyAddress)
                            call proxyAddress._forwardTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4, address rg5) with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                            require ext_call.success
                            if ext_call.return_data[0]:
                                if block.gasprice <= txGasPriceLimit:
                                    call treasuryAddress with:
                                       funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                         gas gas_remaining - 25050 wei
                                        args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                                return 1
                            if address(feeAddress):
                                if address(feeAddress) != arg1:
                                    require not absMinFee + (75 * arg4.length / 100000 * absMinFee) + (arg3 * feePercent / 10000)
                        else:
                            if not absMinFee + (75 * arg4.length / 100000 * absMinFee) + (arg3 * feePercent / 10000):
                                mem[ceil32(arg4.length) + 192] = 0x9b487f3f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(arg4.length) + 196] = arg1
                                mem[ceil32(arg4.length) + 228] = arg2
                                mem[ceil32(arg4.length) + 260] = arg3
                                mem[ceil32(arg4.length) + 324] = arg5
                                mem[ceil32(arg4.length) + 292] = 160
                                mem[ceil32(arg4.length) + 356] = arg4.length
                                if arg4.length:
                                    mem[ceil32(arg4.length) + 388] = mem[128]
                                    if arg4.length > 32:
                                        mem[ceil32(arg4.length) + 420] = mem[160]
                                        mem[ceil32(arg4.length) + 452 len floor32(arg4.length - 33)] = mem[192 len floor32(arg4.length - 33)]
                                require ext_code.size(proxyAddress)
                                call proxyAddress._forwardTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4, address rg5) with:
                                     gas gas_remaining - 50 wei
                                    args address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                                require ext_call.success
                                if ext_call.return_data[0]:
                                    if block.gasprice <= txGasPriceLimit:
                                        call treasuryAddress with:
                                           funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                             gas gas_remaining - 25050 wei
                                            args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                                    return 1
                                if address(feeAddress):
                                    if address(feeAddress) != arg1:
                                        require not absMinFee + (75 * arg4.length / 100000 * absMinFee) + (arg3 * feePercent / 10000)
                            else:
                                mem[ceil32(arg4.length) + 420 len 0] = None
                                mem[ceil32(arg4.length) + 388] = 0
                                require ext_code.size(proxyAddress)
                                call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                     gas gas_remaining - 50 wei
                                    args address(arg1), address(feeAddress), absMinFee + (75 * arg4.length / 100000 * absMinFee) + (arg3 * feePercent / 10000), 160, address(arg1), 12, 0
                                require ext_call.success
                                if ext_call.return_data[0]:
                                    mem[ceil32(arg4.length) + 192] = 0x9b487f3f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + 196] = arg1
                                    mem[ceil32(arg4.length) + 228] = arg2
                                    mem[ceil32(arg4.length) + 260] = arg3
                                    mem[ceil32(arg4.length) + 324] = arg5
                                    mem[ceil32(arg4.length) + 292] = 160
                                    mem[ceil32(arg4.length) + 356] = arg4.length
                                    if arg4.length:
                                        mem[ceil32(arg4.length) + 388] = mem[128]
                                        if arg4.length > 32:
                                            mem[ceil32(arg4.length) + 420] = mem[160]
                                            mem[ceil32(arg4.length) + 452 len floor32(arg4.length - 33)] = mem[192 len floor32(arg4.length - 33)]
                                    require ext_code.size(proxyAddress)
                                    call proxyAddress._forwardTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4, address rg5) with:
                                         gas gas_remaining - 50 wei
                                        args address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                                    require ext_call.success
                                    if ext_call.return_data[0]:
                                        if block.gasprice <= txGasPriceLimit:
                                            call treasuryAddress with:
                                               funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                                 gas gas_remaining - 25050 wei
                                                args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                                        return 1
                                    if address(feeAddress):
                                        if address(feeAddress) != arg1:
                                            require not absMinFee + (75 * arg4.length / 100000 * absMinFee) + (arg3 * feePercent / 10000)
                else:
                    if not address(feeAddress):
                        mem[ceil32(arg4.length) + 192] = 0x9b487f3f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 196] = arg1
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = arg3
                        mem[ceil32(arg4.length) + 324] = arg5
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 356] = arg4.length
                        if arg4.length:
                            mem[ceil32(arg4.length) + 388] = mem[128]
                            if arg4.length > 32:
                                mem[ceil32(arg4.length) + 420] = mem[160]
                                mem[ceil32(arg4.length) + 452 len floor32(arg4.length - 33)] = mem[192 len floor32(arg4.length - 33)]
                        require ext_code.size(proxyAddress)
                        call proxyAddress._forwardTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4, address rg5) with:
                             gas gas_remaining - 50 wei
                            args address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                        require ext_call.success
                        if ext_call.return_data[0]:
                            if block.gasprice <= txGasPriceLimit:
                                call treasuryAddress with:
                                   funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                     gas gas_remaining - 25050 wei
                                    args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                            return 1
                        if address(feeAddress):
                            if address(feeAddress) != arg1:
                                require not arg3 * feePercent / 10000
                    else:
                        if address(feeAddress) == arg1:
                            mem[ceil32(arg4.length) + 192] = 0x9b487f3f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg4.length) + 196] = arg1
                            mem[ceil32(arg4.length) + 228] = arg2
                            mem[ceil32(arg4.length) + 260] = arg3
                            mem[ceil32(arg4.length) + 324] = arg5
                            mem[ceil32(arg4.length) + 292] = 160
                            mem[ceil32(arg4.length) + 356] = arg4.length
                            if arg4.length:
                                mem[ceil32(arg4.length) + 388] = mem[128]
                                if arg4.length > 32:
                                    mem[ceil32(arg4.length) + 420] = mem[160]
                                    mem[ceil32(arg4.length) + 452 len floor32(arg4.length - 33)] = mem[192 len floor32(arg4.length - 33)]
                            require ext_code.size(proxyAddress)
                            call proxyAddress._forwardTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4, address rg5) with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                            require ext_call.success
                            if ext_call.return_data[0]:
                                if block.gasprice <= txGasPriceLimit:
                                    call treasuryAddress with:
                                       funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                         gas gas_remaining - 25050 wei
                                        args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                                return 1
                            if address(feeAddress):
                                if address(feeAddress) != arg1:
                                    require not arg3 * feePercent / 10000
                        else:
                            if not arg3 * feePercent / 10000:
                                mem[ceil32(arg4.length) + 192] = 0x9b487f3f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(arg4.length) + 196] = arg1
                                mem[ceil32(arg4.length) + 228] = arg2
                                mem[ceil32(arg4.length) + 260] = arg3
                                mem[ceil32(arg4.length) + 324] = arg5
                                mem[ceil32(arg4.length) + 292] = 160
                                mem[ceil32(arg4.length) + 356] = arg4.length
                                if arg4.length:
                                    mem[ceil32(arg4.length) + 388] = mem[128]
                                    if arg4.length > 32:
                                        mem[ceil32(arg4.length) + 420] = mem[160]
                                        mem[ceil32(arg4.length) + 452 len floor32(arg4.length - 33)] = mem[192 len floor32(arg4.length - 33)]
                                require ext_code.size(proxyAddress)
                                call proxyAddress._forwardTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4, address rg5) with:
                                     gas gas_remaining - 50 wei
                                    args address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                                require ext_call.success
                                if ext_call.return_data[0]:
                                    if block.gasprice <= txGasPriceLimit:
                                        call treasuryAddress with:
                                           funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                             gas gas_remaining - 25050 wei
                                            args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                                    return 1
                                if address(feeAddress):
                                    if address(feeAddress) != arg1:
                                        require not arg3 * feePercent / 10000
                            else:
                                mem[ceil32(arg4.length) + 420 len 0] = None
                                mem[ceil32(arg4.length) + 388] = 0
                                require ext_code.size(proxyAddress)
                                call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                     gas gas_remaining - 50 wei
                                    args address(arg1), address(feeAddress), arg3 * feePercent / 10000, 160, address(arg1), 12, 0
                                require ext_call.success
                                if ext_call.return_data[0]:
                                    mem[ceil32(arg4.length) + 192] = 0x9b487f3f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + 196] = arg1
                                    mem[ceil32(arg4.length) + 228] = arg2
                                    mem[ceil32(arg4.length) + 260] = arg3
                                    mem[ceil32(arg4.length) + 324] = arg5
                                    mem[ceil32(arg4.length) + 292] = 160
                                    mem[ceil32(arg4.length) + 356] = arg4.length
                                    if arg4.length:
                                        mem[ceil32(arg4.length) + 388] = mem[128]
                                        if arg4.length > 32:
                                            mem[ceil32(arg4.length) + 420] = mem[160]
                                            mem[ceil32(arg4.length) + 452 len floor32(arg4.length - 33)] = mem[192 len floor32(arg4.length - 33)]
                                    require ext_code.size(proxyAddress)
                                    call proxyAddress._forwardTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4, address rg5) with:
                                         gas gas_remaining - 50 wei
                                        args address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                                    require ext_call.success
                                    if ext_call.return_data[0]:
                                        if block.gasprice <= txGasPriceLimit:
                                            call treasuryAddress with:
                                               funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                                 gas gas_remaining - 25050 wei
                                                args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                                        return 1
                                    if address(feeAddress):
                                        if address(feeAddress) != arg1:
                                            require not arg3 * feePercent / 10000
            else:
                if 75 * arg4.length > 7500:
                    if not address(feeAddress):
                        mem[ceil32(arg4.length) + 192] = 0x9b487f3f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 196] = arg1
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = arg3
                        mem[ceil32(arg4.length) + 324] = arg5
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 356] = arg4.length
                        if arg4.length:
                            mem[ceil32(arg4.length) + 388] = mem[128]
                            if arg4.length > 32:
                                mem[ceil32(arg4.length) + 420] = mem[160]
                                mem[ceil32(arg4.length) + 452 len floor32(arg4.length - 33)] = mem[192 len floor32(arg4.length - 33)]
                        require ext_code.size(proxyAddress)
                        call proxyAddress._forwardTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4, address rg5) with:
                             gas gas_remaining - 50 wei
                            args address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                        require ext_call.success
                        if ext_call.return_data[0]:
                            if block.gasprice <= txGasPriceLimit:
                                call treasuryAddress with:
                                   funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                     gas gas_remaining - 25050 wei
                                    args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                            return 1
                        if address(feeAddress):
                            if address(feeAddress) != arg1:
                                require not absMinFee + (75 * arg4.length / 100000 * absMinFee) + absMaxFee
                    else:
                        if address(feeAddress) == arg1:
                            mem[ceil32(arg4.length) + 192] = 0x9b487f3f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg4.length) + 196] = arg1
                            mem[ceil32(arg4.length) + 228] = arg2
                            mem[ceil32(arg4.length) + 260] = arg3
                            mem[ceil32(arg4.length) + 324] = arg5
                            mem[ceil32(arg4.length) + 292] = 160
                            mem[ceil32(arg4.length) + 356] = arg4.length
                            if arg4.length:
                                mem[ceil32(arg4.length) + 388] = mem[128]
                                if arg4.length > 32:
                                    mem[ceil32(arg4.length) + 420] = mem[160]
                                    mem[ceil32(arg4.length) + 452 len floor32(arg4.length - 33)] = mem[192 len floor32(arg4.length - 33)]
                            require ext_code.size(proxyAddress)
                            call proxyAddress._forwardTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4, address rg5) with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                            require ext_call.success
                            if ext_call.return_data[0]:
                                if block.gasprice <= txGasPriceLimit:
                                    call treasuryAddress with:
                                       funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                         gas gas_remaining - 25050 wei
                                        args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                                return 1
                            if address(feeAddress):
                                if address(feeAddress) != arg1:
                                    require not absMinFee + (75 * arg4.length / 100000 * absMinFee) + absMaxFee
                        else:
                            if not absMinFee + (75 * arg4.length / 100000 * absMinFee) + absMaxFee:
                                mem[ceil32(arg4.length) + 192] = 0x9b487f3f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(arg4.length) + 196] = arg1
                                mem[ceil32(arg4.length) + 228] = arg2
                                mem[ceil32(arg4.length) + 260] = arg3
                                mem[ceil32(arg4.length) + 324] = arg5
                                mem[ceil32(arg4.length) + 292] = 160
                                mem[ceil32(arg4.length) + 356] = arg4.length
                                if arg4.length:
                                    mem[ceil32(arg4.length) + 388] = mem[128]
                                    if arg4.length > 32:
                                        mem[ceil32(arg4.length) + 420] = mem[160]
                                        mem[ceil32(arg4.length) + 452 len floor32(arg4.length - 33)] = mem[192 len floor32(arg4.length - 33)]
                                require ext_code.size(proxyAddress)
                                call proxyAddress._forwardTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4, address rg5) with:
                                     gas gas_remaining - 50 wei
                                    args address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                                require ext_call.success
                                if ext_call.return_data[0]:
                                    if block.gasprice <= txGasPriceLimit:
                                        call treasuryAddress with:
                                           funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                             gas gas_remaining - 25050 wei
                                            args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                                    return 1
                                if address(feeAddress):
                                    if address(feeAddress) != arg1:
                                        require not absMinFee + (75 * arg4.length / 100000 * absMinFee) + absMaxFee
                            else:
                                mem[ceil32(arg4.length) + 420 len 0] = None
                                mem[ceil32(arg4.length) + 388] = 0
                                require ext_code.size(proxyAddress)
                                call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                     gas gas_remaining - 50 wei
                                    args address(arg1), address(feeAddress), absMinFee + (75 * arg4.length / 100000 * absMinFee) + absMaxFee, 160, address(arg1), 12, 0
                                require ext_call.success
                                if ext_call.return_data[0]:
                                    mem[ceil32(arg4.length) + 192] = 0x9b487f3f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + 196] = arg1
                                    mem[ceil32(arg4.length) + 228] = arg2
                                    mem[ceil32(arg4.length) + 260] = arg3
                                    mem[ceil32(arg4.length) + 324] = arg5
                                    mem[ceil32(arg4.length) + 292] = 160
                                    mem[ceil32(arg4.length) + 356] = arg4.length
                                    if arg4.length:
                                        mem[ceil32(arg4.length) + 388] = mem[128]
                                        if arg4.length > 32:
                                            mem[ceil32(arg4.length) + 420] = mem[160]
                                            mem[ceil32(arg4.length) + 452 len floor32(arg4.length - 33)] = mem[192 len floor32(arg4.length - 33)]
                                    require ext_code.size(proxyAddress)
                                    call proxyAddress._forwardTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4, address rg5) with:
                                         gas gas_remaining - 50 wei
                                        args address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                                    require ext_call.success
                                    if ext_call.return_data[0]:
                                        if block.gasprice <= txGasPriceLimit:
                                            call treasuryAddress with:
                                               funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                                 gas gas_remaining - 25050 wei
                                                args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                                        return 1
                                    if address(feeAddress):
                                        if address(feeAddress) != arg1:
                                            require not absMinFee + (75 * arg4.length / 100000 * absMinFee) + absMaxFee
                else:
                    if not address(feeAddress):
                        mem[ceil32(arg4.length) + 192] = 0x9b487f3f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 196] = arg1
                        mem[ceil32(arg4.length) + 228] = arg2
                        mem[ceil32(arg4.length) + 260] = arg3
                        mem[ceil32(arg4.length) + 324] = arg5
                        mem[ceil32(arg4.length) + 292] = 160
                        mem[ceil32(arg4.length) + 356] = arg4.length
                        if arg4.length:
                            mem[ceil32(arg4.length) + 388] = mem[128]
                            if arg4.length > 32:
                                mem[ceil32(arg4.length) + 420] = mem[160]
                                mem[ceil32(arg4.length) + 452 len floor32(arg4.length - 33)] = mem[192 len floor32(arg4.length - 33)]
                        require ext_code.size(proxyAddress)
                        call proxyAddress._forwardTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4, address rg5) with:
                             gas gas_remaining - 50 wei
                            args address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                        require ext_call.success
                        if ext_call.return_data[0]:
                            if block.gasprice <= txGasPriceLimit:
                                call treasuryAddress with:
                                   funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                     gas gas_remaining - 25050 wei
                                    args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                            return 1
                        if address(feeAddress):
                            if address(feeAddress) != arg1:
                                require not absMaxFee
                    else:
                        if address(feeAddress) == arg1:
                            mem[ceil32(arg4.length) + 192] = 0x9b487f3f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg4.length) + 196] = arg1
                            mem[ceil32(arg4.length) + 228] = arg2
                            mem[ceil32(arg4.length) + 260] = arg3
                            mem[ceil32(arg4.length) + 324] = arg5
                            mem[ceil32(arg4.length) + 292] = 160
                            mem[ceil32(arg4.length) + 356] = arg4.length
                            if arg4.length:
                                mem[ceil32(arg4.length) + 388] = mem[128]
                                if arg4.length > 32:
                                    mem[ceil32(arg4.length) + 420] = mem[160]
                                    mem[ceil32(arg4.length) + 452 len floor32(arg4.length - 33)] = mem[192 len floor32(arg4.length - 33)]
                            require ext_code.size(proxyAddress)
                            call proxyAddress._forwardTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4, address rg5) with:
                                 gas gas_remaining - 50 wei
                                args address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                            require ext_call.success
                            if ext_call.return_data[0]:
                                if block.gasprice <= txGasPriceLimit:
                                    call treasuryAddress with:
                                       funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                         gas gas_remaining - 25050 wei
                                        args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                                return 1
                            if address(feeAddress):
                                if address(feeAddress) != arg1:
                                    require not absMaxFee
                        else:
                            if not absMaxFee:
                                mem[ceil32(arg4.length) + 192] = 0x9b487f3f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(arg4.length) + 196] = arg1
                                mem[ceil32(arg4.length) + 228] = arg2
                                mem[ceil32(arg4.length) + 260] = arg3
                                mem[ceil32(arg4.length) + 324] = arg5
                                mem[ceil32(arg4.length) + 292] = 160
                                mem[ceil32(arg4.length) + 356] = arg4.length
                                if arg4.length:
                                    mem[ceil32(arg4.length) + 388] = mem[128]
                                    if arg4.length > 32:
                                        mem[ceil32(arg4.length) + 420] = mem[160]
                                        mem[ceil32(arg4.length) + 452 len floor32(arg4.length - 33)] = mem[192 len floor32(arg4.length - 33)]
                                require ext_code.size(proxyAddress)
                                call proxyAddress._forwardTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4, address rg5) with:
                                     gas gas_remaining - 50 wei
                                    args address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                                require ext_call.success
                                if ext_call.return_data[0]:
                                    if block.gasprice <= txGasPriceLimit:
                                        call treasuryAddress with:
                                           funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                             gas gas_remaining - 25050 wei
                                            args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                                    return 1
                                if address(feeAddress):
                                    if address(feeAddress) != arg1:
                                        require not absMaxFee
                            else:
                                mem[ceil32(arg4.length) + 420 len 0] = None
                                mem[ceil32(arg4.length) + 388] = 0
                                require ext_code.size(proxyAddress)
                                call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                     gas gas_remaining - 50 wei
                                    args address(arg1), address(feeAddress), absMaxFee, 160, address(arg1), 12, 0
                                require ext_call.success
                                if ext_call.return_data[0]:
                                    mem[ceil32(arg4.length) + 192] = 0x9b487f3f00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg4.length) + 196] = arg1
                                    mem[ceil32(arg4.length) + 228] = arg2
                                    mem[ceil32(arg4.length) + 260] = arg3
                                    mem[ceil32(arg4.length) + 324] = arg5
                                    mem[ceil32(arg4.length) + 292] = 160
                                    mem[ceil32(arg4.length) + 356] = arg4.length
                                    if arg4.length:
                                        mem[ceil32(arg4.length) + 388] = mem[128]
                                        if arg4.length > 32:
                                            mem[ceil32(arg4.length) + 420] = mem[160]
                                            mem[ceil32(arg4.length) + 452 len floor32(arg4.length - 33)] = mem[192 len floor32(arg4.length - 33)]
                                    require ext_code.size(proxyAddress)
                                    call proxyAddress._forwardTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4, address rg5) with:
                                         gas gas_remaining - 50 wei
                                        args address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 388 len arg4.length]), address(arg5)
                                    require ext_call.success
                                    if ext_call.return_data[0]:
                                        if block.gasprice <= txGasPriceLimit:
                                            call treasuryAddress with:
                                               funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                                 gas gas_remaining - 25050 wei
                                                args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                                        return 1
                                    if address(feeAddress):
                                        if address(feeAddress) != arg1:
                                            require not absMaxFee
        return 0
    else:
        return 0
}

function _performTransferWithReference(address arg1, uint256 arg2, string arg3, address arg4) {
    mem[128 len arg3.length] = arg3[all]
    if proxyAddress != msg.sender:
        return 0
    mem[ceil32(arg3.length) + 128] = 12
    mem[ceil32(arg3.length) + 160] = 'Transfer fee' << 160
    if arg2 * feePercent / 10000 < absMinFee:
        if 75 * arg3.length > 7500:
            if not address(feeAddress):
                mem[ceil32(arg3.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg3.length) + 196] = arg4
                mem[ceil32(arg3.length) + 228] = arg1
                mem[ceil32(arg3.length) + 260] = arg2
                mem[ceil32(arg3.length) + 324] = arg4
                mem[ceil32(arg3.length) + 292] = 160
                mem[ceil32(arg3.length) + 356] = arg3.length
                if arg3.length:
                    mem[ceil32(arg3.length) + 388] = mem[128]
                    mem[ceil32(arg3.length) + 420 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                if ext_code.size(proxyAddress):
                    call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                         gas gas_remaining - 50 wei
                        args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 388 len arg3.length]), address(arg4)
                    if ext_call.success:
                        if ext_call.return_data[0]:
                            if block.gasprice <= txGasPriceLimit:
                                call treasuryAddress with:
                                   funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                     gas gas_remaining - 25050 wei
                                    args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                            return 1
                        if not address(feeAddress):
                            return 0
                        if address(feeAddress) == arg4:
                            return 0
                        if not (2 * absMinFee) + (75 * arg3.length / 100000 * absMinFee):
                            return 0
                        if ext_code.size(proxyAddress):
                            call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                 gas gas_remaining - 50 wei
                                args address(feeAddress), address(arg4), (2 * absMinFee) + (75 * arg3.length / 100000 * absMinFee), 'Fee return', address(feeAddress)
                            if ext_call.success:
                                if ext_call.return_data[0]:
                                    return 0
            else:
                if address(feeAddress) == arg4:
                    mem[ceil32(arg3.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + 196] = arg4
                    mem[ceil32(arg3.length) + 228] = arg1
                    mem[ceil32(arg3.length) + 260] = arg2
                    mem[ceil32(arg3.length) + 324] = arg4
                    mem[ceil32(arg3.length) + 292] = 160
                    mem[ceil32(arg3.length) + 356] = arg3.length
                    if arg3.length:
                        mem[ceil32(arg3.length) + 388] = mem[128]
                        mem[ceil32(arg3.length) + 420 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                    if ext_code.size(proxyAddress):
                        call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                             gas gas_remaining - 50 wei
                            args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 388 len arg3.length]), address(arg4)
                        if ext_call.success:
                            if ext_call.return_data[0]:
                                if block.gasprice <= txGasPriceLimit:
                                    call treasuryAddress with:
                                       funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                         gas gas_remaining - 25050 wei
                                        args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                                return 1
                            if not address(feeAddress):
                                return 0
                            if address(feeAddress) == arg4:
                                return 0
                            if not (2 * absMinFee) + (75 * arg3.length / 100000 * absMinFee):
                                return 0
                            if ext_code.size(proxyAddress):
                                call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                     gas gas_remaining - 50 wei
                                    args address(feeAddress), address(arg4), (2 * absMinFee) + (75 * arg3.length / 100000 * absMinFee), 'Fee return', address(feeAddress)
                                if ext_call.success:
                                    if ext_call.return_data[0]:
                                        return 0
                else:
                    if not (2 * absMinFee) + (75 * arg3.length / 100000 * absMinFee):
                        mem[ceil32(arg3.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + 196] = arg4
                        mem[ceil32(arg3.length) + 228] = arg1
                        mem[ceil32(arg3.length) + 260] = arg2
                        mem[ceil32(arg3.length) + 324] = arg4
                        mem[ceil32(arg3.length) + 292] = 160
                        mem[ceil32(arg3.length) + 356] = arg3.length
                        if arg3.length:
                            mem[ceil32(arg3.length) + 388] = mem[128]
                            mem[ceil32(arg3.length) + 420 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                        if ext_code.size(proxyAddress):
                            call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                 gas gas_remaining - 50 wei
                                args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 388 len arg3.length]), address(arg4)
                            if ext_call.success:
                                if ext_call.return_data[0]:
                                    if block.gasprice <= txGasPriceLimit:
                                        call treasuryAddress with:
                                           funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                             gas gas_remaining - 25050 wei
                                            args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                                    return 1
                                if not address(feeAddress):
                                    return 0
                                if address(feeAddress) == arg4:
                                    return 0
                                if not (2 * absMinFee) + (75 * arg3.length / 100000 * absMinFee):
                                    return 0
                                if ext_code.size(proxyAddress):
                                    call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                         gas gas_remaining - 50 wei
                                        args address(feeAddress), address(arg4), (2 * absMinFee) + (75 * arg3.length / 100000 * absMinFee), 'Fee return', address(feeAddress)
                                    if ext_call.success:
                                        if ext_call.return_data[0]:
                                            return 0
                    else:
                        mem[ceil32(arg3.length) + 420 len 0] = None
                        mem[ceil32(arg3.length) + 388] = 0
                        if ext_code.size(proxyAddress):
                            call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                 gas gas_remaining - 50 wei
                                args address(arg4), address(feeAddress), (2 * absMinFee) + (75 * arg3.length / 100000 * absMinFee), 160, address(arg4), 12, 0
                            if ext_call.success:
                                if not ext_call.return_data[0]:
                                    return 0
                                mem[ceil32(arg3.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                                mem[ceil32(arg3.length) + 196] = arg4
                                mem[ceil32(arg3.length) + 228] = arg1
                                mem[ceil32(arg3.length) + 260] = arg2
                                mem[ceil32(arg3.length) + 324] = arg4
                                mem[ceil32(arg3.length) + 292] = 160
                                mem[ceil32(arg3.length) + 356] = arg3.length
                                if arg3.length:
                                    mem[ceil32(arg3.length) + 388] = mem[128]
                                    mem[ceil32(arg3.length) + 420 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                                if ext_code.size(proxyAddress):
                                    call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                         gas gas_remaining - 50 wei
                                        args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 388 len arg3.length]), address(arg4)
                                    if ext_call.success:
                                        if ext_call.return_data[0]:
                                            if block.gasprice <= txGasPriceLimit:
                                                call treasuryAddress with:
                                                   funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                                     gas gas_remaining - 25050 wei
                                                    args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                                            return 1
                                        if not address(feeAddress):
                                            return 0
                                        if address(feeAddress) == arg4:
                                            return 0
                                        if not (2 * absMinFee) + (75 * arg3.length / 100000 * absMinFee):
                                            return 0
                                        if ext_code.size(proxyAddress):
                                            call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                                 gas gas_remaining - 50 wei
                                                args address(feeAddress), address(arg4), (2 * absMinFee) + (75 * arg3.length / 100000 * absMinFee), 160, address(feeAddress), 0, 10, Mask(80, 0, 'Fee return')
                                            if ext_call.success:
                                                if ext_call.return_data[0]:
                                                    return 0
        else:
            if not address(feeAddress):
                mem[ceil32(arg3.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg3.length) + 196] = arg4
                mem[ceil32(arg3.length) + 228] = arg1
                mem[ceil32(arg3.length) + 260] = arg2
                mem[ceil32(arg3.length) + 324] = arg4
                mem[ceil32(arg3.length) + 292] = 160
                mem[ceil32(arg3.length) + 356] = arg3.length
                if arg3.length:
                    mem[ceil32(arg3.length) + 388] = mem[128]
                    mem[ceil32(arg3.length) + 420 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                if ext_code.size(proxyAddress):
                    call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                         gas gas_remaining - 50 wei
                        args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 388 len arg3.length]), address(arg4)
                    if ext_call.success:
                        if ext_call.return_data[0]:
                            if block.gasprice <= txGasPriceLimit:
                                call treasuryAddress with:
                                   funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                     gas gas_remaining - 25050 wei
                                    args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                            return 1
                        if not address(feeAddress):
                            return 0
                        if address(feeAddress) == arg4:
                            return 0
                        if not absMinFee:
                            return 0
                        if ext_code.size(proxyAddress):
                            call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                 gas gas_remaining - 50 wei
                                args address(feeAddress), address(arg4), absMinFee, 'Fee return', address(feeAddress)
                            if ext_call.success:
                                if ext_call.return_data[0]:
                                    return 0
            else:
                if address(feeAddress) == arg4:
                    mem[ceil32(arg3.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + 196] = arg4
                    mem[ceil32(arg3.length) + 228] = arg1
                    mem[ceil32(arg3.length) + 260] = arg2
                    mem[ceil32(arg3.length) + 324] = arg4
                    mem[ceil32(arg3.length) + 292] = 160
                    mem[ceil32(arg3.length) + 356] = arg3.length
                    if arg3.length:
                        mem[ceil32(arg3.length) + 388] = mem[128]
                        mem[ceil32(arg3.length) + 420 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                    if ext_code.size(proxyAddress):
                        call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                             gas gas_remaining - 50 wei
                            args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 388 len arg3.length]), address(arg4)
                        if ext_call.success:
                            if ext_call.return_data[0]:
                                if block.gasprice <= txGasPriceLimit:
                                    call treasuryAddress with:
                                       funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                         gas gas_remaining - 25050 wei
                                        args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                                return 1
                            if not address(feeAddress):
                                return 0
                            if address(feeAddress) == arg4:
                                return 0
                            if not absMinFee:
                                return 0
                            if ext_code.size(proxyAddress):
                                call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                     gas gas_remaining - 50 wei
                                    args address(feeAddress), address(arg4), absMinFee, 'Fee return', address(feeAddress)
                                if ext_call.success:
                                    if ext_call.return_data[0]:
                                        return 0
                else:
                    if not absMinFee:
                        mem[ceil32(arg3.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + 196] = arg4
                        mem[ceil32(arg3.length) + 228] = arg1
                        mem[ceil32(arg3.length) + 260] = arg2
                        mem[ceil32(arg3.length) + 324] = arg4
                        mem[ceil32(arg3.length) + 292] = 160
                        mem[ceil32(arg3.length) + 356] = arg3.length
                        if arg3.length:
                            mem[ceil32(arg3.length) + 388] = mem[128]
                            mem[ceil32(arg3.length) + 420 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                        if ext_code.size(proxyAddress):
                            call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                 gas gas_remaining - 50 wei
                                args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 388 len arg3.length]), address(arg4)
                            if ext_call.success:
                                if ext_call.return_data[0]:
                                    if block.gasprice <= txGasPriceLimit:
                                        call treasuryAddress with:
                                           funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                             gas gas_remaining - 25050 wei
                                            args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                                    return 1
                                if not address(feeAddress):
                                    return 0
                                if address(feeAddress) == arg4:
                                    return 0
                                if not absMinFee:
                                    return 0
                                if ext_code.size(proxyAddress):
                                    call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                         gas gas_remaining - 50 wei
                                        args address(feeAddress), address(arg4), absMinFee, 'Fee return', address(feeAddress)
                                    if ext_call.success:
                                        if ext_call.return_data[0]:
                                            return 0
                    else:
                        mem[ceil32(arg3.length) + 420 len 0] = None
                        mem[ceil32(arg3.length) + 388] = 0
                        if ext_code.size(proxyAddress):
                            call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                 gas gas_remaining - 50 wei
                                args address(arg4), address(feeAddress), absMinFee, 160, address(arg4), 12, 0
                            if ext_call.success:
                                if not ext_call.return_data[0]:
                                    return 0
                                mem[ceil32(arg3.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                                mem[ceil32(arg3.length) + 196] = arg4
                                mem[ceil32(arg3.length) + 228] = arg1
                                mem[ceil32(arg3.length) + 260] = arg2
                                mem[ceil32(arg3.length) + 324] = arg4
                                mem[ceil32(arg3.length) + 292] = 160
                                mem[ceil32(arg3.length) + 356] = arg3.length
                                if arg3.length:
                                    mem[ceil32(arg3.length) + 388] = mem[128]
                                    mem[ceil32(arg3.length) + 420 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                                if ext_code.size(proxyAddress):
                                    call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                         gas gas_remaining - 50 wei
                                        args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 388 len arg3.length]), address(arg4)
                                    if ext_call.success:
                                        if ext_call.return_data[0]:
                                            if block.gasprice <= txGasPriceLimit:
                                                call treasuryAddress with:
                                                   funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                                     gas gas_remaining - 25050 wei
                                                    args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                                            return 1
                                        if not address(feeAddress):
                                            return 0
                                        if address(feeAddress) == arg4:
                                            return 0
                                        if not absMinFee:
                                            return 0
                                        if ext_code.size(proxyAddress):
                                            call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                                 gas gas_remaining - 50 wei
                                                args address(feeAddress), address(arg4), absMinFee, 160, address(feeAddress), 0, 10, Mask(80, 0, 'Fee return')
                                            if ext_call.success:
                                                if ext_call.return_data[0]:
                                                    return 0
    else:
        if arg2 * feePercent / 10000 <= absMaxFee:
            if 75 * arg3.length > 7500:
                if not address(feeAddress):
                    mem[ceil32(arg3.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + 196] = arg4
                    mem[ceil32(arg3.length) + 228] = arg1
                    mem[ceil32(arg3.length) + 260] = arg2
                    mem[ceil32(arg3.length) + 324] = arg4
                    mem[ceil32(arg3.length) + 292] = 160
                    mem[ceil32(arg3.length) + 356] = arg3.length
                    if arg3.length:
                        mem[ceil32(arg3.length) + 388] = mem[128]
                        mem[ceil32(arg3.length) + 420 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                    if ext_code.size(proxyAddress):
                        call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                             gas gas_remaining - 50 wei
                            args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 388 len arg3.length]), address(arg4)
                        if ext_call.success:
                            if ext_call.return_data[0]:
                                if block.gasprice <= txGasPriceLimit:
                                    call treasuryAddress with:
                                       funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                         gas gas_remaining - 25050 wei
                                        args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                                return 1
                            if not address(feeAddress):
                                return 0
                            if address(feeAddress) == arg4:
                                return 0
                            if not absMinFee + (75 * arg3.length / 100000 * absMinFee) + (arg2 * feePercent / 10000):
                                return 0
                            if ext_code.size(proxyAddress):
                                call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                     gas gas_remaining - 50 wei
                                    args address(feeAddress), address(arg4), absMinFee + (75 * arg3.length / 100000 * absMinFee) + (arg2 * feePercent / 10000), 'Fee return', address(feeAddress)
                                if ext_call.success:
                                    if ext_call.return_data[0]:
                                        return 0
                else:
                    if address(feeAddress) == arg4:
                        mem[ceil32(arg3.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + 196] = arg4
                        mem[ceil32(arg3.length) + 228] = arg1
                        mem[ceil32(arg3.length) + 260] = arg2
                        mem[ceil32(arg3.length) + 324] = arg4
                        mem[ceil32(arg3.length) + 292] = 160
                        mem[ceil32(arg3.length) + 356] = arg3.length
                        if arg3.length:
                            mem[ceil32(arg3.length) + 388] = mem[128]
                            mem[ceil32(arg3.length) + 420 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                        if ext_code.size(proxyAddress):
                            call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                 gas gas_remaining - 50 wei
                                args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 388 len arg3.length]), address(arg4)
                            if ext_call.success:
                                if ext_call.return_data[0]:
                                    if block.gasprice <= txGasPriceLimit:
                                        call treasuryAddress with:
                                           funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                             gas gas_remaining - 25050 wei
                                            args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                                    return 1
                                if not address(feeAddress):
                                    return 0
                                if address(feeAddress) == arg4:
                                    return 0
                                if not absMinFee + (75 * arg3.length / 100000 * absMinFee) + (arg2 * feePercent / 10000):
                                    return 0
                                if ext_code.size(proxyAddress):
                                    call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                         gas gas_remaining - 50 wei
                                        args address(feeAddress), address(arg4), absMinFee + (75 * arg3.length / 100000 * absMinFee) + (arg2 * feePercent / 10000), 'Fee return', address(feeAddress)
                                    if ext_call.success:
                                        if ext_call.return_data[0]:
                                            return 0
                    else:
                        if not absMinFee + (75 * arg3.length / 100000 * absMinFee) + (arg2 * feePercent / 10000):
                            mem[ceil32(arg3.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg3.length) + 196] = arg4
                            mem[ceil32(arg3.length) + 228] = arg1
                            mem[ceil32(arg3.length) + 260] = arg2
                            mem[ceil32(arg3.length) + 324] = arg4
                            mem[ceil32(arg3.length) + 292] = 160
                            mem[ceil32(arg3.length) + 356] = arg3.length
                            if arg3.length:
                                mem[ceil32(arg3.length) + 388] = mem[128]
                                mem[ceil32(arg3.length) + 420 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                            if ext_code.size(proxyAddress):
                                call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                     gas gas_remaining - 50 wei
                                    args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 388 len arg3.length]), address(arg4)
                                if ext_call.success:
                                    if ext_call.return_data[0]:
                                        if block.gasprice <= txGasPriceLimit:
                                            call treasuryAddress with:
                                               funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                                 gas gas_remaining - 25050 wei
                                                args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                                        return 1
                                    if not address(feeAddress):
                                        return 0
                                    if address(feeAddress) == arg4:
                                        return 0
                                    if not absMinFee + (75 * arg3.length / 100000 * absMinFee) + (arg2 * feePercent / 10000):
                                        return 0
                                    if ext_code.size(proxyAddress):
                                        call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                             gas gas_remaining - 50 wei
                                            args address(feeAddress), address(arg4), absMinFee + (75 * arg3.length / 100000 * absMinFee) + (arg2 * feePercent / 10000), 'Fee return', address(feeAddress)
                                        if ext_call.success:
                                            if ext_call.return_data[0]:
                                                return 0
                        else:
                            mem[ceil32(arg3.length) + 420 len 0] = None
                            mem[ceil32(arg3.length) + 388] = 0
                            if ext_code.size(proxyAddress):
                                call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                     gas gas_remaining - 50 wei
                                    args address(arg4), address(feeAddress), absMinFee + (75 * arg3.length / 100000 * absMinFee) + (arg2 * feePercent / 10000), 160, address(arg4), 12, 0
                                if ext_call.success:
                                    if not ext_call.return_data[0]:
                                        return 0
                                    mem[ceil32(arg3.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg3.length) + 196] = arg4
                                    mem[ceil32(arg3.length) + 228] = arg1
                                    mem[ceil32(arg3.length) + 260] = arg2
                                    mem[ceil32(arg3.length) + 324] = arg4
                                    mem[ceil32(arg3.length) + 292] = 160
                                    mem[ceil32(arg3.length) + 356] = arg3.length
                                    if arg3.length:
                                        mem[ceil32(arg3.length) + 388] = mem[128]
                                        mem[ceil32(arg3.length) + 420 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                                    if ext_code.size(proxyAddress):
                                        call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                             gas gas_remaining - 50 wei
                                            args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 388 len arg3.length]), address(arg4)
                                        if ext_call.success:
                                            if ext_call.return_data[0]:
                                                if block.gasprice <= txGasPriceLimit:
                                                    call treasuryAddress with:
                                                       funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                                         gas gas_remaining - 25050 wei
                                                        args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                                                return 1
                                            if not address(feeAddress):
                                                return 0
                                            if address(feeAddress) == arg4:
                                                return 0
                                            if not absMinFee + (75 * arg3.length / 100000 * absMinFee) + (arg2 * feePercent / 10000):
                                                return 0
                                            if ext_code.size(proxyAddress):
                                                call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                                     gas gas_remaining - 50 wei
                                                    args address(feeAddress), address(arg4), absMinFee + (75 * arg3.length / 100000 * absMinFee) + (arg2 * feePercent / 10000), 160, address(feeAddress), 0, 10, Mask(80, 0, 'Fee return')
                                                if ext_call.success:
                                                    if ext_call.return_data[0]:
                                                        return 0
            else:
                if not address(feeAddress):
                    mem[ceil32(arg3.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + 196] = arg4
                    mem[ceil32(arg3.length) + 228] = arg1
                    mem[ceil32(arg3.length) + 260] = arg2
                    mem[ceil32(arg3.length) + 324] = arg4
                    mem[ceil32(arg3.length) + 292] = 160
                    mem[ceil32(arg3.length) + 356] = arg3.length
                    if arg3.length:
                        mem[ceil32(arg3.length) + 388] = mem[128]
                        mem[ceil32(arg3.length) + 420 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                    if ext_code.size(proxyAddress):
                        call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                             gas gas_remaining - 50 wei
                            args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 388 len arg3.length]), address(arg4)
                        if ext_call.success:
                            if ext_call.return_data[0]:
                                if block.gasprice <= txGasPriceLimit:
                                    call treasuryAddress with:
                                       funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                         gas gas_remaining - 25050 wei
                                        args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                                return 1
                            if not address(feeAddress):
                                return 0
                            if address(feeAddress) == arg4:
                                return 0
                            if not arg2 * feePercent / 10000:
                                return 0
                            if ext_code.size(proxyAddress):
                                call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                     gas gas_remaining - 50 wei
                                    args address(feeAddress), address(arg4), arg2 * feePercent / 10000, 'Fee return', address(feeAddress)
                                if ext_call.success:
                                    if ext_call.return_data[0]:
                                        return 0
                else:
                    if address(feeAddress) == arg4:
                        mem[ceil32(arg3.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + 196] = arg4
                        mem[ceil32(arg3.length) + 228] = arg1
                        mem[ceil32(arg3.length) + 260] = arg2
                        mem[ceil32(arg3.length) + 324] = arg4
                        mem[ceil32(arg3.length) + 292] = 160
                        mem[ceil32(arg3.length) + 356] = arg3.length
                        if arg3.length:
                            mem[ceil32(arg3.length) + 388] = mem[128]
                            mem[ceil32(arg3.length) + 420 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                        if ext_code.size(proxyAddress):
                            call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                 gas gas_remaining - 50 wei
                                args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 388 len arg3.length]), address(arg4)
                            if ext_call.success:
                                if ext_call.return_data[0]:
                                    if block.gasprice <= txGasPriceLimit:
                                        call treasuryAddress with:
                                           funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                             gas gas_remaining - 25050 wei
                                            args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                                    return 1
                                if not address(feeAddress):
                                    return 0
                                if address(feeAddress) == arg4:
                                    return 0
                                if not arg2 * feePercent / 10000:
                                    return 0
                                if ext_code.size(proxyAddress):
                                    call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                         gas gas_remaining - 50 wei
                                        args address(feeAddress), address(arg4), arg2 * feePercent / 10000, 'Fee return', address(feeAddress)
                                    if ext_call.success:
                                        if ext_call.return_data[0]:
                                            return 0
                    else:
                        if not arg2 * feePercent / 10000:
                            mem[ceil32(arg3.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg3.length) + 196] = arg4
                            mem[ceil32(arg3.length) + 228] = arg1
                            mem[ceil32(arg3.length) + 260] = arg2
                            mem[ceil32(arg3.length) + 324] = arg4
                            mem[ceil32(arg3.length) + 292] = 160
                            mem[ceil32(arg3.length) + 356] = arg3.length
                            if arg3.length:
                                mem[ceil32(arg3.length) + 388] = mem[128]
                                mem[ceil32(arg3.length) + 420 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                            if ext_code.size(proxyAddress):
                                call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                     gas gas_remaining - 50 wei
                                    args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 388 len arg3.length]), address(arg4)
                                if ext_call.success:
                                    if ext_call.return_data[0]:
                                        if block.gasprice <= txGasPriceLimit:
                                            call treasuryAddress with:
                                               funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                                 gas gas_remaining - 25050 wei
                                                args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                                        return 1
                                    if not address(feeAddress):
                                        return 0
                                    if address(feeAddress) == arg4:
                                        return 0
                                    if not arg2 * feePercent / 10000:
                                        return 0
                                    if ext_code.size(proxyAddress):
                                        call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                             gas gas_remaining - 50 wei
                                            args address(feeAddress), address(arg4), arg2 * feePercent / 10000, 'Fee return', address(feeAddress)
                                        if ext_call.success:
                                            if ext_call.return_data[0]:
                                                return 0
                        else:
                            mem[ceil32(arg3.length) + 420 len 0] = None
                            mem[ceil32(arg3.length) + 388] = 0
                            if ext_code.size(proxyAddress):
                                call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                     gas gas_remaining - 50 wei
                                    args address(arg4), address(feeAddress), arg2 * feePercent / 10000, 160, address(arg4), 12, 0
                                if ext_call.success:
                                    if not ext_call.return_data[0]:
                                        return 0
                                    mem[ceil32(arg3.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg3.length) + 196] = arg4
                                    mem[ceil32(arg3.length) + 228] = arg1
                                    mem[ceil32(arg3.length) + 260] = arg2
                                    mem[ceil32(arg3.length) + 324] = arg4
                                    mem[ceil32(arg3.length) + 292] = 160
                                    mem[ceil32(arg3.length) + 356] = arg3.length
                                    if arg3.length:
                                        mem[ceil32(arg3.length) + 388] = mem[128]
                                        mem[ceil32(arg3.length) + 420 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                                    if ext_code.size(proxyAddress):
                                        call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                             gas gas_remaining - 50 wei
                                            args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 388 len arg3.length]), address(arg4)
                                        if ext_call.success:
                                            if ext_call.return_data[0]:
                                                if block.gasprice <= txGasPriceLimit:
                                                    call treasuryAddress with:
                                                       funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                                         gas gas_remaining - 25050 wei
                                                        args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                                                return 1
                                            if not address(feeAddress):
                                                return 0
                                            if address(feeAddress) == arg4:
                                                return 0
                                            if not arg2 * feePercent / 10000:
                                                return 0
                                            if ext_code.size(proxyAddress):
                                                call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                                     gas gas_remaining - 50 wei
                                                    args address(feeAddress), address(arg4), arg2 * feePercent / 10000, 160, address(feeAddress), 0, 10, Mask(80, 0, 'Fee return')
                                                if ext_call.success:
                                                    if ext_call.return_data[0]:
                                                        return 0
        else:
            if 75 * arg3.length > 7500:
                if not address(feeAddress):
                    mem[ceil32(arg3.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + 196] = arg4
                    mem[ceil32(arg3.length) + 228] = arg1
                    mem[ceil32(arg3.length) + 260] = arg2
                    mem[ceil32(arg3.length) + 324] = arg4
                    mem[ceil32(arg3.length) + 292] = 160
                    mem[ceil32(arg3.length) + 356] = arg3.length
                    if arg3.length:
                        mem[ceil32(arg3.length) + 388] = mem[128]
                        mem[ceil32(arg3.length) + 420 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                    if ext_code.size(proxyAddress):
                        call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                             gas gas_remaining - 50 wei
                            args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 388 len arg3.length]), address(arg4)
                        if ext_call.success:
                            if ext_call.return_data[0]:
                                if block.gasprice <= txGasPriceLimit:
                                    call treasuryAddress with:
                                       funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                         gas gas_remaining - 25050 wei
                                        args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                                return 1
                            if not address(feeAddress):
                                return 0
                            if address(feeAddress) == arg4:
                                return 0
                            if not absMinFee + (75 * arg3.length / 100000 * absMinFee) + absMaxFee:
                                return 0
                            if ext_code.size(proxyAddress):
                                call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                     gas gas_remaining - 50 wei
                                    args address(feeAddress), address(arg4), absMinFee + (75 * arg3.length / 100000 * absMinFee) + absMaxFee, 'Fee return', address(feeAddress)
                                if ext_call.success:
                                    if ext_call.return_data[0]:
                                        return 0
                else:
                    if address(feeAddress) == arg4:
                        mem[ceil32(arg3.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + 196] = arg4
                        mem[ceil32(arg3.length) + 228] = arg1
                        mem[ceil32(arg3.length) + 260] = arg2
                        mem[ceil32(arg3.length) + 324] = arg4
                        mem[ceil32(arg3.length) + 292] = 160
                        mem[ceil32(arg3.length) + 356] = arg3.length
                        if arg3.length:
                            mem[ceil32(arg3.length) + 388] = mem[128]
                            mem[ceil32(arg3.length) + 420 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                        if ext_code.size(proxyAddress):
                            call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                 gas gas_remaining - 50 wei
                                args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 388 len arg3.length]), address(arg4)
                            if ext_call.success:
                                if ext_call.return_data[0]:
                                    if block.gasprice <= txGasPriceLimit:
                                        call treasuryAddress with:
                                           funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                             gas gas_remaining - 25050 wei
                                            args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                                    return 1
                                if not address(feeAddress):
                                    return 0
                                if address(feeAddress) == arg4:
                                    return 0
                                if not absMinFee + (75 * arg3.length / 100000 * absMinFee) + absMaxFee:
                                    return 0
                                if ext_code.size(proxyAddress):
                                    call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                         gas gas_remaining - 50 wei
                                        args address(feeAddress), address(arg4), absMinFee + (75 * arg3.length / 100000 * absMinFee) + absMaxFee, 'Fee return', address(feeAddress)
                                    if ext_call.success:
                                        if ext_call.return_data[0]:
                                            return 0
                    else:
                        if not absMinFee + (75 * arg3.length / 100000 * absMinFee) + absMaxFee:
                            mem[ceil32(arg3.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg3.length) + 196] = arg4
                            mem[ceil32(arg3.length) + 228] = arg1
                            mem[ceil32(arg3.length) + 260] = arg2
                            mem[ceil32(arg3.length) + 324] = arg4
                            mem[ceil32(arg3.length) + 292] = 160
                            mem[ceil32(arg3.length) + 356] = arg3.length
                            if arg3.length:
                                mem[ceil32(arg3.length) + 388] = mem[128]
                                mem[ceil32(arg3.length) + 420 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                            if ext_code.size(proxyAddress):
                                call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                     gas gas_remaining - 50 wei
                                    args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 388 len arg3.length]), address(arg4)
                                if ext_call.success:
                                    if ext_call.return_data[0]:
                                        if block.gasprice <= txGasPriceLimit:
                                            call treasuryAddress with:
                                               funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                                 gas gas_remaining - 25050 wei
                                                args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                                        return 1
                                    if not address(feeAddress):
                                        return 0
                                    if address(feeAddress) == arg4:
                                        return 0
                                    if not absMinFee + (75 * arg3.length / 100000 * absMinFee) + absMaxFee:
                                        return 0
                                    if ext_code.size(proxyAddress):
                                        call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                             gas gas_remaining - 50 wei
                                            args address(feeAddress), address(arg4), absMinFee + (75 * arg3.length / 100000 * absMinFee) + absMaxFee, 'Fee return', address(feeAddress)
                                        if ext_call.success:
                                            if ext_call.return_data[0]:
                                                return 0
                        else:
                            mem[ceil32(arg3.length) + 420 len 0] = None
                            mem[ceil32(arg3.length) + 388] = 0
                            if ext_code.size(proxyAddress):
                                call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                     gas gas_remaining - 50 wei
                                    args address(arg4), address(feeAddress), absMinFee + (75 * arg3.length / 100000 * absMinFee) + absMaxFee, 160, address(arg4), 12, 0
                                if ext_call.success:
                                    if not ext_call.return_data[0]:
                                        return 0
                                    mem[ceil32(arg3.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg3.length) + 196] = arg4
                                    mem[ceil32(arg3.length) + 228] = arg1
                                    mem[ceil32(arg3.length) + 260] = arg2
                                    mem[ceil32(arg3.length) + 324] = arg4
                                    mem[ceil32(arg3.length) + 292] = 160
                                    mem[ceil32(arg3.length) + 356] = arg3.length
                                    if arg3.length:
                                        mem[ceil32(arg3.length) + 388] = mem[128]
                                        mem[ceil32(arg3.length) + 420 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                                    if ext_code.size(proxyAddress):
                                        call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                             gas gas_remaining - 50 wei
                                            args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 388 len arg3.length]), address(arg4)
                                        if ext_call.success:
                                            if ext_call.return_data[0]:
                                                if block.gasprice <= txGasPriceLimit:
                                                    call treasuryAddress with:
                                                       funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                                         gas gas_remaining - 25050 wei
                                                        args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                                                return 1
                                            if not address(feeAddress):
                                                return 0
                                            if address(feeAddress) == arg4:
                                                return 0
                                            if not absMinFee + (75 * arg3.length / 100000 * absMinFee) + absMaxFee:
                                                return 0
                                            if ext_code.size(proxyAddress):
                                                call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                                     gas gas_remaining - 50 wei
                                                    args address(feeAddress), address(arg4), absMinFee + (75 * arg3.length / 100000 * absMinFee) + absMaxFee, 160, address(feeAddress), 0, 10, Mask(80, 0, 'Fee return')
                                                if ext_call.success:
                                                    if ext_call.return_data[0]:
                                                        return 0
            else:
                if not address(feeAddress):
                    mem[ceil32(arg3.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + 196] = arg4
                    mem[ceil32(arg3.length) + 228] = arg1
                    mem[ceil32(arg3.length) + 260] = arg2
                    mem[ceil32(arg3.length) + 324] = arg4
                    mem[ceil32(arg3.length) + 292] = 160
                    mem[ceil32(arg3.length) + 356] = arg3.length
                    if arg3.length:
                        mem[ceil32(arg3.length) + 388] = mem[128]
                        mem[ceil32(arg3.length) + 420 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                    if ext_code.size(proxyAddress):
                        call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                             gas gas_remaining - 50 wei
                            args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 388 len arg3.length]), address(arg4)
                        if ext_call.success:
                            if ext_call.return_data[0]:
                                if block.gasprice <= txGasPriceLimit:
                                    call treasuryAddress with:
                                       funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                         gas gas_remaining - 25050 wei
                                        args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                                return 1
                            if not address(feeAddress):
                                return 0
                            if address(feeAddress) == arg4:
                                return 0
                            if not absMaxFee:
                                return 0
                            if ext_code.size(proxyAddress):
                                call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                     gas gas_remaining - 50 wei
                                    args address(feeAddress), address(arg4), absMaxFee, 'Fee return', address(feeAddress)
                                if ext_call.success:
                                    if ext_call.return_data[0]:
                                        return 0
                else:
                    if address(feeAddress) == arg4:
                        mem[ceil32(arg3.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg3.length) + 196] = arg4
                        mem[ceil32(arg3.length) + 228] = arg1
                        mem[ceil32(arg3.length) + 260] = arg2
                        mem[ceil32(arg3.length) + 324] = arg4
                        mem[ceil32(arg3.length) + 292] = 160
                        mem[ceil32(arg3.length) + 356] = arg3.length
                        if arg3.length:
                            mem[ceil32(arg3.length) + 388] = mem[128]
                            mem[ceil32(arg3.length) + 420 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                        if ext_code.size(proxyAddress):
                            call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                 gas gas_remaining - 50 wei
                                args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 388 len arg3.length]), address(arg4)
                            if ext_call.success:
                                if ext_call.return_data[0]:
                                    if block.gasprice <= txGasPriceLimit:
                                        call treasuryAddress with:
                                           funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                             gas gas_remaining - 25050 wei
                                            args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                                    return 1
                                if not address(feeAddress):
                                    return 0
                                if address(feeAddress) == arg4:
                                    return 0
                                if not absMaxFee:
                                    return 0
                                if ext_code.size(proxyAddress):
                                    call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                         gas gas_remaining - 50 wei
                                        args address(feeAddress), address(arg4), absMaxFee, 'Fee return', address(feeAddress)
                                    if ext_call.success:
                                        if ext_call.return_data[0]:
                                            return 0
                    else:
                        if not absMaxFee:
                            mem[ceil32(arg3.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg3.length) + 196] = arg4
                            mem[ceil32(arg3.length) + 228] = arg1
                            mem[ceil32(arg3.length) + 260] = arg2
                            mem[ceil32(arg3.length) + 324] = arg4
                            mem[ceil32(arg3.length) + 292] = 160
                            mem[ceil32(arg3.length) + 356] = arg3.length
                            if arg3.length:
                                mem[ceil32(arg3.length) + 388] = mem[128]
                                mem[ceil32(arg3.length) + 420 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                            if ext_code.size(proxyAddress):
                                call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                     gas gas_remaining - 50 wei
                                    args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 388 len arg3.length]), address(arg4)
                                if ext_call.success:
                                    if ext_call.return_data[0]:
                                        if block.gasprice <= txGasPriceLimit:
                                            call treasuryAddress with:
                                               funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                                 gas gas_remaining - 25050 wei
                                                args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                                        return 1
                                    if not address(feeAddress):
                                        return 0
                                    if address(feeAddress) == arg4:
                                        return 0
                                    if not absMaxFee:
                                        return 0
                                    if ext_code.size(proxyAddress):
                                        call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                             gas gas_remaining - 50 wei
                                            args address(feeAddress), address(arg4), absMaxFee, 'Fee return', address(feeAddress)
                                        if ext_call.success:
                                            if ext_call.return_data[0]:
                                                return 0
                        else:
                            mem[ceil32(arg3.length) + 420 len 0] = None
                            mem[ceil32(arg3.length) + 388] = 0
                            if ext_code.size(proxyAddress):
                                call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                     gas gas_remaining - 50 wei
                                    args address(arg4), address(feeAddress), absMaxFee, 160, address(arg4), 12, 0
                                if ext_call.success:
                                    if not ext_call.return_data[0]:
                                        return 0
                                    mem[ceil32(arg3.length) + 192] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg3.length) + 196] = arg4
                                    mem[ceil32(arg3.length) + 228] = arg1
                                    mem[ceil32(arg3.length) + 260] = arg2
                                    mem[ceil32(arg3.length) + 324] = arg4
                                    mem[ceil32(arg3.length) + 292] = 160
                                    mem[ceil32(arg3.length) + 356] = arg3.length
                                    if arg3.length:
                                        mem[ceil32(arg3.length) + 388] = mem[128]
                                        mem[ceil32(arg3.length) + 420 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                                    if ext_code.size(proxyAddress):
                                        call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                             gas gas_remaining - 50 wei
                                            args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 388 len arg3.length]), address(arg4)
                                        if ext_call.success:
                                            if ext_call.return_data[0]:
                                                if block.gasprice <= txGasPriceLimit:
                                                    call treasuryAddress with:
                                                       funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                                         gas gas_remaining - 25050 wei
                                                        args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                                                return 1
                                            if not address(feeAddress):
                                                return 0
                                            if address(feeAddress) == arg4:
                                                return 0
                                            if not absMaxFee:
                                                return 0
                                            if ext_code.size(proxyAddress):
                                                call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                                                     gas gas_remaining - 50 wei
                                                    args address(feeAddress), address(arg4), absMaxFee, 160, address(feeAddress), 0, 10, Mask(80, 0, 'Fee return')
                                                if ext_call.success:
                                                    if ext_call.return_data[0]:
                                                        return 0
    revert 
}



}
