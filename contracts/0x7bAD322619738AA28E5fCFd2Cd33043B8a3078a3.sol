contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
address stor3;
address stor4;

function _fallback() payable {
    stor0 = 10
    stor3 = 0xc47e655bc521bf15981134e392709af5b25947b4
    stor2 = 0
    stor1 = 0
    stor4 = msg.sender
    return code.data[190 len 7913]
}



// =====================  Runtime code  =====================


const sub_f94eb690(?) = eth.balance(this.address)


uint256 commission;
uint256 sub_5cccc395;
uint256 sub_4baaa983;
address owner;
address stor4;
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

function sub_930ad975(?) {
    return uint256(users[address(arg1)].field_1024), 
           uint256(users[address(arg1)].field_1280),
           uint256(users[address(arg1)].field_1536)
}

function users(address arg1) {
    return users[arg1].field_0, 
           uint256(users[arg1].field_256),
           uint256(users[arg1].field_512),
           uint256(users[arg1].field_768),
           uint256(users[arg1].field_1024),
           uint256(users[arg1].field_1280),
           uint256(users[arg1].field_1536)
}

function commission() {
    return commission
}

function sub_534117e1(?) {
    return sub_4baaa983, sub_5cccc395
}

function commissions(uint256 arg1) {
    if owner != msg.sender:
        require msg.sender == stor4
    commission = arg1
    return 0
}

function withdraw(uint256 arg1, address arg2) {
    if owner != msg.sender:
        require msg.sender == stor4
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    return 1
}

function sub_54dd25ef(?) {
    return ((block.timestamp * 2 * uint256(users[address(arg1)].field_512) / 100) - (uint256(users[address(arg1)].field_256) * 2 * uint256(users[address(arg1)].field_512) / 100) / 24 * 3600)
}

function sub_7ab81206(?) {
    if owner != msg.sender:
        require msg.sender == stor4
    call owner with:
       value uint256(users[address(msg.sender)].field_768) wei
         gas 2300 * is_zero(value) wei
    uint256(users[address(msg.sender)].field_768) = 0
    return 0
}

function sub_a3226ffa(?) payable {
    require arg1 != msg.sender
    sub_4baaa983++
    require sub_5cccc395 + msg.value >= sub_5cccc395
    sub_5cccc395 += msg.value
    users[address(msg.sender)].field_0 = arg1
    uint256(users[stor3].field_768) += msg.value * commission / 100
    mem[0] = msg.sender
    mem[32] = 5
    idx = 0
    s = stor[sha3(mem[0 len 64])]
    while idx < 7:
        if not idx:
            if address(s):
                call address(s) with:
                   value 8 * msg.value / 100 wei
                     gas 2300 * is_zero(value) wei
                require uint256(users[address(s)].field_1536) + (8 * msg.value / 100) >= uint256(users[address(s)].field_1536)
                uint256(users[address(s)].field_1536) += 8 * msg.value / 100
        if idx == 1:
            if address(s):
                call address(s) with:
                   value 5 * msg.value / 100 wei
                     gas 2300 * is_zero(value) wei
                require uint256(users[address(s)].field_1536) + (5 * msg.value / 100) >= uint256(users[address(s)].field_1536)
                uint256(users[address(s)].field_1536) += 5 * msg.value / 100
        if idx == 2:
            if address(s):
                call address(s) with:
                   value 3 * msg.value / 100 wei
                     gas 2300 * is_zero(value) wei
                require uint256(users[address(s)].field_1536) + (3 * msg.value / 100) >= uint256(users[address(s)].field_1536)
                uint256(users[address(s)].field_1536) += 3 * msg.value / 100
        if idx > 2:
            if address(s):
                call address(s) with:
                   value msg.value / 100 wei
                     gas 2300 * is_zero(value) wei
                require uint256(users[address(s)].field_1536) + (msg.value / 100) >= uint256(users[address(s)].field_1536)
                uint256(users[address(s)].field_1536) += msg.value / 100
        mem[0] = address(s)
        mem[32] = 5
        idx = idx + 1
        s = users[address(s)].field_0
        continue 
    require msg.value + uint256(users[address(msg.sender)].field_1024) >= msg.value
    uint256(users[address(msg.sender)].field_1024) += msg.value
    if uint256(users[address(msg.sender)].field_512):
        if eth.balance(this.address) >= (block.timestamp * 25 * uint256(users[address(msg.sender)].field_512) / 1000) - (uint256(users[address(msg.sender)].field_256) * 25 * uint256(users[address(msg.sender)].field_512) / 1000) / 24 * 3600:
            call msg.sender with:
               value (block.timestamp * 25 * uint256(users[address(msg.sender)].field_512) / 1000) - (uint256(users[address(msg.sender)].field_256) * 25 * uint256(users[address(msg.sender)].field_512) / 1000) / 24 * 3600 wei
                 gas 2300 * is_zero(value) wei
            require ((block.timestamp * 25 * uint256(users[address(msg.sender)].field_512) / 1000) - (uint256(users[address(msg.sender)].field_256) * 25 * uint256(users[address(msg.sender)].field_512) / 1000) / 24 * 3600) + uint256(users[address(msg.sender)].field_1280) >= (block.timestamp * 25 * uint256(users[address(msg.sender)].field_512) / 1000) - (uint256(users[address(msg.sender)].field_256) * 25 * uint256(users[address(msg.sender)].field_512) / 1000) / 24 * 3600
            uint256(users[address(msg.sender)].field_1280) += (block.timestamp * 25 * uint256(users[address(msg.sender)].field_512) / 1000) - (uint256(users[address(msg.sender)].field_256) * 25 * uint256(users[address(msg.sender)].field_512) / 1000) / 24 * 3600
        else:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require eth.balance(this.address) + uint256(users[address(msg.sender)].field_1280) >= eth.balance(this.address)
            uint256(users[address(msg.sender)].field_1280) += eth.balance(this.address)
    uint256(users[address(msg.sender)].field_256) = block.timestamp
    uint256(users[address(msg.sender)].field_512) += msg.value
}

