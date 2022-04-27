contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 4592]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_1f80162b(?) {
    require ext_code.size(0x48681684ffcc808c10e519364d31b73662b3e333)
    call 0x48681684ffcc808c10e519364d31b73662b3e333.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 710 wei
        args 0xc1f1bc812cb8a2c2c89751849fc218d5ba97268b, arg2, arg1
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function sub_e62f20b8(?) {
    require ext_code.size(0x48681684ffcc808c10e519364d31b73662b3e333)
    call 0x48681684ffcc808c10e519364d31b73662b3e333.claimFor(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args 0xc1f1bc812cb8a2c2c89751849fc218d5ba97268b, msg.sender
    require ext_call.success
    if ext_call.return_data[0]:
        return 1
    require ext_code.size(0x48681684ffcc808c10e519364d31b73662b3e333)
    call 0x48681684ffcc808c10e519364d31b73662b3e333.isOwner(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args 0xc1f1bc812cb8a2c2c89751849fc218d5ba97268b, msg.sender
    require ext_call.success
    if ext_call.return_data[0]:
        return 1
    else:
        return 0
}

function forward(address arg1, uint256 arg2, bytes arg3) {
    require ext_code.size(0x48681684ffcc808c10e519364d31b73662b3e333)
    call 0x48681684ffcc808c10e519364d31b73662b3e333.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 710 wei
        args 0xc1f1bc812cb8a2c2c89751849fc218d5ba97268b, 'sender', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        emit Error(0x53656e64657220726f6c652076696f6c6174696f6e00000000000000000000);
    call arg1 with:
       value arg2 wei
         gas 63 * gas_remaining / 64 wei
        args arg3[all]
    if not ext_call.success == 1:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function sub_b3ee5ddb(?) {
    require ext_code.size(0x48681684ffcc808c10e519364d31b73662b3e333)
    call 0x48681684ffcc808c10e519364d31b73662b3e333.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 710 wei
        args 0xc1f1bc812cb8a2c2c89751849fc218d5ba97268b, 'sender', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        emit Error(0x53656e64657220726f6c652076696f6c6174696f6e00000000000000000000);
        return 0
    require ext_code.size(0x48681684ffcc808c10e519364d31b73662b3e333)
    call 0x48681684ffcc808c10e519364d31b73662b3e333.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 710 wei
        args 0xc1f1bc812cb8a2c2c89751849fc218d5ba97268b, 0x9c746f6b656e73616c6500000000000000000000000000000000000000000000, arg2
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(arg2)
    call arg2.0x7dace1f9 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg3
    require ext_call.success
    return 1
}

function sub_3d1c0a61(?) {
    require ext_code.size(0x48681684ffcc808c10e519364d31b73662b3e333)
    call 0x48681684ffcc808c10e519364d31b73662b3e333.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 710 wei
        args 0xc1f1bc812cb8a2c2c89751849fc218d5ba97268b, 'sender', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        emit Error(0x53656e64657220726f6c652076696f6c6174696f6e00000000000000000000);
        return 0
    require ext_code.size(0x48681684ffcc808c10e519364d31b73662b3e333)
    call 0x48681684ffcc808c10e519364d31b73662b3e333.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 710 wei
        args 0xc1f1bc812cb8a2c2c89751849fc218d5ba97268b, 0x9c746f6b656e73616c6500000000000000000000000000000000000000000000, arg3
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(arg3)
    call arg3.0xe78b6fce with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2, arg4
    require ext_call.success
    return 1
}

function sub_1c2b648c(?) {
    require ext_code.size(0x48681684ffcc808c10e519364d31b73662b3e333)
    call 0x48681684ffcc808c10e519364d31b73662b3e333.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 710 wei
        args 0xc1f1bc812cb8a2c2c89751849fc218d5ba97268b, 0x9c746f6b656e73616c6500000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        emit Error(0x53656e64657220726f6c652076696f6c6174696f6e00000000000000000000);
        return 0
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if arg1 != 0x7ea2df0f49d1cf7cb3a328f0038822b08aeb0ac1:
        require ext_call.return_data[0] > 0
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
    else:
        if ext_call.return_data[0] > 0:
            require ext_code.size(0x7ea2df0f49d1cf7cb3a328f0038822b08aeb0ac1)
            call 0x7ea2df0f49d1cf7cb3a328f0038822b08aeb0ac1.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
        else:
            require eth.balance(this.address) > 0
            if ext_call.return_data[0] > 0:
                require ext_code.size(0x7ea2df0f49d1cf7cb3a328f0038822b08aeb0ac1)
                call 0x7ea2df0f49d1cf7cb3a328f0038822b08aeb0ac1.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, ext_call.return_data[0]
                require ext_call.success
                require ext_call.return_data[0]
        if eth.balance(this.address) > 0:
            require ext_code.size(0x7ea2df0f49d1cf7cb3a328f0038822b08aeb0ac1)
            call 0x7ea2df0f49d1cf7cb3a328f0038822b08aeb0ac1.deposit(address rg1) with:
               value eth.balance(this.address) wei
                 gas gas_remaining - 9710 wei
                args msg.sender
            require ext_call.success
            require ext_call.return_data[0]
    return 1
}

function sub_807c9bf6(?) {
    require ext_code.size(0x48681684ffcc808c10e519364d31b73662b3e333)
    call 0x48681684ffcc808c10e519364d31b73662b3e333.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 710 wei
        args 0xc1f1bc812cb8a2c2c89751849fc218d5ba97268b, 0x9c746f6b656e73616c6500000000000000000000000000000000000000000000, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        emit Error(0x53656e64657220726f6c652076696f6c6174696f6e00000000000000000000);
        return 0
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if arg1 != 0x7ea2df0f49d1cf7cb3a328f0038822b08aeb0ac1:
        require ext_call.return_data[0] > 0
        require ext_code.size(arg1)
        if ext_call.return_data[0] <= arg2:
            call arg1.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, ext_call.return_data[0]
        else:
            call arg1.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, arg2
        require ext_call.success
        require ext_call.return_data[0]
    else:
        if ext_call.return_data[0] <= 0:
            require eth.balance(this.address) > 0
        if ext_call.return_data[0] > arg2:
            require ext_code.size(0x7ea2df0f49d1cf7cb3a328f0038822b08aeb0ac1)
            call 0x7ea2df0f49d1cf7cb3a328f0038822b08aeb0ac1.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, arg2
            require ext_call.success
            require ext_call.return_data[0]
            if eth.balance(this.address) > 0:
                require ext_code.size(0x7ea2df0f49d1cf7cb3a328f0038822b08aeb0ac1)
                call 0x7ea2df0f49d1cf7cb3a328f0038822b08aeb0ac1.deposit(address rg1) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining - 9710 wei
                    args msg.sender
                require ext_call.success
                require ext_call.return_data[0]
        else:
            if ext_call.return_data[0] <= 0:
                if arg2 <= 0:
                    if eth.balance(this.address) > 0:
                        require ext_code.size(0x7ea2df0f49d1cf7cb3a328f0038822b08aeb0ac1)
                        call 0x7ea2df0f49d1cf7cb3a328f0038822b08aeb0ac1.deposit(address rg1) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        require ext_call.success
                        require ext_call.return_data[0]
                else:
                    if eth.balance(this.address) > arg2:
                        require ext_code.size(0x7ea2df0f49d1cf7cb3a328f0038822b08aeb0ac1)
                        call 0x7ea2df0f49d1cf7cb3a328f0038822b08aeb0ac1.deposit(address rg1) with:
                           value arg2 wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        require ext_call.success
                        require ext_call.return_data[0]
                    else:
                        if eth.balance(this.address) > 0:
                            require ext_code.size(0x7ea2df0f49d1cf7cb3a328f0038822b08aeb0ac1)
                            call 0x7ea2df0f49d1cf7cb3a328f0038822b08aeb0ac1.deposit(address rg1) with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining - 9710 wei
                                args msg.sender
                            require ext_call.success
                            require ext_call.return_data[0]
            else:
                require ext_code.size(0x7ea2df0f49d1cf7cb3a328f0038822b08aeb0ac1)
                call 0x7ea2df0f49d1cf7cb3a328f0038822b08aeb0ac1.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, ext_call.return_data[0]
                require ext_call.success
                require ext_call.return_data[0]
                if arg2 - ext_call.return_data[0] <= 0:
                    if eth.balance(this.address) > 0:
                        require ext_code.size(0x7ea2df0f49d1cf7cb3a328f0038822b08aeb0ac1)
                        call 0x7ea2df0f49d1cf7cb3a328f0038822b08aeb0ac1.deposit(address rg1) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        require ext_call.success
                        require ext_call.return_data[0]
                else:
                    if eth.balance(this.address) > arg2 - ext_call.return_data[0]:
                        require ext_code.size(0x7ea2df0f49d1cf7cb3a328f0038822b08aeb0ac1)
                        call 0x7ea2df0f49d1cf7cb3a328f0038822b08aeb0ac1.deposit(address rg1) with:
                           value arg2 - ext_call.return_data[0] wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                        require ext_call.success
                        require ext_call.return_data[0]
                    else:
                        if eth.balance(this.address) > 0:
                            require ext_code.size(0x7ea2df0f49d1cf7cb3a328f0038822b08aeb0ac1)
                            call 0x7ea2df0f49d1cf7cb3a328f0038822b08aeb0ac1.deposit(address rg1) with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining - 9710 wei
                                args msg.sender
                            require ext_call.success
                            require ext_call.return_data[0]
    return 1
}



}
