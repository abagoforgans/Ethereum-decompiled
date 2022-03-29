contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 1910]




// =====================  Runtime code  =====================


address registryICAPAddress;
address eventsHistoryAddress;

function registryICAP() {
    return registryICAPAddress
}

function eventsHistory() {
    return eventsHistoryAddress
}

function _fallback() payable {
    revert 
}

function setupRegistryICAP(address arg1) {
    if registryICAPAddress:
        return 0
    registryICAPAddress = arg1
    return 1
}

function setupEventsHistory(address arg1) {
    if eventsHistoryAddress:
        return 0
    eventsHistoryAddress = arg1
    return 1
}

function sub_e5db36e3(?) payable {
    require ext_code.size(registryICAPAddress)
    call registryICAPAddress.parse(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    if not ext_call.return_data[64]:
        if ext_code.size(eventsHistoryAddress):
            call eventsHistoryAddress.emitError(bytes32 rg1) with:
                 gas gas_remaining - 50 wei
                args 'Invalid ICAP'
            if ext_call.success:
                if not msg.value:
                    return 0
                call msg.sender with:
                   value msg.value wei
                     gas gas_remaining - 34050 wei
                if ext_call.success:
                    return 0
    else:
        if ext_call.return_data[12 len 20] == msg.sender:
            if ext_code.size(eventsHistoryAddress):
                call eventsHistoryAddress.emitError(bytes32 rg1) with:
                     gas gas_remaining - 50 wei
                    args 'Cannot send to oneself'
                if ext_call.success:
                    if not msg.value:
                        return 0
                    call msg.sender with:
                       value msg.value wei
                         gas gas_remaining - 34050 wei
                    if ext_call.success:
                        return 0
        else:
            call ext_call.return_data[12 len 20] with:
               value msg.value wei
                 gas gas_remaining - 34050 wei
            if ext_call.success:
                require ext_code.size(eventsHistoryAddress)
                call eventsHistoryAddress.emitTransferToICAP(address rg1, address rg2, bytes32 rg3, uint256 rg4, string rg5) with:
                     gas gas_remaining - 50 wei
                    args 0, uint32(msg.sender), address(ext_call.return_data[0]), arg1, msg.value, 160, 0
                require ext_call.success
                return 1
            if ext_code.size(eventsHistoryAddress):
                call eventsHistoryAddress.emitError(bytes32 rg1) with:
                     gas gas_remaining - 50 wei
                    args 'Exception on receiver contract'
                if ext_call.success:
                    if not msg.value:
                        return 0
                    call msg.sender with:
                       value msg.value wei
                         gas gas_remaining - 34050 wei
                    if ext_call.success:
                        return 0
    revert 
}

function transferToICAP(bytes32 arg1, uint256 arg2) payable {
    if arg2 != msg.value:
        if ext_code.size(eventsHistoryAddress):
            call eventsHistoryAddress.emitError(bytes32 rg1) with:
                 gas gas_remaining - 50 wei
                args 'Values does not match'
            if ext_call.success:
                if not msg.value:
                    return 0
                call msg.sender with:
                   value msg.value wei
                     gas gas_remaining - 34050 wei
                if ext_call.success:
                    return 0
    else:
        if ext_code.size(registryICAPAddress):
            call registryICAPAddress.parse(bytes32 rg1) with:
                 gas gas_remaining - 50 wei
                args arg1
            if ext_call.success:
                if not ext_call.return_data[64]:
                    if ext_code.size(eventsHistoryAddress):
                        call eventsHistoryAddress.emitError(bytes32 rg1) with:
                             gas gas_remaining - 50 wei
                            args 'Invalid ICAP'
                        if ext_call.success:
                            if not msg.value:
                                return 0
                            call msg.sender with:
                               value msg.value wei
                                 gas gas_remaining - 34050 wei
                            if ext_call.success:
                                return 0
                else:
                    if ext_call.return_data[12 len 20] == msg.sender:
                        if ext_code.size(eventsHistoryAddress):
                            call eventsHistoryAddress.emitError(bytes32 rg1) with:
                                 gas gas_remaining - 50 wei
                                args 'Cannot send to oneself'
                            if ext_call.success:
                                if not msg.value:
                                    return 0
                                call msg.sender with:
                                   value msg.value wei
                                     gas gas_remaining - 34050 wei
                                if ext_call.success:
                                    return 0
                    else:
                        call ext_call.return_data[12 len 20] with:
                           value msg.value wei
                             gas gas_remaining - 34050 wei
                        if ext_call.success:
                            require ext_code.size(eventsHistoryAddress)
                            call eventsHistoryAddress.emitTransferToICAP(address rg1, address rg2, bytes32 rg3, uint256 rg4, string rg5) with:
                                 gas gas_remaining - 50 wei
                                args 0, uint32(msg.sender), address(ext_call.return_data[0]), arg1, msg.value, 160, 0
                            require ext_call.success
                            return 1
                        if ext_code.size(eventsHistoryAddress):
                            call eventsHistoryAddress.emitError(bytes32 rg1) with:
                                 gas gas_remaining - 50 wei
                                args 'Exception on receiver contract'
                            if ext_call.success:
                                if not msg.value:
                                    return 0
                                call msg.sender with:
                                   value msg.value wei
                                     gas gas_remaining - 34050 wei
                                if ext_call.success:
                                    return 0
    revert 
}

function sub_0d882aa0(?) payable {
    mem[128 len arg2.length] = arg2[all]
    require ext_code.size(registryICAPAddress)
    call registryICAPAddress.parse(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    if not ext_call.return_data[64]:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.emitError(bytes32 rg1) with:
             gas gas_remaining - 50 wei
            args 'Invalid ICAP'
        require ext_call.success
        if not msg.value:
            return 0
        call msg.sender with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        require ext_call.success
        return 0
    if ext_call.return_data[12 len 20] == msg.sender:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.emitError(bytes32 rg1) with:
             gas gas_remaining - 50 wei
            args 'Cannot send to oneself'
        require ext_call.success
        if not msg.value:
            return 0
        call msg.sender with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        require ext_call.success
        return 0
    call ext_call.return_data[12 len 20] with:
       value msg.value wei
         gas gas_remaining - 34050 wei
    if not ext_call.success:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.emitError(bytes32 rg1) with:
             gas gas_remaining - 50 wei
            args 'Exception on receiver contract'
        require ext_call.success
        if not msg.value:
            return 0
        call msg.sender with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        require ext_call.success
        return 0
    mem[ceil32(arg2.length) + 128] = 0xeacbc23600000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + 132] = msg.sender
    mem[ceil32(arg2.length) + 164] = address(ext_call.return_data[0])
    mem[ceil32(arg2.length) + 196] = arg1
    mem[ceil32(arg2.length) + 228] = msg.value
    mem[ceil32(arg2.length) + 260] = 160
    mem[ceil32(arg2.length) + 292] = arg2.length
    if not arg2.length:
        if not arg2.length % 32:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.emitTransferToICAP(address rg1, address rg2, bytes32 rg3, uint256 rg4, string rg5) with:
                 gas gas_remaining - 50 wei
                args 0, uint32(msg.sender), address(ext_call.return_data[0]), arg1, msg.value, 160, arg2.length, mem[ceil32(arg2.length) + 324 len arg2.length]
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 324] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 356 len arg2.length % 32]
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.emitTransferToICAP(address rg1, address rg2, bytes32 rg3, uint256 rg4, string rg5) with:
                 gas gas_remaining - 50 wei
                args msg.sender, address(ext_call.return_data[0]), arg1, msg.value, Array(len=arg2.length, data=mem[ceil32(arg2.length) + 324 len floor32(arg2.length) + 32])
    else:
        mem[ceil32(arg2.length) + 324] = mem[128]
        mem[ceil32(arg2.length) + 356 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.emitTransferToICAP(address rg1, address rg2, bytes32 rg3, uint256 rg4, string rg5) with:
             gas gas_remaining - 50 wei
            args msg.sender, address(ext_call.return_data[0]), arg1, msg.value, Array(len=arg2.length, data=mem[ceil32(arg2.length) + 324 len arg2.length])
    require ext_call.success
    return 1
}

