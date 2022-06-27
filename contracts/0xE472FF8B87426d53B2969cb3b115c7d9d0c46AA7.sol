contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 2901]




// =====================  Runtime code  =====================


const sub_7587f576(?) = sha3('reward-transferring-from-foreign')

const sub_767e15c1(?) = sha3(Mask(232, 24, 'reward-transferring-from-home') >> 24)

const getFeeManagerMode = Mask(32, 224, sha3(Mask(168, 88, 'manages-one-direction') >> 88))


mapping of uint256 homeFee;
mapping of address erc677token;

function erc677token() {
    return erc677token['erc677token']
}

function getHomeFee() {
    return homeFee['homeFee']
}

function rewardableValidatorContract() {
    return erc677token['validatorContract']
}

function getForeignFee() {
    return homeFee['foreignFee']
}

function _fallback() payable {
    revert
}

function setHomeFee(uint256 arg1) {
    homeFee['homeFee'] = arg1
    emit HomeFeeUpdated(arg1);
}

function setForeignFee(uint256 arg1) {
    homeFee['foreignFee'] = arg1
    emit ForeignFeeUpdated(arg1);
}

function random(uint256 arg1) {
    require 1 <= block.number
    require arg1
    return (block.hash(block.number - 1) % arg1)
}

function calculateFee(uint256 arg1, bool arg2, bytes32 arg3) {
    if arg3 == sha3('home-fee'):
        if not arg2:
            if not arg1:
                return 0
            if homeFee['homeFee'] * arg1 / arg1 == homeFee['homeFee']:
                return (homeFee['homeFee'] * arg1 / 10^18)
        else:
            if homeFee['homeFee'] <= 10^18:
                if not arg1:
                    if -homeFee['homeFee'] + 10^18:
                        return (0 / -homeFee['homeFee'] + 10^18)
                else:
                    if homeFee['homeFee'] * arg1 / arg1 == homeFee['homeFee']:
                        if -homeFee['homeFee'] + 10^18:
                            return (homeFee['homeFee'] * arg1 / -homeFee['homeFee'] + 10^18)
    else:
        if not arg2:
            if not arg1:
                return 0
            if homeFee['foreignFee'] * arg1 / arg1 == homeFee['foreignFee']:
                return (homeFee['foreignFee'] * arg1 / 10^18)
        else:
            if homeFee['foreignFee'] <= 10^18:
                if not arg1:
                    if -homeFee['foreignFee'] + 10^18:
                        return (0 / -homeFee['foreignFee'] + 10^18)
                else:
                    if homeFee['foreignFee'] * arg1 / arg1 == homeFee['foreignFee']:
                        if -homeFee['foreignFee'] + 10^18:
                            return (homeFee['foreignFee'] * arg1 / -homeFee['foreignFee'] + 10^18)
    revert
}

