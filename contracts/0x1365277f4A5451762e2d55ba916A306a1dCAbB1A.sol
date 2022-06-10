contract main {




// =====================  Runtime code  =====================


const random = sha3(block.difficulty, block.timestamp)

const checkBalance = eth.balance(this.address)


uint8 winNum;
address rootAddress; offset 8
address managerAddress;
address sub_7b6f52e3Address;
array of struct sub_ce39041f;
array of address winner;
array of address sub_346716f4;
array of struct sub_443681d1;
array of uint256 stor7;
array of uint256 stor8;
mapping of uint256 count;

function count(address arg1) {
    return count[arg1]
}

function sub_14f2ab2d(?) {
    require arg1 < stor7.length
    return sub_14f2ab2d[uint8(arg1)]
}

function winner(uint256 arg1) {
    require arg1 < winner.length
    return winner[arg1]
}

function sub_346716f4(?) {
    require arg1 < sub_346716f4.length
    return sub_346716f4[arg1]
}

function sub_443681d1(?) {
    require arg1 < sub_443681d1.length
    return sub_443681d1[arg1].field_0
}

function manager() {
    return managerAddress
}

function winNum() {
    return winNum
}

function sub_7b6f52e3(?) {
    return sub_7b6f52e3Address
}

function sub_9ae00ca5(?) {
    require arg1 < stor8.length
    return sub_9ae00ca5[uint8(arg1)]
}

function sub_ce39041f(?) {
    require arg1 < sub_ce39041f.length
    return address(sub_ce39041f[arg1].field_0)
}

function root() {
    return rootAddress
}

function payTo() payable {
  stop
}

function _fallback() payable {
    revert
}

function sub_ffa1ec7b(?) {
    count[address(arg1)] += arg2
}

function change() {
    require msg.sender == rootAddress
    managerAddress = rootAddress
}

function prevent() {
    require msg.sender == rootAddress
    call managerAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5a9871a9(?) {
    idx = 0
    while idx < sub_ce39041f.length:
        mem[0] = address(sub_ce39041f[idx].field_0)
        mem[32] = 9
        count[address(stor3[idx].field_0)] = 0
        idx = idx + 1
        continue 
    sub_ce39041f.length = 0
    idx = 0
    while sub_ce39041f.length > idx:
        address(sub_ce39041f[idx].field_0) = 0
        idx = idx + 1
        continue 
    sub_443681d1.length = 0
    idx = 0
    while sub_443681d1.length > idx:
        sub_443681d1[idx].field_0 = 0
        idx = idx + 1
        continue 
}

function sub_a0d249cc(?) {
    idx = 0
    s = 0
    while uint8(idx) < sub_ce39041f.length:
        mem[0] = 3
        if address(sub_ce39041f[uint8(idx)].field_0) != arg1:
            idx = idx + 1
            s = s
            continue 
        require uint8(idx) < sub_ce39041f.length
        mem[32] = 9
        require uint8(idx) < sub_443681d1.length
        mem[0] = 6
        sub_443681d1[uint8(idx)].field_0 = count[address(stor3[uint8(idx)].field_0)]
        idx = idx + 1
        s = s + 1
        continue 
    if not s:
        sub_ce39041f.length++
        address(sub_ce39041f[sub_ce39041f.length].field_0) = arg1
        sub_443681d1.length++
        sub_443681d1[sub_443681d1.length].field_0 = count[address(arg1)]
}

function sub_e593f6e5(?) {
    idx = 0
    s = 0
    while idx < sub_ce39041f.length:
        mem[0] = address(sub_ce39041f[idx].field_0)
        mem[32] = 9
        idx = idx + 1
        s = count[address(stor3[idx].field_0)] + s
        continue 
    require stor[_17] * sub_ce39041f.length
    idx = 0
    s = 0
    while idx < sub_ce39041f.length:
        mem[0] = address(sub_ce39041f[idx].field_0)
        mem[32] = 9
        if count[address(stor3[idx].field_0)] + s < (sha3(block.difficulty, block.timestamp) % stor[_17] * sub_ce39041f.length) + 1:
            idx = idx + 1
            s = count[address(stor3[idx].field_0)] + s
            continue 
        require idx < sub_ce39041f.length
        sub_7b6f52e3Address = address(sub_ce39041f[idx].field_0)
        call sub_7b6f52e3Address with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    call sub_7b6f52e3Address with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getPlayers() {
    if sub_ce39041f.length:
        mem[128] = address(sub_ce39041f.field_0)
        idx = 128
        s = 0
        while (32 * sub_ce39041f.length) + 96 > idx:
            mem[idx + 32] = address(sub_ce39041f[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    if sub_443681d1.length:
        mem[(32 * sub_ce39041f.length) + 160] = uint256(sub_443681d1.field_0)
        idx = (32 * sub_ce39041f.length) + 160
        s = 0
        while (32 * sub_ce39041f.length) + (32 * sub_443681d1.length) + 128 > idx:
            mem[idx + 32] = sub_443681d1[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * sub_ce39041f.length) + (32 * sub_443681d1.length) + 288 len floor32(sub_ce39041f.length)] = mem[128 len floor32(sub_ce39041f.length)]
    mem[(64 * sub_ce39041f.length) + (32 * sub_443681d1.length) + 288] = sub_443681d1.length
    mem[(64 * sub_ce39041f.length) + (32 * sub_443681d1.length) + 320 len floor32(sub_443681d1.length)] = mem[(32 * sub_ce39041f.length) + 160 len floor32(sub_443681d1.length)]
    return sub_ce39041f.length, 
           Array(len=sub_ce39041f.length, data=mem[128 len floor32(sub_ce39041f.length)], mem[(32 * sub_ce39041f.length) + (32 * sub_443681d1.length) + floor32(sub_ce39041f.length) + 288 len (32 * sub_ce39041f.length) + (32 * sub_443681d1.length) + -floor32(sub_ce39041f.length) + 32]),
           (32 * sub_ce39041f.length) + 128
}



}
