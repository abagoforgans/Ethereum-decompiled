contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;

function _fallback() {
    stor0 = msg.sender
    require code.data[5758 len 20] > 0
    stor1 = code.data[5758 len 20]
    require ext_code.size(code.data[5758 len 20])
    call code.data[5758 len 20].0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor2 = 10^ext_call.return_data[0]
    return code.data[258 len 5488]
}



// =====================  Runtime code  =====================


const sub_113f5100(?) = 1

const MAX_VOTING_OPTIONS = 4


address owner;
address tokenAddress;
uint256 tokenMultiplier;
array of struct votings;
array of uint256 sub_6aa8ba84;
array of struct sub_ff3aa422;

function sub_0d358757(?) {
    require arg2 < sub_ff3aa422[arg1].field_0
    require arg2 < sub_ff3aa422[arg1].field_0
    require arg2 < sub_ff3aa422[arg1].field_0
    return address(sub_ff3aa422[arg1][arg2].field_0), sub_ff3aa422[arg1][arg2].field_256, sub_ff3aa422[arg1][arg2].field_512
}

function sub_6aa8ba84(?) {
    return sub_6aa8ba84[arg1][arg2][0 len sub_6aa8ba84[arg1][arg2].length]
}

function owner() {
    return owner
}

function sub_9a008e89(?) {
    return sub_ff3aa422[arg1].field_0
}

function votings(uint256 arg1) {
    require arg1 < votings.length
    mem[224] = votings[arg1].field_0
    idx = 224
    s = 0
    while votings[arg1].length + 224 > idx + 32:
        mem[idx + 32] = votings[(3 * arg1) + s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=votings[arg1].length, data=mem[224 len votings[arg1].length + (floor32(votings[arg1].length - 1) + -votings[arg1].length + 32 % 32)]), 
           votings[arg1].field_256,
           votings[arg1].field_512
}

function tokenMultiplier() {
    return tokenMultiplier
}

function sub_dcca3cf5(?) {
    return stor[arg2 + ('map', ('param', 'arg1'), ('name', 'sub_6aa8ba84', 4)) - 1][0 len stor[arg2 + ('map', ('param', 'arg1'), ('name', 'sub_6aa8ba84', 4)) - 1].length]
}

function token() {
    return tokenAddress
}

function sub_ff3aa422(?) {
    require arg2 < sub_ff3aa422[arg1].field_0
    return address(sub_ff3aa422[arg1][arg2].field_0), sub_ff3aa422[arg1][arg2].field_256, sub_ff3aa422[arg1][arg2].field_512
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function sub_716abd44(?) {
    idx = 0
    while idx < votings.length:
        mem[0] = 3
        if votings[idx].field_256 > block.timestamp:
            idx = idx + 1
            continue 
        require idx < votings.length
        mem[0] = 3
        if votings[idx].field_512 <= block.timestamp:
            idx = idx + 1
            continue 
        return (idx + 1)
    return 0
}

function sub_f3cab909(?) {
    require owner == msg.sender
    require arg1 <= votings.length
    require arg2 <= sub_6aa8ba84[arg1]
    require arg1 - 1 < votings.length
    require block.timestamp < votings[arg1].field_0
    require arg2 - 1 < sub_6aa8ba84[arg1]
    stor[sha3(arg2 + ('map', ('param', 'arg1'), ('name', 'sub_6aa8ba84', 4)) - 1)][] = Array(len=arg3.length, data=arg3[all])
}

function getVoting(uint256 arg1) {
    require arg1 - 1 < votings.length
    mem[160] = stor[sha3((3 * arg1) + ('name', 'votings', 3) - 3)].field_0
    idx = 160
    s = 0
    while stor[(3 * arg1) + ('name', 'votings', 3) - 3].length + 128 > idx:
        mem[idx + 32] = stor[s + sha3((3 * arg1) + ('name', 'votings', 3) - 3)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if arg1 - 1 < votings.length:
        return Array(len=stor[(3 * arg1) + ('name', 'votings', 3) - 3].length, data=mem[160 len stor[(3 * arg1) + ('name', 'votings', 3) - 3].length]), 
               votings[arg1].field_0,
               votings[arg1].field_0,
               sub_6aa8ba84[arg1]
    revert
}

function sub_a44f1511(?) {
    require owner == msg.sender
    require arg1 <= votings.length
    require sub_6aa8ba84[arg1] < 4
    require arg1 - 1 < votings.length
    require block.timestamp < votings[arg1].field_0
    sub_6aa8ba84[arg1]++
    if not sub_6aa8ba84[arg1] <= sub_6aa8ba84[arg1] + 1:
        mem[0] = sha3(arg1, 4)
        idx = sub_6aa8ba84[arg1] + 1
        while sha3(sha3(arg1, 4)) + sub_6aa8ba84[arg1] > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            if 31 >= stor[idx + sha3(mem[0])].length:
                idx = idx + 1
                continue 
            mem[0] = idx + sha3(mem[0])
            s = sha3(s + sha3(mem[0]))
            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].length + 31 / 32) > s + sha3(mem[0]):
                stor[s + sha3(mem[0])] = 0
                s = s + 1
                continue 
            s = s + 1
            continue 
    sub_6aa8ba84[arg1][sub_6aa8ba84[arg1]][] = Array(len=arg2.length, data=arg2[all])
    return sub_6aa8ba84[arg1]
}

