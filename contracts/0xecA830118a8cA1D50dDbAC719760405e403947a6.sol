contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
uint256 stor5;
mapping of uint256 stor6;
uint256 stor17;

function _fallback() payable {
    stor17 = 1000000 * 10^18
    require not msg.value
    mem[96 len -11256] = code.data[11754 len -11256]
    mem[64] = -11160
    stor0 = msg.sender
    stor5 = mem[96] * 10^stor4
    stor6[address(msg.sender)] = stor5
    stor2[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor3[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    return code.data[498 len 11256]
}



// =====================  Runtime code  =====================


address owner;
address adminAddress;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 stor5;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 memberId;
array of struct members;
uint256 totalSupply;
uint256 sellPrice;
uint256 buyPrice;
uint256 dividend;
uint256 pantry;
uint256 pantryT;
uint256 stopSetPrice;
mapping of uint8 stor18;

function name() {
    return name[0 len name.length]
}

function stopSetPrice() {
    return stopSetPrice
}

function dividend() {
    return dividend
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function memberId(address arg1) {
    return memberId[arg1]
}

function sellPrice() {
    return sellPrice
}

function members(uint256 arg1) {
    require arg1 < members.length
    mem[224] = uint256(stor[sha3((3 * arg1) + ('name', 'members', 10) + 1)].field_0)
    idx = 224
    s = 0
    while stor[(3 * arg1) + ('name', 'members', 10) + 1].length + 224 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((3 * arg1) + ('name', 'members', 10) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(members[arg1].field_0), 
           Array(len=stor[(3 * arg1) + ('name', 'members', 10) + 1].length, data=mem[224 len stor[(3 * arg1) + ('name', 'members', 10) + 1].length + (floor32(stor[(3 * arg1) + ('name', 'members', 10) + 1].length - 1) + -stor[(3 * arg1) + ('name', 'members', 10) + 1].length + 32 % 32)]),
           uint256(members[arg1].field_512)
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function buyPrice() {
    return buyPrice
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function pantryT() {
    return pantryT
}

function frozenAccount(address arg1) {
    return bool(stor18[arg1])
}

function pantry() {
    return pantry
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function adminCreat(address arg1) {
    require msg.sender == owner
    adminAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function transferAdmin(address arg1) {
    require msg.sender == owner
    adminAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function setPrices(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    require totalSupply <= stopSetPrice
    sellPrice = arg1
    buyPrice = arg2
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor18[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function remainPantry() {
    require msg.sender == owner
    pantry = eth.balance(this.address)
    pantryT = balanceOf[address(this.address)]
    return pantry, pantryT
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    stor5 -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function robPantryT(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, this.address, arg1);
}

function robPantry(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 * 10^decimals <= eth.balance(this.address)
    call arg1 with:
       value arg2 * 10^decimals wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function mintToClient(address arg1, uint256 arg2) {
    require msg.sender == adminAddress
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
    dividend += arg2 / 10
    totalSupply += arg2 / 10
}

function burnFrom(address arg1, uint256 arg2) {
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    stor5 -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function buy() payable {
    balanceOf[address(msg.sender)] += msg.value * buyPrice
    totalSupply += msg.value * buyPrice
    emit Transfer((msg.value * buyPrice), 0, this.address);
    emit Transfer((msg.value * buyPrice), this.address, msg.sender);
    dividend += msg.value * buyPrice / 10
    totalSupply += msg.value * buyPrice / 10
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] > arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require not stor18[address(msg.sender)]
    require not stor18[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] > arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require not stor18[address(arg1)]
    require not stor18[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function dividendDistribution() {
    require msg.sender == owner
    emit Transfer(dividend, 0, this.address);
    require members.length
    dividend = 0
    s = 0
    idx = 0
    while idx < members.length:
        mem[0] = address(members[idx].field_0)
        mem[32] = 6
        balanceOf[address(stor10[idx].field_0)] += dividend / members.length
        mem[96] = dividend / members.length
        emit Transfer((dividend / members.length), this.address, address(members[idx].field_0));
        s = address(members[idx].field_0)
        idx = idx + 1
        continue 
}

function sell(uint256 arg1) {
    require sellPrice
    require eth.balance(this.address) >= arg1 * 10^decimals / sellPrice
    require this.address
    require balanceOf[address(msg.sender)] > arg1 * 10^decimals
    require balanceOf[address(this.address)] + (arg1 * 10^decimals) > balanceOf[address(this.address)]
    require not stor18[address(msg.sender)]
    require not stor18[address(this.address)]
    balanceOf[address(msg.sender)] += -1 * arg1 * 10^decimals
    balanceOf[address(this.address)] += arg1 * 10^decimals
    emit Transfer((arg1 * 10^decimals), msg.sender, this.address);
    require sellPrice
    call msg.sender with:
       value arg1 * 10^decimals / sellPrice wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function addMember(address arg1, string arg2) {
    require msg.sender == owner
    if memberId[address(arg1)]:
        require memberId[address(arg1)] < members.length
        address(members[stor8[address(arg1)]].field_0) = arg1
        uint256(stor[sha3((3 * stor8[address(arg1)]) + ('name', 'members', 10) + 1)][].field_0) = Array(len=arg2.length, data=arg2[all])
        uint256(members[stor8[address(arg1)]].field_512) = block.timestamp
    else:
        memberId[address(arg1)] = members.length
        members.length++
        if not members.length <= members.length + 1:
            mem[0] = 10
            idx = (3 * members.length) + 3
            while sha3(10) + (3 * members.length) > idx + sha3(mem[0]):
                address(stor[idx + sha3(mem[0])]) = 0
                uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                if 31 < stor[idx + sha3(mem[0]) + 1].length:
                    mem[0] = idx + sha3(mem[0]) + 1
                    s = sha3(idx + sha3(mem[0]) + 1)
                    while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                idx = idx + 3
                continue 
        require members.length < members.length
        address(members[members.length].field_0) = arg1
        uint256(stor[sha3((3 * members.length) + ('name', 'members', 10) + 1)][].field_0) = Array(len=arg2.length, data=arg2[all])
        uint256(members[members.length].field_512) = block.timestamp
    emit MembershipChanged(address(arg1), 1);
}

function removeMember(address arg1) {
    require msg.sender == owner
    require memberId[address(arg1)]
    mem[0] = arg1
    idx = memberId[mem[0]]
    while idx < members.length - 1:
        require idx + 1 < members.length
        require idx < members.length
        address(members[idx].field_0) = address(members[idx].field_768)
        mem[0] = (3 * idx) + sha3(10) + 1
        if 31 >= stor[(3 * idx) + ('name', 'members', 10) + 4].length:
            uint256(members[idx].field_256) = uint256(members[idx].field_1024)
            s = sha3((3 * idx) + sha3(10) + 1)
            while sha3((3 * idx) + sha3(10) + 1) + (stor[(3 * idx) + ('name', 'members', 10) + 1].length + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
        else:
            uint256(members[idx].field_256) = Mask(255, 1, (256 * not bool(members[idx].field_1024)) - 1 and uint256(members[idx].field_1024)) + 1
            if not Mask(255, 1, (256 * not bool(members[idx].field_1024)) - 1 and uint256(members[idx].field_1024)):
                s = sha3((3 * idx) + sha3(10) + 1)
                while sha3((3 * idx) + sha3(10) + 1) + (stor[(3 * idx) + ('name', 'members', 10) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            else:
                mem[0] = (3 * idx) + sha3(10) + 4
                s = sha3((3 * idx) + sha3(10) + 1)
                t = sha3((3 * idx) + sha3(10) + 4)
                while sha3((3 * idx) + sha3(10) + 4) + (stor[(3 * idx) + ('name', 'members', 10) + 4].length + 31 / 32) > t:
                    uint256(stor[s]) = uint256(stor[t])
                    s = s + 1
                    t = t + 1
                    continue 
                t = s
                while sha3((3 * idx) + sha3(10) + 1) + (stor[(3 * idx) + ('name', 'members', 10) + 1].length + 31 / 32) > t:
                    uint256(stor[t]) = 0
                    t = t + 1
                    continue 
        uint256(members[idx].field_512) = uint256(members[idx].field_1280)
        idx = idx + 1
        continue 
    require members.length - 1 < members.length
    address(members[members.length].field_0) = 0
    uint256(members[members.length].field_0) = 0
    if 31 < stor[(3 * members.length) + ('name', 'members', 10) - 2].length:
        idx = 0
        while stor[(3 * members.length) + ('name', 'members', 10) - 2].length + 31 / 32 > idx:
            uint256(stor[idx + sha3((3 * members.length) + ('name', 'members', 10) - 2)].field_0) = 0
            idx = idx + 1
            continue 
    uint256(members[members.length].field_0) = 0
    members.length--
    if not members.length <= members.length - 1:
        mem[0] = 10
        idx = (3 * members.length) - 3
        while sha3(10) + (3 * members.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            idx = idx + 3
            continue 
}



}
