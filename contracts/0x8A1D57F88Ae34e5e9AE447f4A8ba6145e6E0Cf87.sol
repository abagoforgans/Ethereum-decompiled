contract main {


// =======================  Init code  ======================


array of uint256 stor4;

function _fallback() payable {
    require 0 < stor4.length
    uint8(stor4.field_0) = 102
    require 1 < stor4.length
    uint8(stor4.field_8) = 'i'
    require 2 < stor4.length
    uint8(stor4.field_16) = 'n'
    require 3 < stor4.length
    uint8(stor4.field_24) = 'a'
    require 4 < stor4.length
    uint8(stor4.field_32) = 'l'
    require 5 < stor4.length
    uint8(stor4.field_40) = 'i'
    require 6 < stor4.length
    uint8(stor4.field_48) = 'z'
    require 7 < stor4.length
    uint8(stor4.field_56) = 'e'
    if not stor4.length:
        emit 0xfb8c779e: 32, stor4.length
    else:
        mem[160] = uint256(stor4.field_0) / 256^0 << 248
        idx = 160
        s = 0
        while (32 * stor4.length) + 160 > idx + 32:
            mem[idx + 32] = uint256(stor4.field_0) / 256^(-(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1) << 248
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        emit 0xfb8c779e: Array(len=stor4.length, data=mem[160 len 32 * stor4.length])
    return code.data[1159 len 2045]
}



// =====================  Runtime code  =====================


uint256 stor0;
mapping of uint256 balances;
array of address stor2;
mapping of uint256 investors;
array of uint256 stor4;

function balances(address arg1) payable {
    return balances[arg1]
}

function get() payable {
    return balances[address(msg.sender)]
}

function investors(address arg1) payable {
    return investors[arg1]
}

function get_user(address arg1) payable {
    return balances[address(arg1)]
}

function _fallback() payable {
  stop
}

function invest() payable {
    require investors[address(msg.sender)]
    investors[address(msg.sender)] += msg.value
}

function finalize(address arg1, uint256 arg2) payable {
    if msg.sender == 0x3c94923400ccc528e8ab0f849edafca06fe332e5:
        if arg2 <= 0:
            uint256(stor[sha3(mem[0 len 64])]) = 0
        else:
            call arg1 with:
               value 5 * balances[address(arg1)] wei
                 gas 0 wei
            balances[address(arg1)] = 0
        idx = 0
        while idx < stor0:
            mem[0] = 0
            if address(stor[code.data[2013 len 32] + idx]) == arg1:
                require idx < stor0
                mem[0] = 0
                address(stor[code.data[2013 len 32] + idx]) = 0
            idx = idx + 1
            continue 
}

function sub_444bdb1b(?) payable {
    idx = 0
    s = 0
    while idx < stor0:
        mem[0] = address(stor[code.data[2013 len 32] + idx])
        mem[32] = 1
        idx = idx + 1
        s = (5 * balances[address(stor[code.data[2013 len 32] + idx])]) + s
        continue 
    s = 0
    idx = 0
    while idx < stor2.length:
        mem[0] = stor2[idx]
        mem[32] = 3
        s = s + investors[stor2[idx]]
        idx = idx + 1
        continue 
    return (100 * s * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length / eth.balance(this.address) - (5 * uint256(stor[_9]) * stor0))
}

function sub_187c5903(?) payable {
    mem[0] = msg.sender
    mem[32] = 3
    if investors[address(msg.sender)] != 0:
        idx = 0
        s = 0
        while idx < stor0:
            mem[0] = address(stor[code.data[2013 len 32] + idx])
            mem[32] = 1
            idx = idx + 1
            s = s + (5 * balances[address(stor[code.data[2013 len 32] + idx])])
            continue 
        if s * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 <= eth.balance(this.address):
            t = 0
            idx = 0
            while idx < stor2.length:
                mem[0] = stor2[idx]
                mem[32] = 3
                t = t + investors[stor2[idx]]
                idx = idx + 1
                continue 
            call msg.sender with:
               value (eth.balance(this.address) * uint256(stor[sha3(mem[0 len 64])]) / t * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length) - (s * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * uint256(stor[sha3(mem[0 len 64])]) / t * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length * stor2.length) wei
                 gas 0 wei
            investors[address(msg.sender)] = 0
}

function sub_89ac5d13(?) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if not stor4.length:
        emit 0xfb8c779e: 32, stor4.length
        if balances[address(msg.sender)] <= 0:
            idx = 0
            s = 0
            while idx < stor0:
                mem[0] = address(stor[code.data[2013 len 32] + idx])
                idx = idx + 1
                s = (5 * balances[address(stor[code.data[2013 len 32] + idx])]) + s
                continue 
            if eth.balance(this.address) - (5 * uint256(stor[_59]) * stor0) < 5 * msg.value:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
            else:
                mem[(32 * arg1.length) + 132] = arg2 + (3 * 3600)
                mem[(32 * arg1.length) + 164] = arg2 + (3 * 3600)
                mem[(32 * arg1.length) + 196] = 1
                mem[(32 * arg1.length) + 292] = msg.sender
                mem[(32 * arg1.length) + 228] = 192
                mem[(32 * arg1.length) + 324] = arg1.length
                mem[(32 * arg1.length) + 356 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
                mem[(32 * arg1.length) + 260] = (32 * arg1.length) + 224
                mem[(64 * arg1.length) + 356] = stor4.length
                if not stor4.length:
                    call 0x3c94923400ccc528e8ab0f849edafca06fe332e5.0xeab0fd01 with:
                         gas gas_remaining - 25050 wei
                        args 0, uint32(arg2 + (3 * 3600)), arg2 + (3 * 3600), 1, 192, (32 * arg1.length) + 224, msg.sender, arg1.length, call.data[arg1 + 36 len 32 * arg1.length], stor4.length
                else:
                    mem[(64 * arg1.length) + 388] = stor4 / 256^0 << 248
                    idx = (64 * arg1.length) + 388
                    s = 0
                    while (64 * arg1.length) + (32 * stor4.length) + 388 > idx + 32:
                        mem[idx + 32] = stor4 / 256^(s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1) << 248
                        idx = idx + 32
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        continue 
                    call 0x3c94923400ccc528e8ab0f849edafca06fe332e5.0xeab0fd01 with:
                         gas gas_remaining - 25050 wei
                        args 0, mem[(32 * arg1.length) + 160 len (32 * arg1.length) + 196], stor4.length, mem[(64 * arg1.length) + 388 len 32 * stor4.length]
                require ext_call.success
                balances[address(msg.sender)] = msg.value
                require stor0 < stor0
                uint256(stor[code.data[2013 len 32] + stor0]) = msg.sender or Mask(96, 160, uint256(stor[code.data[2013 len 32] + stor0]))
    else:
        mem[(32 * arg1.length) + 192] = stor4 / 256^0 << 248
        idx = (32 * arg1.length) + 192
        s = 0
        while (32 * arg1.length) + (32 * stor4.length) + 192 > idx + 32:
            mem[idx + 32] = stor4 / 256^(-(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1) << 248
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        emit 0xfb8c779e: Array(len=stor4.length, data=mem[(32 * arg1.length) + 192 len 32 * stor4.length])
        if balances[address(msg.sender)] <= 0:
            idx = 0
            s = 0
            while idx < stor0:
                mem[0] = address(stor[code.data[2013 len 32] + idx])
                _106 = sha3(address(stor[code.data[2013 len 32] + idx]), 1)
                idx = idx + 1
                s = (5 * balances[address(stor[code.data[2013 len 32] + idx])]) + s
                continue 
            if eth.balance(this.address) - (5 * uint256(stor[_106]) * stor0) < 5 * msg.value:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
            else:
                mem[(32 * arg1.length) + 128] = 0xeab0fd0100000000000000000000000000000000000000000000000000000000
                mem[(32 * arg1.length) + 132] = arg2 + (3 * 3600)
                mem[(32 * arg1.length) + 164] = arg2 + (3 * 3600)
                mem[(32 * arg1.length) + 196] = 1
                mem[(32 * arg1.length) + 292] = msg.sender
                mem[(32 * arg1.length) + 228] = 192
                mem[(32 * arg1.length) + 324] = arg1.length
                mem[(32 * arg1.length) + 356 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
                mem[(32 * arg1.length) + 260] = (32 * arg1.length) + 224
                mem[(64 * arg1.length) + 356] = stor4.length
                if not stor4.length:
                    call 0x3c94923400ccc528e8ab0f849edafca06fe332e5.0xeab0fd01 with:
                         gas gas_remaining - 25050 wei
                        args arg2 + (3 * 3600), arg2 + (3 * 3600), 1, Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length], stor4.length), (32 * arg1.length) + 224, msg.sender
                else:
                    mem[(64 * arg1.length) + 388] = stor4 / 256^0 << 248
                    idx = (64 * arg1.length) + 388
                    s = 0
                    while (64 * arg1.length) + (32 * stor4.length) + 388 > idx + 32:
                        mem[idx + 32] = stor4 / 256^(s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1) << 248
                        idx = idx + 32
                        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                        continue 
                    call 0x3c94923400ccc528e8ab0f849edafca06fe332e5.mem[(32 * arg1.length) + 128 len 4] with:
                         gas gas_remaining - 25050 wei
                        args mem[(32 * arg1.length) + 132 len (32 * arg1.length) + (32 * stor4.length) + 256]
                require ext_call.success
                balances[address(msg.sender)] = msg.value
                require stor0 < stor0
                uint256(stor[code.data[2013 len 32] + stor0]) = msg.sender or Mask(96, 160, uint256(stor[code.data[2013 len 32] + stor0]))
    return 0
}



}