function sub_5363bceb(?) {
    require owner == msg.sender
    require arg1 <= votings.length
    require arg3 > 0
    require arg4 > 0
    require arg4 > arg3
    require arg1 - 1 < votings.length
    require block.timestamp < votings[arg1].field_0
    idx = 0
    while idx < votings.length:
        if idx != arg1:
            require idx < votings.length
            require idx < votings.length
            if arg3 >= votings[idx].field_256:
                require arg3 > votings[idx].field_512
                require idx < votings.length
                mem[0] = 3
                require arg4 > votings[idx].field_512
            else:
                mem[0] = 3
                if arg4 >= votings[idx].field_256:
                    require idx < votings.length
                    require arg3 > votings[idx].field_512
                    require idx < votings.length
                    mem[0] = 3
                    require arg4 > votings[idx].field_512
        idx = idx + 1
        continue 
    require arg1 - 1 < votings.length
    stor[sha3((3 * arg1) + ('name', 'votings', 3) - 3)][].field_0 = Array(len=arg2.length, data=arg2[all])
    require arg1 - 1 < votings.length
    votings[arg1].field_0 = arg3
    require arg1 - 1 < votings.length
    votings[arg1].field_0 = arg4
}

function vote(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require var15001 < votings.length
    mem[0] = 3
    if votings[var15001].field_256 > block.timestamp:
        var15001 = var15001 + 1
        continue 
    require var15001 < votings.length
    mem[0] = 3
    if votings[var15001].field_512 <= block.timestamp:
        var15001 = var15001 + 1
        continue 
    require var15001 + 1 > 0
    require arg1 <= sub_6aa8ba84[var15001 + 1]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] >= tokenMultiplier
    s = 0
    while s < sub_ff3aa422[var15001 + 1].field_0:
        require s < sub_ff3aa422[var15001 + 1].field_0
        require address(sub_ff3aa422[var15001 + 1][s].field_0) != msg.sender
        mem[0] = var15001 + 1
        mem[32] = 5
        s = s + 1
        continue 
    sub_ff3aa422[var15001 + 1].field_0++
    if not sub_ff3aa422[var15001 + 1].field_0 <= sub_ff3aa422[var15001 + 1].field_0 + 1:
        s = (3 * sub_ff3aa422[var15001 + 1].field_0) + 3
        while 3 * sub_ff3aa422[var15001 + 1].field_0 > s:
            address(sub_ff3aa422[var15001 + 1][s].field_0) = 0
            sub_ff3aa422[var15001 + 1][s].field_256 = 0
            sub_ff3aa422[var15001 + 1][s].field_512 = 0
            s = s + 3
            continue 
    address(sub_ff3aa422[var15001 + 1][sub_ff3aa422[var15001 + 1].field_0].field_0) = msg.sender
    sub_ff3aa422[var15001 + 1][sub_ff3aa422[var15001 + 1].field_0].field_256 = ext_call.return_data[0]
    sub_ff3aa422[var15001 + 1][sub_ff3aa422[var15001 + 1].field_0].field_512 = arg1
}

function sub_2615248e(?) {
    require owner == msg.sender
    require arg2 > 0
    require arg3 > 0
    require arg3 > arg2
    idx = 0
    while idx < votings.length:
        if idx != -1:
            require idx < votings.length
            require idx < votings.length
            if arg2 >= votings[idx].field_256:
                require arg2 > votings[idx].field_512
                require idx < votings.length
                mem[0] = 3
                require arg3 > votings[idx].field_512
            else:
                mem[0] = 3
                if arg3 >= votings[idx].field_256:
                    require idx < votings.length
                    require arg2 > votings[idx].field_512
                    require idx < votings.length
                    mem[0] = 3
                    require arg3 > votings[idx].field_512
        idx = idx + 1
        continue 
    votings.length++
    if not votings.length <= votings.length + 1:
        mem[0] = 3
        idx = (3 * votings.length) + 3
        while sha3(3) + (3 * votings.length) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            if 31 >= stor[idx + sha3(mem[0])].length:
                stor[idx + sha3(mem[0]) + 1] = 0
                stor[idx + sha3(mem[0]) + 2] = 0
                idx = idx + 3
                continue 
            mem[0] = idx + sha3(mem[0])
            s = sha3(s + sha3(mem[0]))
            while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])].length + 31 / 32) > s + sha3(mem[0]):
                stor[s + sha3(mem[0])] = 0
                s = s + 1
                continue 
            stor[s + sha3(mem[0]) + 1] = 0
            stor[s + sha3(mem[0]) + 2] = 0
            s = s + 3
            continue 
    votings[votings.length][].field_0 = Array(len=arg1.length, data=arg1[all])
    votings[votings.length].field_256 = arg2
    votings[votings.length].field_512 = arg3
    return votings.length
}



}
