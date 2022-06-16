contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
array of uint256 stor2;

function _fallback() payable {
    stor1 = 0
    require not msg.value
    stor2.length = 0
    idx = 0
    while stor2.length > idx:
        stor2[idx] = 0
        idx = idx + 1
        continue 
    stor2.length = 1
    if not stor2.length <= 1:
        idx = 1
        while stor2.length > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
    stor0 = msg.sender
    return code.data[248 len 2986]
}



// =====================  Runtime code  =====================


const sub_61dff1f3(?) = 50

const sub_8765d1c6(?) = 5

const denominator = 100


address stor0;
uint256 jackpot;
array of address addresses;
mapping of struct sub_605878d5;
mapping of struct sub_8762affd;
uint256 stor5;

function sub_605878d5(?) {
    return sub_605878d5[arg1].field_0, sub_605878d5[arg1].field_256, sub_605878d5[arg1].field_512, sub_605878d5[arg1].field_768
}

function jackpot() {
    return jackpot
}

function sub_8762affd(?) {
    return sub_8762affd[arg1].field_0, sub_8762affd[arg1].field_256, sub_8762affd[arg1].field_512, sub_8762affd[arg1].field_768
}

function addresses(uint256 arg1) {
    require arg1 < addresses.length
    return address(addresses[arg1])
}

