contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    require not msg.value
    return code.data[57 len 2072]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
  stop
}

function withdraw() {
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function sub_1a0ef327(?) {
    if arg1 == block.number:
        if uint32(call.data[36]):
            call 0x0006012c8cf97bead5deae237070f9587f8e7a26 with:
               funct Mask(32, 224, sha3(0x6d6769766542697274682875696e74323536)) >> 224
                 gas gas_remaining - 25710 wei
                args uint32(call.data[36])
        if uint32(call.data[68]):
            call 0x0006012c8cf97bead5deae237070f9587f8e7a26 with:
               funct Mask(32, 224, sha3(0x6d6769766542697274682875696e74323536)) >> 224
                 gas gas_remaining - 25710 wei
                args uint32(call.data[68])
        if uint32(call.data[100]):
            call 0x0006012c8cf97bead5deae237070f9587f8e7a26 with:
               funct Mask(32, 224, sha3(0x6d6769766542697274682875696e74323536)) >> 224
                 gas gas_remaining - 25710 wei
                args uint32(call.data[100])
        if eth.balance(this.address) > eth.balance(this.address):
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
    else:
        if block.number == uint32(arg1 + 1):
            if uint32(call.data[292]):
                call 0x0006012c8cf97bead5deae237070f9587f8e7a26 with:
                   funct Mask(32, 224, sha3(0x6d6769766542697274682875696e74323536)) >> 224
                     gas gas_remaining - 25710 wei
                    args uint32(call.data[292])
            if uint32(call.data[324]):
                call 0x0006012c8cf97bead5deae237070f9587f8e7a26 with:
                   funct Mask(32, 224, sha3(0x6d6769766542697274682875696e74323536)) >> 224
                     gas gas_remaining - 25710 wei
                    args uint32(call.data[324])
            if uint32(call.data[356]):
                call 0x0006012c8cf97bead5deae237070f9587f8e7a26 with:
                   funct Mask(32, 224, sha3(0x6d6769766542697274682875696e74323536)) >> 224
                     gas gas_remaining - 25710 wei
                    args uint32(call.data[356])
            if eth.balance(this.address) > eth.balance(this.address):
                call msg.sender with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
        else:
            if block.number == uint32(arg1 + 2):
                if uint32(call.data[548]):
                    call 0x0006012c8cf97bead5deae237070f9587f8e7a26 with:
                       funct Mask(32, 224, sha3(0x6d6769766542697274682875696e74323536)) >> 224
                         gas gas_remaining - 25710 wei
                        args uint32(call.data[548])
                if uint32(call.data[580]):
                    call 0x0006012c8cf97bead5deae237070f9587f8e7a26 with:
                       funct Mask(32, 224, sha3(0x6d6769766542697274682875696e74323536)) >> 224
                         gas gas_remaining - 25710 wei
                        args uint32(call.data[580])
                if uint32(call.data[612]):
                    call 0x0006012c8cf97bead5deae237070f9587f8e7a26 with:
                       funct Mask(32, 224, sha3(0x6d6769766542697274682875696e74323536)) >> 224
                         gas gas_remaining - 25710 wei
                        args uint32(call.data[612])
                if eth.balance(this.address) > eth.balance(this.address):
                    call msg.sender with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
            else:
                if uint32(arg1 + 3) != block.number:
                    if eth.balance(this.address) > eth.balance(this.address):
                        call msg.sender with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                else:
                    if uint32(call.data[804]):
                        call 0x0006012c8cf97bead5deae237070f9587f8e7a26 with:
                           funct Mask(32, 224, sha3(0x6d6769766542697274682875696e74323536)) >> 224
                             gas gas_remaining - 25710 wei
                            args uint32(call.data[804])
                    if uint32(call.data[836]):
                        call 0x0006012c8cf97bead5deae237070f9587f8e7a26 with:
                           funct Mask(32, 224, sha3(0x6d6769766542697274682875696e74323536)) >> 224
                             gas gas_remaining - 25710 wei
                            args uint32(call.data[836])
                    if uint32(call.data[868]):
                        call 0x0006012c8cf97bead5deae237070f9587f8e7a26 with:
                           funct Mask(32, 224, sha3(0x6d6769766542697274682875696e74323536)) >> 224
                             gas gas_remaining - 25710 wei
                            args uint32(call.data[868])
                    if eth.balance(this.address) > eth.balance(this.address):
                        call msg.sender with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
}



}
