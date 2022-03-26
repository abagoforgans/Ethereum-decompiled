contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0xa43edfe106d295e7c1e591a4b04b5598af9474c
    return code.data[57 len 4815]
}



// =====================  Runtime code  =====================


address devcon2TokenAddress;
mapping of uint256 stor1;
mapping of address stor2;
mapping of uint256 stor3;
uint256 upgradeCount;

function isTokenUpgraded(bytes32 arg1) {
    return bool(stor2[arg1])
}

function devcon2Token() {
    return devcon2TokenAddress
}

function upgradeCount() {
    return upgradeCount
}

function _fallback() payable {
    revert 
}

function totalSupply() {
    require ext_code.size(devcon2TokenAddress)
    call devcon2TokenAddress.0x18160ddd with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function allowance(address arg1, address arg2) {
    if not stor3[address(arg1)][address(arg2)]:
        return 0
    if not arg1:
        return 0
    if not arg2:
        return 0
    if stor2[stor3[address(arg1)][address(arg2)]] != arg1:
        return 0
    return 1
}

function ownerOf(bytes32 arg1) {
    if not arg1:
        return 0
    if stor2[arg1]:
        return stor2[arg1]
    require ext_code.size(devcon2TokenAddress)
    call devcon2TokenAddress.0x7dd56411 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function tokenId(address arg1) {
    if not arg1:
        return 0
    if stor1[address(arg1)]:
        return stor1[address(arg1)]
    require ext_code.size(devcon2TokenAddress)
    call devcon2TokenAddress.0x70a08231 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    if stor2[ext_call.return_data[0]]:
        return 0
    return ext_call.return_data[0]
}

function balanceOf(address arg1) {
    if not arg1:
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
        if stor2[ext_call.return_data[0]]:
            return 0
    return 1
}

function isTokenOwner(address arg1) {
    if not arg1:
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
        if stor2[ext_call.return_data[0]]:
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
    if stor2[ext_call.return_data[0]]:
        return 0
    require ext_code.size(devcon2TokenAddress)
    call devcon2TokenAddress.0x7dd56411 with:
         gas gas_remaining - 50 wei
        args ext_call.return_data[0]
    require ext_call.success
    if ext_call.return_data[12 len 20] != msg.sender:
        return 0
    stor1[address(msg.sender)] = ext_call.return_data[0]
    stor2[ext_call.return_data[0]] = msg.sender
    upgradeCount++
    emit Mint(ext_call.return_data[0], msg.sender);
    return 1
}

function transferFrom(address arg1, address arg2) {
    if not arg2:
        return 0
    if not stor1[address(arg1)]:
        return 0
    if stor1[address(arg2)]:
        return 0
    if stor3[address(arg1)][address(msg.sender)] != stor1[address(arg1)]:
        return 0
    if not stor1[address(arg2)]:
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
            if not stor2[ext_call.return_data[0]]:
                return 0
    stor3[address(arg1)][address(msg.sender)] = 0
    stor1[address(arg1)] = 0
    stor1[arg2] = stor1[address(arg1)]
    stor2[stor1[address(arg1)]] = arg2
    emit Transfer(1, arg1, arg2);
    require ext_code.size(0xee4e09a72c5f8d60ce09b4b90dd1ee680fc375fe)
    delegate 0xee4e09a72c5f8d60ce09b4b90dd1ee680fc375fe.0x76d66f5d with:
         gas gas_remaining - 50 wei
        args address(arg1), address(arg2), stor1[address(arg1)]
    require delegate.return_code
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if arg3 != 1:
        return 0
    if not arg2:
        return 0
    if not stor1[address(arg1)]:
        return 0
    if stor1[address(arg2)]:
        return 0
    if stor3[address(arg1)][address(msg.sender)] != stor1[address(arg1)]:
        return 0
    if not stor1[address(arg2)]:
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
            if not stor2[ext_call.return_data[0]]:
                return 0
    stor3[address(arg1)][address(msg.sender)] = 0
    stor1[address(arg1)] = 0
    stor1[arg2] = stor1[address(arg1)]
    stor2[stor1[address(arg1)]] = arg2
    emit Transfer(1, arg1, arg2);
    require ext_code.size(0xee4e09a72c5f8d60ce09b4b90dd1ee680fc375fe)
    delegate 0xee4e09a72c5f8d60ce09b4b90dd1ee680fc375fe.0x76d66f5d with:
         gas gas_remaining - 50 wei
        args address(arg1), address(arg2), stor1[address(arg1)]
    require delegate.return_code
    return 1
}

function proxyUpgrade(address arg1, address arg2, bytes arg3) {
    if not arg1:
        return 0
    if not arg2:
        return 0
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
    if not ext_call.return_data[0]:
        return 0
    if stor2[ext_call.return_data[0]]:
        return 0
    if stor1[address(arg2)]:
        return 0
    if arg1 != arg2:
        if not stor1[address(arg2)]:
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
                if not stor2[ext_call.return_data[0]]:
                    return 0
    require ext_code.size(0x9e475f8b49be49daf0571a53dda0fc9bfdbcf505)
    delegate 0x9e475f8b49be49daf0571a53dda0fc9bfdbcf505.0x39cdde32 with:
         gas gas_remaining - 50 wei
        args sha3(this.address, arg1, arg2), Array(len=arg3.length, data=arg3[all]), address(arg1)
    require delegate.return_code
    if not delegate.return_data[0]:
        return 0
    stor2[ext_call.return_data[0]] = arg2
    stor1[address(arg2)] = ext_call.return_data[0]
    upgradeCount++
    emit Mint(ext_call.return_data[0], arg2);
    return 1
}

function approve(address arg1) {
    if not stor1[address(msg.sender)]:
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
            if not stor2[ext_call.return_data[0]]:
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
                            if not stor2[ext_call.return_data[0]]:
                                require ext_code.size(devcon2TokenAddress)
                                call devcon2TokenAddress.0x7dd56411 with:
                                     gas gas_remaining - 50 wei
                                    args ext_call.return_data[0]
                                require ext_call.success
                                if ext_call.return_data[12 len 20] == msg.sender:
                                    stor1[address(msg.sender)] = ext_call.return_data[0]
                                    stor2[ext_call.return_data[0]] = msg.sender
                                    upgradeCount++
                                    emit Mint(ext_call.return_data[0], msg.sender);
    if not arg1:
        return 0
    if not stor1[address(msg.sender)]:
        return 0
    stor3[address(msg.sender)][address(arg1)] = stor1[address(msg.sender)]
    emit Approval(1, msg.sender, arg1);
    require ext_code.size(0xee4e09a72c5f8d60ce09b4b90dd1ee680fc375fe)
    delegate 0xee4e09a72c5f8d60ce09b4b90dd1ee680fc375fe.0x62c99e84 with:
         gas gas_remaining - 50 wei
        args msg.sender, address(arg1), stor1[address(msg.sender)]
    require delegate.return_code
    return 1
}

function approve(address arg1, uint256 arg2) {
    if not stor1[address(msg.sender)]:
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
            if not stor2[ext_call.return_data[0]]:
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
                            if not stor2[ext_call.return_data[0]]:
                                require ext_code.size(devcon2TokenAddress)
                                call devcon2TokenAddress.0x7dd56411 with:
                                     gas gas_remaining - 50 wei
                                    args ext_call.return_data[0]
                                require ext_call.success
                                if ext_call.return_data[12 len 20] == msg.sender:
                                    stor1[address(msg.sender)] = ext_call.return_data[0]
                                    stor2[ext_call.return_data[0]] = msg.sender
                                    upgradeCount++
                                    emit Mint(ext_call.return_data[0], msg.sender);
    if arg2 != 1:
        return 0
    if not arg1:
        return 0
    if not stor1[address(msg.sender)]:
        return 0
    stor3[address(msg.sender)][address(arg1)] = stor1[address(msg.sender)]
    emit Approval(1, msg.sender, arg1);
    require ext_code.size(0xee4e09a72c5f8d60ce09b4b90dd1ee680fc375fe)
    delegate 0xee4e09a72c5f8d60ce09b4b90dd1ee680fc375fe.0x62c99e84 with:
         gas gas_remaining - 50 wei
        args msg.sender, address(arg1), stor1[address(msg.sender)]
    require delegate.return_code
    return 1
}

function transfer(address arg1) {
    if not stor1[address(msg.sender)]:
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
            if not stor2[ext_call.return_data[0]]:
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
                            if not stor2[ext_call.return_data[0]]:
                                require ext_code.size(devcon2TokenAddress)
                                call devcon2TokenAddress.0x7dd56411 with:
                                     gas gas_remaining - 50 wei
                                    args ext_call.return_data[0]
                                require ext_call.success
                                if ext_call.return_data[12 len 20] == msg.sender:
                                    stor1[address(msg.sender)] = ext_call.return_data[0]
                                    stor2[ext_call.return_data[0]] = msg.sender
                                    upgradeCount++
                                    emit Mint(ext_call.return_data[0], msg.sender);
    if not arg1:
        return 0
    if not stor1[address(msg.sender)]:
        return 0
    if stor1[address(arg1)]:
        return 0
    if not stor1[address(arg1)]:
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
            if not stor2[ext_call.return_data[0]]:
                return 0
    stor1[address(msg.sender)] = 0
    stor1[arg1] = stor1[address(msg.sender)]
    stor2[stor1[address(msg.sender)]] = arg1
    emit Transfer(1, msg.sender, arg1);
    require ext_code.size(0xee4e09a72c5f8d60ce09b4b90dd1ee680fc375fe)
    delegate 0xee4e09a72c5f8d60ce09b4b90dd1ee680fc375fe.0x76d66f5d with:
         gas gas_remaining - 50 wei
        args msg.sender, address(arg1), stor1[address(msg.sender)]
    require delegate.return_code
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if not stor1[address(msg.sender)]:
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
            if not stor2[ext_call.return_data[0]]:
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
                            if not stor2[ext_call.return_data[0]]:
                                require ext_code.size(devcon2TokenAddress)
                                call devcon2TokenAddress.0x7dd56411 with:
                                     gas gas_remaining - 50 wei
                                    args ext_call.return_data[0]
                                require ext_call.success
                                if ext_call.return_data[12 len 20] == msg.sender:
                                    stor1[address(msg.sender)] = ext_call.return_data[0]
                                    stor2[ext_call.return_data[0]] = msg.sender
                                    upgradeCount++
                                    emit Mint(ext_call.return_data[0], msg.sender);
    if arg2 != 1:
        return 0
    if not arg1:
        return 0
    if not stor1[address(msg.sender)]:
        return 0
    if stor1[address(arg1)]:
        return 0
    if not stor1[address(arg1)]:
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
            if not stor2[ext_call.return_data[0]]:
                return 0
    stor1[address(msg.sender)] = 0
    stor1[arg1] = stor1[address(msg.sender)]
    stor2[stor1[address(msg.sender)]] = arg1
    emit Transfer(1, msg.sender, arg1);
    require ext_code.size(0xee4e09a72c5f8d60ce09b4b90dd1ee680fc375fe)
    delegate 0xee4e09a72c5f8d60ce09b4b90dd1ee680fc375fe.0x76d66f5d with:
         gas gas_remaining - 50 wei
        args msg.sender, address(arg1), stor1[address(msg.sender)]
    require delegate.return_code
    return 1
}



}
