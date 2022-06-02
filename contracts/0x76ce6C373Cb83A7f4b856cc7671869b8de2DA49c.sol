contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
address stor3;

function _fallback() payable {
    stor0 = 10
    stor3 = 0x8cb872105f55487fb62dae0b80dcd6d14cb709ff
    stor2 = 0
    stor1 = 0
    return code.data[72 len 2619]
}



// =====================  Runtime code  =====================


const sub_f94eb690(?) = eth.balance(this.address)


uint256 commission;
uint256 sub_5cccc395;
uint256 sub_4baaa983;
address owner;
mapping of struct users;

function sub_4baaa983(?) {
    return sub_4baaa983
}

function sub_5cccc395(?) {
    return sub_5cccc395
}

function owner() {
    return owner
}

function users(address arg1) {
    return users[arg1].field_0, uint256(users[arg1].field_256), uint256(users[arg1].field_512), uint256(users[arg1].field_768)
}

function commission() {
    return commission
}

function sub_534117e1(?) {
    return sub_4baaa983, sub_5cccc395
}

function commissions(uint256 arg1) {
    require owner == msg.sender
    commission = arg1
    return 0
}

function withdraw(uint256 arg1) {
    require owner == msg.sender
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    return 0
}

function sub_7ab81206(?) {
    require owner == msg.sender
    call owner with:
       value uint256(users[address(msg.sender)].field_768) wei
         gas 2300 * is_zero(value) wei
    uint256(users[address(msg.sender)].field_768) = 0
    return 0
}

function sub_907fd91f(?) {
    if owner != msg.sender:
        return ((block.number * 4 * uint256(users[address(msg.sender)].field_512) / 100) - (uint256(users[address(msg.sender)].field_256) * 4 * uint256(users[address(msg.sender)].field_512) / 100) / 5900)
    require (block.number * 4 * uint256(users[address(msg.sender)].field_512) / 100) - (uint256(users[address(msg.sender)].field_256) * 4 * uint256(users[address(msg.sender)].field_512) / 100) / 5900 >= 0
    require uint256(users[address(msg.sender)].field_768) + ((block.number * 4 * uint256(users[address(msg.sender)].field_512) / 100) - (uint256(users[address(msg.sender)].field_256) * 4 * uint256(users[address(msg.sender)].field_512) / 100) / 5900) >= (block.number * 4 * uint256(users[address(msg.sender)].field_512) / 100) - (uint256(users[address(msg.sender)].field_256) * 4 * uint256(users[address(msg.sender)].field_512) / 100) / 5900
    return (uint256(users[address(msg.sender)].field_768) + ((block.number * 4 * uint256(users[address(msg.sender)].field_512) / 100) - (uint256(users[address(msg.sender)].field_256) * 4 * uint256(users[address(msg.sender)].field_512) / 100) / 5900))
}

function sub_a3226ffa(?) payable {
    require msg.value >= 10^17
    require arg1 != msg.sender
    sub_4baaa983++
    require msg.value + sub_5cccc395 >= sub_5cccc395
    sub_5cccc395 += msg.value
    users[address(msg.sender)].field_0 = arg1
    uint256(users[stor3].field_768) += commission * msg.value / 100
    idx = 0
    s = users[address(msg.sender)].field_0
    while idx < 7:
        if idx:
            if idx != 1:
                if idx != 2:
                    if idx > 2:
                        if address(s):
                            call address(s) with:
                               value msg.value / 1000 wei
                                 gas 2300 * is_zero(value) wei
                else:
                    if address(s):
                        call address(s) with:
                           value msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    if idx > 2:
                        if address(s):
                            call address(s) with:
                               value msg.value / 1000 wei
                                 gas 2300 * is_zero(value) wei
            else:
                if address(s):
                    call address(s) with:
                       value 2 * msg.value / 100 wei
                         gas 2300 * is_zero(value) wei
                if idx != 2:
                    if idx > 2:
                        if address(s):
                            call address(s) with:
                               value msg.value / 1000 wei
                                 gas 2300 * is_zero(value) wei
                else:
                    if address(s):
                        call address(s) with:
                           value msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    if idx > 2:
                        if address(s):
                            call address(s) with:
                               value msg.value / 1000 wei
                                 gas 2300 * is_zero(value) wei
        else:
            if address(s):
                call address(s) with:
                   value 3 * msg.value / 100 wei
                     gas 2300 * is_zero(value) wei
            if idx != 1:
                if idx != 2:
                    if idx > 2:
                        if address(s):
                            call address(s) with:
                               value msg.value / 1000 wei
                                 gas 2300 * is_zero(value) wei
                else:
                    if address(s):
                        call address(s) with:
                           value msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    if idx > 2:
                        if address(s):
                            call address(s) with:
                               value msg.value / 1000 wei
                                 gas 2300 * is_zero(value) wei
            else:
                if address(s):
                    call address(s) with:
                       value 2 * msg.value / 100 wei
                         gas 2300 * is_zero(value) wei
                if idx != 2:
                    if idx > 2:
                        if address(s):
                            call address(s) with:
                               value msg.value / 1000 wei
                                 gas 2300 * is_zero(value) wei
                else:
                    if address(s):
                        call address(s) with:
                           value msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    if idx > 2:
                        if address(s):
                            call address(s) with:
                               value msg.value / 1000 wei
                                 gas 2300 * is_zero(value) wei
        mem[0] = address(s)
        mem[32] = 4
        idx = idx + 1
        s = users[address(s)].field_0
        continue 
    if uint256(users[address(msg.sender)].field_512):
        if eth.balance(this.address) >= (block.number * 4 * uint256(users[address(msg.sender)].field_512) / 100) - (uint256(users[address(msg.sender)].field_256) * 4 * uint256(users[address(msg.sender)].field_512) / 100) / 5900:
            call msg.sender with:
               value (block.number * 4 * uint256(users[address(msg.sender)].field_512) / 100) - (uint256(users[address(msg.sender)].field_256) * 4 * uint256(users[address(msg.sender)].field_512) / 100) / 5900 wei
                 gas 2300 * is_zero(value) wei
        else:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
    uint256(users[address(msg.sender)].field_256) = block.number
    uint256(users[address(msg.sender)].field_512) += msg.value
}

