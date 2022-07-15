contract main {




// =====================  Runtime code  =====================


address proxyAddress;
address genericSenderAddress;
address ambi2Address;
address distributorAddress;
uint32 stor4;
address sub_c56d5412Address;

function genericSender() {
    return genericSenderAddress
}

function getDistributor() {
    return distributorAddress
}

function distributor() {
    return distributorAddress
}

function sub_c56d5412(?) {
    return address(sub_c56d5412Address)
}

function proxy() {
    return proxyAddress
}

function ambi2() {
    return ambi2Address
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

function _performGeneric(bytes arg1, address arg2) payable {
    if proxyAddress != msg.sender:
    require not genericSenderAddress
    genericSenderAddress = arg2
    call this.address with:
       value msg.value wei
         gas gas_remaining wei
        args arg1[all]
    genericSenderAddress = 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function _performApprove(address arg1, uint256 arg2, address arg3) {
    if proxyAddress != msg.sender:
        return 0
    require ext_code.size(proxyAddress)
    call proxyAddress._forwardApprove(address arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args address(arg1), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function _performTransferToICAPWithReference(bytes32 arg1, uint256 arg2, string arg3, address arg4) {
    if proxyAddress != msg.sender:
        return 0
    require ext_code.size(proxyAddress)
    call proxyAddress._forwardTransferFromToICAPWithReference(address arg1, bytes32 arg2, uint256 arg3, string arg4, address arg5) with:
         gas gas_remaining wei
        args address(arg4), arg1, arg2, Array(len=arg3.length, data=arg3[all]), address(arg4)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function _performTransferFromToICAPWithReference(address arg1, bytes32 arg2, uint256 arg3, string arg4, address arg5) {
    if proxyAddress != msg.sender:
        return 0
    require ext_code.size(proxyAddress)
    call proxyAddress._forwardTransferFromToICAPWithReference(address arg1, bytes32 arg2, uint256 arg3, string arg4, address arg5) with:
         gas gas_remaining wei
        args address(arg1), arg2, arg3, Array(len=arg4.length, data=arg4[all]), address(arg5)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function setDistributor(address arg1) {
    if not ambi2Address:
        return 0
    require ext_code.size(ambi2Address)
    if this.address == msg.sender:
        call ambi2Address.hasRole(address arg1, bytes32 arg2, address arg3) with:
             gas gas_remaining wei
            args address(this.address), 'admin', genericSenderAddress
    else:
        call ambi2Address.hasRole(address arg1, bytes32 arg2, address arg3) with:
             gas gas_remaining wei
            args address(this.address), 'admin', msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    distributorAddress = arg1
    emit DistributorSet(arg1);
    return 1
}

function setupAmbi2(address arg1) {
    if ambi2Address:
        return 0
    require ext_code.size(arg1)
    call arg1.claimFor(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.isOwner(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(this.address), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            return 0
    ambi2Address = arg1
    return 1
}

function transferToICAP(string arg1, uint256 arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    require ext_code.size(proxyAddress)
    if this.address == msg.sender:
        call proxyAddress._forwardTransferFromToICAPWithReference(address arg1, bytes32 arg2, uint256 arg3, string arg4, address arg5) with:
             gas gas_remaining wei
            args genericSenderAddress, mem[128], arg2, 160, genericSenderAddress, 0
    else:
        call proxyAddress._forwardTransferFromToICAPWithReference(address arg1, bytes32 arg2, uint256 arg3, string arg4, address arg5) with:
             gas gas_remaining wei
            args msg.sender, mem[128], arg2, 160, msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function transferFromToICAP(address arg1, string arg2, uint256 arg3) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = 0
    require ext_code.size(proxyAddress)
    if this.address == msg.sender:
        call proxyAddress._forwardTransferFromToICAPWithReference(address arg1, bytes32 arg2, uint256 arg3, string arg4, address arg5) with:
             gas gas_remaining wei
            args address(arg1), mem[128], arg3, 160, genericSenderAddress, 0
    else:
        call proxyAddress._forwardTransferFromToICAPWithReference(address arg1, bytes32 arg2, uint256 arg3, string arg4, address arg5) with:
             gas gas_remaining wei
            args address(arg1), mem[128], arg3, 160, msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function transferToICAPWithReference(string arg1, uint256 arg2, string arg3) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg3.length
    require ext_code.size(proxyAddress)
    if this.address == msg.sender:
        call proxyAddress._forwardTransferFromToICAPWithReference(address arg1, bytes32 arg2, uint256 arg3, string arg4, address arg5) with:
             gas gas_remaining wei
            args genericSenderAddress, mem[128], arg2, Array(len=arg3.length, data=arg3[all]), genericSenderAddress
    else:
        call proxyAddress._forwardTransferFromToICAPWithReference(address arg1, bytes32 arg2, uint256 arg3, string arg4, address arg5) with:
             gas gas_remaining wei
            args msg.sender, mem[128], arg2, Array(len=arg3.length, data=arg3[all]), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function transferFromToICAPWithReference(address arg1, string arg2, uint256 arg3, string arg4) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg4.length
    require ext_code.size(proxyAddress)
    if this.address == msg.sender:
        call proxyAddress._forwardTransferFromToICAPWithReference(address arg1, bytes32 arg2, uint256 arg3, string arg4, address arg5) with:
             gas gas_remaining wei
            args address(arg1), mem[128], arg3, Array(len=arg4.length, data=arg4[all]), genericSenderAddress
    else:
        call proxyAddress._forwardTransferFromToICAPWithReference(address arg1, bytes32 arg2, uint256 arg3, string arg4, address arg5) with:
             gas gas_remaining wei
            args address(arg1), mem[128], arg3, Array(len=arg4.length, data=arg4[all]), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_7ea3be60(?) {
    if not ambi2Address:
        return 0
    require ext_code.size(ambi2Address)
    if this.address == msg.sender:
        call ambi2Address.hasRole(address arg1, bytes32 arg2, address arg3) with:
             gas gas_remaining wei
            args address(this.address), 'recover', genericSenderAddress
    else:
        call ambi2Address.hasRole(address arg1, bytes32 arg2, address arg3) with:
             gas gas_remaining wei
            args address(this.address), 'recover', msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    emit 0xa4a219ce: address(arg1), arg2
    require ext_code.size(proxyAddress)
    call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
         gas gas_remaining wei
        args 0, uint32(stor4), address(arg1), arg2, 160, address(sub_c56d5412Address), 7, 'Recover' % 72057594037927936
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function isICAP(address arg1) {
    if 'X' != 0:
        return 0
    if Mask(8, -(('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) - 8 != 'E':
        return 0
    if Mask(8, -(('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) + 256, 2) << (('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) - 8 < '0':
        return 0
    if Mask(8, -(('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) + 256, 2) << (('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) - 8 > '9':
        return 0
    if Mask(8, -(('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) + 256, 3) << (('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) - 8 < '0':
        return 0
    if Mask(8, -(('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) + 256, 3) << (('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) - 8 > '9':
        return 0
    s = 0
    idx = 4
    while idx < 20:
        if Mask(8, -(('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) + 256, idx) << (('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) - 256 >= 48:
            if Mask(8, -(('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) + 256, idx) << (('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) - 256 <= 90:
                if Mask(8, -(('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) + 256, idx) << (('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) - 256 <= 57:
                    s = Mask(8, -(('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) + 256, idx) << (('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) - 256
                    idx = idx + 1
                    continue 
                if Mask(8, -(('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) + 256, idx) << (('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) - 256 >= 65:
                    s = Mask(8, -(('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) + 256, idx) << (('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) - 256
                    idx = idx + 1
                    continue 
                else:
                    return 0
            else:
                return 0
        else:
            return 0
    return 1
}

function _performTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) {
    mem[64] = ceil32(arg4.length) + 128
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    if proxyAddress != msg.sender:
        return 0
    if 'X' != 0:
        if address(sub_c56d5412Address) == arg2:
            return 0
        if distributorAddress == arg2:
            return 0
        mem[ceil32(arg4.length) + 128] = 0x14cba00200000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg4.length) + 132] = arg1
        mem[ceil32(arg4.length) + 164] = arg2
        mem[ceil32(arg4.length) + 196] = arg3
        mem[ceil32(arg4.length) + 260] = arg5
        mem[ceil32(arg4.length) + 228] = 160
        mem[ceil32(arg4.length) + 292] = arg4.length
        if 0 >= arg4.length:
            if not arg4.length % 32:
                require ext_code.size(proxyAddress)
                call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                     gas gas_remaining wei
                    args 0, 0, address(arg2), arg3, 160, address(arg5), arg4.length, mem[ceil32(arg4.length) + 324 len arg4.length]
            else:
                mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                require ext_code.size(proxyAddress)
                call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                     gas gas_remaining wei
                    args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len floor32(arg4.length) + 32]), address(arg5)
        else:
            mem[ceil32(arg4.length) + 324] = mem[128]
            mem[ceil32(arg4.length) + 356 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
            require ext_code.size(proxyAddress)
            call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                 gas gas_remaining wei
                args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len arg4.length]), address(arg5)
    else:
        if Mask(8, -(('mask_shl', 160, 0, 93, ('param', 'arg2')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('param', 'arg2')), 0) - 8 != 'E':
            if address(sub_c56d5412Address) == arg2:
                return 0
            if distributorAddress == arg2:
                return 0
            mem[ceil32(arg4.length) + 128] = 0x14cba00200000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg4.length) + 132] = arg1
            mem[ceil32(arg4.length) + 164] = arg2
            mem[ceil32(arg4.length) + 196] = arg3
            mem[ceil32(arg4.length) + 260] = arg5
            mem[ceil32(arg4.length) + 228] = 160
            mem[ceil32(arg4.length) + 292] = arg4.length
            if 0 >= arg4.length:
                if not arg4.length % 32:
                    require ext_code.size(proxyAddress)
                    call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                         gas gas_remaining wei
                        args 0, 0, address(arg2), arg3, 160, address(arg5), arg4.length, mem[ceil32(arg4.length) + 324 len arg4.length]
                else:
                    mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                    require ext_code.size(proxyAddress)
                    call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                         gas gas_remaining wei
                        args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len floor32(arg4.length) + 32]), address(arg5)
            else:
                mem[ceil32(arg4.length) + 324] = mem[128]
                mem[ceil32(arg4.length) + 356 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                require ext_code.size(proxyAddress)
                call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                     gas gas_remaining wei
                    args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len arg4.length]), address(arg5)
        else:
            if Mask(8, -(('mask_shl', 160, 0, 93, ('param', 'arg2')), 0) + 256, 2) << (('mask_shl', 160, 0, 93, ('param', 'arg2')), 0) - 8 < '0':
                if address(sub_c56d5412Address) == arg2:
                    return 0
                if distributorAddress == arg2:
                    return 0
                mem[ceil32(arg4.length) + 128] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg4.length) + 132] = arg1
                mem[ceil32(arg4.length) + 164] = arg2
                mem[ceil32(arg4.length) + 196] = arg3
                mem[ceil32(arg4.length) + 260] = arg5
                mem[ceil32(arg4.length) + 228] = 160
                mem[ceil32(arg4.length) + 292] = arg4.length
                if 0 >= arg4.length:
                    if not arg4.length % 32:
                        require ext_code.size(proxyAddress)
                        call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                             gas gas_remaining wei
                            args 0, 0, address(arg2), arg3, 160, address(arg5), arg4.length, mem[ceil32(arg4.length) + 324 len arg4.length]
                    else:
                        mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                        require ext_code.size(proxyAddress)
                        call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                             gas gas_remaining wei
                            args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len floor32(arg4.length) + 32]), address(arg5)
                else:
                    mem[ceil32(arg4.length) + 324] = mem[128]
                    mem[ceil32(arg4.length) + 356 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                    require ext_code.size(proxyAddress)
                    call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                         gas gas_remaining wei
                        args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len arg4.length]), address(arg5)
            else:
                if Mask(8, -(('mask_shl', 160, 0, 93, ('param', 'arg2')), 0) + 256, 2) << (('mask_shl', 160, 0, 93, ('param', 'arg2')), 0) - 8 > '9':
                    if address(sub_c56d5412Address) == arg2:
                        return 0
                    if distributorAddress == arg2:
                        return 0
                    mem[ceil32(arg4.length) + 128] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg4.length) + 132] = arg1
                    mem[ceil32(arg4.length) + 164] = arg2
                    mem[ceil32(arg4.length) + 196] = arg3
                    mem[ceil32(arg4.length) + 260] = arg5
                    mem[ceil32(arg4.length) + 228] = 160
                    mem[ceil32(arg4.length) + 292] = arg4.length
                    if 0 >= arg4.length:
                        if not arg4.length % 32:
                            require ext_code.size(proxyAddress)
                            call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, address(arg2), arg3, 160, address(arg5), arg4.length, mem[ceil32(arg4.length) + 324 len arg4.length]
                        else:
                            mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                            require ext_code.size(proxyAddress)
                            call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                                 gas gas_remaining wei
                                args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len floor32(arg4.length) + 32]), address(arg5)
                    else:
                        mem[ceil32(arg4.length) + 324] = mem[128]
                        mem[ceil32(arg4.length) + 356 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                        require ext_code.size(proxyAddress)
                        call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                             gas gas_remaining wei
                            args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len arg4.length]), address(arg5)
                else:
                    if Mask(8, -(('mask_shl', 160, 0, 93, ('param', 'arg2')), 0) + 256, 3) << (('mask_shl', 160, 0, 93, ('param', 'arg2')), 0) - 8 < '0':
                        if address(sub_c56d5412Address) == arg2:
                            return 0
                        if distributorAddress == arg2:
                            return 0
                        mem[ceil32(arg4.length) + 128] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg4.length) + 132] = arg1
                        mem[ceil32(arg4.length) + 164] = arg2
                        mem[ceil32(arg4.length) + 196] = arg3
                        mem[ceil32(arg4.length) + 260] = arg5
                        mem[ceil32(arg4.length) + 228] = 160
                        mem[ceil32(arg4.length) + 292] = arg4.length
                        if 0 >= arg4.length:
                            if not arg4.length % 32:
                                require ext_code.size(proxyAddress)
                                call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(arg2), arg3, 160, address(arg5), arg4.length, mem[ceil32(arg4.length) + 324 len arg4.length]
                            else:
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                                require ext_code.size(proxyAddress)
                                call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                                     gas gas_remaining wei
                                    args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len floor32(arg4.length) + 32]), address(arg5)
                        else:
                            mem[ceil32(arg4.length) + 324] = mem[128]
                            mem[ceil32(arg4.length) + 356 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                            require ext_code.size(proxyAddress)
                            call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                                 gas gas_remaining wei
                                args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len arg4.length]), address(arg5)
                    else:
                        if Mask(8, -(('mask_shl', 160, 0, 93, ('param', 'arg2')), 0) + 256, 3) << (('mask_shl', 160, 0, 93, ('param', 'arg2')), 0) - 8 <= '9':
                            s = 0
                            idx = 4
                            while idx < 20:
                                if Mask(8, -(('mask_shl', 160, 0, 93, ('param', 'arg2')), 0) + 256, idx) << (('mask_shl', 160, 0, 93, ('param', 'arg2')), 0) - 256 >= 48:
                                    if Mask(8, -(('mask_shl', 160, 0, 93, ('param', 'arg2')), 0) + 256, idx) << (('mask_shl', 160, 0, 93, ('param', 'arg2')), 0) - 256 <= 90:
                                        if Mask(8, -(('mask_shl', 160, 0, 93, ('param', 'arg2')), 0) + 256, idx) << (('mask_shl', 160, 0, 93, ('param', 'arg2')), 0) - 256 <= 57:
                                            s = Mask(8, -(('mask_shl', 160, 0, 93, ('param', 'arg2')), 0) + 256, idx) << (('mask_shl', 160, 0, 93, ('param', 'arg2')), 0) - 256
                                            idx = idx + 1
                                            continue 
                                        if Mask(8, -(('mask_shl', 160, 0, 93, ('param', 'arg2')), 0) + 256, idx) << (('mask_shl', 160, 0, 93, ('param', 'arg2')), 0) - 256 >= 65:
                                            s = Mask(8, -(('mask_shl', 160, 0, 93, ('param', 'arg2')), 0) + 256, idx) << (('mask_shl', 160, 0, 93, ('param', 'arg2')), 0) - 256
                                            idx = idx + 1
                                            continue 
                                if address(sub_c56d5412Address) == arg2:
                                    return 0
                                if distributorAddress == arg2:
                                    return 0
                                mem[ceil32(arg4.length) + 128] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                                mem[ceil32(arg4.length) + 132] = arg1
                                mem[ceil32(arg4.length) + 164] = arg2
                                mem[ceil32(arg4.length) + 196] = arg3
                                mem[ceil32(arg4.length) + 260] = arg5
                                mem[ceil32(arg4.length) + 228] = 160
                                mem[ceil32(arg4.length) + 292] = arg4.length
                                if 0 >= arg4.length:
                                    if not arg4.length % 32:
                                        require ext_code.size(proxyAddress)
                                        call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                                             gas gas_remaining wei
                                            args 0, 0, address(arg2), arg3, 160, address(arg5), arg4.length, mem[ceil32(arg4.length) + 324 len arg4.length]
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                                        require ext_code.size(proxyAddress)
                                        call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                                             gas gas_remaining wei
                                            args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len floor32(arg4.length) + 32]), address(arg5)
                                else:
                                    mem[ceil32(arg4.length) + 324] = mem[128]
                                    idx = 32
                                    while idx < arg4.length:
                                        mem[idx + ceil32(arg4.length) + 324] = mem[idx + 128]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(proxyAddress)
                                    call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                                         gas gas_remaining wei
                                        args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len arg4.length]), address(arg5)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                return bool(ext_call.return_data[0])
                            require ext_code.size(proxyAddress)
                            call proxyAddress._forwardTransferFromToICAPWithReference(address arg1, bytes32 arg2, uint256 arg3, string arg4, address arg5) with:
                                 gas gas_remaining wei
                                args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=arg4[all]), address(arg5)
                        else:
                            if address(sub_c56d5412Address) == arg2:
                                return 0
                            if distributorAddress == arg2:
                                return 0
                            mem[ceil32(arg4.length) + 128] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(arg4.length) + 132] = arg1
                            mem[ceil32(arg4.length) + 164] = arg2
                            mem[ceil32(arg4.length) + 196] = arg3
                            mem[ceil32(arg4.length) + 260] = arg5
                            mem[ceil32(arg4.length) + 228] = 160
                            mem[ceil32(arg4.length) + 292] = arg4.length
                            if 0 >= arg4.length:
                                if not arg4.length % 32:
                                    require ext_code.size(proxyAddress)
                                    call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(arg2), arg3, 160, address(arg5), arg4.length, mem[ceil32(arg4.length) + 324 len arg4.length]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                                    require ext_code.size(proxyAddress)
                                    call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                                         gas gas_remaining wei
                                        args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len floor32(arg4.length) + 32]), address(arg5)
                            else:
                                mem[ceil32(arg4.length) + 324] = mem[128]
                                mem[ceil32(arg4.length) + 356 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                                require ext_code.size(proxyAddress)
                                call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                                     gas gas_remaining wei
                                    args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len arg4.length]), address(arg5)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function _performTransferWithReference(address arg1, uint256 arg2, string arg3, address arg4) {
    mem[64] = ceil32(arg3.length) + 128
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    if proxyAddress != msg.sender:
        return 0
    if 0 == 'X':
        if 'E' == Mask(8, -(('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) - 8:
            if Mask(8, -(('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) + 256, 2) << (('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) - 8 >= '0':
                if Mask(8, -(('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) + 256, 2) << (('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) - 8 <= '9':
                    if Mask(8, -(('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) + 256, 3) << (('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) - 8 >= '0':
                        if Mask(8, -(('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) + 256, 3) << (('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) - 8 <= '9':
                            s = 0
                            idx = 4
                            while idx < 20:
                                if Mask(8, -(('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) + 256, idx) << (('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) - 256 >= 48:
                                    if Mask(8, -(('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) + 256, idx) << (('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) - 256 <= 90:
                                        if Mask(8, -(('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) + 256, idx) << (('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) - 256 <= 57:
                                            s = Mask(8, -(('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) + 256, idx) << (('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) - 256
                                            idx = idx + 1
                                            continue 
                                        if Mask(8, -(('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) + 256, idx) << (('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) - 256 >= 65:
                                            s = Mask(8, -(('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) + 256, idx) << (('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) - 256
                                            idx = idx + 1
                                            continue 
                                if arg2:
                                    if address(sub_c56d5412Address) != arg1:
                                        if distributorAddress != arg1:
                                            mem[ceil32(arg3.length) + 128] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(arg3.length) + 132] = arg4
                                            mem[ceil32(arg3.length) + 164] = arg1
                                            mem[ceil32(arg3.length) + 196] = arg2
                                            mem[ceil32(arg3.length) + 260] = arg4
                                            mem[ceil32(arg3.length) + 228] = 160
                                            mem[ceil32(arg3.length) + 292] = arg3.length
                                            if 0 >= arg3.length:
                                                if not arg3.length % 32:
                                                    require ext_code.size(proxyAddress)
                                                    call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, address(arg1), arg2, 160, address(arg4), arg3.length, mem[ceil32(arg3.length) + 324 len arg3.length]
                                                else:
                                                    mem[floor32(arg3.length) + ceil32(arg3.length) + 324] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 356 len arg3.length % 32]
                                                    require ext_code.size(proxyAddress)
                                                    call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                                                         gas gas_remaining wei
                                                        args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len floor32(arg3.length) + 32]), address(arg4)
                                            else:
                                                mem[ceil32(arg3.length) + 324] = mem[128]
                                                idx = 32
                                                while idx < arg3.length:
                                                    mem[idx + ceil32(arg3.length) + 324] = mem[idx + 128]
                                                    idx = idx + 32
                                                    continue 
                                                require ext_code.size(proxyAddress)
                                                call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                                                     gas gas_remaining wei
                                                    args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len arg3.length]), address(arg4)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            return bool(ext_call.return_data[0])
                                    mem[ceil32(arg3.length) + 128] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg3.length) + 132] = arg4
                                    mem[ceil32(arg3.length) + 164] = distributorAddress
                                    mem[ceil32(arg3.length) + 196] = arg2
                                    mem[ceil32(arg3.length) + 260] = arg4
                                    mem[ceil32(arg3.length) + 228] = 160
                                    mem[ceil32(arg3.length) + 292] = arg3.length
                                    if 0 >= arg3.length:
                                        if not arg3.length % 32:
                                            require ext_code.size(proxyAddress)
                                            call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                                                 gas gas_remaining wei
                                                args 0, 0, distributorAddress, arg2, 160, address(arg4), arg3.length, mem[ceil32(arg3.length) + 324 len arg3.length]
                                        else:
                                            mem[floor32(arg3.length) + ceil32(arg3.length) + 324] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 356 len arg3.length % 32]
                                            require ext_code.size(proxyAddress)
                                            call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                                                 gas gas_remaining wei
                                                args address(arg4), distributorAddress, arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len floor32(arg3.length) + 32]), address(arg4)
                                    else:
                                        mem[ceil32(arg3.length) + 324] = mem[128]
                                        idx = 32
                                        while idx < arg3.length:
                                            mem[idx + ceil32(arg3.length) + 324] = mem[idx + 128]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(proxyAddress)
                                        call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                                             gas gas_remaining wei
                                            args address(arg4), distributorAddress, arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len arg3.length]), address(arg4)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        return 0
                                    require ext_code.size(distributorAddress)
                                    call distributorAddress.deposit(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg4), arg2
                                else:
                                    require ext_code.size(proxyAddress)
                                    call proxyAddress.0x70a08231 with:
                                         gas gas_remaining wei
                                        args arg4
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if address(sub_c56d5412Address) != distributorAddress:
                                        if distributorAddress != distributorAddress:
                                            mem[ceil32(arg3.length) + 128] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(arg3.length) + 132] = arg4
                                            mem[ceil32(arg3.length) + 164] = distributorAddress
                                            mem[ceil32(arg3.length) + 196] = ext_call.return_data[0]
                                            mem[ceil32(arg3.length) + 260] = arg4
                                            mem[ceil32(arg3.length) + 228] = 160
                                            mem[ceil32(arg3.length) + 292] = arg3.length
                                            if 0 >= arg3.length:
                                                if not arg3.length % 32:
                                                    require ext_code.size(proxyAddress)
                                                    call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, distributorAddress, ext_call.return_data[0], 160, address(arg4), arg3.length, mem[ceil32(arg3.length) + 324 len arg3.length]
                                                else:
                                                    mem[floor32(arg3.length) + ceil32(arg3.length) + 324] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 356 len arg3.length % 32]
                                                    require ext_code.size(proxyAddress)
                                                    call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                                                         gas gas_remaining wei
                                                        args address(arg4), distributorAddress, ext_call.return_data[0], Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len floor32(arg3.length) + 32]), address(arg4)
                                            else:
                                                mem[ceil32(arg3.length) + 324] = mem[128]
                                                idx = 32
                                                while idx < arg3.length:
                                                    mem[idx + ceil32(arg3.length) + 324] = mem[idx + 128]
                                                    idx = idx + 32
                                                    continue 
                                                require ext_code.size(proxyAddress)
                                                call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                                                     gas gas_remaining wei
                                                    args address(arg4), distributorAddress, ext_call.return_data[0], Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len arg3.length]), address(arg4)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            return bool(ext_call.return_data[0])
                                    mem[ceil32(arg3.length) + 128] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(arg3.length) + 132] = arg4
                                    mem[ceil32(arg3.length) + 164] = distributorAddress
                                    mem[ceil32(arg3.length) + 196] = ext_call.return_data[0]
                                    mem[ceil32(arg3.length) + 260] = arg4
                                    mem[ceil32(arg3.length) + 228] = 160
                                    mem[ceil32(arg3.length) + 292] = arg3.length
                                    if 0 >= arg3.length:
                                        if not arg3.length % 32:
                                            require ext_code.size(proxyAddress)
                                            call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                                                 gas gas_remaining wei
                                                args 0, 0, distributorAddress, ext_call.return_data[0], 160, address(arg4), arg3.length, mem[ceil32(arg3.length) + 324 len arg3.length]
                                        else:
                                            mem[floor32(arg3.length) + ceil32(arg3.length) + 324] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 356 len arg3.length % 32]
                                            require ext_code.size(proxyAddress)
                                            call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                                                 gas gas_remaining wei
                                                args address(arg4), distributorAddress, ext_call.return_data[0], Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len floor32(arg3.length) + 32]), address(arg4)
                                    else:
                                        mem[ceil32(arg3.length) + 324] = mem[128]
                                        idx = 32
                                        while idx < arg3.length:
                                            mem[idx + ceil32(arg3.length) + 324] = mem[idx + 128]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(proxyAddress)
                                        call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                                             gas gas_remaining wei
                                            args address(arg4), distributorAddress, ext_call.return_data[0], Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len arg3.length]), address(arg4)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        return 0
                                    require ext_code.size(distributorAddress)
                                    call distributorAddress.deposit(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg4), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Deposit failed'
                                return 1
                            require ext_code.size(proxyAddress)
                            call proxyAddress._forwardTransferFromToICAPWithReference(address arg1, bytes32 arg2, uint256 arg3, string arg4, address arg5) with:
                                 gas gas_remaining wei
                                args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), address(arg4)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            return bool(ext_call.return_data[0])
    if arg2:
        if address(sub_c56d5412Address) != arg1:
            if distributorAddress != arg1:
                mem[ceil32(arg3.length) + 128] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg3.length) + 132] = arg4
                mem[ceil32(arg3.length) + 164] = arg1
                mem[ceil32(arg3.length) + 196] = arg2
                mem[ceil32(arg3.length) + 260] = arg4
                mem[ceil32(arg3.length) + 228] = 160
                mem[ceil32(arg3.length) + 292] = arg3.length
                if 0 >= arg3.length:
                    if not arg3.length % 32:
                        require ext_code.size(proxyAddress)
                        call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                             gas gas_remaining wei
                            args 0, 0, address(arg1), arg2, 160, address(arg4), arg3.length, mem[ceil32(arg3.length) + 324 len arg3.length]
                    else:
                        mem[floor32(arg3.length) + ceil32(arg3.length) + 324] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 356 len arg3.length % 32]
                        require ext_code.size(proxyAddress)
                        call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                             gas gas_remaining wei
                            args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len floor32(arg3.length) + 32]), address(arg4)
                else:
                    mem[ceil32(arg3.length) + 324] = mem[128]
                    mem[ceil32(arg3.length) + 356 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                    require ext_code.size(proxyAddress)
                    call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                         gas gas_remaining wei
                        args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len arg3.length]), address(arg4)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return bool(ext_call.return_data[0])
        mem[ceil32(arg3.length) + 128] = 0x14cba00200000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg3.length) + 132] = arg4
        mem[ceil32(arg3.length) + 164] = distributorAddress
        mem[ceil32(arg3.length) + 196] = arg2
        mem[ceil32(arg3.length) + 260] = arg4
        mem[ceil32(arg3.length) + 228] = 160
        mem[ceil32(arg3.length) + 292] = arg3.length
        if 0 >= arg3.length:
            if not arg3.length % 32:
                require ext_code.size(proxyAddress)
                call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                     gas gas_remaining wei
                    args 0, 0, distributorAddress, arg2, 160, address(arg4), arg3.length, mem[ceil32(arg3.length) + 324 len arg3.length]
            else:
                mem[floor32(arg3.length) + ceil32(arg3.length) + 324] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 356 len arg3.length % 32]
                require ext_code.size(proxyAddress)
                call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                     gas gas_remaining wei
                    args address(arg4), distributorAddress, arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len floor32(arg3.length) + 32]), address(arg4)
        else:
            mem[ceil32(arg3.length) + 324] = mem[128]
            mem[ceil32(arg3.length) + 356 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
            require ext_code.size(proxyAddress)
            call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                 gas gas_remaining wei
                args address(arg4), distributorAddress, arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len arg3.length]), address(arg4)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            return 0
        require ext_code.size(distributorAddress)
        call distributorAddress.deposit(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg4), arg2
    else:
        require ext_code.size(proxyAddress)
        call proxyAddress.0x70a08231 with:
             gas gas_remaining wei
            args arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(sub_c56d5412Address) != distributorAddress:
            if distributorAddress != distributorAddress:
                mem[ceil32(arg3.length) + 128] = 0x14cba00200000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg3.length) + 132] = arg4
                mem[ceil32(arg3.length) + 164] = distributorAddress
                mem[ceil32(arg3.length) + 196] = ext_call.return_data[0]
                mem[ceil32(arg3.length) + 260] = arg4
                mem[ceil32(arg3.length) + 228] = 160
                mem[ceil32(arg3.length) + 292] = arg3.length
                if 0 >= arg3.length:
                    if not arg3.length % 32:
                        require ext_code.size(proxyAddress)
                        call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                             gas gas_remaining wei
                            args 0, 0, distributorAddress, ext_call.return_data[0], 160, address(arg4), arg3.length, mem[ceil32(arg3.length) + 324 len arg3.length]
                    else:
                        mem[floor32(arg3.length) + ceil32(arg3.length) + 324] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 356 len arg3.length % 32]
                        require ext_code.size(proxyAddress)
                        call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                             gas gas_remaining wei
                            args address(arg4), distributorAddress, ext_call.return_data[0], Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len floor32(arg3.length) + 32]), address(arg4)
                else:
                    mem[ceil32(arg3.length) + 324] = mem[128]
                    mem[ceil32(arg3.length) + 356 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                    require ext_code.size(proxyAddress)
                    call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                         gas gas_remaining wei
                        args address(arg4), distributorAddress, ext_call.return_data[0], Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len arg3.length]), address(arg4)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return bool(ext_call.return_data[0])
        mem[ceil32(arg3.length) + 128] = 0x14cba00200000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg3.length) + 132] = arg4
        mem[ceil32(arg3.length) + 164] = distributorAddress
        mem[ceil32(arg3.length) + 196] = ext_call.return_data[0]
        mem[ceil32(arg3.length) + 260] = arg4
        mem[ceil32(arg3.length) + 228] = 160
        mem[ceil32(arg3.length) + 292] = arg3.length
        if 0 >= arg3.length:
            if not arg3.length % 32:
                require ext_code.size(proxyAddress)
                call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                     gas gas_remaining wei
                    args 0, 0, distributorAddress, ext_call.return_data[0], 160, address(arg4), arg3.length, mem[ceil32(arg3.length) + 324 len arg3.length]
            else:
                mem[floor32(arg3.length) + ceil32(arg3.length) + 324] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 356 len arg3.length % 32]
                require ext_code.size(proxyAddress)
                call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                     gas gas_remaining wei
                    args address(arg4), distributorAddress, ext_call.return_data[0], Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len floor32(arg3.length) + 32]), address(arg4)
        else:
            mem[ceil32(arg3.length) + 324] = mem[128]
            mem[ceil32(arg3.length) + 356 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
            require ext_code.size(proxyAddress)
            call proxyAddress._forwardTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) with:
                 gas gas_remaining wei
                args address(arg4), distributorAddress, ext_call.return_data[0], Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len arg3.length]), address(arg4)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            return 0
        require ext_code.size(distributorAddress)
        call distributorAddress.deposit(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg4), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Deposit failed'
    return 1
}



}
