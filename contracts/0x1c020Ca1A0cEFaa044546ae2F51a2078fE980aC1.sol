contract main {


// =======================  Init code  ======================


uint256 stor10;

function _fallback() payable {
    stor10 = 1
    require not msg.value
    return code.data[30 len 7222]
}



// =====================  Runtime code  =====================


address proxyAddress;
address stor1;
address stor2;
uint256 refundGas;
uint256 sub_580c7adc;
uint256 transferWithReferenceCallGas;
uint256 transferFromWithReferenceCallGas;
uint256 transferToICAPWithReferenceCallGas;
uint256 transferFromToICAPWithReferenceCallGas;
uint256 approveCallGas;
uint256 sub_a6c4d737;
address treasuryAddress;
uint32 stor12;
address feeAddress;
mapping of uint8 stor13;

function approveCallGas() {
    return approveCallGas
}

function feeAddress() {
    return address(feeAddress)
}

function refundGas() {
    return refundGas
}

function sub_580c7adc(?) {
    return sub_580c7adc
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

function transferWithReferenceCallGas() {
    return transferWithReferenceCallGas
}

function transferFromToICAPWithReferenceCallGas() {
    return transferFromToICAPWithReferenceCallGas
}

function sub_a6c4d737(?) {
    return sub_a6c4d737
}

function sub_e342d77b(?) {
    return bool(stor13[arg1])
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

function enableRefunds() {
    if this.address == msg.sender:
        stor13[stor1] = 0
    else:
        stor13[address(msg.sender)] = 0
    return 1
}

function disableRefunds() {
    if this.address == msg.sender:
        stor13[stor1] = 1
    else:
        stor13[address(msg.sender)] = 1
    return 1
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

function setTokenPrice(uint256 arg1) {
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
    if not arg1:
        return 0
    sub_a6c4d737 = arg1
    return 1
}

function sub_51171896(?) {
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
    treasuryAddress = arg1
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

function sub_504ed7a4(?) {
    require ext_code.size(proxyAddress)
    call proxyAddress.0x313ce567 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require uint8(10^ext_call.return_data[0])
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
    if not arg1 / uint8(10^ext_call.return_data[0]):
        return 0
    sub_a6c4d737 = arg1 / uint8(10^ext_call.return_data[0])
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
}

function sub_bed16fe9(?) {
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
            if this.address == msg.sender:
                if not address(feeAddress):
                    sub_580c7adc = 0
                else:
                    if address(feeAddress) == stor1:
                        sub_580c7adc = 0
                    else:
                        require ext_code.size(proxyAddress)
                        call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                             gas gas_remaining - 50 wei
                            args 0, 0, uint32(stor12), 1, 160, stor1, 15, Mask(120, 0, 'Update fee conf')
                        require ext_call.success
                        if ext_call.return_data[0]:
                            sub_580c7adc = 0
            else:
                if not address(feeAddress):
                    sub_580c7adc = 0
                else:
                    if address(feeAddress) == msg.sender:
                        sub_580c7adc = 0
                    else:
                        require ext_code.size(proxyAddress)
                        call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                             gas gas_remaining - 50 wei
                            args 0, 0, uint32(stor12), 1, 160, msg.sender, 15, Mask(120, 0, 'Update fee conf')
                        require ext_call.success
                        if ext_call.return_data[0]:
                            sub_580c7adc = 0
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
                args 0, 0, uint32(stor12), arg2, 160, proxyAddress, arg3.length, mem[ceil32(arg3.length) + 324 len arg3.length]
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
    require ext_code.size(proxyAddress)
    call proxyAddress._forwardApprove(address rg1, uint256 rg2, address rg3) with:
         gas gas_remaining - 50 wei
        args address(arg1), arg2, arg3
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if not stor13[address(arg3)]:
        require sub_a6c4d737
        require sub_a6c4d737
        if not (approveCallGas * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) % sub_a6c4d737:
            if not address(feeAddress):
                call treasuryAddress with:
                   funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                     gas gas_remaining - 25050 wei
                    args tx.origin, (approveCallGas * block.gasprice) + (refundGas * block.gasprice)
            else:
                if address(feeAddress) == arg3:
                    call treasuryAddress with:
                       funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                         gas gas_remaining - 25050 wei
                        args tx.origin, (approveCallGas * block.gasprice) + (refundGas * block.gasprice)
                else:
                    if not (approveCallGas * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737:
                        call treasuryAddress with:
                           funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                             gas gas_remaining - 25050 wei
                            args tx.origin, (approveCallGas * block.gasprice) + (refundGas * block.gasprice)
                    else:
                        require ext_code.size(proxyAddress)
                        call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                             gas gas_remaining - 50 wei
                            args 0, 0, uint32(stor12), (approveCallGas * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737, 160, address(arg3), 10, Mask(80, 0, 'Refund fee')
                        require ext_call.success
                        if ext_call.return_data[0]:
                            call treasuryAddress with:
                               funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                 gas gas_remaining - 25050 wei
                                args tx.origin, (approveCallGas * block.gasprice) + (refundGas * block.gasprice)
        else:
            if not address(feeAddress):
                call treasuryAddress with:
                   funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                     gas gas_remaining - 25050 wei
                    args tx.origin, (approveCallGas * block.gasprice) + (refundGas * block.gasprice)
            else:
                if address(feeAddress) == arg3:
                    call treasuryAddress with:
                       funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                         gas gas_remaining - 25050 wei
                        args tx.origin, (approveCallGas * block.gasprice) + (refundGas * block.gasprice)
                else:
                    if not ((approveCallGas * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737) + 1:
                        call treasuryAddress with:
                           funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                             gas gas_remaining - 25050 wei
                            args tx.origin, (approveCallGas * block.gasprice) + (refundGas * block.gasprice)
                    else:
                        require ext_code.size(proxyAddress)
                        call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                             gas gas_remaining - 50 wei
                            args 0, 0, uint32(stor12), ((approveCallGas * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737) + 1, 160, address(arg3), 10, Mask(80, 0, 'Refund fee')
                        require ext_call.success
                        if ext_call.return_data[0]:
                            call treasuryAddress with:
                               funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                 gas gas_remaining - 25050 wei
                                args tx.origin, (approveCallGas * block.gasprice) + (refundGas * block.gasprice)
    return 1
}

function _performTransferWithReference(address arg1, uint256 arg2, string arg3, address arg4) {
    mem[128 len arg3.length] = arg3[all]
    if proxyAddress != msg.sender:
        return 0
    mem[ceil32(arg3.length) + 128] = 0x14cba00200000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 132] = arg4
    mem[ceil32(arg3.length) + 164] = arg1
    mem[ceil32(arg3.length) + 196] = arg2
    mem[ceil32(arg3.length) + 260] = arg4
    mem[ceil32(arg3.length) + 228] = 160
    mem[ceil32(arg3.length) + 292] = arg3.length
    if not arg3.length:
        if not arg3.length % 32:
            require ext_code.size(proxyAddress)
            call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                 gas gas_remaining - 50 wei
                args 0, 0, 0, arg2, 160, address(arg4), arg3.length, mem[ceil32(arg3.length) + 324 len arg3.length]
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 324] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 356 len arg3.length % 32]
            require ext_code.size(proxyAddress)
            call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                 gas gas_remaining - 50 wei
                args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len floor32(arg3.length) + 32]), address(arg4)
    else:
        mem[ceil32(arg3.length) + 324] = mem[128]
        mem[ceil32(arg3.length) + 356 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
        require ext_code.size(proxyAddress)
        call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
             gas gas_remaining - 50 wei
            args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len arg3.length]), address(arg4)
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if not stor13[address(arg4)]:
        require sub_a6c4d737
        require sub_a6c4d737
        if not (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) % sub_a6c4d737:
            if not address(feeAddress):
                call treasuryAddress with:
                   funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                     gas gas_remaining - 25050 wei
                    args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
            else:
                if address(feeAddress) == arg4:
                    call treasuryAddress with:
                       funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                         gas gas_remaining - 25050 wei
                        args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                else:
                    if not (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737:
                        call treasuryAddress with:
                           funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                             gas gas_remaining - 25050 wei
                            args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                    else:
                        require ext_code.size(proxyAddress)
                        call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                             gas gas_remaining - 50 wei
                            args address(arg4), address(feeAddress), (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737, 'Refund fee', address(arg4)
                        require ext_call.success
                        if ext_call.return_data[0]:
                            call treasuryAddress with:
                               funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                 gas gas_remaining - 25050 wei
                                args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
        else:
            if not address(feeAddress):
                call treasuryAddress with:
                   funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                     gas gas_remaining - 25050 wei
                    args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
            else:
                if address(feeAddress) == arg4:
                    call treasuryAddress with:
                       funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                         gas gas_remaining - 25050 wei
                        args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                else:
                    if not ((transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737) + 1:
                        call treasuryAddress with:
                           funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                             gas gas_remaining - 25050 wei
                            args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                    else:
                        require ext_code.size(proxyAddress)
                        call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                             gas gas_remaining - 50 wei
                            args address(arg4), address(feeAddress), ((transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737) + 1, 'Refund fee', address(arg4)
                        require ext_call.success
                        if ext_call.return_data[0]:
                            call treasuryAddress with:
                               funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                 gas gas_remaining - 25050 wei
                                args tx.origin, (transferWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
    return 1
}

function _performTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) {
    mem[128 len arg4.length] = arg4[all]
    if proxyAddress != msg.sender:
        return 0
    mem[ceil32(arg4.length) + 128] = 0x14cba00200000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg4.length) + 132] = arg1
    mem[ceil32(arg4.length) + 164] = arg2
    mem[ceil32(arg4.length) + 196] = arg3
    mem[ceil32(arg4.length) + 260] = arg5
    mem[ceil32(arg4.length) + 228] = 160
    mem[ceil32(arg4.length) + 292] = arg4.length
    if not arg4.length:
        if not arg4.length % 32:
            require ext_code.size(proxyAddress)
            call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                 gas gas_remaining - 50 wei
                args 0, 0, 0, arg3, 160, address(arg5), arg4.length, mem[ceil32(arg4.length) + 324 len arg4.length]
        else:
            mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
            require ext_code.size(proxyAddress)
            call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                 gas gas_remaining - 50 wei
                args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len floor32(arg4.length) + 32]), address(arg5)
    else:
        mem[ceil32(arg4.length) + 324] = mem[128]
        mem[ceil32(arg4.length) + 356 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
        require ext_code.size(proxyAddress)
        call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
             gas gas_remaining - 50 wei
            args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len arg4.length]), address(arg5)
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if not stor13[address(arg5)]:
        require sub_a6c4d737
        require sub_a6c4d737
        if not (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) % sub_a6c4d737:
            if not address(feeAddress):
                call treasuryAddress with:
                   funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                     gas gas_remaining - 25050 wei
                    args tx.origin, (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
            else:
                if address(feeAddress) == arg1:
                    call treasuryAddress with:
                       funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                         gas gas_remaining - 25050 wei
                        args tx.origin, (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                else:
                    if not (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737:
                        call treasuryAddress with:
                           funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                             gas gas_remaining - 25050 wei
                            args tx.origin, (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                    else:
                        require ext_code.size(proxyAddress)
                        call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                             gas gas_remaining - 50 wei
                            args address(arg1), address(feeAddress), (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737, 'Refund fee', address(arg1)
                        require ext_call.success
                        if ext_call.return_data[0]:
                            call treasuryAddress with:
                               funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                 gas gas_remaining - 25050 wei
                                args tx.origin, (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
        else:
            if not address(feeAddress):
                call treasuryAddress with:
                   funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                     gas gas_remaining - 25050 wei
                    args tx.origin, (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
            else:
                if address(feeAddress) == arg1:
                    call treasuryAddress with:
                       funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                         gas gas_remaining - 25050 wei
                        args tx.origin, (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                else:
                    if not ((transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737) + 1:
                        call treasuryAddress with:
                           funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                             gas gas_remaining - 25050 wei
                            args tx.origin, (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                    else:
                        require ext_code.size(proxyAddress)
                        call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                             gas gas_remaining - 50 wei
                            args address(arg1), address(feeAddress), ((transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737) + 1, 'Refund fee', address(arg1)
                        require ext_call.success
                        if ext_call.return_data[0]:
                            call treasuryAddress with:
                               funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                 gas gas_remaining - 25050 wei
                                args tx.origin, (transferFromWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
    return 1
}

function _performTransferToICAPWithReference(bytes32 arg1, uint256 arg2, string arg3, address arg4) {
    mem[128 len arg3.length] = arg3[all]
    if proxyAddress != msg.sender:
        return 0
    mem[ceil32(arg3.length) + 128] = 0x9b487f3f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 132] = arg4
    mem[ceil32(arg3.length) + 164] = arg1
    mem[ceil32(arg3.length) + 196] = arg2
    mem[ceil32(arg3.length) + 260] = arg4
    mem[ceil32(arg3.length) + 228] = 160
    mem[ceil32(arg3.length) + 292] = arg3.length
    if not arg3.length:
        if not arg3.length % 32:
            require ext_code.size(proxyAddress)
            call proxyAddress._forwardTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4, address rg5) with:
                 gas gas_remaining - 50 wei
                args 0, 0, uint32(arg1), arg2, 160, address(arg4), arg3.length, mem[ceil32(arg3.length) + 324 len arg3.length]
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 324] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 356 len arg3.length % 32]
            require ext_code.size(proxyAddress)
            call proxyAddress._forwardTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4, address rg5) with:
                 gas gas_remaining - 50 wei
                args address(arg4), arg1, arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len floor32(arg3.length) + 32]), address(arg4)
    else:
        mem[ceil32(arg3.length) + 324] = mem[128]
        if arg3.length > 32:
            mem[ceil32(arg3.length) + 356] = mem[160]
            mem[ceil32(arg3.length) + 388 len floor32(arg3.length - 33)] = mem[192 len floor32(arg3.length - 33)]
        require ext_code.size(proxyAddress)
        call proxyAddress._forwardTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4, address rg5) with:
             gas gas_remaining - 50 wei
            args address(arg4), arg1, arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len arg3.length]), address(arg4)
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if not stor13[address(arg4)]:
        require sub_a6c4d737
        require sub_a6c4d737
        if not (transferToICAPWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) % sub_a6c4d737:
            if not address(feeAddress):
                call treasuryAddress with:
                   funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                     gas gas_remaining - 25050 wei
                    args tx.origin, (transferToICAPWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
            else:
                if address(feeAddress) == arg4:
                    call treasuryAddress with:
                       funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                         gas gas_remaining - 25050 wei
                        args tx.origin, (transferToICAPWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                else:
                    if not (transferToICAPWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737:
                        call treasuryAddress with:
                           funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                             gas gas_remaining - 25050 wei
                            args tx.origin, (transferToICAPWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                    else:
                        require ext_code.size(proxyAddress)
                        call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                             gas gas_remaining - 50 wei
                            args address(arg4), address(feeAddress), (transferToICAPWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737, 'Refund fee', address(arg4)
                        require ext_call.success
                        if ext_call.return_data[0]:
                            call treasuryAddress with:
                               funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                 gas gas_remaining - 25050 wei
                                args tx.origin, (transferToICAPWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
        else:
            if not address(feeAddress):
                call treasuryAddress with:
                   funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                     gas gas_remaining - 25050 wei
                    args tx.origin, (transferToICAPWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
            else:
                if address(feeAddress) == arg4:
                    call treasuryAddress with:
                       funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                         gas gas_remaining - 25050 wei
                        args tx.origin, (transferToICAPWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                else:
                    if not ((transferToICAPWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737) + 1:
                        call treasuryAddress with:
                           funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                             gas gas_remaining - 25050 wei
                            args tx.origin, (transferToICAPWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
                    else:
                        require ext_code.size(proxyAddress)
                        call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                             gas gas_remaining - 50 wei
                            args address(arg4), address(feeAddress), ((transferToICAPWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737) + 1, 'Refund fee', address(arg4)
                        require ext_call.success
                        if ext_call.return_data[0]:
                            call treasuryAddress with:
                               funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                 gas gas_remaining - 25050 wei
                                args tx.origin, (transferToICAPWithReferenceCallGas * block.gasprice) + (75 * arg3.length * block.gasprice) + (refundGas * block.gasprice)
    return 1
}

function _performTransferFromToICAPWithReference(address arg1, bytes32 arg2, uint256 arg3, string arg4, address arg5) {
    mem[128 len arg4.length] = arg4[all]
    if proxyAddress != msg.sender:
        return 0
    mem[ceil32(arg4.length) + 128] = 0x9b487f3f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg4.length) + 132] = arg1
    mem[ceil32(arg4.length) + 164] = arg2
    mem[ceil32(arg4.length) + 196] = arg3
    mem[ceil32(arg4.length) + 260] = arg5
    mem[ceil32(arg4.length) + 228] = 160
    mem[ceil32(arg4.length) + 292] = arg4.length
    if not arg4.length:
        if not arg4.length % 32:
            require ext_code.size(proxyAddress)
            call proxyAddress._forwardTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4, address rg5) with:
                 gas gas_remaining - 50 wei
                args 0, 0, uint32(arg2), arg3, 160, address(arg5), arg4.length, mem[ceil32(arg4.length) + 324 len arg4.length]
        else:
            mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
            require ext_code.size(proxyAddress)
            call proxyAddress._forwardTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4, address rg5) with:
                 gas gas_remaining - 50 wei
                args address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len floor32(arg4.length) + 32]), address(arg5)
    else:
        mem[ceil32(arg4.length) + 324] = mem[128]
        if arg4.length > 32:
            mem[ceil32(arg4.length) + 356] = mem[160]
            mem[ceil32(arg4.length) + 388 len floor32(arg4.length - 33)] = mem[192 len floor32(arg4.length - 33)]
        require ext_code.size(proxyAddress)
        call proxyAddress._forwardTransferFromToICAPWithReference(address rg1, bytes32 rg2, uint256 rg3, string rg4, address rg5) with:
             gas gas_remaining - 50 wei
            args address(arg1), arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len arg4.length]), address(arg5)
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if not stor13[address(arg5)]:
        require sub_a6c4d737
        require sub_a6c4d737
        if not (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) % sub_a6c4d737:
            if not address(feeAddress):
                call treasuryAddress with:
                   funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                     gas gas_remaining - 25050 wei
                    args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
            else:
                if address(feeAddress) == arg1:
                    call treasuryAddress with:
                       funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                         gas gas_remaining - 25050 wei
                        args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                else:
                    if not (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737:
                        call treasuryAddress with:
                           funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                             gas gas_remaining - 25050 wei
                            args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                    else:
                        require ext_code.size(proxyAddress)
                        call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                             gas gas_remaining - 50 wei
                            args address(arg1), address(feeAddress), (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737, 'Refund fee', address(arg1)
                        require ext_call.success
                        if ext_call.return_data[0]:
                            call treasuryAddress with:
                               funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                 gas gas_remaining - 25050 wei
                                args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
        else:
            if not address(feeAddress):
                call treasuryAddress with:
                   funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                     gas gas_remaining - 25050 wei
                    args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
            else:
                if address(feeAddress) == arg1:
                    call treasuryAddress with:
                       funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                         gas gas_remaining - 25050 wei
                        args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                else:
                    if not ((transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737) + 1:
                        call treasuryAddress with:
                           funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                             gas gas_remaining - 25050 wei
                            args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
                    else:
                        require ext_code.size(proxyAddress)
                        call proxyAddress._forwardTransferFromWithReference(address rg1, address rg2, uint256 rg3, string rg4, address rg5) with:
                             gas gas_remaining - 50 wei
                            args address(arg1), address(feeAddress), ((transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice) + (sub_580c7adc * block.gasprice) / sub_a6c4d737) + 1, 'Refund fee', address(arg1)
                        require ext_call.success
                        if ext_call.return_data[0]:
                            call treasuryAddress with:
                               funct Mask(32, 224, sha3('withdraw(address,uint256)')) >> 224
                                 gas gas_remaining - 25050 wei
                                args tx.origin, (transferFromToICAPWithReferenceCallGas * block.gasprice) + (75 * arg4.length * block.gasprice) + (refundGas * block.gasprice)
    return 1
}



}