function sub_86907396(?) payable {
    mem[128 len arg2.length] = arg2[all]
    require ext_code.size(registryICAPAddress)
    call registryICAPAddress.parse(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    if not ext_call.return_data[64]:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.emitError(bytes32 rg1) with:
             gas gas_remaining - 50 wei
            args 'Invalid ICAP'
        require ext_call.success
        if not msg.value:
            return 0
        call msg.sender with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        require ext_call.success
        return 0
    if ext_call.return_data[12 len 20] == msg.sender:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.emitError(bytes32 rg1) with:
             gas gas_remaining - 50 wei
            args 'Cannot send to oneself'
        require ext_call.success
        if not msg.value:
            return 0
        call msg.sender with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        require ext_call.success
        return 0
    call ext_call.return_data[12 len 20] with:
       value msg.value wei
         gas gas_remaining - 34050 wei
    if not ext_call.success:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.emitError(bytes32 rg1) with:
             gas gas_remaining - 50 wei
            args 'Exception on receiver contract'
        require ext_call.success
        if not msg.value:
            return 0
        call msg.sender with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        require ext_call.success
        return 0
    mem[ceil32(arg2.length) + 128] = 0xeacbc23600000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + 132] = msg.sender
    mem[ceil32(arg2.length) + 164] = address(ext_call.return_data[0])
    mem[ceil32(arg2.length) + 196] = arg1
    mem[ceil32(arg2.length) + 228] = msg.value
    mem[ceil32(arg2.length) + 260] = 160
    mem[ceil32(arg2.length) + 292] = arg2.length
    if not arg2.length:
        if not arg2.length % 32:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.emitTransferToICAP(address rg1, address rg2, bytes32 rg3, uint256 rg4, string rg5) with:
                 gas gas_remaining - 50 wei
                args 0, uint32(msg.sender), address(ext_call.return_data[0]), arg1, msg.value, 160, arg2.length, mem[ceil32(arg2.length) + 324 len arg2.length]
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 324] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 356 len arg2.length % 32]
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.emitTransferToICAP(address rg1, address rg2, bytes32 rg3, uint256 rg4, string rg5) with:
                 gas gas_remaining - 50 wei
                args msg.sender, address(ext_call.return_data[0]), arg1, msg.value, Array(len=arg2.length, data=mem[ceil32(arg2.length) + 324 len floor32(arg2.length) + 32])
    else:
        mem[ceil32(arg2.length) + 324] = mem[128]
        mem[ceil32(arg2.length) + 356 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.emitTransferToICAP(address rg1, address rg2, bytes32 rg3, uint256 rg4, string rg5) with:
             gas gas_remaining - 50 wei
            args msg.sender, address(ext_call.return_data[0]), arg1, msg.value, Array(len=arg2.length, data=mem[ceil32(arg2.length) + 324 len arg2.length])
    require ext_call.success
    return 1
}