function distributeFeeFromSignatures(uint256 arg1) {
    require ext_code.size(erc677token['validatorContract'])
    call erc677token['validatorContract'].validatorCount() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    if not arg1 / ext_call.return_data[0]:
        require 0 <= arg1
        if arg1 <= 0:
            require ext_code.size(erc677token['validatorContract'])
            call erc677token['validatorContract'].0x8d37052c with:
                 gas gas_remaining - 710 wei
                args 0xffffffffffffffffffffffffffffffffffffffff
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[12 len 20] != 0xffffffffffffffffffffffffffffffffffffffff
            require ext_call.return_data[12 len 20]
            s = 0
            s = 0
            s = 0
            idx = mem[96]
            while address(idx) != 0xffffffffffffffffffffffffffffffffffffffff:
                if arg1 <= 0:
                    require ext_code.size(erc677token['validatorContract'])
                    call erc677token['validatorContract'].0x81b91174 with:
                         gas gas_remaining - 710 wei
                        args address(idx)
                    require ext_call.success
                    if sha3('reward-transferring-from-home') == sha3('reward-transferring-from-foreign'):
                        call address(ext_call.return_data[0]) with:
                           value arg1 / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            mem[134] = address(ext_call.return_data[0])
                            create contract with ('div', ('param', 'arg1'), ('ext_call.return_data', 0, 32)) wei
                                            code: code.data[2820 len 38], address(ext_call.return_data[0])
                            require create.new_address
                    else:
                        mem[0] = sha3('erc677token')
                        mem[32] = 2
                        mem[132] = arg1 / ext_call.return_data[0]
                        require ext_code.size(erc677token['erc677token'])
                        call erc677token['erc677token'].0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), arg1 / ext_call.return_data[0]
                        require ext_call.success
                    mem[128] = 0
                    mem[100] = address(idx)
                    require ext_code.size(erc677token['validatorContract'])
                    call erc677token['validatorContract'].0x8d37052c with:
                         gas gas_remaining - 710 wei
                        args address(idx)
                    mem[96] = ext_call.return_data[0]
                    require ext_call.success
                    require address(ext_call.return_data[0])
                    s = ext_call.return_data[0]
                    s = arg1 / ext_call.return_data[0]
                    s = s + 1
                    idx = ext_call.return_data[0]
                    continue 
                if s != 0:
                    require ext_code.size(erc677token['validatorContract'])
                    call erc677token['validatorContract'].0x81b91174 with:
                         gas gas_remaining - 710 wei
                        args address(idx)
                    require ext_call.success
                    if sha3('reward-transferring-from-home') == sha3('reward-transferring-from-foreign'):
                        call address(ext_call.return_data[0]) with:
                           value arg1 / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            mem[134] = address(ext_call.return_data[0])
                            create contract with ('div', ('param', 'arg1'), ('ext_call.return_data', 0, 32)) wei
                                            code: code.data[2820 len 38], address(ext_call.return_data[0])
                            require create.new_address
                    else:
                        mem[0] = sha3('erc677token')
                        mem[32] = 2
                        mem[132] = arg1 / ext_call.return_data[0]
                        require ext_code.size(erc677token['erc677token'])
                        call erc677token['erc677token'].0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), arg1 / ext_call.return_data[0]
                        require ext_call.success
                    mem[128] = 0
                    mem[100] = address(idx)
                    require ext_code.size(erc677token['validatorContract'])
                    call erc677token['validatorContract'].0x8d37052c with:
                         gas gas_remaining - 710 wei
                        args address(idx)
                    mem[96] = ext_call.return_data[0]
                    require ext_call.success
                    require address(ext_call.return_data[0])
                    s = ext_call.return_data[0]
                    s = arg1 / ext_call.return_data[0]
                    s = s + 1
                    idx = ext_call.return_data[0]
                    continue 
                require arg1 + (arg1 / ext_call.return_data[0]) >= arg1 / ext_call.return_data[0]
                require ext_code.size(erc677token['validatorContract'])
                call erc677token['validatorContract'].0x81b91174 with:
                     gas gas_remaining - 710 wei
                    args address(idx)
                require ext_call.success
                if sha3('reward-transferring-from-home') == sha3('reward-transferring-from-foreign'):
                    call address(ext_call.return_data[0]) with:
                       value arg1 + (arg1 / ext_call.return_data[0]) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        mem[134] = address(ext_call.return_data[0])
                        create contract with ('add', ('param', 'arg1'), ('div', ('param', 'arg1'), ('ext_call.return_data', 0, 32))) wei
                                        code: code.data[2820 len 38], address(ext_call.return_data[0])
                        require create.new_address
                else:
                    mem[0] = sha3('erc677token')
                    mem[32] = 2
                    mem[132] = arg1 + (arg1 / ext_call.return_data[0])
                    require ext_code.size(erc677token['erc677token'])
                    call erc677token['erc677token'].0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(ext_call.return_data[0]), arg1 + (arg1 / ext_call.return_data[0])
                    require ext_call.success
                mem[128] = 0
                mem[100] = address(idx)
                require ext_code.size(erc677token['validatorContract'])
                call erc677token['validatorContract'].0x8d37052c with:
                     gas gas_remaining - 710 wei
                    args address(idx)
                mem[96] = ext_call.return_data[0]
                require ext_call.success
                require address(ext_call.return_data[0])
                s = ext_call.return_data[0]
                s = arg1 + (arg1 / ext_call.return_data[0])
                s = s + 1
                idx = ext_call.return_data[0]
                continue 
        else:
            require 1 <= block.number
            require ext_call.return_data[0]
            require ext_code.size(erc677token['validatorContract'])
            call erc677token['validatorContract'].0x8d37052c with:
                 gas gas_remaining - 710 wei
                args 0xffffffffffffffffffffffffffffffffffffffff
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[12 len 20] != 0xffffffffffffffffffffffffffffffffffffffff
            require ext_call.return_data[12 len 20]
            s = 0
            s = 0
            s = 0
            idx = mem[96]
            while address(idx) != 0xffffffffffffffffffffffffffffffffffffffff:
                if arg1 <= 0:
                    require ext_code.size(erc677token['validatorContract'])
                    call erc677token['validatorContract'].0x81b91174 with:
                         gas gas_remaining - 710 wei
                        args address(idx)
                    require ext_call.success
                    if sha3('reward-transferring-from-home') == sha3('reward-transferring-from-foreign'):
                        call address(ext_call.return_data[0]) with:
                           value arg1 / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            mem[134] = address(ext_call.return_data[0])
                            create contract with ('div', ('param', 'arg1'), ('ext_call.return_data', 0, 32)) wei
                                            code: code.data[2820 len 38], address(ext_call.return_data[0])
                            require create.new_address
                    else:
                        mem[0] = sha3('erc677token')
                        mem[32] = 2
                        mem[132] = arg1 / ext_call.return_data[0]
                        require ext_code.size(erc677token['erc677token'])
                        call erc677token['erc677token'].0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), arg1 / ext_call.return_data[0]
                        require ext_call.success
                    mem[128] = 0
                    mem[100] = address(idx)
                    require ext_code.size(erc677token['validatorContract'])
                    call erc677token['validatorContract'].0x8d37052c with:
                         gas gas_remaining - 710 wei
                        args address(idx)
                    mem[96] = ext_call.return_data[0]
                    require ext_call.success
                    require address(ext_call.return_data[0])
                    s = ext_call.return_data[0]
                    s = arg1 / ext_call.return_data[0]
                    s = s + 1
                    idx = ext_call.return_data[0]
                    continue 
                if block.hash(block.number - 1) % ext_call.return_data[0] != s:
                    require ext_code.size(erc677token['validatorContract'])
                    call erc677token['validatorContract'].0x81b91174 with:
                         gas gas_remaining - 710 wei
                        args address(idx)
                    require ext_call.success
                    if sha3('reward-transferring-from-home') == sha3('reward-transferring-from-foreign'):
                        call address(ext_call.return_data[0]) with:
                           value arg1 / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            mem[134] = address(ext_call.return_data[0])
                            create contract with ('div', ('param', 'arg1'), ('ext_call.return_data', 0, 32)) wei
                                            code: code.data[2820 len 38], address(ext_call.return_data[0])
                            require create.new_address
                    else:
                        mem[0] = sha3('erc677token')
                        mem[32] = 2
                        mem[132] = arg1 / ext_call.return_data[0]
                        require ext_code.size(erc677token['erc677token'])
                        call erc677token['erc677token'].0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), arg1 / ext_call.return_data[0]
                        require ext_call.success
                    mem[128] = 0
                    mem[100] = address(idx)
                    require ext_code.size(erc677token['validatorContract'])
                    call erc677token['validatorContract'].0x8d37052c with:
                         gas gas_remaining - 710 wei
                        args address(idx)
                    mem[96] = ext_call.return_data[0]
                    require ext_call.success
                    require address(ext_call.return_data[0])
                    s = ext_call.return_data[0]
                    s = arg1 / ext_call.return_data[0]
                    s = s + 1
                    idx = ext_call.return_data[0]
                    continue 
                require arg1 + (arg1 / ext_call.return_data[0]) >= arg1 / ext_call.return_data[0]
                require ext_code.size(erc677token['validatorContract'])
                call erc677token['validatorContract'].0x81b91174 with:
                     gas gas_remaining - 710 wei
                    args address(idx)
                require ext_call.success
                if sha3('reward-transferring-from-home') == sha3('reward-transferring-from-foreign'):
                    call address(ext_call.return_data[0]) with:
                       value arg1 + (arg1 / ext_call.return_data[0]) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        mem[134] = address(ext_call.return_data[0])
                        create contract with ('add', ('param', 'arg1'), ('div', ('param', 'arg1'), ('ext_call.return_data', 0, 32))) wei
                                        code: code.data[2820 len 38], address(ext_call.return_data[0])
                        require create.new_address
                else:
                    mem[0] = sha3('erc677token')
                    mem[32] = 2
                    mem[132] = arg1 + (arg1 / ext_call.return_data[0])
                    require ext_code.size(erc677token['erc677token'])
                    call erc677token['erc677token'].0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(ext_call.return_data[0]), arg1 + (arg1 / ext_call.return_data[0])
                    require ext_call.success
                mem[128] = 0
                mem[100] = address(idx)
                require ext_code.size(erc677token['validatorContract'])
                call erc677token['validatorContract'].0x8d37052c with:
                     gas gas_remaining - 710 wei
                    args address(idx)
                mem[96] = ext_call.return_data[0]
                require ext_call.success
                require address(ext_call.return_data[0])
                s = ext_call.return_data[0]
                s = arg1 + (arg1 / ext_call.return_data[0])
                s = s + 1
                idx = ext_call.return_data[0]
                continue 
    else:
        require ext_call.return_data[0] * arg1 / ext_call.return_data[0] / arg1 / ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[0] * arg1 / ext_call.return_data[0] <= arg1
        if arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) <= 0:
            require ext_code.size(erc677token['validatorContract'])
            call erc677token['validatorContract'].0x8d37052c with:
                 gas gas_remaining - 710 wei
                args 0xffffffffffffffffffffffffffffffffffffffff
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[12 len 20] != 0xffffffffffffffffffffffffffffffffffffffff
            require ext_call.return_data[12 len 20]
            s = 0
            s = 0
            s = 0
            idx = mem[96]
            while address(idx) != 0xffffffffffffffffffffffffffffffffffffffff:
                if arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) <= 0:
                    require ext_code.size(erc677token['validatorContract'])
                    call erc677token['validatorContract'].0x81b91174 with:
                         gas gas_remaining - 710 wei
                        args address(idx)
                    require ext_call.success
                    if sha3('reward-transferring-from-home') == sha3('reward-transferring-from-foreign'):
                        call address(ext_call.return_data[0]) with:
                           value arg1 / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            mem[134] = address(ext_call.return_data[0])
                            create contract with ('div', ('param', 'arg1'), ('ext_call.return_data', 0, 32)) wei
                                            code: code.data[2820 len 38], address(ext_call.return_data[0])
                            require create.new_address
                    else:
                        mem[0] = sha3('erc677token')
                        mem[32] = 2
                        mem[132] = arg1 / ext_call.return_data[0]
                        require ext_code.size(erc677token['erc677token'])
                        call erc677token['erc677token'].0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), arg1 / ext_call.return_data[0]
                        require ext_call.success
                    mem[128] = 0
                    mem[100] = address(idx)
                    require ext_code.size(erc677token['validatorContract'])
                    call erc677token['validatorContract'].0x8d37052c with:
                         gas gas_remaining - 710 wei
                        args address(idx)
                    mem[96] = ext_call.return_data[0]
                    require ext_call.success
                    require address(ext_call.return_data[0])
                    s = ext_call.return_data[0]
                    s = arg1 / ext_call.return_data[0]
                    s = s + 1
                    idx = ext_call.return_data[0]
                    continue 
                if s != 0:
                    require ext_code.size(erc677token['validatorContract'])
                    call erc677token['validatorContract'].0x81b91174 with:
                         gas gas_remaining - 710 wei
                        args address(idx)
                    require ext_call.success
                    if sha3('reward-transferring-from-home') == sha3('reward-transferring-from-foreign'):
                        call address(ext_call.return_data[0]) with:
                           value arg1 / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            mem[134] = address(ext_call.return_data[0])
                            create contract with ('div', ('param', 'arg1'), ('ext_call.return_data', 0, 32)) wei
                                            code: code.data[2820 len 38], address(ext_call.return_data[0])
                            require create.new_address
                    else:
                        mem[0] = sha3('erc677token')
                        mem[32] = 2
                        mem[132] = arg1 / ext_call.return_data[0]
                        require ext_code.size(erc677token['erc677token'])
                        call erc677token['erc677token'].0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), arg1 / ext_call.return_data[0]
                        require ext_call.success
                    mem[128] = 0
                    mem[100] = address(idx)
                    require ext_code.size(erc677token['validatorContract'])
                    call erc677token['validatorContract'].0x8d37052c with:
                         gas gas_remaining - 710 wei
                        args address(idx)
                    mem[96] = ext_call.return_data[0]
                    require ext_call.success
                    require address(ext_call.return_data[0])
                    s = ext_call.return_data[0]
                    s = arg1 / ext_call.return_data[0]
                    s = s + 1
                    idx = ext_call.return_data[0]
                    continue 
                require arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (arg1 / ext_call.return_data[0]) >= arg1 / ext_call.return_data[0]
                require ext_code.size(erc677token['validatorContract'])
                call erc677token['validatorContract'].0x81b91174 with:
                     gas gas_remaining - 710 wei
                    args address(idx)
                require ext_call.success
                if sha3('reward-transferring-from-home') == sha3('reward-transferring-from-foreign'):
                    call address(ext_call.return_data[0]) with:
                       value arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (arg1 / ext_call.return_data[0]) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        mem[134] = address(ext_call.return_data[0])
                        create contract with ('add', ('param', 'arg1'), ('mul', -1, ('ext_call.return_data', 0, 32), ('div', ('param', 'arg1'), ('ext_call.return_data', 0, 32))), ('div', ('param', 'arg1'), ('ext_call.return_data', 0, 32))) wei
                                        code: code.data[2820 len 38], address(ext_call.return_data[0])
                        require create.new_address
                else:
                    mem[0] = sha3('erc677token')
                    mem[32] = 2
                    mem[132] = arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (arg1 / ext_call.return_data[0])
                    require ext_code.size(erc677token['erc677token'])
                    call erc677token['erc677token'].0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(ext_call.return_data[0]), arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (arg1 / ext_call.return_data[0])
                    require ext_call.success
                mem[128] = 0
                mem[100] = address(idx)
                require ext_code.size(erc677token['validatorContract'])
                call erc677token['validatorContract'].0x8d37052c with:
                     gas gas_remaining - 710 wei
                    args address(idx)
                mem[96] = ext_call.return_data[0]
                require ext_call.success
                require address(ext_call.return_data[0])
                s = ext_call.return_data[0]
                s = arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (arg1 / ext_call.return_data[0])
                s = s + 1
                idx = ext_call.return_data[0]
                continue 
        else:
            require 1 <= block.number
            require ext_call.return_data[0]
            require ext_code.size(erc677token['validatorContract'])
            call erc677token['validatorContract'].0x8d37052c with:
                 gas gas_remaining - 710 wei
                args 0xffffffffffffffffffffffffffffffffffffffff
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[12 len 20] != 0xffffffffffffffffffffffffffffffffffffffff
            require ext_call.return_data[12 len 20]
            s = 0
            s = 0
            s = 0
            idx = mem[96]
            while address(idx) != 0xffffffffffffffffffffffffffffffffffffffff:
                if arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) <= 0:
                    require ext_code.size(erc677token['validatorContract'])
                    call erc677token['validatorContract'].0x81b91174 with:
                         gas gas_remaining - 710 wei
                        args address(idx)
                    require ext_call.success
                    if sha3('reward-transferring-from-home') == sha3('reward-transferring-from-foreign'):
                        call address(ext_call.return_data[0]) with:
                           value arg1 / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            mem[134] = address(ext_call.return_data[0])
                            create contract with ('div', ('param', 'arg1'), ('ext_call.return_data', 0, 32)) wei
                                            code: code.data[2820 len 38], address(ext_call.return_data[0])
                            require create.new_address
                    else:
                        mem[0] = sha3('erc677token')
                        mem[32] = 2
                        mem[132] = arg1 / ext_call.return_data[0]
                        require ext_code.size(erc677token['erc677token'])
                        call erc677token['erc677token'].0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), arg1 / ext_call.return_data[0]
                        require ext_call.success
                    mem[128] = 0
                    mem[100] = address(idx)
                    require ext_code.size(erc677token['validatorContract'])
                    call erc677token['validatorContract'].0x8d37052c with:
                         gas gas_remaining - 710 wei
                        args address(idx)
                    mem[96] = ext_call.return_data[0]
                    require ext_call.success
                    require address(ext_call.return_data[0])
                    s = ext_call.return_data[0]
                    s = arg1 / ext_call.return_data[0]
                    s = s + 1
                    idx = ext_call.return_data[0]
                    continue 
                if block.hash(block.number - 1) % ext_call.return_data[0] != s:
                    require ext_code.size(erc677token['validatorContract'])
                    call erc677token['validatorContract'].0x81b91174 with:
                         gas gas_remaining - 710 wei
                        args address(idx)
                    require ext_call.success
                    if sha3('reward-transferring-from-home') == sha3('reward-transferring-from-foreign'):
                        call address(ext_call.return_data[0]) with:
                           value arg1 / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            mem[134] = address(ext_call.return_data[0])
                            create contract with ('div', ('param', 'arg1'), ('ext_call.return_data', 0, 32)) wei
                                            code: code.data[2820 len 38], address(ext_call.return_data[0])
                            require create.new_address
                    else:
                        mem[0] = sha3('erc677token')
                        mem[32] = 2
                        mem[132] = arg1 / ext_call.return_data[0]
                        require ext_code.size(erc677token['erc677token'])
                        call erc677token['erc677token'].0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), arg1 / ext_call.return_data[0]
                        require ext_call.success
                    mem[128] = 0
                    mem[100] = address(idx)
                    require ext_code.size(erc677token['validatorContract'])
                    call erc677token['validatorContract'].0x8d37052c with:
                         gas gas_remaining - 710 wei
                        args address(idx)
                    mem[96] = ext_call.return_data[0]
                    require ext_call.success
                    require address(ext_call.return_data[0])
                    s = ext_call.return_data[0]
                    s = arg1 / ext_call.return_data[0]
                    s = s + 1
                    idx = ext_call.return_data[0]
                    continue 
                require arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (arg1 / ext_call.return_data[0]) >= arg1 / ext_call.return_data[0]
                require ext_code.size(erc677token['validatorContract'])
                call erc677token['validatorContract'].0x81b91174 with:
                     gas gas_remaining - 710 wei
                    args address(idx)
                require ext_call.success
                if sha3('reward-transferring-from-home') == sha3('reward-transferring-from-foreign'):
                    call address(ext_call.return_data[0]) with:
                       value arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (arg1 / ext_call.return_data[0]) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        mem[134] = address(ext_call.return_data[0])
                        create contract with ('add', ('param', 'arg1'), ('mul', -1, ('ext_call.return_data', 0, 32), ('div', ('param', 'arg1'), ('ext_call.return_data', 0, 32))), ('div', ('param', 'arg1'), ('ext_call.return_data', 0, 32))) wei
                                        code: code.data[2820 len 38], address(ext_call.return_data[0])
                        require create.new_address
                else:
                    mem[0] = sha3('erc677token')
                    mem[32] = 2
                    mem[132] = arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (arg1 / ext_call.return_data[0])
                    require ext_code.size(erc677token['erc677token'])
                    call erc677token['erc677token'].0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(ext_call.return_data[0]), arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (arg1 / ext_call.return_data[0])
                    require ext_call.success
                mem[128] = 0
                mem[100] = address(idx)
                require ext_code.size(erc677token['validatorContract'])
                call erc677token['validatorContract'].0x8d37052c with:
                     gas gas_remaining - 710 wei
                    args address(idx)
                mem[96] = ext_call.return_data[0]
                require ext_call.success
                require address(ext_call.return_data[0])
                s = ext_call.return_data[0]
                s = arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (arg1 / ext_call.return_data[0])
                s = s + 1
                idx = ext_call.return_data[0]
                continue 
}

