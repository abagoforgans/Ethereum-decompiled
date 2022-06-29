contract main {




// =====================  Runtime code  =====================


const getPayment = ((eth.balance(this.address) - msg.value / 2) + (eth.balance(this.address) - msg.value / 4))


address stor0;
uint8 stor1; offset 250
uint256 stor1;
uint256 stor1; offset 1
uint256 sub_91ac4b88;
uint256 sub_d31cca93;
uint256 stor3;
address sub_302c11caAddress;
uint256 target;
uint256 total;

function sub_302c11ca(?) {
    return sub_302c11caAddress
}

function getTotal() {
    return total
}

function sub_91ac4b88(?) {
    return sub_91ac4b88
}

function sub_d31cca93(?) {
    return sub_d31cca93
}

function getTarget() {
    return target
}

function payout() {
    if block.number >= sub_d31cca93:
        if block.number >= sub_d31cca93 + 11000:
            call stor0 with:
               value eth.balance(this.address) - msg.value / 2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_91ac4b88 = uint255(stor1.field_1)
            target = 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            stor3 = block.number - 11000
            sub_d31cca93 = block.number + 11000
        else:
            call sub_302c11caAddress with:
               value (eth.balance(this.address) - msg.value / 2) + (eth.balance(this.address) - msg.value / 4) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call stor0 with:
               value eth.balance(this.address) - msg.value / 8 wei
                 gas 2300 * is_zero(value) wei
            emit PaidOut(sub_302c11caAddress, (eth.balance(this.address) - msg.value / 2) + (eth.balance(this.address) - msg.value / 4));
            Mask(250, 0, stor1.field_0) = eth.balance(this.address) - msg.value / 64
            stor1.field_250 % 64 = 0
            target = 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            stor3 = block.number - 11000
            sub_d31cca93 = block.number + 11000
            total = 0
            emit 0xd42cacab: sub_91ac4b88, target, sub_d31cca93
}

function _fallback() payable {
    if msg.sender == tx.origin:
        if block.number >= sub_d31cca93:
            if block.number >= sub_d31cca93 + 11000:
                call stor0 with:
                   value eth.balance(this.address) - msg.value / 2 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                sub_91ac4b88 = uint255(stor1.field_1)
                target = 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                stor3 = block.number - 11000
                sub_d31cca93 = block.number + 11000
            else:
                call sub_302c11caAddress with:
                   value (eth.balance(this.address) - msg.value / 2) + (eth.balance(this.address) - msg.value / 4) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call stor0 with:
                   value eth.balance(this.address) - msg.value / 8 wei
                     gas 2300 * is_zero(value) wei
                emit PaidOut(sub_302c11caAddress, (eth.balance(this.address) - msg.value / 2) + (eth.balance(this.address) - msg.value / 4));
                Mask(250, 0, stor1.field_0) = eth.balance(this.address) - msg.value / 64
                stor1.field_250 % 64 = 0
                target = 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                stor3 = block.number - 11000
                sub_d31cca93 = block.number + 11000
                total = 0
                emit 0xd42cacab: sub_91ac4b88, target, sub_d31cca93
        emit 0x3cd01c20: msg.sender, sha3(target, total, sub_302c11caAddress, msg.value) - msg.value, msg.value, target, (eth.balance(this.address) / 2) + (eth.balance(this.address) / 4)
        if msg.value >= sub_91ac4b88:
            if sha3(target, total, sub_302c11caAddress, msg.value) - msg.value < target:
                target = sha3(target, total, sub_302c11caAddress, msg.value) - msg.value
                sub_302c11caAddress = msg.sender
                sub_91ac4b88 = msg.value
                sub_d31cca93 = (2 * block.number) + -stor3 + 42
                if sub_d31cca93 > block.number + 11000:
                    sub_d31cca93 = block.number + 11000
                stor3 = block.number
                total += msg.value
                emit 0x54645b29: sub_302c11caAddress, target, (eth.balance(this.address) / 2) + (eth.balance(this.address) / 4)
                emit 0xd42cacab: sub_91ac4b88, target, sub_d31cca93
}



}
