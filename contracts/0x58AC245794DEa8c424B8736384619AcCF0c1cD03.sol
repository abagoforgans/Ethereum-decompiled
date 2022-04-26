contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
address stor5;
array of address stor6;
uint256 stor7;
mapping of uint256 stor8;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'Token 0.1' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor5 = 0x7dadbb797041dab9a5853543c0e4afc70d91cd34
    stor7 = 0x26be3f796356cf26183f91fea302911533808f5ee8f58cad05c03249a1b96997
    stor8[stor5] = 200000
    stor4 = 200000
    bool(stor1.length) = 0
    stor1.length.field_1 = 10
    stor1.length.field_8 = 'Jabcilcoin' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 1
    stor2.length.field_8 = '^' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 0
    call msg.sender with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    stor6.length++
    if not stor6.length <= stor6.length + 1:
        idx = stor6.length + 1
        while stor6.length > idx:
            uint256(stor6[idx]) = 0
            idx = idx + 1
            continue 
    address(stor6[stor6.length]) = 0x7dadbb797041dab9a5853543c0e4afc70d91cd34
    return code.data[955 len 4588]
}



// =====================  Runtime code  =====================


array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
address owner;
array of address users;
uint256 filehash;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function users(uint256 arg1) {
    require arg1 < users.length
    return address(users[arg1])
}

function standard() {
    return standard[0 len standard.length]
}

function filehash() {
    return filehash
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() {
  stop
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function collectExcess() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) - 2100000 wei
         gas 2300 * is_zero(value) wei
}

function sendDividend(address arg1, uint256 arg2) {
    require owner == msg.sender
    require totalSupply
    call arg1 with:
       value arg2 * 10 * 10^6 * balanceOf[address(arg1)] / totalSupply / 10 * 10^6 wei
         gas 2300 * is_zero(value) wei
}

function liquidateUser(address arg1, uint256 arg2) {
    require owner == msg.sender
    require totalSupply
    call arg1 with:
       value arg2 * 10 * 10^6 * balanceOf[address(arg1)] / totalSupply / 10 * 10^6 wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        balanceOf[address(arg1)] = 0
}

function issueDividend() {
    require owner == msg.sender
    idx = 0
    while idx < users.length:
        require owner == msg.sender
        mem[0] = address(users[idx])
        mem[32] = 8
        require totalSupply
        call address(users[idx]) with:
           value msg.value * 10 * 10^6 * balanceOf[address(stor6[idx])] / totalSupply / 10 * 10^6 wei
             gas 2300 * is_zero(value) wei
        idx = idx + 1
        continue 
}

function liquidate(address arg1) {
    require owner == msg.sender
    owner = arg1
    idx = 0
    while idx < users.length:
        require owner == msg.sender
        mem[0] = address(users[idx])
        mem[32] = 8
        require totalSupply
        call address(users[idx]) with:
           value msg.value * 10 * 10^6 * balanceOf[address(stor6[idx])] / totalSupply / 10 * 10^6 wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            mem[0] = address(users[idx])
            mem[32] = 8
            balanceOf[address(stor6[idx])] = 0
        idx = idx + 1
        continue 
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    idx = 0
    s = 0
    while idx < users.length:
        mem[0] = 6
        if address(users[idx]) != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if not s:
        users.length++
        if not users.length <= users.length + 1:
            idx = users.length + 1
            while users.length > idx:
                uint256(users[idx]) = 0
                idx = idx + 1
                continue 
        address(users[users.length]) = arg1
}



}
