contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0xa43edfe106d295e7c1e591a4b04b5598af9474c
    return code.data[58 len 4732]
}



// =====================  Runtime code  =====================


address devcon2TokenAddress;
mapping of uint256 stor1;
mapping of address stor2;
mapping of uint256 stor3;
uint256 upgradeCount;

function devcon2Token() {
    return devcon2TokenAddress
}

function upgradeCount() {
    return upgradeCount
}

function _fallback() payable {
    revert 
}

function isTokenUpgraded(bytes32 arg1) {
    return not not address(stor2[arg1])
}

function totalSupply() {
    require ext_code.size(devcon2TokenAddress)
    call devcon2TokenAddress.0x18160ddd with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function allowance(address arg1, address arg2) {
    if 0 == stor3[address(arg1)][address(arg2)]:
        return 0
    if 0 == arg1:
        return 0
    if 0 == arg2:
        return 0
    if address(stor2[stor3[address(arg1)][address(arg2)]]) != arg1:
        return 0
    return 1
}

function ownerOf(bytes32 arg1) {
    if 0 == arg1:
        return 0
    if address(stor2[arg1]):
        return address(stor2[arg1])
    require ext_code.size(devcon2TokenAddress)
    call devcon2TokenAddress.0x7dd56411 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function tokenId(address arg1) {
    if 0 == arg1:
        return 0
    if stor1[address(arg1)]:
        return stor1[address(arg1)]
    require ext_code.size(devcon2TokenAddress)
    call devcon2TokenAddress.0x70a08231 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    if address(stor2[ext_call.return_data[0]]):
        return 0
    return ext_call.return_data[0]
}

function balanceOf(address arg1) {
    if 0 == arg1:
        return 0
    if not stor1[address(arg1)]:
        require ext_code.size(devcon2TokenAddress)
        call devcon2TokenAddress.0x96286cc9 with:
             gas gas_remaining - 50 wei
            args arg1
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
        require ext_code.size(devcon2TokenAddress)
        call devcon2TokenAddress.0x70a08231 with:
             gas gas_remaining - 50 wei
            args arg1
        require ext_call.success
        if address(stor2[ext_call.return_data[0]]):
            return 0
    return 1
}

function isTokenOwner(address arg1) {
    if 0 == arg1:
        return 0
    if not stor1[address(arg1)]:
        require ext_code.size(devcon2TokenAddress)
        call devcon2TokenAddress.0x96286cc9 with:
             gas gas_remaining - 50 wei
            args arg1
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
        require ext_code.size(devcon2TokenAddress)
        call devcon2TokenAddress.0x70a08231 with:
             gas gas_remaining - 50 wei
            args arg1
        require ext_call.success
        if address(stor2[ext_call.return_data[0]]):
            return 0
    return 1
}

function upgrade() {
    require ext_code.size(devcon2TokenAddress)
    call devcon2TokenAddress.0x96286cc9 with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if stor1[address(msg.sender)]:
        return 0
    require ext_code.size(devcon2TokenAddress)
    call devcon2TokenAddress.0x70a08231 with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if address(stor2[ext_call.return_data[0]]):
        return 0
    require ext_code.size(devcon2TokenAddress)
    call devcon2TokenAddress.0x7dd56411 with:
         gas gas_remaining - 50 wei
        args ext_call.return_data[0]
    require ext_call.success
    if ext_call.return_data[12 len 20] != msg.sender:
        return 0
    stor1[address(msg.sender)] = ext_call.return_data[0]
    uint256(stor2[ext_call.return_data[0]]) = msg.sender or Mask(96, 160, uint256(stor2[ext_call.return_data[0]]))
    upgradeCount++
    emit Mint(ext_call.return_data[0], msg.sender);
    return 1
}

function transferFrom(address arg1, address arg2) {
    if 0 == arg2:
        return 0
    if not stor1[address(arg1)]:
        return 0
    if stor1[address(arg2)]:
        return 0
    if stor3[address(arg1)][address(msg.sender)] != stor1[address(arg1)]:
        return 0
    if 0 == stor1[address(arg2)]:
        require ext_code.size(devcon2TokenAddress)
        call devcon2TokenAddress.0x96286cc9 with:
             gas gas_remaining - 50 wei
            args arg2
        require ext_call.success
        if ext_call.return_data[0]:
            require ext_code.size(devcon2TokenAddress)
            call devcon2TokenAddress.0x70a08231 with:
                 gas gas_remaining - 50 wei
                args arg2
            require ext_call.success
            if not address(stor2[ext_call.return_data[0]]):
                return 0
    stor3[address(arg1)][address(msg.sender)] = 0
    stor1[address(arg1)] = 0
    stor1[arg2] = stor1[address(arg1)]
    uint256(stor2[stor1[address(arg1)]]) = arg2 or Mask(96, 160, uint256(stor2[stor1[address(arg1)]]))
    emit Transfer(1, arg1, arg2);
    require ext_code.size(0xaf5d0d115d89ab307d8a46fe1e080f39db7ce190)
    delegate 0xaf5d0d115d89ab307d8a46fe1e080f39db7ce190.0x76d66f5d with:
         gas gas_remaining - 50 wei
        args address(arg1), address(arg2), stor1[address(arg1)]
    require delegate.return_code
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if arg3 != 1:
        return 0
    if 0 == arg2:
        return 0
    if not stor1[address(arg1)]:
        return 0
    if stor1[address(arg2)]:
        return 0
    if stor3[address(arg1)][address(msg.sender)] != stor1[address(arg1)]:
        return 0
    if 0 == stor1[address(arg2)]:
        require ext_code.size(devcon2TokenAddress)
        call devcon2TokenAddress.0x96286cc9 with:
             gas gas_remaining - 50 wei
            args arg2
        require ext_call.success
        if ext_call.return_data[0]:
            require ext_code.size(devcon2TokenAddress)
            call devcon2TokenAddress.0x70a08231 with:
                 gas gas_remaining - 50 wei
                args arg2
            require ext_call.success
            if not address(stor2[ext_call.return_data[0]]):
                return 0
    stor3[address(arg1)][address(msg.sender)] = 0
    stor1[address(arg1)] = 0
    stor1[arg2] = stor1[address(arg1)]
    uint256(stor2[stor1[address(arg1)]]) = arg2 or Mask(96, 160, uint256(stor2[stor1[address(arg1)]]))
    emit Transfer(1, arg1, arg2);
    require ext_code.size(0xaf5d0d115d89ab307d8a46fe1e080f39db7ce190)
    delegate 0xaf5d0d115d89ab307d8a46fe1e080f39db7ce190.0x76d66f5d with:
         gas gas_remaining - 50 wei
        args address(arg1), address(arg2), stor1[address(arg1)]
    require delegate.return_code
    return 1
}

function approve(address arg1) {
    if 0 == stor1[address(msg.sender)]:
        require ext_code.size(devcon2TokenAddress)
        call devcon2TokenAddress.0x96286cc9 with:
             gas gas_remaining - 50 wei
            args msg.sender
        require ext_call.success
        if ext_call.return_data[0]:
            require ext_code.size(devcon2TokenAddress)
            call devcon2TokenAddress.0x70a08231 with:
                 gas gas_remaining - 50 wei
                args msg.sender
            require ext_call.success
            if not address(stor2[ext_call.return_data[0]]):
                require ext_code.size(devcon2TokenAddress)
                call devcon2TokenAddress.0x96286cc9 with:
                     gas gas_remaining - 50 wei
                    args msg.sender
                require ext_call.success
                if ext_call.return_data[0]:
                    if not stor1[address(msg.sender)]:
                        require ext_code.size(devcon2TokenAddress)
                        call devcon2TokenAddress.0x70a08231 with:
                             gas gas_remaining - 50 wei
                            args msg.sender
                        require ext_call.success
                        if ext_call.return_data[0]:
                            if not address(stor2[ext_call.return_data[0]]):
                                require ext_code.size(devcon2TokenAddress)
                                call devcon2TokenAddress.0x7dd56411 with:
                                     gas gas_remaining - 50 wei
                                    args ext_call.return_data[0]
                                require ext_call.success
                                if msg.sender == ext_call.return_data[12 len 20]:
                                    stor1[address(msg.sender)] = ext_call.return_data[0]
                                    uint256(stor2[ext_call.return_data[0]]) = msg.sender or Mask(96, 160, uint256(stor2[ext_call.return_data[0]]))
                                    upgradeCount++
                                    emit Mint(ext_call.return_data[0], msg.sender);
    if 0 == arg1:
        return 0
    if not stor1[address(msg.sender)]:
        return 0
    stor3[address(msg.sender)][address(arg1)] = stor1[address(msg.sender)]
    emit Approval(1, msg.sender, arg1);
    require ext_code.size(0xaf5d0d115d89ab307d8a46fe1e080f39db7ce190)
    delegate 0xaf5d0d115d89ab307d8a46fe1e080f39db7ce190.0x62c99e84 with:
         gas gas_remaining - 50 wei
        args msg.sender, address(arg1), stor1[address(msg.sender)]
    require delegate.return_code
    return 1
}

function approve(address arg1, uint256 arg2) {
    if 0 == stor1[address(msg.sender)]:
        require ext_code.size(devcon2TokenAddress)
        call devcon2TokenAddress.0x96286cc9 with:
             gas gas_remaining - 50 wei
            args msg.sender
        require ext_call.success
        if ext_call.return_data[0]:
            require ext_code.size(devcon2TokenAddress)
            call devcon2TokenAddress.0x70a08231 with:
                 gas gas_remaining - 50 wei
                args msg.sender
            require ext_call.success
            if not address(stor2[ext_call.return_data[0]]):
                require ext_code.size(devcon2TokenAddress)
                call devcon2TokenAddress.0x96286cc9 with:
                     gas gas_remaining - 50 wei
                    args msg.sender
                require ext_call.success
                if ext_call.return_data[0]:
                    if not stor1[address(msg.sender)]:
                        require ext_code.size(devcon2TokenAddress)
                        call devcon2TokenAddress.0x70a08231 with:
                             gas gas_remaining - 50 wei
                            args msg.sender
                        require ext_call.success
                        if ext_call.return_data[0]:
                            if not address(stor2[ext_call.return_data[0]]):
                                require ext_code.size(devcon2TokenAddress)
                                call devcon2TokenAddress.0x7dd56411 with:
                                     gas gas_remaining - 50 wei
                                    args ext_call.return_data[0]
                                require ext_call.success
                                if msg.sender == ext_call.return_data[12 len 20]:
                                    stor1[address(msg.sender)] = ext_call.return_data[0]
                                    uint256(stor2[ext_call.return_data[0]]) = msg.sender or Mask(96, 160, uint256(stor2[ext_call.return_data[0]]))
                                    upgradeCount++
                                    emit Mint(ext_call.return_data[0], msg.sender);
    if arg2 != 1:
        return 0
    if 0 == arg1:
        return 0
    if not stor1[address(msg.sender)]:
        return 0
    stor3[address(msg.sender)][address(arg1)] = stor1[address(msg.sender)]
    emit Approval(1, msg.sender, arg1);
    require ext_code.size(0xaf5d0d115d89ab307d8a46fe1e080f39db7ce190)
    delegate 0xaf5d0d115d89ab307d8a46fe1e080f39db7ce190.0x62c99e84 with:
         gas gas_remaining - 50 wei
        args msg.sender, address(arg1), stor1[address(msg.sender)]
    require delegate.return_code
    return 1
}

function transfer(address arg1) {
    if 0 == stor1[address(msg.sender)]:
        require ext_code.size(devcon2TokenAddress)
        call devcon2TokenAddress.0x96286cc9 with:
             gas gas_remaining - 50 wei
            args msg.sender
        require ext_call.success
        if ext_call.return_data[0]:
            require ext_code.size(devcon2TokenAddress)
            call devcon2TokenAddress.0x70a08231 with:
                 gas gas_remaining - 50 wei
                args msg.sender
            require ext_call.success
            if not address(stor2[ext_call.return_data[0]]):
                require ext_code.size(devcon2TokenAddress)
                call devcon2TokenAddress.0x96286cc9 with:
                     gas gas_remaining - 50 wei
                    args msg.sender
                require ext_call.success
                if ext_call.return_data[0]:
                    if not stor1[address(msg.sender)]:
                        require ext_code.size(devcon2TokenAddress)
                        call devcon2TokenAddress.0x70a08231 with:
                             gas gas_remaining - 50 wei
                            args msg.sender
                        require ext_call.success
                        if ext_call.return_data[0]:
                            if not address(stor2[ext_call.return_data[0]]):
                                require ext_code.size(devcon2TokenAddress)
                                call devcon2TokenAddress.0x7dd56411 with:
                                     gas gas_remaining - 50 wei
                                    args ext_call.return_data[0]
                                require ext_call.success
                                if msg.sender == ext_call.return_data[12 len 20]:
                                    stor1[address(msg.sender)] = ext_call.return_data[0]
                                    uint256(stor2[ext_call.return_data[0]]) = msg.sender or Mask(96, 160, uint256(stor2[ext_call.return_data[0]]))
                                    upgradeCount++
                                    emit Mint(ext_call.return_data[0], msg.sender);
    if 0 == arg1:
        return 0
    if not stor1[address(msg.sender)]:
        return 0
    if stor1[address(arg1)]:
        return 0
    if 0 == stor1[address(arg1)]:
        require ext_code.size(devcon2TokenAddress)
        call devcon2TokenAddress.0x96286cc9 with:
             gas gas_remaining - 50 wei
            args arg1
        require ext_call.success
        if ext_call.return_data[0]:
            require ext_code.size(devcon2TokenAddress)
            call devcon2TokenAddress.0x70a08231 with:
                 gas gas_remaining - 50 wei
                args arg1
            require ext_call.success
            if not address(stor2[ext_call.return_data[0]]):
                return 0
    stor1[address(msg.sender)] = 0
    stor1[arg1] = stor1[address(msg.sender)]
    uint256(stor2[stor1[address(msg.sender)]]) = arg1 or Mask(96, 160, uint256(stor2[stor1[address(msg.sender)]]))
    emit Transfer(1, msg.sender, arg1);
    require ext_code.size(0xaf5d0d115d89ab307d8a46fe1e080f39db7ce190)
    delegate 0xaf5d0d115d89ab307d8a46fe1e080f39db7ce190.0x76d66f5d with:
         gas gas_remaining - 50 wei
        args msg.sender, address(arg1), stor1[address(msg.sender)]
    require delegate.return_code
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if 0 == stor1[address(msg.sender)]:
        require ext_code.size(devcon2TokenAddress)
        call devcon2TokenAddress.0x96286cc9 with:
             gas gas_remaining - 50 wei
            args msg.sender
        require ext_call.success
        if ext_call.return_data[0]:
            require ext_code.size(devcon2TokenAddress)
            call devcon2TokenAddress.0x70a08231 with:
                 gas gas_remaining - 50 wei
                args msg.sender
            require ext_call.success
            if not address(stor2[ext_call.return_data[0]]):
                require ext_code.size(devcon2TokenAddress)
                call devcon2TokenAddress.0x96286cc9 with:
                     gas gas_remaining - 50 wei
                    args msg.sender
                require ext_call.success
                if ext_call.return_data[0]:
                    if not stor1[address(msg.sender)]:
                        require ext_code.size(devcon2TokenAddress)
                        call devcon2TokenAddress.0x70a08231 with:
                             gas gas_remaining - 50 wei
                            args msg.sender
                        require ext_call.success
                        if ext_call.return_data[0]:
                            if not address(stor2[ext_call.return_data[0]]):
                                require ext_code.size(devcon2TokenAddress)
                                call devcon2TokenAddress.0x7dd56411 with:
                                     gas gas_remaining - 50 wei
                                    args ext_call.return_data[0]
                                require ext_call.success
                                if msg.sender == ext_call.return_data[12 len 20]:
                                    stor1[address(msg.sender)] = ext_call.return_data[0]
                                    uint256(stor2[ext_call.return_data[0]]) = msg.sender or Mask(96, 160, uint256(stor2[ext_call.return_data[0]]))
                                    upgradeCount++
                                    emit Mint(ext_call.return_data[0], msg.sender);
    if arg2 != 1:
        return 0
    if 0 == arg1:
        return 0
    if not stor1[address(msg.sender)]:
        return 0
    if stor1[address(arg1)]:
        return 0
    if 0 == stor1[address(arg1)]:
        require ext_code.size(devcon2TokenAddress)
        call devcon2TokenAddress.0x96286cc9 with:
             gas gas_remaining - 50 wei
            args arg1
        require ext_call.success
        if ext_call.return_data[0]:
            require ext_code.size(devcon2TokenAddress)
            call devcon2TokenAddress.0x70a08231 with:
                 gas gas_remaining - 50 wei
                args arg1
            require ext_call.success
            if not address(stor2[ext_call.return_data[0]]):
                return 0
    stor1[address(msg.sender)] = 0
    stor1[arg1] = stor1[address(msg.sender)]
    uint256(stor2[stor1[address(msg.sender)]]) = arg1 or Mask(96, 160, uint256(stor2[stor1[address(msg.sender)]]))
    emit Transfer(1, msg.sender, arg1);
    require ext_code.size(0xaf5d0d115d89ab307d8a46fe1e080f39db7ce190)
    delegate 0xaf5d0d115d89ab307d8a46fe1e080f39db7ce190.0x76d66f5d with:
         gas gas_remaining - 50 wei
        args msg.sender, address(arg1), stor1[address(msg.sender)]
    require delegate.return_code
    return 1
}

function proxyUpgrade(address arg1, address arg2, bytes arg3) {
    if arg1 != 0:
        if arg2 != 0:
            require ext_code.size(devcon2TokenAddress)
            call devcon2TokenAddress.0x96286cc9 with:
                 gas gas_remaining - 50 wei
                args arg1
            require ext_call.success
            if ext_call.return_data[0]:
                require ext_code.size(devcon2TokenAddress)
                call devcon2TokenAddress.0x70a08231 with:
                     gas gas_remaining - 50 wei
                    args arg1
                require ext_call.success
                if ext_call.return_data[0]:
                    if not address(stor2[ext_call.return_data[0]]):
                        if not stor1[address(arg2)]:
                            if stor1[address(arg2)] != 0:
                                require ext_code.size(0xec0d003dbc24d7b71ea4f4b31051c469fe5cb4c8)
                                delegate 0xec0d003dbc24d7b71ea4f4b31051c469fe5cb4c8.0x39cdde32 with:
                                     gas gas_remaining - 50 wei
                                    args sha3(this.address, arg1, arg2), Array(len=arg3.length, data=arg3[all]), address(arg1)
                                require delegate.return_code
                                if delegate.return_data[0]:
                                    uint256(stor2[ext_call.return_data[0]]) = arg2 or Mask(96, 160, uint256(stor2[ext_call.return_data[0]]))
                                    stor1[address(arg2)] = ext_call.return_data[0]
                                    upgradeCount++
                                    emit Mint(ext_call.return_data[0], arg2);
                            else:
                                require ext_code.size(devcon2TokenAddress)
                                call devcon2TokenAddress.0x96286cc9 with:
                                     gas gas_remaining - 50 wei
                                    args arg2
                                require ext_call.success
                                if not ext_call.return_data[0]:
                                    require ext_code.size(0xec0d003dbc24d7b71ea4f4b31051c469fe5cb4c8)
                                    delegate 0xec0d003dbc24d7b71ea4f4b31051c469fe5cb4c8.0x39cdde32 with:
                                         gas gas_remaining - 50 wei
                                        args sha3(this.address, arg1, arg2), Array(len=arg3.length, data=arg3[all]), address(arg1)
                                    require delegate.return_code
                                    if delegate.return_data[0]:
                                        uint256(stor2[ext_call.return_data[0]]) = arg2 or Mask(96, 160, uint256(stor2[ext_call.return_data[0]]))
                                        stor1[address(arg2)] = ext_call.return_data[0]
                                        upgradeCount++
                                        emit Mint(ext_call.return_data[0], arg2);
                                else:
                                    require ext_code.size(devcon2TokenAddress)
                                    call devcon2TokenAddress.0x70a08231 with:
                                         gas gas_remaining - 50 wei
                                        args arg2
                                    require ext_call.success
                                    if address(stor2[ext_call.return_data[0]]):
                                        require ext_code.size(0xec0d003dbc24d7b71ea4f4b31051c469fe5cb4c8)
                                        delegate 0xec0d003dbc24d7b71ea4f4b31051c469fe5cb4c8.0x39cdde32 with:
                                             gas gas_remaining - 50 wei
                                            args sha3(this.address, arg1, arg2), Array(len=arg3.length, data=arg3[all]), address(arg1)
                                        require delegate.return_code
                                        if delegate.return_data[0]:
                                            uint256(stor2[ext_call.return_data[0]]) = arg2 or Mask(96, 160, uint256(stor2[ext_call.return_data[0]]))
                                            stor1[address(arg2)] = ext_call.return_data[0]
                                            upgradeCount++
                                            emit Mint(ext_call.return_data[0], arg2);
                            return 0
                        else:
                            return 0
                    else:
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



}
