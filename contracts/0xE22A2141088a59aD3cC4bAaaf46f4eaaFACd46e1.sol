contract main {


// =======================  Init code  ======================


array of address stor2;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    mem[96 len -3584] = code.data[4042 len -3584]
    mem[64] = -3488
    require mem[mem[96] + 96] > 0
    s = 0
    idx = 0
    while idx < mem[mem[96] + 96]:
        require idx < mem[mem[96] + 96]
        s = 0
        while s < stor2.length:
            mem[0] = 2
            if stor2[s] != mem[(32 * idx) + mem[96] + 140 len 20]:
                s = s + 1
                continue 
            s = mem[(32 * idx) + mem[96] + 128]
            idx = idx + 1
            continue 
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            s = stor2.length + sha3(2) + 1
            while sha3(2) + stor2.length > s:
                stor[s] = 0
                s = s + 1
                continue 
        mem[0] = 2
        stor2[stor2.length] = mem[(32 * idx) + mem[96] + 140 len 20]
        s = mem[(32 * idx) + mem[96] + 128]
        idx = idx + 1
        continue 
    require mem[128] <= mem[160]
    require mem[160] <= 10^18
    stor4 = mem[128]
    stor5 = mem[160]
    return code.data[458 len 3584]
}



// =====================  Runtime code  =====================


mapping of struct sub_9592619c;
mapping of uint256 sub_63920c09;
array of address sub_e75f7ddb;
mapping of struct sub_fd8c06c6;
uint256 sub_14c2ab11;
uint256 sub_ffe7d95b;

function sub_14c2ab11(?) {
    return sub_14c2ab11
}

function sub_63920c09(?) {
    return sub_63920c09[arg1]
}

function sub_9592619c(?) {
    return sub_9592619c[address(msg.sender)].field_256
}

function sub_e75f7ddb(?) {
    require arg1 < sub_e75f7ddb.length
    return sub_e75f7ddb[arg1]
}

function sub_fd8c06c6(?) {
    return sub_fd8c06c6[arg1].field_256
}

function sub_ffe7d95b(?) {
    return sub_ffe7d95b
}

function _fallback() payable {
  stop
}

function sub_80776e2e(?) {
    return address(sub_9592619c[arg1].field_512), 
           sub_9592619c[arg1].field_768,
           bool(uint8(sub_9592619c[arg1].field_1024)),
           address(sub_9592619c[arg1].field_1032)
}

function getFees(address arg1) {
    return sub_9592619c[address(arg1)].field_0, 
           sub_9592619c[address(arg1)].field_256,
           address(sub_9592619c[address(arg1)].field_512),
           sub_9592619c[address(arg1)].field_768
}

