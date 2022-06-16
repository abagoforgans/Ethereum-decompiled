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
    return code.data[248 len 3001]
}



// =====================  Runtime code  =====================


const sub_61dff1f3(?) = 50

const sub_8765d1c6(?) = 5

const denominator = 100


address stor0;
uint256 jackpot;
array of address stor2;
mapping of struct sub_50c8b533;
mapping of struct sub_abbd27a6;
uint256 stor5;

function sub_0aaaea93(?) {
    return sub_50c8b533[address(msg.sender)].field_256
}

function getToken() {
    return sub_50c8b533[address(msg.sender)].field_768
}

function sub_50c8b533(?) {
    return sub_50c8b533[address(msg.sender)].field_256
}

function jackpot() {
    return jackpot
}

function sub_78803c92(?) {
    return sub_abbd27a6[arg1].field_768
}

function sub_abbd27a6(?) {
    return sub_abbd27a6[arg1].field_768
}

function reset() {
    require msg.sender == stor0
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    jackpot += msg.value
    stor5++
    if not sub_50c8b533[address(msg.sender)].field_0:
        call msg.sender with:
             gas 2300 wei
        require ext_call.success
        sub_50c8b533[address(msg.sender)].field_0 = stor2.length
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            idx = stor2.length + 1
            while stor2.length > idx:
                uint256(stor2[idx]) = 0
                idx = idx + 1
                continue 
        address(stor2[stor2.length]) = msg.sender
    sub_50c8b533[address(msg.sender)].field_512 = msg.value
    sub_50c8b533[address(msg.sender)].field_256 = stor5
    sub_abbd27a6[stor5].field_0 = sub_50c8b533[address(msg.sender)].field_0
    sub_abbd27a6[stor5].field_256 = sub_50c8b533[address(msg.sender)].field_256
    sub_abbd27a6[stor5].field_512 = sub_50c8b533[address(msg.sender)].field_512
    sub_abbd27a6[stor5].field_768 = sub_50c8b533[address(msg.sender)].field_768
    emit 0xb2ea5df9: address(msg.sender), stor5, msg.value, jackpot
    require sub_abbd27a6[stor5].field_0
    sub_abbd27a6[stor5].field_768 = sha3(block.timestamp, msg.sender, stor5) % 1024 % 445
    require sub_abbd27a6[stor5].field_0 < stor2.length
    if sha3(block.timestamp, msg.sender, stor5) % 1024 % 445 == 444:
        call address(stor2[stor4[stor5].field_0]) with:
           value 50 * eth.balance(this.address) / 100 wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            emit 0xae9c42bb: sha3(block.timestamp, msg.sender, stor5) % 1024 % 445, address(stor2[stor4[stor5].field_0]), block.timestamp, 50 * eth.balance(this.address) / 100, eth.balance(this.address)
            call stor0 with:
               value eth.balance(this.address) / 100 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
    else:
        if sha3(block.timestamp, msg.sender, stor5) % 1024 % 445 == 333:
            call address(stor2[stor4[stor5].field_0]) with:
               value 5 * eth.balance(this.address) / 100 wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                emit 0x530bea69: sha3(block.timestamp, msg.sender, stor5) % 1024 % 445, address(stor2[stor4[stor5].field_0]), block.timestamp, 5 * eth.balance(this.address) / 100, eth.balance(this.address)
                call stor0 with:
                   value eth.balance(this.address) / 100 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        else:
            if sha3(block.timestamp, msg.sender, stor5) % 1024 % 445 == 222:
                call address(stor2[stor4[stor5].field_0]) with:
                   value 5 * eth.balance(this.address) / 100 wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    emit 0x530bea69: sha3(block.timestamp, msg.sender, stor5) % 1024 % 445, address(stor2[stor4[stor5].field_0]), block.timestamp, 5 * eth.balance(this.address) / 100, eth.balance(this.address)
                    call stor0 with:
                       value eth.balance(this.address) / 100 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
            else:
                if sha3(block.timestamp, msg.sender, stor5) % 1024 % 445 != 111:
                    if not bool(sha3(block.timestamp, msg.sender, stor5) % 1024 % 445):
                        call address(stor2[stor4[stor5].field_0]) with:
                           value sub_abbd27a6[stor5].field_513 wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
                            emit 0xe0034318: sha3(block.timestamp, msg.sender, stor5) % 1024 % 445, address(stor2[stor4[stor5].field_0]), block.timestamp, 2 * Mask(256, -1, sub_abbd27a6[stor5].field_513), eth.balance(this.address)
                else:
                    call address(stor2[stor4[stor5].field_0]) with:
                       value 5 * eth.balance(this.address) / 100 wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        emit 0x530bea69: sha3(block.timestamp, msg.sender, stor5) % 1024 % 445, address(stor2[stor4[stor5].field_0]), block.timestamp, 5 * eth.balance(this.address) / 100, eth.balance(this.address)
                        call stor0 with:
                           value eth.balance(this.address) / 100 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
}



}
