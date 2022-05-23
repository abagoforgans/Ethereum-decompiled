contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 8589]




// =====================  Runtime code  =====================


address proxyAddress;
address stor1;
address stor2;
mapping of uint8 stor3;
uint256 restrictionExpiraton;
uint8 stor5;

function restrictionExpiraton() {
    return restrictionExpiraton
}

function whitelist(address arg1) {
    return bool(stor3[arg1])
}

function proxy() {
    return proxyAddress
}

function restrictionRemoved() {
    return bool(stor5)
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

function transferIsAllowed(address arg1) {
    if stor5:
        return bool(stor5)
    if stor3[address(arg1)]:
        return bool(stor3[address(arg1)])
    return block.timestamp >= restrictionExpiraton
}

function _performApprove(address arg1, uint256 arg2, address arg3) {
    if proxyAddress != msg.sender:
        return 0
    require ext_code.size(proxyAddress)
    call proxyAddress.0x7bcdc2f0 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2, arg3
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function _performGeneric(bytes arg1, address arg2) payable {
    if proxyAddress != msg.sender:
    require not stor1
    stor1 = arg2
    call this.address with:
       value msg.value wei
         gas 63 * gas_remaining / 64 wei
        args arg1[all]
    stor1 = 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function removeRestriction() {
    if not stor2:
        return 0
    require ext_code.size(stor2)
    if this.address == msg.sender:
        call stor2.hasRole(address arg1, bytes32 arg2, address arg3) with:
             gas gas_remaining - 710 wei
            args address(this.address), 'admin', stor1
    else:
        call stor2.hasRole(address arg1, bytes32 arg2, address arg3) with:
             gas gas_remaining - 710 wei
            args address(this.address), 'admin', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    stor5 = 1
    return 1
}

function setupAmbi2(address arg1) {
    if stor2:
        return 0
    require ext_code.size(arg1)
    call arg1.claimFor(address arg1, address arg2) with:
         gas gas_remaining - 710 wei
        args address(this.address), msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.isOwner(address arg1, address arg2) with:
             gas gas_remaining - 710 wei
            args address(this.address), msg.sender
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
    stor2 = arg1
    return 1
}

function _performTransferToICAPWithReference(bytes32 arg1, uint256 arg2, string arg3, address arg4) {
    if proxyAddress != msg.sender:
        return 0
    if not stor5:
        if not stor3[address(arg4)]:
            if block.timestamp < restrictionExpiraton:
                emit Error('Transfer not allowed');
                return 0
    require ext_code.size(proxyAddress)
    call proxyAddress.0x9b487f3f with:
         gas gas_remaining - 710 wei
        args address(arg4), arg1, arg2, Array(len=arg3.length, data=arg3[all]), address(arg4)
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function blockTransferFrom(address arg1) {
    if not stor2:
        return 0
    require ext_code.size(stor2)
    if this.address == msg.sender:
        call stor2.hasRole(address arg1, bytes32 arg2, address arg3) with:
             gas gas_remaining - 710 wei
            args address(this.address), 'admin', stor1
    else:
        call stor2.hasRole(address arg1, bytes32 arg2, address arg3) with:
             gas gas_remaining - 710 wei
            args address(this.address), 'admin', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    stor3[address(arg1)] = 0
    return 1
}

function allowTransferFrom(address arg1) {
    if not stor2:
        return 0
    require ext_code.size(stor2)
    if this.address == msg.sender:
        call stor2.hasRole(address arg1, bytes32 arg2, address arg3) with:
             gas gas_remaining - 710 wei
            args address(this.address), 'admin', stor1
    else:
        call stor2.hasRole(address arg1, bytes32 arg2, address arg3) with:
             gas gas_remaining - 710 wei
            args address(this.address), 'admin', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    stor3[address(arg1)] = 1
    return 1
}

function _performTransferFromToICAPWithReference(address arg1, bytes32 arg2, uint256 arg3, string arg4, address arg5) {
    if proxyAddress != msg.sender:
        return 0
    if not stor5:
        if not stor3[address(arg1)]:
            if block.timestamp < restrictionExpiraton:
                emit Error('Transfer not allowed');
                return 0
    require ext_code.size(proxyAddress)
    call proxyAddress.0x9b487f3f with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2, arg3, Array(len=arg4.length, data=arg4[all]), address(arg5)
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferFromToICAP(address arg1, string arg2, uint256 arg3) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = 0
    if not stor5:
        if not stor3[address(arg1)]:
            if block.timestamp < restrictionExpiraton:
                emit Error('Transfer not allowed');
                return 0
    require ext_code.size(proxyAddress)
    if this.address == msg.sender:
        call proxyAddress.0x9b487f3f with:
             gas gas_remaining - 710 wei
            args address(arg1), mem[128], arg3, 160, stor1, 0
    else:
        call proxyAddress.0x9b487f3f with:
             gas gas_remaining - 710 wei
            args address(arg1), mem[128], arg3, 160, msg.sender, 0
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferFromToICAPWithReference(address arg1, string arg2, uint256 arg3, string arg4) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg4.length
    if not stor5:
        if not stor3[address(arg1)]:
            if block.timestamp < restrictionExpiraton:
                emit Error('Transfer not allowed');
                return 0
    require ext_code.size(proxyAddress)
    if this.address == msg.sender:
        call proxyAddress.0x9b487f3f with:
             gas gas_remaining - 710 wei
            args address(arg1), mem[128], arg3, Array(len=arg4.length, data=arg4[all]), stor1
    else:
        call proxyAddress.0x9b487f3f with:
             gas gas_remaining - 710 wei
            args address(arg1), mem[128], arg3, Array(len=arg4.length, data=arg4[all]), msg.sender
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function setExpiration(uint256 arg1) {
    if stor2:
        require ext_code.size(stor2)
        if this.address == msg.sender:
            call stor2.hasRole(address arg1, bytes32 arg2, address arg3) with:
                 gas gas_remaining - 710 wei
                args address(this.address), 'admin', stor1
        else:
            call stor2.hasRole(address arg1, bytes32 arg2, address arg3) with:
                 gas gas_remaining - 710 wei
                args address(this.address), 'admin', msg.sender
        require ext_call.success
        if ext_call.return_data[0]:
            if restrictionExpiraton:
                emit Error('Expiration time already set');
            else:
                if arg1 >= block.timestamp:
                    restrictionExpiraton = arg1
                    return 1
                emit Error('Expiration time invalid');
            return 0
        else:
            return 0
    else:
        return 0
}

function transferToICAP(string arg1, uint256 arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    if this.address == msg.sender:
        if not stor5:
            if not stor3[stor1]:
                if block.timestamp < restrictionExpiraton:
                    emit Error('Transfer not allowed');
                    return 0
        require ext_code.size(proxyAddress)
        call proxyAddress.0x9b487f3f with:
             gas gas_remaining - 710 wei
            args stor1, mem[128], arg2, 160, stor1, 0
    else:
        if not stor5:
            if not stor3[address(msg.sender)]:
                if block.timestamp < restrictionExpiraton:
                    emit Error('Transfer not allowed');
                    return 0
        require ext_code.size(proxyAddress)
        call proxyAddress.0x9b487f3f with:
             gas gas_remaining - 710 wei
            args msg.sender, mem[128], arg2, 160, msg.sender, 0
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferToICAPWithReference(string arg1, uint256 arg2, string arg3) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg3.length
    if this.address == msg.sender:
        if not stor5:
            if not stor3[stor1]:
                if block.timestamp < restrictionExpiraton:
                    emit Error('Transfer not allowed');
                    return 0
        require ext_code.size(proxyAddress)
        call proxyAddress.0x9b487f3f with:
             gas gas_remaining - 710 wei
            args stor1, mem[128], arg2, Array(len=arg3.length, data=arg3[all]), stor1
    else:
        if not stor5:
            if not stor3[address(msg.sender)]:
                if block.timestamp < restrictionExpiraton:
                    emit Error('Transfer not allowed');
                    return 0
        require ext_code.size(proxyAddress)
        call proxyAddress.0x9b487f3f with:
             gas gas_remaining - 710 wei
            args msg.sender, mem[128], arg2, Array(len=arg3.length, data=arg3[all]), msg.sender
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function isICAP(address arg1) {
    if 'X':
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

function _performTransferWithReference(address arg1, uint256 arg2, string arg3, address arg4) {
    mem[64] = ceil32(arg3.length) + 128
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    if proxyAddress != msg.sender:
        return 0
    if 'X':
        if not stor5:
            if not stor3[address(arg4)]:
                if block.timestamp < restrictionExpiraton:
                    emit Error('Transfer not allowed');
                    return 0
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
                call proxyAddress.0x14cba002 with:
                     gas gas_remaining - 710 wei
                    args 0, 0, 0, arg2, 160, address(arg4), arg3.length, mem[ceil32(arg3.length) + 324 len arg3.length]
            else:
                mem[floor32(arg3.length) + ceil32(arg3.length) + 324] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 356 len arg3.length % 32]
                require ext_code.size(proxyAddress)
                call proxyAddress.0x14cba002 with:
                     gas gas_remaining - 710 wei
                    args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len floor32(arg3.length) + 32]), address(arg4)
        else:
            mem[ceil32(arg3.length) + 324] = mem[128]
            mem[ceil32(arg3.length) + 356 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
            require ext_code.size(proxyAddress)
            call proxyAddress.0x14cba002 with:
                 gas gas_remaining - 710 wei
                args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len arg3.length]), address(arg4)
    else:
        if Mask(8, -(('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) - 8 != 'E':
            if not stor5:
                if not stor3[address(arg4)]:
                    if block.timestamp < restrictionExpiraton:
                        emit Error('Transfer not allowed');
                        return 0
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
                    call proxyAddress.0x14cba002 with:
                         gas gas_remaining - 710 wei
                        args 0, 0, 0, arg2, 160, address(arg4), arg3.length, mem[ceil32(arg3.length) + 324 len arg3.length]
                else:
                    mem[floor32(arg3.length) + ceil32(arg3.length) + 324] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 356 len arg3.length % 32]
                    require ext_code.size(proxyAddress)
                    call proxyAddress.0x14cba002 with:
                         gas gas_remaining - 710 wei
                        args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len floor32(arg3.length) + 32]), address(arg4)
            else:
                mem[ceil32(arg3.length) + 324] = mem[128]
                mem[ceil32(arg3.length) + 356 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                require ext_code.size(proxyAddress)
                call proxyAddress.0x14cba002 with:
                     gas gas_remaining - 710 wei
                    args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len arg3.length]), address(arg4)
        else:
            if Mask(8, -(('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) + 256, 2) << (('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) - 8 < '0':
                if not stor5:
                    if not stor3[address(arg4)]:
                        if block.timestamp < restrictionExpiraton:
                            emit Error('Transfer not allowed');
                            return 0
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
                        call proxyAddress.0x14cba002 with:
                             gas gas_remaining - 710 wei
                            args 0, 0, 0, arg2, 160, address(arg4), arg3.length, mem[ceil32(arg3.length) + 324 len arg3.length]
                    else:
                        mem[floor32(arg3.length) + ceil32(arg3.length) + 324] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 356 len arg3.length % 32]
                        require ext_code.size(proxyAddress)
                        call proxyAddress.0x14cba002 with:
                             gas gas_remaining - 710 wei
                            args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len floor32(arg3.length) + 32]), address(arg4)
                else:
                    mem[ceil32(arg3.length) + 324] = mem[128]
                    mem[ceil32(arg3.length) + 356 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                    require ext_code.size(proxyAddress)
                    call proxyAddress.0x14cba002 with:
                         gas gas_remaining - 710 wei
                        args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len arg3.length]), address(arg4)
            else:
                if Mask(8, -(('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) + 256, 2) << (('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) - 8 > '9':
                    if not stor5:
                        if not stor3[address(arg4)]:
                            if block.timestamp < restrictionExpiraton:
                                emit Error('Transfer not allowed');
                                return 0
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
                            call proxyAddress.0x14cba002 with:
                                 gas gas_remaining - 710 wei
                                args 0, 0, 0, arg2, 160, address(arg4), arg3.length, mem[ceil32(arg3.length) + 324 len arg3.length]
                        else:
                            mem[floor32(arg3.length) + ceil32(arg3.length) + 324] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 356 len arg3.length % 32]
                            require ext_code.size(proxyAddress)
                            call proxyAddress.0x14cba002 with:
                                 gas gas_remaining - 710 wei
                                args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len floor32(arg3.length) + 32]), address(arg4)
                    else:
                        mem[ceil32(arg3.length) + 324] = mem[128]
                        mem[ceil32(arg3.length) + 356 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                        require ext_code.size(proxyAddress)
                        call proxyAddress.0x14cba002 with:
                             gas gas_remaining - 710 wei
                            args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len arg3.length]), address(arg4)
                else:
                    if Mask(8, -(('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) + 256, 3) << (('mask_shl', 160, 0, 93, ('param', 'arg1')), 0) - 8 < '0':
                        if not stor5:
                            if not stor3[address(arg4)]:
                                if block.timestamp < restrictionExpiraton:
                                    emit Error('Transfer not allowed');
                                    return 0
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
                                call proxyAddress.0x14cba002 with:
                                     gas gas_remaining - 710 wei
                                    args 0, 0, 0, arg2, 160, address(arg4), arg3.length, mem[ceil32(arg3.length) + 324 len arg3.length]
                            else:
                                mem[floor32(arg3.length) + ceil32(arg3.length) + 324] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 356 len arg3.length % 32]
                                require ext_code.size(proxyAddress)
                                call proxyAddress.0x14cba002 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len floor32(arg3.length) + 32]), address(arg4)
                        else:
                            mem[ceil32(arg3.length) + 324] = mem[128]
                            mem[ceil32(arg3.length) + 356 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                            require ext_code.size(proxyAddress)
                            call proxyAddress.0x14cba002 with:
                                 gas gas_remaining - 710 wei
                                args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len arg3.length]), address(arg4)
                    else:
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
                                if not stor5:
                                    if not stor3[address(arg4)]:
                                        if block.timestamp < restrictionExpiraton:
                                            emit Error('Transfer not allowed');
                                            return 0
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
                                        call proxyAddress.0x14cba002 with:
                                             gas gas_remaining - 710 wei
                                            args 0, 0, 0, arg2, 160, address(arg4), arg3.length, mem[ceil32(arg3.length) + 324 len arg3.length]
                                    else:
                                        mem[floor32(arg3.length) + ceil32(arg3.length) + 324] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 356 len arg3.length % 32]
                                        require ext_code.size(proxyAddress)
                                        call proxyAddress.0x14cba002 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len floor32(arg3.length) + 32]), address(arg4)
                                else:
                                    mem[ceil32(arg3.length) + 324] = mem[128]
                                    idx = 32
                                    while idx < arg3.length:
                                        mem[ceil32(arg3.length) + idx + 324] = mem[idx + 128]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(proxyAddress)
                                    call proxyAddress.0x14cba002 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len arg3.length]), address(arg4)
                                require ext_call.success
                                return bool(ext_call.return_data[0])
                            if not stor5:
                                if not stor3[address(arg4)]:
                                    if block.timestamp < restrictionExpiraton:
                                        emit Error('Transfer not allowed');
                                        return 0
                            require ext_code.size(proxyAddress)
                            call proxyAddress.0x9b487f3f with:
                                 gas gas_remaining - 710 wei
                                args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), address(arg4)
                        else:
                            if not stor5:
                                if not stor3[address(arg4)]:
                                    if block.timestamp < restrictionExpiraton:
                                        emit Error('Transfer not allowed');
                                        return 0
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
                                    call proxyAddress.0x14cba002 with:
                                         gas gas_remaining - 710 wei
                                        args 0, 0, 0, arg2, 160, address(arg4), arg3.length, mem[ceil32(arg3.length) + 324 len arg3.length]
                                else:
                                    mem[floor32(arg3.length) + ceil32(arg3.length) + 324] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 356 len arg3.length % 32]
                                    require ext_code.size(proxyAddress)
                                    call proxyAddress.0x14cba002 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len floor32(arg3.length) + 32]), address(arg4)
                            else:
                                mem[ceil32(arg3.length) + 324] = mem[128]
                                mem[ceil32(arg3.length) + 356 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
                                require ext_code.size(proxyAddress)
                                call proxyAddress.0x14cba002 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg4), address(arg1), arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len arg3.length]), address(arg4)
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function _performTransferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4, address arg5) {
    mem[64] = ceil32(arg4.length) + 128
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    if proxyAddress != msg.sender:
        return 0
    if 'X':
        if not stor5:
            if not stor3[address(arg1)]:
                if block.timestamp < restrictionExpiraton:
                    emit Error('Transfer not allowed');
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
                call proxyAddress.0x14cba002 with:
                     gas gas_remaining - 710 wei
                    args 0, 0, 0, arg3, 160, address(arg5), arg4.length, mem[ceil32(arg4.length) + 324 len arg4.length]
            else:
                mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                require ext_code.size(proxyAddress)
                call proxyAddress.0x14cba002 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len floor32(arg4.length) + 32]), address(arg5)
        else:
            mem[ceil32(arg4.length) + 324] = mem[128]
            mem[ceil32(arg4.length) + 356 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
            require ext_code.size(proxyAddress)
            call proxyAddress.0x14cba002 with:
                 gas gas_remaining - 710 wei
                args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len arg4.length]), address(arg5)
    else:
        if Mask(8, -(('mask_shl', 160, 0, 93, ('param', 'arg2')), 0) + 256, 1) << (('mask_shl', 160, 0, 93, ('param', 'arg2')), 0) - 8 != 'E':
            if not stor5:
                if not stor3[address(arg1)]:
                    if block.timestamp < restrictionExpiraton:
                        emit Error('Transfer not allowed');
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
                    call proxyAddress.0x14cba002 with:
                         gas gas_remaining - 710 wei
                        args 0, 0, 0, arg3, 160, address(arg5), arg4.length, mem[ceil32(arg4.length) + 324 len arg4.length]
                else:
                    mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                    require ext_code.size(proxyAddress)
                    call proxyAddress.0x14cba002 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len floor32(arg4.length) + 32]), address(arg5)
            else:
                mem[ceil32(arg4.length) + 324] = mem[128]
                mem[ceil32(arg4.length) + 356 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                require ext_code.size(proxyAddress)
                call proxyAddress.0x14cba002 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len arg4.length]), address(arg5)
        else:
            if Mask(8, -(('mask_shl', 160, 0, 93, ('param', 'arg2')), 0) + 256, 2) << (('mask_shl', 160, 0, 93, ('param', 'arg2')), 0) - 8 < '0':
                if not stor5:
                    if not stor3[address(arg1)]:
                        if block.timestamp < restrictionExpiraton:
                            emit Error('Transfer not allowed');
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
                        call proxyAddress.0x14cba002 with:
                             gas gas_remaining - 710 wei
                            args 0, 0, 0, arg3, 160, address(arg5), arg4.length, mem[ceil32(arg4.length) + 324 len arg4.length]
                    else:
                        mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                        require ext_code.size(proxyAddress)
                        call proxyAddress.0x14cba002 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len floor32(arg4.length) + 32]), address(arg5)
                else:
                    mem[ceil32(arg4.length) + 324] = mem[128]
                    mem[ceil32(arg4.length) + 356 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                    require ext_code.size(proxyAddress)
                    call proxyAddress.0x14cba002 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len arg4.length]), address(arg5)
            else:
                if Mask(8, -(('mask_shl', 160, 0, 93, ('param', 'arg2')), 0) + 256, 2) << (('mask_shl', 160, 0, 93, ('param', 'arg2')), 0) - 8 > '9':
                    if not stor5:
                        if not stor3[address(arg1)]:
                            if block.timestamp < restrictionExpiraton:
                                emit Error('Transfer not allowed');
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
                            call proxyAddress.0x14cba002 with:
                                 gas gas_remaining - 710 wei
                                args 0, 0, 0, arg3, 160, address(arg5), arg4.length, mem[ceil32(arg4.length) + 324 len arg4.length]
                        else:
                            mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                            require ext_code.size(proxyAddress)
                            call proxyAddress.0x14cba002 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len floor32(arg4.length) + 32]), address(arg5)
                    else:
                        mem[ceil32(arg4.length) + 324] = mem[128]
                        mem[ceil32(arg4.length) + 356 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                        require ext_code.size(proxyAddress)
                        call proxyAddress.0x14cba002 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len arg4.length]), address(arg5)
                else:
                    if Mask(8, -(('mask_shl', 160, 0, 93, ('param', 'arg2')), 0) + 256, 3) << (('mask_shl', 160, 0, 93, ('param', 'arg2')), 0) - 8 < '0':
                        if not stor5:
                            if not stor3[address(arg1)]:
                                if block.timestamp < restrictionExpiraton:
                                    emit Error('Transfer not allowed');
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
                                call proxyAddress.0x14cba002 with:
                                     gas gas_remaining - 710 wei
                                    args 0, 0, 0, arg3, 160, address(arg5), arg4.length, mem[ceil32(arg4.length) + 324 len arg4.length]
                            else:
                                mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                                require ext_code.size(proxyAddress)
                                call proxyAddress.0x14cba002 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len floor32(arg4.length) + 32]), address(arg5)
                        else:
                            mem[ceil32(arg4.length) + 324] = mem[128]
                            mem[ceil32(arg4.length) + 356 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                            require ext_code.size(proxyAddress)
                            call proxyAddress.0x14cba002 with:
                                 gas gas_remaining - 710 wei
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
                                if not stor5:
                                    if not stor3[address(arg1)]:
                                        if block.timestamp < restrictionExpiraton:
                                            emit Error('Transfer not allowed');
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
                                        call proxyAddress.0x14cba002 with:
                                             gas gas_remaining - 710 wei
                                            args 0, 0, 0, arg3, 160, address(arg5), arg4.length, mem[ceil32(arg4.length) + 324 len arg4.length]
                                    else:
                                        mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                                        require ext_code.size(proxyAddress)
                                        call proxyAddress.0x14cba002 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len floor32(arg4.length) + 32]), address(arg5)
                                else:
                                    mem[ceil32(arg4.length) + 324] = mem[128]
                                    idx = 32
                                    while idx < arg4.length:
                                        mem[ceil32(arg4.length) + idx + 324] = mem[idx + 128]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(proxyAddress)
                                    call proxyAddress.0x14cba002 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len arg4.length]), address(arg5)
                                require ext_call.success
                                return bool(ext_call.return_data[0])
                            if not stor5:
                                if not stor3[address(arg1)]:
                                    if block.timestamp < restrictionExpiraton:
                                        emit Error('Transfer not allowed');
                                        return 0
                            require ext_code.size(proxyAddress)
                            call proxyAddress.0x9b487f3f with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=arg4[all]), address(arg5)
                        else:
                            if not stor5:
                                if not stor3[address(arg1)]:
                                    if block.timestamp < restrictionExpiraton:
                                        emit Error('Transfer not allowed');
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
                                    call proxyAddress.0x14cba002 with:
                                         gas gas_remaining - 710 wei
                                        args 0, 0, 0, arg3, 160, address(arg5), arg4.length, mem[ceil32(arg4.length) + 324 len arg4.length]
                                else:
                                    mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
                                    require ext_code.size(proxyAddress)
                                    call proxyAddress.0x14cba002 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len floor32(arg4.length) + 32]), address(arg5)
                            else:
                                mem[ceil32(arg4.length) + 324] = mem[128]
                                mem[ceil32(arg4.length) + 356 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
                                require ext_code.size(proxyAddress)
                                call proxyAddress.0x14cba002 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 324 len arg4.length]), address(arg5)
    require ext_call.success
    return bool(ext_call.return_data[0])
}



}