function sendFees(uint256 arg1) payable {
    require not sub_9592619c[address(msg.sender)].field_768
    require sub_9592619c[address(msg.sender)].field_256 > 0
    if not address(sub_9592619c[address(msg.sender)].field_1032):
        require arg1 == msg.value
    else:
        require not msg.value
        require ext_code.size(address(sub_9592619c[address(msg.sender)].field_1032))
        call address(sub_9592619c[address(msg.sender)].field_1032).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1
        require ext_call.success
        require ext_call.return_data[0]
    sub_9592619c[address(msg.sender)].field_768 = arg1
    idx = 128
    s = 1
    while 160 > idx + 32:
        mem[idx + 32] = sub_9592619c[address(msg.sender)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not arg1:
        require sub_9592619c[address(msg.sender)].field_256
        require (0 / sub_9592619c[address(msg.sender)].field_256) + sub_63920c09[address(stor0[address(msg.sender)].field_1024)] >= sub_63920c09[address(stor0[address(msg.sender)].field_1024)]
        sub_63920c09[address(stor0[address(msg.sender)].field_1024)] += 0 / sub_9592619c[address(msg.sender)].field_256
        return (0 / sub_9592619c[address(msg.sender)].field_256)
    require sub_9592619c[address(msg.sender)].field_0 * arg1 / arg1 == sub_9592619c[address(msg.sender)].field_0
    require sub_9592619c[address(msg.sender)].field_256
    require (sub_9592619c[address(msg.sender)].field_0 * arg1 / sub_9592619c[address(msg.sender)].field_256) + sub_63920c09[address(stor0[address(msg.sender)].field_1024)] >= sub_63920c09[address(stor0[address(msg.sender)].field_1024)]
    sub_63920c09[address(stor0[address(msg.sender)].field_1024)] += sub_9592619c[address(msg.sender)].field_0 * arg1 / sub_9592619c[address(msg.sender)].field_256
    return (sub_9592619c[address(msg.sender)].field_0 * arg1 / sub_9592619c[address(msg.sender)].field_256)
}

function distributeFees(address arg1) {
    require sub_9592619c[address(arg1)].field_768 > 0
    require not uint8(sub_9592619c[address(arg1)].field_1024)
    uint8(sub_9592619c[address(arg1)].field_1024) = 1
    idx = 96
    s = 0
    while 160 > idx + 32:
        mem[idx + 32] = sub_9592619c[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not sub_9592619c[address(arg1)].field_768:
        require mem[128]
        if 0 / mem[128] > 0:
            require 0 / mem[128] <= sub_63920c09[address(stor0[address(arg1)].field_1024)]
            sub_63920c09[address(stor0[address(arg1)].field_1024)] -= 0 / mem[128]
            if not address(sub_9592619c[address(arg1)].field_1032):
                call address(sub_9592619c[address(arg1)].field_512) with:
                   value 0 / mem[128] wei
                     gas gas_remaining wei
                require ext_call.success
            else:
                require ext_code.size(address(sub_9592619c[address(arg1)].field_1032))
                call address(sub_9592619c[address(arg1)].field_1032).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(sub_9592619c[address(arg1)].field_512), 0 / mem[128]
                require ext_call.success
                require ext_call.return_data[0]
    else:
        require sub_9592619c[address(arg1)].field_0 * sub_9592619c[address(arg1)].field_768 / sub_9592619c[address(arg1)].field_768 == sub_9592619c[address(arg1)].field_0
        require mem[128]
        if sub_9592619c[address(arg1)].field_0 * sub_9592619c[address(arg1)].field_768 / mem[128] > 0:
            require sub_9592619c[address(arg1)].field_0 * sub_9592619c[address(arg1)].field_768 / mem[128] <= sub_63920c09[address(stor0[address(arg1)].field_1024)]
            sub_63920c09[address(stor0[address(arg1)].field_1024)] -= sub_9592619c[address(arg1)].field_0 * sub_9592619c[address(arg1)].field_768 / mem[128]
            if not address(sub_9592619c[address(arg1)].field_1032):
                call address(sub_9592619c[address(arg1)].field_512) with:
                   value sub_9592619c[address(arg1)].field_0 * sub_9592619c[address(arg1)].field_768 / mem[128] wei
                     gas gas_remaining wei
                require ext_call.success
            else:
                require ext_code.size(address(sub_9592619c[address(arg1)].field_1032))
                call address(sub_9592619c[address(arg1)].field_1032).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(sub_9592619c[address(arg1)].field_512), sub_9592619c[address(arg1)].field_0 * sub_9592619c[address(arg1)].field_768 / mem[128]
                require ext_call.success
                require ext_call.return_data[0]
}

function create(uint256 arg1, address arg2, address arg3) {
    require arg1 < 5 * 10^17
    require not sub_9592619c[address(msg.sender)].field_256
    address(sub_9592619c[address(msg.sender)].field_1032) = arg2
    address(sub_9592619c[address(msg.sender)].field_512) = arg3
    mem[96] = arg1
    if arg1 / 2 >= sub_ffe7d95b:
        if sub_ffe7d95b >= sub_14c2ab11:
            if sub_ffe7d95b + arg1 >= arg1:
                mem[128] = sub_ffe7d95b + arg1
                s = 0
                idx = 96
                while 160 > idx:
                    sub_9592619c[address(msg.sender)][s].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = 2
                while 2 > idx:
                    sub_9592619c[address(msg.sender)][idx].field_0 = 0
                    idx = idx + 1
                    continue 
                if sub_ffe7d95b + arg1 >= arg1:
                    return (sub_ffe7d95b + arg1)
        else:
            if sub_14c2ab11 + arg1 >= arg1:
                mem[128] = sub_14c2ab11 + arg1
                s = 0
                idx = 96
                while 160 > idx:
                    sub_9592619c[address(msg.sender)][s].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = 2
                while 2 > idx:
                    sub_9592619c[address(msg.sender)][idx].field_0 = 0
                    idx = idx + 1
                    continue 
                if sub_14c2ab11 + arg1 >= arg1:
                    return (sub_14c2ab11 + arg1)
    else:
        if arg1 / 2 >= sub_14c2ab11:
            if (arg1 / 2) + arg1 >= arg1:
                mem[128] = (arg1 / 2) + arg1
                s = 0
                idx = 96
                while 160 > idx:
                    sub_9592619c[address(msg.sender)][s].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = 2
                while 2 > idx:
                    sub_9592619c[address(msg.sender)][idx].field_0 = 0
                    idx = idx + 1
                    continue 
                if (arg1 / 2) + arg1 >= arg1:
                    return ((arg1 / 2) + arg1)
        else:
            if sub_14c2ab11 + arg1 >= arg1:
                mem[128] = sub_14c2ab11 + arg1
                s = 0
                idx = 96
                while 160 > idx:
                    sub_9592619c[address(msg.sender)][s].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = 2
                while 2 > idx:
                    sub_9592619c[address(msg.sender)][idx].field_0 = 0
                    idx = idx + 1
                    continue 
                if sub_14c2ab11 + arg1 >= arg1:
                    return (sub_14c2ab11 + arg1)
    revert
}

function sub_ab15f691(?) {
    require 0 < sub_e75f7ddb.length
    idx = 0
    while sub_e75f7ddb[idx] != msg.sender:
        require idx + 1 < sub_e75f7ddb.length
        mem[0] = 2
        idx = idx + 1
        continue 
    if not arg1:
        require sub_63920c09[address(arg1)] <= eth.balance(this.address)
        require sub_fd8c06c6[address(arg1)].field_256 >= 0
        if not sub_fd8c06c6[address(arg1)].field_256 + eth.balance(this.address) - sub_63920c09[address(arg1)]:
            require sub_e75f7ddb.length
            require sub_fd8c06c6[address(arg1)][address(msg.sender)].field_0 <= 0 / sub_e75f7ddb.length
            require 0 / sub_e75f7ddb.length >= sub_fd8c06c6[address(arg1)][address(msg.sender)].field_0
            sub_fd8c06c6[address(arg1)][address(msg.sender)].field_0 = 0 / sub_e75f7ddb.length
            require (0 / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][address(msg.sender)].field_0 + sub_fd8c06c6[address(arg1)].field_256 >= sub_fd8c06c6[address(arg1)].field_256
            sub_fd8c06c6[address(arg1)].field_256 = (0 / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][address(msg.sender)].field_0 + sub_fd8c06c6[address(arg1)].field_256
            if not arg1:
                call msg.sender with:
                   value (0 / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][address(msg.sender)].field_0 wei
                     gas gas_remaining wei
                require ext_call.success
            else:
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (0 / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][address(msg.sender)].field_0
                require ext_call.success
                require ext_call.return_data[0]
            require (0 / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][address(msg.sender)].field_0 <= eth.balance(this.address) - sub_63920c09[address(arg1)]
            if arg1:
                require ext_code.size(arg1)
                call arg1.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                require ext_call.success
                require ext_call.return_data[0] == eth.balance(this.address) - sub_63920c09[address(arg1)] - (0 / sub_e75f7ddb.length) + sub_fd8c06c6[address(arg1)][address(msg.sender)].field_0
        else:
            require sub_fd8c06c6[address(arg1)].field_256 + eth.balance(this.address) - sub_63920c09[address(arg1)] / sub_fd8c06c6[address(arg1)].field_256 + eth.balance(this.address) - sub_63920c09[address(arg1)] == 1
            require sub_e75f7ddb.length
            require sub_fd8c06c6[address(arg1)][address(msg.sender)].field_0 <= sub_fd8c06c6[address(arg1)].field_256 + eth.balance(this.address) - sub_63920c09[address(arg1)] / sub_e75f7ddb.length
            require sub_fd8c06c6[address(arg1)].field_256 + eth.balance(this.address) - sub_63920c09[address(arg1)] / sub_e75f7ddb.length >= sub_fd8c06c6[address(arg1)][address(msg.sender)].field_0
            sub_fd8c06c6[address(arg1)][address(msg.sender)].field_0 = sub_fd8c06c6[address(arg1)].field_256 + eth.balance(this.address) - sub_63920c09[address(arg1)] / sub_e75f7ddb.length
            require (sub_fd8c06c6[address(arg1)].field_256 + eth.balance(this.address) - sub_63920c09[address(arg1)] / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][address(msg.sender)].field_0 + sub_fd8c06c6[address(arg1)].field_256 >= sub_fd8c06c6[address(arg1)].field_256
            sub_fd8c06c6[address(arg1)].field_256 = (sub_fd8c06c6[address(arg1)].field_256 + eth.balance(this.address) - sub_63920c09[address(arg1)] / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][address(msg.sender)].field_0 + sub_fd8c06c6[address(arg1)].field_256
            if not arg1:
                call msg.sender with:
                   value (sub_fd8c06c6[address(arg1)].field_256 + eth.balance(this.address) - sub_63920c09[address(arg1)] / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][address(msg.sender)].field_0 wei
                     gas gas_remaining wei
                require ext_call.success
            else:
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (sub_fd8c06c6[address(arg1)].field_256 + eth.balance(this.address) - sub_63920c09[address(arg1)] / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][address(msg.sender)].field_0
                require ext_call.success
                require ext_call.return_data[0]
            require (sub_fd8c06c6[address(arg1)].field_256 + eth.balance(this.address) - sub_63920c09[address(arg1)] / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][address(msg.sender)].field_0 <= eth.balance(this.address) - sub_63920c09[address(arg1)]
            if arg1:
                require ext_code.size(arg1)
                call arg1.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                require ext_call.success
                require ext_call.return_data[0] == eth.balance(this.address) - sub_63920c09[address(arg1)] - (sub_fd8c06c6[address(arg1)].field_256 + eth.balance(this.address) - sub_63920c09[address(arg1)] / sub_e75f7ddb.length) + sub_fd8c06c6[address(arg1)][address(msg.sender)].field_0
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        require ext_call.success
        require sub_63920c09[address(arg1)] <= ext_call.return_data[0]
        require sub_fd8c06c6[address(arg1)].field_256 >= 0
        if not sub_fd8c06c6[address(arg1)].field_256 + ext_call.return_data[0] - sub_63920c09[address(arg1)]:
            require sub_e75f7ddb.length
            require sub_fd8c06c6[address(arg1)][address(msg.sender)].field_0 <= 0 / sub_e75f7ddb.length
            require 0 / sub_e75f7ddb.length >= sub_fd8c06c6[address(arg1)][address(msg.sender)].field_0
            sub_fd8c06c6[address(arg1)][address(msg.sender)].field_0 = 0 / sub_e75f7ddb.length
            require (0 / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][address(msg.sender)].field_0 + sub_fd8c06c6[address(arg1)].field_256 >= sub_fd8c06c6[address(arg1)].field_256
            sub_fd8c06c6[address(arg1)].field_256 = (0 / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][address(msg.sender)].field_0 + sub_fd8c06c6[address(arg1)].field_256
            if not arg1:
                call msg.sender with:
                   value (0 / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][address(msg.sender)].field_0 wei
                     gas gas_remaining wei
                require ext_call.success
            else:
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (0 / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][address(msg.sender)].field_0
                require ext_call.success
                require ext_call.return_data[0]
            require (0 / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][address(msg.sender)].field_0 <= ext_call.return_data[0] - sub_63920c09[address(arg1)]
            if arg1:
                require ext_code.size(arg1)
                call arg1.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                require ext_call.success
                require ext_call.return_data[0] == ext_call.return_data[0] - sub_63920c09[address(arg1)] - (0 / sub_e75f7ddb.length) + sub_fd8c06c6[address(arg1)][address(msg.sender)].field_0
        else:
            require sub_fd8c06c6[address(arg1)].field_256 + ext_call.return_data[0] - sub_63920c09[address(arg1)] / sub_fd8c06c6[address(arg1)].field_256 + ext_call.return_data[0] - sub_63920c09[address(arg1)] == 1
            require sub_e75f7ddb.length
            require sub_fd8c06c6[address(arg1)][address(msg.sender)].field_0 <= sub_fd8c06c6[address(arg1)].field_256 + ext_call.return_data[0] - sub_63920c09[address(arg1)] / sub_e75f7ddb.length
            require sub_fd8c06c6[address(arg1)].field_256 + ext_call.return_data[0] - sub_63920c09[address(arg1)] / sub_e75f7ddb.length >= sub_fd8c06c6[address(arg1)][address(msg.sender)].field_0
            sub_fd8c06c6[address(arg1)][address(msg.sender)].field_0 = sub_fd8c06c6[address(arg1)].field_256 + ext_call.return_data[0] - sub_63920c09[address(arg1)] / sub_e75f7ddb.length
            require (sub_fd8c06c6[address(arg1)].field_256 + ext_call.return_data[0] - sub_63920c09[address(arg1)] / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][address(msg.sender)].field_0 + sub_fd8c06c6[address(arg1)].field_256 >= sub_fd8c06c6[address(arg1)].field_256
            sub_fd8c06c6[address(arg1)].field_256 = (sub_fd8c06c6[address(arg1)].field_256 + ext_call.return_data[0] - sub_63920c09[address(arg1)] / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][address(msg.sender)].field_0 + sub_fd8c06c6[address(arg1)].field_256
            if not arg1:
                call msg.sender with:
                   value (sub_fd8c06c6[address(arg1)].field_256 + ext_call.return_data[0] - sub_63920c09[address(arg1)] / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][address(msg.sender)].field_0 wei
                     gas gas_remaining wei
                require ext_call.success
            else:
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (sub_fd8c06c6[address(arg1)].field_256 + ext_call.return_data[0] - sub_63920c09[address(arg1)] / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][address(msg.sender)].field_0
                require ext_call.success
                require ext_call.return_data[0]
            require (sub_fd8c06c6[address(arg1)].field_256 + ext_call.return_data[0] - sub_63920c09[address(arg1)] / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][address(msg.sender)].field_0 <= ext_call.return_data[0] - sub_63920c09[address(arg1)]
            if arg1:
                require ext_code.size(arg1)
                call arg1.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                require ext_call.success
                require ext_call.return_data[0] == ext_call.return_data[0] - sub_63920c09[address(arg1)] - (sub_fd8c06c6[address(arg1)].field_256 + ext_call.return_data[0] - sub_63920c09[address(arg1)] / sub_e75f7ddb.length) + sub_fd8c06c6[address(arg1)][address(msg.sender)].field_0
}

function sub_042a2847(?) payable {
    mem[64] = 96
    require not msg.value
    if not arg1:
        mem[0] = arg1
        mem[32] = 1
        require sub_63920c09[address(arg1)] <= eth.balance(this.address)
        s = 0
        idx = 0
        s = eth.balance(this.address) - stor[sha3(mem[0 len 64])]
        t = 0
        while idx < sub_e75f7ddb.length:
            mem[0] = 2
            if t:
                _71 = mem[64]
                mem[64] = mem[64] + 64
                mem[_71] = 1
                mem[_71 + 32] = sub_e75f7ddb.length
                if sub_fd8c06c6[address(arg1)].field_256 + s >= s:
                    if not sub_fd8c06c6[address(arg1)].field_256 + s:
                        if sub_e75f7ddb.length:
                            if sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 <= 0 / sub_e75f7ddb.length:
                                if 0 / sub_e75f7ddb.length >= sub_fd8c06c6[address(arg1)][stor2[idx]].field_0:
                                    mem[0] = sub_e75f7ddb[idx]
                                    mem[32] = sha3(address(arg1), 3)
                                    sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 = 0 / sub_e75f7ddb.length
                                    if (0 / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 + sub_fd8c06c6[address(arg1)].field_256 >= sub_fd8c06c6[address(arg1)].field_256:
                                        sub_fd8c06c6[address(arg1)].field_256 = (0 / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 + sub_fd8c06c6[address(arg1)].field_256
                                        if not arg1:
                                            call sub_e75f7ddb[idx] with:
                                               value (0 / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 wei
                                                 gas gas_remaining wei
                                            require ext_call.success
                                        else:
                                            mem[mem[64] + 4] = sub_e75f7ddb[idx]
                                            mem[mem[64] + 36] = (0 / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args sub_e75f7ddb[idx], (0 / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                        if (0 / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 <= s:
                                            s = sub_e75f7ddb[idx]
                                            idx = idx + 1
                                            s = s - (0 / sub_e75f7ddb.length) + sub_fd8c06c6[address(arg1)][stor2[idx]].field_0
                                            t = t
                                            continue 
                    else:
                        if sub_fd8c06c6[address(arg1)].field_256 + s / sub_fd8c06c6[address(arg1)].field_256 + s == 1:
                            if sub_e75f7ddb.length:
                                if sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 <= sub_fd8c06c6[address(arg1)].field_256 + s / sub_e75f7ddb.length:
                                    if sub_fd8c06c6[address(arg1)].field_256 + s / sub_e75f7ddb.length >= sub_fd8c06c6[address(arg1)][stor2[idx]].field_0:
                                        mem[0] = sub_e75f7ddb[idx]
                                        mem[32] = sha3(address(arg1), 3)
                                        sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 = sub_fd8c06c6[address(arg1)].field_256 + s / sub_e75f7ddb.length
                                        if (sub_fd8c06c6[address(arg1)].field_256 + s / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 + sub_fd8c06c6[address(arg1)].field_256 >= sub_fd8c06c6[address(arg1)].field_256:
                                            sub_fd8c06c6[address(arg1)].field_256 = (sub_fd8c06c6[address(arg1)].field_256 + s / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 + sub_fd8c06c6[address(arg1)].field_256
                                            if not arg1:
                                                call sub_e75f7ddb[idx] with:
                                                   value (sub_fd8c06c6[address(arg1)].field_256 + s / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 wei
                                                     gas gas_remaining wei
                                                require ext_call.success
                                            else:
                                                mem[mem[64] + 4] = sub_e75f7ddb[idx]
                                                mem[mem[64] + 36] = (sub_fd8c06c6[address(arg1)].field_256 + s / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0
                                                require ext_code.size(arg1)
                                                call arg1.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args sub_e75f7ddb[idx], (sub_fd8c06c6[address(arg1)].field_256 + s / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0
                                                mem[mem[64]] = ext_call.return_data[0]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                            if (sub_fd8c06c6[address(arg1)].field_256 + s / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 <= s:
                                                s = sub_e75f7ddb[idx]
                                                idx = idx + 1
                                                s = s - (sub_fd8c06c6[address(arg1)].field_256 + s / sub_e75f7ddb.length) + sub_fd8c06c6[address(arg1)][stor2[idx]].field_0
                                                t = t
                                                continue 
            else:
                _73 = mem[64]
                mem[64] = mem[64] + 64
                mem[_73] = 1
                mem[_73 + 32] = sub_e75f7ddb.length
                if sub_fd8c06c6[address(arg1)].field_256 + s >= s:
                    if not sub_fd8c06c6[address(arg1)].field_256 + s:
                        if sub_e75f7ddb.length:
                            if sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 <= 0 / sub_e75f7ddb.length:
                                if 0 / sub_e75f7ddb.length >= sub_fd8c06c6[address(arg1)][stor2[idx]].field_0:
                                    mem[0] = sub_e75f7ddb[idx]
                                    mem[32] = sha3(address(arg1), 3)
                                    sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 = 0 / sub_e75f7ddb.length
                                    if (0 / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 + sub_fd8c06c6[address(arg1)].field_256 >= sub_fd8c06c6[address(arg1)].field_256:
                                        sub_fd8c06c6[address(arg1)].field_256 = (0 / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 + sub_fd8c06c6[address(arg1)].field_256
                                        if not arg1:
                                            call sub_e75f7ddb[idx] with:
                                               value (0 / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 wei
                                                 gas gas_remaining wei
                                            require ext_call.success
                                        else:
                                            mem[mem[64] + 4] = sub_e75f7ddb[idx]
                                            mem[mem[64] + 36] = (0 / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args sub_e75f7ddb[idx], (0 / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                        if (0 / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 <= s:
                                            s = sub_e75f7ddb[idx]
                                            idx = idx + 1
                                            s = s - (0 / sub_e75f7ddb.length) + sub_fd8c06c6[address(arg1)][stor2[idx]].field_0
                                            t = msg.sender == sub_e75f7ddb[idx]
                                            continue 
                    else:
                        if sub_fd8c06c6[address(arg1)].field_256 + s / sub_fd8c06c6[address(arg1)].field_256 + s == 1:
                            if sub_e75f7ddb.length:
                                if sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 <= sub_fd8c06c6[address(arg1)].field_256 + s / sub_e75f7ddb.length:
                                    if sub_fd8c06c6[address(arg1)].field_256 + s / sub_e75f7ddb.length >= sub_fd8c06c6[address(arg1)][stor2[idx]].field_0:
                                        mem[0] = sub_e75f7ddb[idx]
                                        mem[32] = sha3(address(arg1), 3)
                                        sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 = sub_fd8c06c6[address(arg1)].field_256 + s / sub_e75f7ddb.length
                                        if (sub_fd8c06c6[address(arg1)].field_256 + s / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 + sub_fd8c06c6[address(arg1)].field_256 >= sub_fd8c06c6[address(arg1)].field_256:
                                            sub_fd8c06c6[address(arg1)].field_256 = (sub_fd8c06c6[address(arg1)].field_256 + s / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 + sub_fd8c06c6[address(arg1)].field_256
                                            if not arg1:
                                                call sub_e75f7ddb[idx] with:
                                                   value (sub_fd8c06c6[address(arg1)].field_256 + s / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 wei
                                                     gas gas_remaining wei
                                                require ext_call.success
                                            else:
                                                mem[mem[64] + 4] = sub_e75f7ddb[idx]
                                                mem[mem[64] + 36] = (sub_fd8c06c6[address(arg1)].field_256 + s / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0
                                                require ext_code.size(arg1)
                                                call arg1.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args sub_e75f7ddb[idx], (sub_fd8c06c6[address(arg1)].field_256 + s / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0
                                                mem[mem[64]] = ext_call.return_data[0]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                            if (sub_fd8c06c6[address(arg1)].field_256 + s / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 <= s:
                                                s = sub_e75f7ddb[idx]
                                                idx = idx + 1
                                                s = s - (sub_fd8c06c6[address(arg1)].field_256 + s / sub_e75f7ddb.length) + sub_fd8c06c6[address(arg1)][stor2[idx]].field_0
                                                t = msg.sender == sub_e75f7ddb[idx]
                                                continue 
            revert
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        require ext_call.success
        mem[0] = arg1
        mem[32] = 1
        require sub_63920c09[address(arg1)] <= ext_call.return_data[0]
        s = 0
        idx = 0
        s = ext_call.return_data[0] - stor[sha3(mem[0 len 64])]
        t = 0
        while idx < sub_e75f7ddb.length:
            mem[0] = 2
            if t:
                _68 = mem[64]
                mem[64] = mem[64] + 64
                mem[_68] = 1
                mem[_68 + 32] = sub_e75f7ddb.length
                if sub_fd8c06c6[address(arg1)].field_256 + s >= s:
                    if not sub_fd8c06c6[address(arg1)].field_256 + s:
                        if sub_e75f7ddb.length:
                            if sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 <= 0 / sub_e75f7ddb.length:
                                if 0 / sub_e75f7ddb.length >= sub_fd8c06c6[address(arg1)][stor2[idx]].field_0:
                                    mem[0] = sub_e75f7ddb[idx]
                                    mem[32] = sha3(address(arg1), 3)
                                    sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 = 0 / sub_e75f7ddb.length
                                    if (0 / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 + sub_fd8c06c6[address(arg1)].field_256 >= sub_fd8c06c6[address(arg1)].field_256:
                                        sub_fd8c06c6[address(arg1)].field_256 = (0 / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 + sub_fd8c06c6[address(arg1)].field_256
                                        if not arg1:
                                            call sub_e75f7ddb[idx] with:
                                               value (0 / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 wei
                                                 gas gas_remaining wei
                                            require ext_call.success
                                        else:
                                            mem[mem[64] + 4] = sub_e75f7ddb[idx]
                                            mem[mem[64] + 36] = (0 / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args sub_e75f7ddb[idx], (0 / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                        if (0 / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 <= s:
                                            s = sub_e75f7ddb[idx]
                                            idx = idx + 1
                                            s = s - (0 / sub_e75f7ddb.length) + sub_fd8c06c6[address(arg1)][stor2[idx]].field_0
                                            t = t
                                            continue 
                    else:
                        if sub_fd8c06c6[address(arg1)].field_256 + s / sub_fd8c06c6[address(arg1)].field_256 + s == 1:
                            if sub_e75f7ddb.length:
                                if sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 <= sub_fd8c06c6[address(arg1)].field_256 + s / sub_e75f7ddb.length:
                                    if sub_fd8c06c6[address(arg1)].field_256 + s / sub_e75f7ddb.length >= sub_fd8c06c6[address(arg1)][stor2[idx]].field_0:
                                        mem[0] = sub_e75f7ddb[idx]
                                        mem[32] = sha3(address(arg1), 3)
                                        sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 = sub_fd8c06c6[address(arg1)].field_256 + s / sub_e75f7ddb.length
                                        if (sub_fd8c06c6[address(arg1)].field_256 + s / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 + sub_fd8c06c6[address(arg1)].field_256 >= sub_fd8c06c6[address(arg1)].field_256:
                                            sub_fd8c06c6[address(arg1)].field_256 = (sub_fd8c06c6[address(arg1)].field_256 + s / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 + sub_fd8c06c6[address(arg1)].field_256
                                            if not arg1:
                                                call sub_e75f7ddb[idx] with:
                                                   value (sub_fd8c06c6[address(arg1)].field_256 + s / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 wei
                                                     gas gas_remaining wei
                                                require ext_call.success
                                            else:
                                                mem[mem[64] + 4] = sub_e75f7ddb[idx]
                                                mem[mem[64] + 36] = (sub_fd8c06c6[address(arg1)].field_256 + s / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0
                                                require ext_code.size(arg1)
                                                call arg1.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args sub_e75f7ddb[idx], (sub_fd8c06c6[address(arg1)].field_256 + s / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0
                                                mem[mem[64]] = ext_call.return_data[0]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                            if (sub_fd8c06c6[address(arg1)].field_256 + s / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 <= s:
                                                s = sub_e75f7ddb[idx]
                                                idx = idx + 1
                                                s = s - (sub_fd8c06c6[address(arg1)].field_256 + s / sub_e75f7ddb.length) + sub_fd8c06c6[address(arg1)][stor2[idx]].field_0
                                                t = t
                                                continue 
            else:
                _72 = mem[64]
                mem[64] = mem[64] + 64
                mem[_72] = 1
                mem[_72 + 32] = sub_e75f7ddb.length
                if sub_fd8c06c6[address(arg1)].field_256 + s >= s:
                    if not sub_fd8c06c6[address(arg1)].field_256 + s:
                        if sub_e75f7ddb.length:
                            if sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 <= 0 / sub_e75f7ddb.length:
                                if 0 / sub_e75f7ddb.length >= sub_fd8c06c6[address(arg1)][stor2[idx]].field_0:
                                    mem[0] = sub_e75f7ddb[idx]
                                    mem[32] = sha3(address(arg1), 3)
                                    sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 = 0 / sub_e75f7ddb.length
                                    if (0 / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 + sub_fd8c06c6[address(arg1)].field_256 >= sub_fd8c06c6[address(arg1)].field_256:
                                        sub_fd8c06c6[address(arg1)].field_256 = (0 / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 + sub_fd8c06c6[address(arg1)].field_256
                                        if not arg1:
                                            call sub_e75f7ddb[idx] with:
                                               value (0 / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 wei
                                                 gas gas_remaining wei
                                            require ext_call.success
                                        else:
                                            mem[mem[64] + 4] = sub_e75f7ddb[idx]
                                            mem[mem[64] + 36] = (0 / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0
                                            require ext_code.size(arg1)
                                            call arg1.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args sub_e75f7ddb[idx], (0 / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            require ext_call.success
                                            require ext_call.return_data[0]
                                        if (0 / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 <= s:
                                            s = sub_e75f7ddb[idx]
                                            idx = idx + 1
                                            s = s - (0 / sub_e75f7ddb.length) + sub_fd8c06c6[address(arg1)][stor2[idx]].field_0
                                            t = msg.sender == sub_e75f7ddb[idx]
                                            continue 
                    else:
                        if sub_fd8c06c6[address(arg1)].field_256 + s / sub_fd8c06c6[address(arg1)].field_256 + s == 1:
                            if sub_e75f7ddb.length:
                                if sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 <= sub_fd8c06c6[address(arg1)].field_256 + s / sub_e75f7ddb.length:
                                    if sub_fd8c06c6[address(arg1)].field_256 + s / sub_e75f7ddb.length >= sub_fd8c06c6[address(arg1)][stor2[idx]].field_0:
                                        mem[0] = sub_e75f7ddb[idx]
                                        mem[32] = sha3(address(arg1), 3)
                                        sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 = sub_fd8c06c6[address(arg1)].field_256 + s / sub_e75f7ddb.length
                                        if (sub_fd8c06c6[address(arg1)].field_256 + s / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 + sub_fd8c06c6[address(arg1)].field_256 >= sub_fd8c06c6[address(arg1)].field_256:
                                            sub_fd8c06c6[address(arg1)].field_256 = (sub_fd8c06c6[address(arg1)].field_256 + s / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 + sub_fd8c06c6[address(arg1)].field_256
                                            if not arg1:
                                                call sub_e75f7ddb[idx] with:
                                                   value (sub_fd8c06c6[address(arg1)].field_256 + s / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 wei
                                                     gas gas_remaining wei
                                                require ext_call.success
                                            else:
                                                mem[mem[64] + 4] = sub_e75f7ddb[idx]
                                                mem[mem[64] + 36] = (sub_fd8c06c6[address(arg1)].field_256 + s / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0
                                                require ext_code.size(arg1)
                                                call arg1.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args sub_e75f7ddb[idx], (sub_fd8c06c6[address(arg1)].field_256 + s / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0
                                                mem[mem[64]] = ext_call.return_data[0]
                                                require ext_call.success
                                                require ext_call.return_data[0]
                                            if (sub_fd8c06c6[address(arg1)].field_256 + s / sub_e75f7ddb.length) - sub_fd8c06c6[address(arg1)][stor2[idx]].field_0 <= s:
                                                s = sub_e75f7ddb[idx]
                                                idx = idx + 1
                                                s = s - (sub_fd8c06c6[address(arg1)].field_256 + s / sub_e75f7ddb.length) + sub_fd8c06c6[address(arg1)][stor2[idx]].field_0
                                                t = msg.sender == sub_e75f7ddb[idx]
                                                continue 
            revert
    if arg1:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args address(this.address)
        require ext_call.success
        require ext_call.return_data[0] == s
    require t
}



}