function reset() {
    require msg.sender == stor0
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_275e5dbe(?) {
    if not sub_605878d5[address(msg.sender)].field_0:
        call msg.sender with:
             gas 2300 wei
        require ext_call.success
        sub_605878d5[address(msg.sender)].field_0 = addresses.length
        addresses.length++
        if not addresses.length <= addresses.length + 1:
            idx = addresses.length + 1
            while addresses.length > idx:
                uint256(addresses[idx]) = 0
                idx = idx + 1
                continue 
        address(addresses[addresses.length]) = msg.sender
    sub_605878d5[address(msg.sender)].field_512 = msg.value
    sub_605878d5[address(msg.sender)].field_256 = arg1
    sub_8762affd[arg1].field_0 = sub_605878d5[address(msg.sender)].field_0
    sub_8762affd[arg1].field_256 = sub_605878d5[address(msg.sender)].field_256
    sub_8762affd[arg1].field_512 = sub_605878d5[address(msg.sender)].field_512
    sub_8762affd[arg1].field_768 = sub_605878d5[address(msg.sender)].field_768
}

function revealResult(uint256 arg1, bytes32 arg2) {
    require sub_8762affd[arg2].field_0
    sub_8762affd[arg2].field_768 = arg1
    require sub_8762affd[arg2].field_0 < addresses.length
    if arg1 == 444:
        call address(addresses[stor4[arg2].field_0]) with:
           value 50 * eth.balance(this.address) / 100 wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            emit 0xae9c42bb: arg1, address(addresses[stor4[arg2].field_0]), block.timestamp, 50 * eth.balance(this.address) / 100, eth.balance(this.address)
            call stor0 with:
               value eth.balance(this.address) / 100 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
    else:
        if arg1 == 333:
            call address(addresses[stor4[arg2].field_0]) with:
               value 5 * eth.balance(this.address) / 100 wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                emit 0x530bea69: arg1, address(addresses[stor4[arg2].field_0]), block.timestamp, 5 * eth.balance(this.address) / 100, eth.balance(this.address)
                call stor0 with:
                   value eth.balance(this.address) / 100 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        else:
            if arg1 == 222:
                call address(addresses[stor4[arg2].field_0]) with:
                   value 5 * eth.balance(this.address) / 100 wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    emit 0x530bea69: arg1, address(addresses[stor4[arg2].field_0]), block.timestamp, 5 * eth.balance(this.address) / 100, eth.balance(this.address)
                    call stor0 with:
                       value eth.balance(this.address) / 100 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
            else:
                if arg1 != 111:
                    if not bool(arg1):
                        call address(addresses[stor4[arg2].field_0]) with:
                           value sub_8762affd[arg2].field_513 wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
                            emit 0xe0034318: arg1, address(addresses[stor4[arg2].field_0]), block.timestamp, 2 * Mask(256, -1, sub_8762affd[arg2].field_513), eth.balance(this.address)
                else:
                    call address(addresses[stor4[arg2].field_0]) with:
                       value 5 * eth.balance(this.address) / 100 wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        emit 0x530bea69: arg1, address(addresses[stor4[arg2].field_0]), block.timestamp, 5 * eth.balance(this.address) / 100, eth.balance(this.address)
                        call stor0 with:
                           value eth.balance(this.address) / 100 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
}

function _fallback() payable {
    jackpot += msg.value
    stor5++
    if not sub_605878d5[address(msg.sender)].field_0:
        call msg.sender with:
             gas 2300 wei
        require ext_call.success
        sub_605878d5[address(msg.sender)].field_0 = addresses.length
        addresses.length++
        if not addresses.length <= addresses.length + 1:
            idx = addresses.length + 1
            while addresses.length > idx:
                uint256(addresses[idx]) = 0
                idx = idx + 1
                continue 
        address(addresses[addresses.length]) = msg.sender
    sub_605878d5[address(msg.sender)].field_512 = msg.value
    sub_605878d5[address(msg.sender)].field_256 = stor5
    sub_8762affd[stor5].field_0 = sub_605878d5[address(msg.sender)].field_0
    sub_8762affd[stor5].field_256 = sub_605878d5[address(msg.sender)].field_256
    sub_8762affd[stor5].field_512 = sub_605878d5[address(msg.sender)].field_512
    sub_8762affd[stor5].field_768 = sub_605878d5[address(msg.sender)].field_768
    emit 0xb2ea5df9: address(msg.sender), stor5, msg.value, jackpot
    require sub_8762affd[stor5].field_0
    sub_8762affd[stor5].field_768 = sha3(block.timestamp, msg.sender, stor5) % 1024 % 445
    require sub_8762affd[stor5].field_0 < addresses.length
    if sha3(block.timestamp, msg.sender, stor5) % 1024 % 445 == 444:
        call address(addresses[stor4[stor5].field_0]) with:
           value 50 * eth.balance(this.address) / 100 wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            emit 0xae9c42bb: sha3(block.timestamp, msg.sender, stor5) % 1024 % 445, address(addresses[stor4[stor5].field_0]), block.timestamp, 50 * eth.balance(this.address) / 100, eth.balance(this.address)
            call stor0 with:
               value eth.balance(this.address) / 100 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
    else:
        if sha3(block.timestamp, msg.sender, stor5) % 1024 % 445 == 333:
            call address(addresses[stor4[stor5].field_0]) with:
               value 5 * eth.balance(this.address) / 100 wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                emit 0x530bea69: sha3(block.timestamp, msg.sender, stor5) % 1024 % 445, address(addresses[stor4[stor5].field_0]), block.timestamp, 5 * eth.balance(this.address) / 100, eth.balance(this.address)
                call stor0 with:
                   value eth.balance(this.address) / 100 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        else:
            if sha3(block.timestamp, msg.sender, stor5) % 1024 % 445 == 222:
                call address(addresses[stor4[stor5].field_0]) with:
                   value 5 * eth.balance(this.address) / 100 wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    emit 0x530bea69: sha3(block.timestamp, msg.sender, stor5) % 1024 % 445, address(addresses[stor4[stor5].field_0]), block.timestamp, 5 * eth.balance(this.address) / 100, eth.balance(this.address)
                    call stor0 with:
                       value eth.balance(this.address) / 100 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
            else:
                if sha3(block.timestamp, msg.sender, stor5) % 1024 % 445 != 111:
                    if not bool(sha3(block.timestamp, msg.sender, stor5) % 1024 % 445):
                        call address(addresses[stor4[stor5].field_0]) with:
                           value sub_8762affd[stor5].field_513 wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
                            emit 0xe0034318: sha3(block.timestamp, msg.sender, stor5) % 1024 % 445, address(addresses[stor4[stor5].field_0]), block.timestamp, 2 * Mask(256, -1, sub_8762affd[stor5].field_513), eth.balance(this.address)
                else:
                    call address(addresses[stor4[stor5].field_0]) with:
                       value 5 * eth.balance(this.address) / 100 wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        emit 0x530bea69: sha3(block.timestamp, msg.sender, stor5) % 1024 % 445, address(addresses[stor4[stor5].field_0]), block.timestamp, 5 * eth.balance(this.address) / 100, eth.balance(this.address)
                        call stor0 with:
                           value eth.balance(this.address) / 100 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
}



}