function transferToICAPWithReference(bytes32 arg1, uint256 arg2, string arg3) payable {
    mem[128 len arg3.length] = arg3[all]
    if arg2 != msg.value:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.emitError(bytes32 rg1) with:
             gas gas_remaining - 50 wei
            args 'Values does not match'
        require ext_call.success
        if not msg.value:
            return 0
        call msg.sender with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        require ext_call.success
        return 0
    require ext_code.size(registryICAPAddress)
    call registryICAPAddress.parse(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    if not ext_call.return_data[64]:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.emitError(bytes32 rg1) with:
             gas gas_remaining - 50 wei
            args 'Invalid ICAP'
        require ext_call.success
        if not msg.value:
            return 0
        call msg.sender with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        require ext_call.success
        return 0
    if ext_call.return_data[12 len 20] == msg.sender:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.emitError(bytes32 rg1) with:
             gas gas_remaining - 50 wei
            args 'Cannot send to oneself'
        require ext_call.success
        if not msg.value:
            return 0
        call msg.sender with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        require ext_call.success
        return 0
    call ext_call.return_data[12 len 20] with:
       value msg.value wei
         gas gas_remaining - 34050 wei
    if not ext_call.success:
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.emitError(bytes32 rg1) with:
             gas gas_remaining - 50 wei
            args 'Exception on receiver contract'
        require ext_call.success
        if not msg.value:
            return 0
        call msg.sender with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        require ext_call.success
        return 0
    mem[ceil32(arg3.length) + 128] = 0xeacbc23600000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 132] = msg.sender
    mem[ceil32(arg3.length) + 164] = address(ext_call.return_data[0])
    mem[ceil32(arg3.length) + 196] = arg1
    mem[ceil32(arg3.length) + 228] = msg.value
    mem[ceil32(arg3.length) + 260] = 160
    mem[ceil32(arg3.length) + 292] = arg3.length
    if not arg3.length:
        if not arg3.length % 32:
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.emitTransferToICAP(address rg1, address rg2, bytes32 rg3, uint256 rg4, string rg5) with:
                 gas gas_remaining - 50 wei
                args 0, uint32(msg.sender), address(ext_call.return_data[0]), arg1, msg.value, 160, arg3.length, mem[ceil32(arg3.length) + 324 len arg3.length]
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 324] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 356 len arg3.length % 32]
            require ext_code.size(eventsHistoryAddress)
            call eventsHistoryAddress.emitTransferToICAP(address rg1, address rg2, bytes32 rg3, uint256 rg4, string rg5) with:
                 gas gas_remaining - 50 wei
                args msg.sender, address(ext_call.return_data[0]), arg1, msg.value, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len floor32(arg3.length) + 32])
    else:
        mem[ceil32(arg3.length) + 324] = mem[128]
        mem[ceil32(arg3.length) + 356 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
        require ext_code.size(eventsHistoryAddress)
        call eventsHistoryAddress.emitTransferToICAP(address rg1, address rg2, bytes32 rg3, uint256 rg4, string rg5) with:
             gas gas_remaining - 50 wei
            args msg.sender, address(ext_call.return_data[0]), arg1, msg.value, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 324 len arg3.length])
    require ext_call.success
    return 1
}



}
