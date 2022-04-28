contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[59 len 5293]
}



// =====================  Runtime code  =====================


address brokerAddress;
mapping of uint256 writes;
mapping of uint256 withdrawal;
mapping of uint256 writesExercised;
mapping of uint256 filled;
mapping of uint8 stor5;
mapping of uint256 options;
mapping of uint256 optionsExercised;

function filled(bytes32 arg1) {
    return filled[arg1]
}

function writes(bytes32 arg1, address arg2) {
    return writes[arg1][arg2]
}

function optionsExercised(bytes32 arg1, address arg2, address arg3) {
    return optionsExercised[arg1][arg2][arg3]
}

function broker() {
    return brokerAddress
}

function withdrawal(bytes32 arg1, address arg2) {
    return withdrawal[arg1][arg2]
}

function cancelled(address arg1, bytes32 arg2) {
    return bool(stor5[arg1][arg2])
}

function writesExercised(bytes32 arg1, address arg2) {
    return writesExercised[arg1][arg2]
}

function options(bytes32 arg1, address arg2, address arg3) {
    return options[arg1][arg2][arg3]
}

function _fallback() payable {
    revert
}

function cancel(bytes32 arg1) {
    stor5[address(msg.sender)][arg1] = 1
}

function withdraw(address arg1, uint256[3] arg2) {
    if block.timestamp <= call.data[36]:
        emit 0xdc7ce3bb 
        emit 0x4 
        return 0
    if withdrawal[call.data[36 len 96]][address(arg1)]:
        emit 0xdc7ce3bb 
        emit 0x1 
        return 0
    require writesExercised[call.data[36 len 96]][address(arg1)] <= writes[call.data[36 len 96]][address(arg1)]
    require ext_code.size(address(call.data[112 len 20]))
    call address(call.data[112 len 20]).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), writes[call.data[36 len 96]][address(arg1)] - writesExercised[call.data[36 len 96]][address(arg1)]
    require ext_call.success
    require ext_call.return_data[0]
    withdrawal[call.data[36 len 96]][address(arg1)] = block.timestamp
    emit 0xce490531: arg1, sha3(call.data[36 len 96])
    return 1
}

function exercise(uint256 arg1, uint256[3] arg2, address arg3) payable {
    if not arg1:
        if msg.value != 0:
            emit 0xdc7ce3bb 
            emit 0x6 
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            return 0
        require arg1 + optionsExercised[call.data[36 len 96]][address(cd[132])][address(msg.sender)] >= optionsExercised[call.data[36 len 96]][address(cd[132])][address(msg.sender)]
        if arg1 + optionsExercised[call.data[36 len 96]][address(cd[132])][address(msg.sender)] > options[call.data[36 len 96]][address(cd[132])][address(msg.sender)]:
            emit 0xdc7ce3bb 
            emit 0x1 
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            return 0
        if block.timestamp > call.data[36]:
            emit 0xdc7ce3bb 
            emit 0x4 
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            return 0
        require arg1 + optionsExercised[call.data[36 len 96]][address(cd[132])][address(msg.sender)] >= optionsExercised[call.data[36 len 96]][address(cd[132])][address(msg.sender)]
        optionsExercised[call.data[36 len 96]][address(cd[132])][address(msg.sender)] += arg1
        require arg1 + writesExercised[call.data[36 len 96]][address(cd[132])] >= writesExercised[call.data[36 len 96]][address(cd[132])]
        writesExercised[call.data[36 len 96]][address(cd[132])] += arg1
        require writesExercised[call.data[36 len 96]][address(cd[132])] <= writes[call.data[36 len 96]][address(cd[132])]
        call address(cd[132]) with:
             gas 2300 wei
    else:
        require call.data[68] * arg1 / arg1 == call.data[68]
        if call.data[68] * arg1 / 10^18 != msg.value:
            emit 0xdc7ce3bb 
            emit 0x6 
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            return 0
        require arg1 + optionsExercised[call.data[36 len 96]][address(cd[132])][address(msg.sender)] >= optionsExercised[call.data[36 len 96]][address(cd[132])][address(msg.sender)]
        if arg1 + optionsExercised[call.data[36 len 96]][address(cd[132])][address(msg.sender)] > options[call.data[36 len 96]][address(cd[132])][address(msg.sender)]:
            emit 0xdc7ce3bb 
            emit 0x1 
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            return 0
        if block.timestamp > call.data[36]:
            emit 0xdc7ce3bb 
            emit 0x4 
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            return 0
        require arg1 + optionsExercised[call.data[36 len 96]][address(cd[132])][address(msg.sender)] >= optionsExercised[call.data[36 len 96]][address(cd[132])][address(msg.sender)]
        optionsExercised[call.data[36 len 96]][address(cd[132])][address(msg.sender)] += arg1
        require arg1 + writesExercised[call.data[36 len 96]][address(cd[132])] >= writesExercised[call.data[36 len 96]][address(cd[132])]
        writesExercised[call.data[36 len 96]][address(cd[132])] += arg1
        require writesExercised[call.data[36 len 96]][address(cd[132])] <= writes[call.data[36 len 96]][address(cd[132])]
        call address(cd[132]) with:
           value call.data[68] * arg1 / 10^18 wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(address(call.data[112 len 20]))
    call address(call.data[112 len 20]).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    require ext_call.return_data[0]
    emit 0x7d2ff567: msg.sender, address(cd[132]), sha3(call.data[36 len 96])
    return 1
}