function distributeFeeFromAffirmation(uint256 arg1) {
    require ext_code.size(erc677token['validatorContract'])
    call erc677token['validatorContract'].validatorCount() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    if not arg1 / ext_call.return_data[0]:
        require 0 <= arg1
        if arg1 <= 0:
            require ext_code.size(erc677token['validatorContract'])
            call erc677token['validatorContract'].0x8d37052c with:
                 gas gas_remaining - 710 wei
                args 0xffffffffffffffffffffffffffffffffffffffff
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[12 len 20] != 0xffffffffffffffffffffffffffffffffffffffff
            require ext_call.return_data[12 len 20]
            s = 0
            s = 0
            s = 0
            idx = mem[96]
            while address(idx) != 0xffffffffffffffffffffffffffffffffffffffff:
                if arg1 <= 0:
                    require ext_code.size(erc677token['validatorContract'])
                    call erc677token['validatorContract'].0x81b91174 with:
                         gas gas_remaining - 710 wei
                        args address(idx)
                    require ext_call.success
                    if sha3('reward-transferring-from-foreign') == sha3('reward-transferring-from-foreign'):
                        call address(ext_call.return_data[0]) with:
                           value arg1 / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            mem[134] = address(ext_call.return_data[0])
                            create contract with ('div', ('param', 'arg1'), ('ext_call.return_data', 0, 32)) wei
                                            code: code.data[2820 len 38], address(ext_call.return_data[0])
                            require create.new_address
                    else:
                        mem[0] = sha3('erc677token')
                        mem[32] = 2
                        mem[132] = arg1 / ext_call.return_data[0]
                        require ext_code.size(erc677token['erc677token'])
                        call erc677token['erc677token'].0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), arg1 / ext_call.return_data[0]
                        require ext_call.success
                    mem[128] = 0
                    mem[100] = address(idx)
                    require ext_code.size(erc677token['validatorContract'])
                    call erc677token['validatorContract'].0x8d37052c with:
                         gas gas_remaining - 710 wei
                        args address(idx)
                    mem[96] = ext_call.return_data[0]
                    require ext_call.success
                    require address(ext_call.return_data[0])
                    s = ext_call.return_data[0]
                    s = arg1 / ext_call.return_data[0]
                    s = s + 1
                    idx = ext_call.return_data[0]
                    continue 
                if s != 0:
                    require ext_code.size(erc677token['validatorContract'])
                    call erc677token['validatorContract'].0x81b91174 with:
                         gas gas_remaining - 710 wei
                        args address(idx)
                    require ext_call.success
                    if sha3('reward-transferring-from-foreign') == sha3('reward-transferring-from-foreign'):
                        call address(ext_call.return_data[0]) with:
                           value arg1 / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            mem[134] = address(ext_call.return_data[0])
                            create contract with ('div', ('param', 'arg1'), ('ext_call.return_data', 0, 32)) wei
                                            code: code.data[2820 len 38], address(ext_call.return_data[0])
                            require create.new_address
                    else:
                        mem[0] = sha3('erc677token')
                        mem[32] = 2
                        mem[132] = arg1 / ext_call.return_data[0]
                        require ext_code.size(erc677token['erc677token'])
                        call erc677token['erc677token'].0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), arg1 / ext_call.return_data[0]
                        require ext_call.success
                    mem[128] = 0
                    mem[100] = address(idx)
                    require ext_code.size(erc677token['validatorContract'])
                    call erc677token['validatorContract'].0x8d37052c with:
                         gas gas_remaining - 710 wei
                        args address(idx)
                    mem[96] = ext_call.return_data[0]
                    require ext_call.success
                    require address(ext_call.return_data[0])
                    s = ext_call.return_data[0]
                    s = arg1 / ext_call.return_data[0]
                    s = s + 1
                    idx = ext_call.return_data[0]
                    continue 
                require arg1 + (arg1 / ext_call.return_data[0]) >= arg1 / ext_call.return_data[0]
                require ext_code.size(erc677token['validatorContract'])
                call erc677token['validatorContract'].0x81b91174 with:
                     gas gas_remaining - 710 wei
                    args address(idx)
                require ext_call.success
                if sha3('reward-transferring-from-foreign') == sha3('reward-transferring-from-foreign'):
                    call address(ext_call.return_data[0]) with:
                       value arg1 + (arg1 / ext_call.return_data[0]) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        mem[134] = address(ext_call.return_data[0])
                        create contract with ('add', ('param', 'arg1'), ('div', ('param', 'arg1'), ('ext_call.return_data', 0, 32))) wei
                                        code: code.data[2820 len 38], address(ext_call.return_data[0])
                        require create.new_address
                else:
                    mem[0] = sha3('erc677token')
                    mem[32] = 2
                    mem[132] = arg1 + (arg1 / ext_call.return_data[0])
                    require ext_code.size(erc677token['erc677token'])
                    call erc677token['erc677token'].0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(ext_call.return_data[0]), arg1 + (arg1 / ext_call.return_data[0])
                    require ext_call.success
                mem[128] = 0
                mem[100] = address(idx)
                require ext_code.size(erc677token['validatorContract'])
                call erc677token['validatorContract'].0x8d37052c with:
                     gas gas_remaining - 710 wei
                    args address(idx)
                mem[96] = ext_call.return_data[0]
                require ext_call.success
                require address(ext_call.return_data[0])
                s = ext_call.return_data[0]
                s = arg1 + (arg1 / ext_call.return_data[0])
                s = s + 1
                idx = ext_call.return_data[0]
                continue 
        else:
            require 1 <= block.number
            require ext_call.return_data[0]
            require ext_code.size(erc677token['validatorContract'])
            call erc677token['validatorContract'].0x8d37052c with:
                 gas gas_remaining - 710 wei
                args 0xffffffffffffffffffffffffffffffffffffffff
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[12 len 20] != 0xffffffffffffffffffffffffffffffffffffffff
            require ext_call.return_data[12 len 20]
            s = 0
            s = 0
            s = 0
            idx = mem[96]
            while address(idx) != 0xffffffffffffffffffffffffffffffffffffffff:
                if arg1 <= 0:
                    require ext_code.size(erc677token['validatorContract'])
                    call erc677token['validatorContract'].0x81b91174 with:
                         gas gas_remaining - 710 wei
                        args address(idx)
                    require ext_call.success
                    if sha3('reward-transferring-from-foreign') == sha3('reward-transferring-from-foreign'):
                        call address(ext_call.return_data[0]) with:
                           value arg1 / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            mem[134] = address(ext_call.return_data[0])
                            create contract with ('div', ('param', 'arg1'), ('ext_call.return_data', 0, 32)) wei
                                            code: code.data[2820 len 38], address(ext_call.return_data[0])
                            require create.new_address
                    else:
                        mem[0] = sha3('erc677token')
                        mem[32] = 2
                        mem[132] = arg1 / ext_call.return_data[0]
                        require ext_code.size(erc677token['erc677token'])
                        call erc677token['erc677token'].0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), arg1 / ext_call.return_data[0]
                        require ext_call.success
                    mem[128] = 0
                    mem[100] = address(idx)
                    require ext_code.size(erc677token['validatorContract'])
                    call erc677token['validatorContract'].0x8d37052c with:
                         gas gas_remaining - 710 wei
                        args address(idx)
                    mem[96] = ext_call.return_data[0]
                    require ext_call.success
                    require address(ext_call.return_data[0])
                    s = ext_call.return_data[0]
                    s = arg1 / ext_call.return_data[0]
                    s = s + 1
                    idx = ext_call.return_data[0]
                    continue 
                if block.hash(block.number - 1) % ext_call.return_data[0] != s:
                    require ext_code.size(erc677token['validatorContract'])
                    call erc677token['validatorContract'].0x81b91174 with:
                         gas gas_remaining - 710 wei
                        args address(idx)
                    require ext_call.success
                    if sha3('reward-transferring-from-foreign') == sha3('reward-transferring-from-foreign'):
                        call address(ext_call.return_data[0]) with:
                           value arg1 / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            mem[134] = address(ext_call.return_data[0])
                            create contract with ('div', ('param', 'arg1'), ('ext_call.return_data', 0, 32)) wei
                                            code: code.data[2820 len 38], address(ext_call.return_data[0])
                            require create.new_address
                    else:
                        mem[0] = sha3('erc677token')
                        mem[32] = 2
                        mem[132] = arg1 / ext_call.return_data[0]
                        require ext_code.size(erc677token['erc677token'])
                        call erc677token['erc677token'].0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), arg1 / ext_call.return_data[0]
                        require ext_call.success
                    mem[128] = 0
                    mem[100] = address(idx)
                    require ext_code.size(erc677token['validatorContract'])
                    call erc677token['validatorContract'].0x8d37052c with:
                         gas gas_remaining - 710 wei
                        args address(idx)
                    mem[96] = ext_call.return_data[0]
                    require ext_call.success
                    require address(ext_call.return_data[0])
                    s = ext_call.return_data[0]
                    s = arg1 / ext_call.return_data[0]
                    s = s + 1
                    idx = ext_call.return_data[0]
                    continue 
                require arg1 + (arg1 / ext_call.return_data[0]) >= arg1 / ext_call.return_data[0]
                require ext_code.size(erc677token['validatorContract'])
                call erc677token['validatorContract'].0x81b91174 with:
                     gas gas_remaining - 710 wei
                    args address(idx)
                require ext_call.success
                if sha3('reward-transferring-from-foreign') == sha3('reward-transferring-from-foreign'):
                    call address(ext_call.return_data[0]) with:
                       value arg1 + (arg1 / ext_call.return_data[0]) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        mem[134] = address(ext_call.return_data[0])
                        create contract with ('add', ('param', 'arg1'), ('div', ('param', 'arg1'), ('ext_call.return_data', 0, 32))) wei
                                        code: code.data[2820 len 38], address(ext_call.return_data[0])
                        require create.new_address
                else:
                    mem[0] = sha3('erc677token')
                    mem[32] = 2
                    mem[132] = arg1 + (arg1 / ext_call.return_data[0])
                    require ext_code.size(erc677token['erc677token'])
                    call erc677token['erc677token'].0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(ext_call.return_data[0]), arg1 + (arg1 / ext_call.return_data[0])
                    require ext_call.success
                mem[128] = 0
                mem[100] = address(idx)
                require ext_code.size(erc677token['validatorContract'])
                call erc677token['validatorContract'].0x8d37052c with:
                     gas gas_remaining - 710 wei
                    args address(idx)
                mem[96] = ext_call.return_data[0]
                require ext_call.success
                require address(ext_call.return_data[0])
                s = ext_call.return_data[0]
                s = arg1 + (arg1 / ext_call.return_data[0])
                s = s + 1
                idx = ext_call.return_data[0]
                continue 
    else:
        require ext_call.return_data[0] * arg1 / ext_call.return_data[0] / arg1 / ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[0] * arg1 / ext_call.return_data[0] <= arg1
        if arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) <= 0:
            require ext_code.size(erc677token['validatorContract'])
            call erc677token['validatorContract'].0x8d37052c with:
                 gas gas_remaining - 710 wei
                args 0xffffffffffffffffffffffffffffffffffffffff
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[12 len 20] != 0xffffffffffffffffffffffffffffffffffffffff
            require ext_call.return_data[12 len 20]
            s = 0
            s = 0
            s = 0
            idx = mem[96]
            while address(idx) != 0xffffffffffffffffffffffffffffffffffffffff:
                if arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) <= 0:
                    require ext_code.size(erc677token['validatorContract'])
                    call erc677token['validatorContract'].0x81b91174 with:
                         gas gas_remaining - 710 wei
                        args address(idx)
                    require ext_call.success
                    if sha3('reward-transferring-from-foreign') == sha3('reward-transferring-from-foreign'):
                        call address(ext_call.return_data[0]) with:
                           value arg1 / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            mem[134] = address(ext_call.return_data[0])
                            create contract with ('div', ('param', 'arg1'), ('ext_call.return_data', 0, 32)) wei
                                            code: code.data[2820 len 38], address(ext_call.return_data[0])
                            require create.new_address
                    else:
                        mem[0] = sha3('erc677token')
                        mem[32] = 2
                        mem[132] = arg1 / ext_call.return_data[0]
                        require ext_code.size(erc677token['erc677token'])
                        call erc677token['erc677token'].0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), arg1 / ext_call.return_data[0]
                        require ext_call.success
                    mem[128] = 0
                    mem[100] = address(idx)
                    require ext_code.size(erc677token['validatorContract'])
                    call erc677token['validatorContract'].0x8d37052c with:
                         gas gas_remaining - 710 wei
                        args address(idx)
                    mem[96] = ext_call.return_data[0]
                    require ext_call.success
                    require address(ext_call.return_data[0])
                    s = ext_call.return_data[0]
                    s = arg1 / ext_call.return_data[0]
                    s = s + 1
                    idx = ext_call.return_data[0]
                    continue 
                if s != 0:
                    require ext_code.size(erc677token['validatorContract'])
                    call erc677token['validatorContract'].0x81b91174 with:
                         gas gas_remaining - 710 wei
                        args address(idx)
                    require ext_call.success
                    if sha3('reward-transferring-from-foreign') == sha3('reward-transferring-from-foreign'):
                        call address(ext_call.return_data[0]) with:
                           value arg1 / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            mem[134] = address(ext_call.return_data[0])
                            create contract with ('div', ('param', 'arg1'), ('ext_call.return_data', 0, 32)) wei
                                            code: code.data[2820 len 38], address(ext_call.return_data[0])
                            require create.new_address
                    else:
                        mem[0] = sha3('erc677token')
                        mem[32] = 2
                        mem[132] = arg1 / ext_call.return_data[0]
                        require ext_code.size(erc677token['erc677token'])
                        call erc677token['erc677token'].0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), arg1 / ext_call.return_data[0]
                        require ext_call.success
                    mem[128] = 0
                    mem[100] = address(idx)
                    require ext_code.size(erc677token['validatorContract'])
                    call erc677token['validatorContract'].0x8d37052c with:
                         gas gas_remaining - 710 wei
                        args address(idx)
                    mem[96] = ext_call.return_data[0]
                    require ext_call.success
                    require address(ext_call.return_data[0])
                    s = ext_call.return_data[0]
                    s = arg1 / ext_call.return_data[0]
                    s = s + 1
                    idx = ext_call.return_data[0]
                    continue 
                require arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (arg1 / ext_call.return_data[0]) >= arg1 / ext_call.return_data[0]
                require ext_code.size(erc677token['validatorContract'])
                call erc677token['validatorContract'].0x81b91174 with:
                     gas gas_remaining - 710 wei
                    args address(idx)
                require ext_call.success
                if sha3('reward-transferring-from-foreign') == sha3('reward-transferring-from-foreign'):
                    call address(ext_call.return_data[0]) with:
                       value arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (arg1 / ext_call.return_data[0]) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        mem[134] = address(ext_call.return_data[0])
                        create contract with ('add', ('param', 'arg1'), ('mul', -1, ('ext_call.return_data', 0, 32), ('div', ('param', 'arg1'), ('ext_call.return_data', 0, 32))), ('div', ('param', 'arg1'), ('ext_call.return_data', 0, 32))) wei
                                        code: code.data[2820 len 38], address(ext_call.return_data[0])
                        require create.new_address
                else:
                    mem[0] = sha3('erc677token')
                    mem[32] = 2
                    mem[132] = arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (arg1 / ext_call.return_data[0])
                    require ext_code.size(erc677token['erc677token'])
                    call erc677token['erc677token'].0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(ext_call.return_data[0]), arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (arg1 / ext_call.return_data[0])
                    require ext_call.success
                mem[128] = 0
                mem[100] = address(idx)
                require ext_code.size(erc677token['validatorContract'])
                call erc677token['validatorContract'].0x8d37052c with:
                     gas gas_remaining - 710 wei
                    args address(idx)
                mem[96] = ext_call.return_data[0]
                require ext_call.success
                require address(ext_call.return_data[0])
                s = ext_call.return_data[0]
                s = arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (arg1 / ext_call.return_data[0])
                s = s + 1
                idx = ext_call.return_data[0]
                continue 
        else:
            require 1 <= block.number
            require ext_call.return_data[0]
            require ext_code.size(erc677token['validatorContract'])
            call erc677token['validatorContract'].0x8d37052c with:
                 gas gas_remaining - 710 wei
                args 0xffffffffffffffffffffffffffffffffffffffff
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[12 len 20] != 0xffffffffffffffffffffffffffffffffffffffff
            require ext_call.return_data[12 len 20]
            s = 0
            s = 0
            s = 0
            idx = mem[96]
            while address(idx) != 0xffffffffffffffffffffffffffffffffffffffff:
                if arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) <= 0:
                    require ext_code.size(erc677token['validatorContract'])
                    call erc677token['validatorContract'].0x81b91174 with:
                         gas gas_remaining - 710 wei
                        args address(idx)
                    require ext_call.success
                    if sha3('reward-transferring-from-foreign') == sha3('reward-transferring-from-foreign'):
                        call address(ext_call.return_data[0]) with:
                           value arg1 / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            mem[134] = address(ext_call.return_data[0])
                            create contract with ('div', ('param', 'arg1'), ('ext_call.return_data', 0, 32)) wei
                                            code: code.data[2820 len 38], address(ext_call.return_data[0])
                            require create.new_address
                    else:
                        mem[0] = sha3('erc677token')
                        mem[32] = 2
                        mem[132] = arg1 / ext_call.return_data[0]
                        require ext_code.size(erc677token['erc677token'])
                        call erc677token['erc677token'].0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), arg1 / ext_call.return_data[0]
                        require ext_call.success
                    mem[128] = 0
                    mem[100] = address(idx)
                    require ext_code.size(erc677token['validatorContract'])
                    call erc677token['validatorContract'].0x8d37052c with:
                         gas gas_remaining - 710 wei
                        args address(idx)
                    mem[96] = ext_call.return_data[0]
                    require ext_call.success
                    require address(ext_call.return_data[0])
                    s = ext_call.return_data[0]
                    s = arg1 / ext_call.return_data[0]
                    s = s + 1
                    idx = ext_call.return_data[0]
                    continue 
                if block.hash(block.number - 1) % ext_call.return_data[0] != s:
                    require ext_code.size(erc677token['validatorContract'])
                    call erc677token['validatorContract'].0x81b91174 with:
                         gas gas_remaining - 710 wei
                        args address(idx)
                    require ext_call.success
                    if sha3('reward-transferring-from-foreign') == sha3('reward-transferring-from-foreign'):
                        call address(ext_call.return_data[0]) with:
                           value arg1 / ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            mem[134] = address(ext_call.return_data[0])
                            create contract with ('div', ('param', 'arg1'), ('ext_call.return_data', 0, 32)) wei
                                            code: code.data[2820 len 38], address(ext_call.return_data[0])
                            require create.new_address
                    else:
                        mem[0] = sha3('erc677token')
                        mem[32] = 2
                        mem[132] = arg1 / ext_call.return_data[0]
                        require ext_code.size(erc677token['erc677token'])
                        call erc677token['erc677token'].0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), arg1 / ext_call.return_data[0]
                        require ext_call.success
                    mem[128] = 0
                    mem[100] = address(idx)
                    require ext_code.size(erc677token['validatorContract'])
                    call erc677token['validatorContract'].0x8d37052c with:
                         gas gas_remaining - 710 wei
                        args address(idx)
                    mem[96] = ext_call.return_data[0]
                    require ext_call.success
                    require address(ext_call.return_data[0])
                    s = ext_call.return_data[0]
                    s = arg1 / ext_call.return_data[0]
                    s = s + 1
                    idx = ext_call.return_data[0]
                    continue 
                require arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (arg1 / ext_call.return_data[0]) >= arg1 / ext_call.return_data[0]
                require ext_code.size(erc677token['validatorContract'])
                call erc677token['validatorContract'].0x81b91174 with:
                     gas gas_remaining - 710 wei
                    args address(idx)
                require ext_call.success
                if sha3('reward-transferring-from-foreign') == sha3('reward-transferring-from-foreign'):
                    call address(ext_call.return_data[0]) with:
                       value arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (arg1 / ext_call.return_data[0]) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        mem[134] = address(ext_call.return_data[0])
                        create contract with ('add', ('param', 'arg1'), ('mul', -1, ('ext_call.return_data', 0, 32), ('div', ('param', 'arg1'), ('ext_call.return_data', 0, 32))), ('div', ('param', 'arg1'), ('ext_call.return_data', 0, 32))) wei
                                        code: code.data[2820 len 38], address(ext_call.return_data[0])
                        require create.new_address
                else:
                    mem[0] = sha3('erc677token')
                    mem[32] = 2
                    mem[132] = arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (arg1 / ext_call.return_data[0])
                    require ext_code.size(erc677token['erc677token'])
                    call erc677token['erc677token'].0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(ext_call.return_data[0]), arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (arg1 / ext_call.return_data[0])
                    require ext_call.success
                mem[128] = 0
                mem[100] = address(idx)
                require ext_code.size(erc677token['validatorContract'])
                call erc677token['validatorContract'].0x8d37052c with:
                     gas gas_remaining - 710 wei
                    args address(idx)
                mem[96] = ext_call.return_data[0]
                require ext_call.success
                require address(ext_call.return_data[0])
                s = ext_call.return_data[0]
                s = arg1 - (ext_call.return_data[0] * arg1 / ext_call.return_data[0]) + (arg1 / ext_call.return_data[0])
                s = s + 1
                idx = ext_call.return_data[0]
                continue 
}



}