function _fallback() payable {
    require msg.value >= 10^17
    if uint256(users[address(msg.sender)].field_512):
        if eth.balance(this.address) >= (block.number * 4 * uint256(users[address(msg.sender)].field_512) / 100) - (uint256(users[address(msg.sender)].field_256) * 4 * uint256(users[address(msg.sender)].field_512) / 100) / 5900:
            call msg.sender with:
               value (block.number * 4 * uint256(users[address(msg.sender)].field_512) / 100) - (uint256(users[address(msg.sender)].field_256) * 4 * uint256(users[address(msg.sender)].field_512) / 100) / 5900 wei
                 gas 2300 * is_zero(value) wei
        else:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
    uint256(users[address(msg.sender)].field_256) = block.number
    uint256(users[address(msg.sender)].field_512) += msg.value
    if msg.value > 0:
        sub_4baaa983++
        require msg.value + sub_5cccc395 >= sub_5cccc395
        sub_5cccc395 += msg.value
        mem[32] = 4
        uint256(users[stor3].field_768) += commission * msg.value / 100
        mem[0] = msg.sender
        idx = 0
        s = stor[sha3(mem[0 len 64])]
        while idx < 7:
            if idx:
                if idx != 1:
                    if idx != 2:
                        if idx > 2:
                            if address(s):
                                call address(s) with:
                                   value msg.value / 1000 wei
                                     gas 2300 * is_zero(value) wei
                    else:
                        if address(s):
                            call address(s) with:
                               value msg.value / 100 wei
                                 gas 2300 * is_zero(value) wei
                        if idx > 2:
                            if address(s):
                                call address(s) with:
                                   value msg.value / 1000 wei
                                     gas 2300 * is_zero(value) wei
                else:
                    if address(s):
                        call address(s) with:
                           value 2 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    if idx != 2:
                        if idx > 2:
                            if address(s):
                                call address(s) with:
                                   value msg.value / 1000 wei
                                     gas 2300 * is_zero(value) wei
                    else:
                        if address(s):
                            call address(s) with:
                               value msg.value / 100 wei
                                 gas 2300 * is_zero(value) wei
                        if idx > 2:
                            if address(s):
                                call address(s) with:
                                   value msg.value / 1000 wei
                                     gas 2300 * is_zero(value) wei
            else:
                if address(s):
                    call address(s) with:
                       value 3 * msg.value / 100 wei
                         gas 2300 * is_zero(value) wei
                if idx != 1:
                    if idx != 2:
                        if idx > 2:
                            if address(s):
                                call address(s) with:
                                   value msg.value / 1000 wei
                                     gas 2300 * is_zero(value) wei
                    else:
                        if address(s):
                            call address(s) with:
                               value msg.value / 100 wei
                                 gas 2300 * is_zero(value) wei
                        if idx > 2:
                            if address(s):
                                call address(s) with:
                                   value msg.value / 1000 wei
                                     gas 2300 * is_zero(value) wei
                else:
                    if address(s):
                        call address(s) with:
                           value 2 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    if idx != 2:
                        if idx > 2:
                            if address(s):
                                call address(s) with:
                                   value msg.value / 1000 wei
                                     gas 2300 * is_zero(value) wei
                    else:
                        if address(s):
                            call address(s) with:
                               value msg.value / 100 wei
                                 gas 2300 * is_zero(value) wei
                        if idx > 2:
                            if address(s):
                                call address(s) with:
                                   value msg.value / 1000 wei
                                     gas 2300 * is_zero(value) wei
            mem[0] = address(s)
            mem[32] = 4
            idx = idx + 1
            s = users[address(s)].field_0
            continue 
}



}