function sub_bb6377eb(?) payable {
    mem[1120] = call.data[80 len 20]
    require arg1 + filled[call.data[36 len 192]] >= filled[call.data[36 len 192]]
    if arg1 + filled[call.data[36 len 192]] > call.data[196]:
        emit 0xdc7ce3bb 
        emit 0x1 
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        return 0
    if stor5[mem[1132 len 20]][sha3(call.data[36 len 192])]:
        emit 0xdc7ce3bb 
        emit 0x0 
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        return 0
    if block.timestamp > call.data[36]:
        emit 0xdc7ce3bb 
        emit 0x3 
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        return 0
    if block.timestamp > call.data[228]:
        emit 0xdc7ce3bb 
        emit 0x4 
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        return 0
    require ext_code.size(address(call.data[304 len 20]))
    call address(call.data[304 len 20]).0x70a08231 with:
         gas gas_remaining - 710 wei
        args address(call.data[80 len 20])
    require ext_call.success
    if ext_call.return_data[0] < arg1:
        emit 0xdc7ce3bb 
        emit 0x2 
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        return 0
    require ext_code.size(address(call.data[304 len 20]))
    call address(call.data[304 len 20]).0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args address(call.data[80 len 20]), this.address
    require ext_call.success
    if ext_call.return_data[0] < arg1:
        emit 0xdc7ce3bb 
        emit 0x2 
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        return 0
    if not call.data[132]:
        if not call.data[132]:
            if msg.value:
                emit 0xdc7ce3bb 
                emit 0x6 
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                return 0
        else:
            require arg1 * call.data[132] / call.data[132] == arg1
            require arg1 * call.data[132] / 10^18 >= arg1 * call.data[132] / 10^18
            if arg1 * call.data[132] / 10^18 != msg.value:
                emit 0xdc7ce3bb 
                emit 0x6 
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                return 0
    else:
        require arg1 * call.data[132] / call.data[132] == arg1
        if not call.data[132]:
            require arg1 * call.data[132] / 10^18 / 400 >= 0
            if arg1 * call.data[132] / 10^18 / 400 != msg.value:
                emit 0xdc7ce3bb 
                emit 0x6 
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                return 0
        else:
            require arg1 * call.data[132] / call.data[132] == arg1
            require (arg1 * call.data[132] / 10^18 / 400) + (arg1 * call.data[132] / 10^18) >= arg1 * call.data[132] / 10^18
            if (arg1 * call.data[132] / 10^18 / 400) + (arg1 * call.data[132] / 10^18) != msg.value:
                emit 0xdc7ce3bb 
                emit 0x6 
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                return 0
    signer = erecover(sha3(sha3('string Description', 'uint Expiration', 'bytes32 OrderID', 'uint Premium', 'bytes32 Series', 'uint Size'), sha3('Optimum Order Signature', call.data[36], call.data[100], call.data[132], call.data[164], call.data[196])), call.data[324] << 248, call.data[356], call.data[388]) 
    require erecover.result
    if mem[1132 len 20] != address(signer):
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(call.data[36 len 192])), call.data[324] << 248, call.data[356], call.data[388]) 
        require erecover.result
        if address(signer) != address(call.data[80 len 20]):
            emit 0xdc7ce3bb 
            emit 0x5 
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            return 0
    if not call.data[132]:
        call brokerAddress with:
             gas 2300 wei
    else:
        require arg1 * call.data[132] / call.data[132] == arg1
        call brokerAddress with:
           value arg1 * call.data[132] / 10^18 / 400 wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
    if not call.data[132]:
        call mem[1132 len 20] with:
             gas 2300 wei
    else:
        require arg1 * call.data[132] / call.data[132] == arg1
        call mem[1132 len 20] with:
           value arg1 * call.data[132] / 10^18 wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
    require arg1 + filled[call.data[36 len 192]] >= filled[call.data[36 len 192]]
    filled[call.data[36 len 192]] += arg1
    require arg1 + writes[call.data[228 len 96]][mem[1132 len 20]] >= writes[call.data[228 len 96]][mem[1132 len 20]]
    writes[call.data[228 len 96]][mem[1132 len 20]] += arg1
    require arg1 + options[call.data[228 len 96]][mem[1132 len 20]][address(msg.sender)] >= options[call.data[228 len 96]][mem[1132 len 20]][address(msg.sender)]
    options[call.data[228 len 96]][mem[1132 len 20]][address(msg.sender)] += arg1
    require ext_code.size(address(call.data[304 len 20]))
    call address(call.data[304 len 20]).0x23b872dd with:
         gas gas_remaining - 710 wei
        args address(call.data[80 len 20]), address(this.address), arg1
    require ext_call.success
    require ext_call.return_data[0]
    emit 0x6bfe1fb2: arg1, address(call.data[80 len 20]), msg.sender, sha3(call.data[228 len 96])
    return 1
}



}