function _fallback() payable {
    if uint256(users[address(msg.sender)].field_512):
        if eth.balance(this.address) >= (block.timestamp * 25 * uint256(users[address(msg.sender)].field_512) / 1000) - (uint256(users[address(msg.sender)].field_256) * 25 * uint256(users[address(msg.sender)].field_512) / 1000) / 24 * 3600:
            call msg.sender with:
               value (block.timestamp * 25 * uint256(users[address(msg.sender)].field_512) / 1000) - (uint256(users[address(msg.sender)].field_256) * 25 * uint256(users[address(msg.sender)].field_512) / 1000) / 24 * 3600 wei
                 gas 2300 * is_zero(value) wei
            require ((block.timestamp * 25 * uint256(users[address(msg.sender)].field_512) / 1000) - (uint256(users[address(msg.sender)].field_256) * 25 * uint256(users[address(msg.sender)].field_512) / 1000) / 24 * 3600) + uint256(users[address(msg.sender)].field_1280) >= (block.timestamp * 25 * uint256(users[address(msg.sender)].field_512) / 1000) - (uint256(users[address(msg.sender)].field_256) * 25 * uint256(users[address(msg.sender)].field_512) / 1000) / 24 * 3600
            uint256(users[address(msg.sender)].field_1280) += (block.timestamp * 25 * uint256(users[address(msg.sender)].field_512) / 1000) - (uint256(users[address(msg.sender)].field_256) * 25 * uint256(users[address(msg.sender)].field_512) / 1000) / 24 * 3600
        else:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require eth.balance(this.address) + uint256(users[address(msg.sender)].field_1280) >= eth.balance(this.address)
            uint256(users[address(msg.sender)].field_1280) += eth.balance(this.address)
    uint256(users[address(msg.sender)].field_256) = block.timestamp
    uint256(users[address(msg.sender)].field_512) += msg.value
    require msg.value + uint256(users[address(msg.sender)].field_1024) >= msg.value
    uint256(users[address(msg.sender)].field_1024) += msg.value
    if msg.value > 0:
        sub_4baaa983++
        require sub_5cccc395 + msg.value >= sub_5cccc395
        sub_5cccc395 += msg.value
        uint256(users[stor3].field_768) += msg.value * commission / 100
        mem[0] = msg.sender
        mem[32] = 5
        idx = 0
        s = stor[sha3(mem[0 len 64])]
        while idx < 7:
            if not idx:
                if address(s):
                    call address(s) with:
                       value 8 * msg.value / 100 wei
                         gas 2300 * is_zero(value) wei
                    require uint256(users[address(s)].field_1536) + (8 * msg.value / 100) >= uint256(users[address(s)].field_1536)
                    uint256(users[address(s)].field_1536) += 8 * msg.value / 100
            if idx == 1:
                if address(s):
                    call address(s) with:
                       value 5 * msg.value / 100 wei
                         gas 2300 * is_zero(value) wei
                    require uint256(users[address(s)].field_1536) + (5 * msg.value / 100) >= uint256(users[address(s)].field_1536)
                    uint256(users[address(s)].field_1536) += 5 * msg.value / 100
            if idx == 2:
                if address(s):
                    call address(s) with:
                       value 3 * msg.value / 100 wei
                         gas 2300 * is_zero(value) wei
                    require uint256(users[address(s)].field_1536) + (3 * msg.value / 100) >= uint256(users[address(s)].field_1536)
                    uint256(users[address(s)].field_1536) += 3 * msg.value / 100
            if idx > 2:
                if address(s):
                    call address(s) with:
                       value msg.value / 100 wei
                         gas 2300 * is_zero(value) wei
                    require uint256(users[address(s)].field_1536) + (msg.value / 100) >= uint256(users[address(s)].field_1536)
                    uint256(users[address(s)].field_1536) += msg.value / 100
            mem[0] = address(s)
            mem[32] = 5
            idx = idx + 1
            s = users[address(s)].field_0
            continue 
}



}
