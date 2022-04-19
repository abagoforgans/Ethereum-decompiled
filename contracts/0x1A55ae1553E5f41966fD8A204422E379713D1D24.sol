contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint8 stor1;
array of address stor2;
array of uint256 stor3;
array of uint256 stor4;
uint8 stor5;
uint256 stor6;
uint256 stor7;
mapping of uint256 stor8;

function _fallback() payable {
    stor7 = 300
    require not msg.value
    mem[96 len -5136] = code.data[5938 len -5136]
    mem[64] = -5040
    stor0 = mem[256]
    stor1[address(msg.sender)] = 1
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = stor2.length + 1
        while stor2.length > idx:
            uint256(stor2[idx]) = 0
            idx = idx + 1
            continue 
    address(stor2[stor2.length]) = msg.sender
    idx = 0
    while idx < mem[mem[224] + 96]:
        require idx < mem[mem[224] + 96]
        require not stor1[mem[(32 * idx) + mem[224] + 140 len 20]]
        require idx < mem[mem[224] + 96]
        mem[32] = 1
        stor1[mem[(32 * idx) + mem[224] + 140 len 20]] = 1
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            s = stor2.length + sha3(2) + 1
            while sha3(2) + stor2.length > s:
                stor[s] = 0
                s = s + 1
                continue 
        mem[0] = 2
        require idx < mem[mem[224] + 96]
        address(stor2[stor2.length]) = mem[(32 * idx) + mem[224] + 140 len 20]
        idx = idx + 1
        continue 
    stor5 = mem[191 len 1]
    stor6 = mem[96] * 10^mem[191 len 1]
    stor8[address(msg.sender)] = mem[96] * 10^mem[191 len 1]
    stor3[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor4[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    return code.data[802 len 5136]
}



// =====================  Runtime code  =====================


uint256 ownerRequired;
mapping of uint8 stor1;
array of address stor2;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 ethPerToken;
mapping of uint256 balanceOf;
mapping of uint8 stor9;
mapping of uint8 stor10;
mapping of struct transactions;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function isOwner(address arg1) {
    return bool(stor1[arg1])
}

function decimals() {
    return decimals
}

function Transactions(bytes32 arg1) {
    mem[256] = transactions[arg1][2].field_0
    idx = 256
    s = 0
    while transactions[arg1][2].length + 256 > idx + 32:
        mem[idx + 32] = transactions[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return address(transactions[arg1].field_0), 
           transactions[arg1].field_256,
           Array(len=transactions[arg1][2].length, data=mem[256 len transactions[arg1][2].length + (floor32(transactions[arg1][2].length - 1) + -transactions[arg1][2].length + 32 % 32)]),
           bool(uint8(transactions[arg1].field_768))
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function numberOwners() {
    return stor2.length
}

function remainBalanced() {
    return balanceOf[address(this.address)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function ownerRequired() {
    return ownerRequired
}

function frozenAccount(address arg1) {
    return bool(stor9[arg1])
}

function Confirmations(bytes32 arg1, address arg2) {
    return bool(stor10[arg1][arg2])
}

function EthPerToken() {
    return ethPerToken
}

function _fallback() payable {
    revert
}

function setPrices(uint256 arg1) {
    require stor1[address(msg.sender)]
    ethPerToken = arg1
}

function freezeAccount(address arg1, bool arg2) {
    require stor1[address(msg.sender)]
    stor9[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function changeRequirement(uint256 arg1) {
    require stor1[address(msg.sender)]
    require arg1 >= stor2.length
    ownerRequired = arg1
    emit RequirementChanged(arg1);
}

function confirmationCount(bytes32 arg1) {
    idx = 0
    s = 0
    while idx < stor2.length:
        mem[0] = address(stor2[idx])
        mem[32] = sha3(arg1, 10)
        if not stor10[arg1][address(stor2[idx])]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function isConfirmed(bytes32 arg1) {
    idx = 0
    s = 0
    while idx < stor2.length:
        mem[0] = address(stor2[idx])
        mem[32] = sha3(arg1, 10)
        if not stor10[arg1][address(stor2[idx])]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    if s != ownerRequired:
        return 0
    return 1
}

function addOwner(address arg1) {
    require stor1[address(msg.sender)]
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = stor2.length + 1
        while stor2.length > idx:
            uint256(stor2[idx]) = 0
            idx = idx + 1
            continue 
    address(stor2[stor2.length]) = arg1
    emit OwnerAdded(arg1);
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] > arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require not stor9[address(msg.sender)]
    balanceOf[msg.sender] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg1)]
}

function removeOwner(address arg1) {
    require stor1[address(msg.sender)]
    require stor1[address(arg1)]
    require stor2.length > 2
    stor1[address(arg1)] = 0
    idx = 0
    while idx < stor2.length - 1:
        require idx < stor2.length
        mem[0] = 2
        if address(stor2[idx]) != arg1:
            idx = idx + 1
            continue 
        require stor2.length - 1 < stor2.length
        require idx < stor2.length
        address(stor2[idx]) = address(stor2[stor2.length])
        stor2.length--
        if not stor2.length <= stor2.length - 1:
            idx = stor2.length + sha3(2) - 1
            while sha3(2) + stor2.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        emit OwnerRemoved(arg1);
    stor2.length--
    if not stor2.length <= stor2.length - 1:
        idx = stor2.length - 1
        while stor2.length > idx:
            uint256(stor2[idx]) = 0
            idx = idx + 1
            continue 
    emit OwnerRemoved(arg1);
}

function executeTransaction(bytes32 arg1) {
    require not uint8(transactions[arg1].field_768)
    idx = 0
    s = 0
    while idx < stor2.length:
        mem[0] = address(stor2[idx])
        mem[32] = sha3(arg1, 10)
        if not stor10[arg1][address(stor2[idx])]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    if s == ownerRequired:
        uint8(transactions[arg1].field_768) = 1
        mem[96] = transactions[arg1][2].field_0
        idx = 96
        s = 0
        while transactions[arg1][2].length + 96 > idx + 32:
            mem[idx + 32] = transactions[arg1][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
        call address(transactions[arg1].field_0).mem[96 len 4] with:
           value transactions[arg1].field_256 wei
             gas gas_remaining - 34710 wei
            args mem[100 len transactions[arg1][2].length + (floor32(transactions[arg1][2].length - 1) + -transactions[arg1][2].length + 32 % 32) - 4]
        require ext_call.success
        emit Execution(arg1);
}

function confirmTransaction(bytes32 arg1) {
    require stor1[address(msg.sender)]
    require stor1[address(msg.sender)]
    require not stor10[arg1][address(msg.sender)]
    stor10[arg1][address(msg.sender)] = 1
    mem[128] = arg1
    emit Confirmation(msg.sender, arg1);
    require not uint8(transactions[arg1].field_768)
    idx = 0
    s = 0
    while idx < stor2.length:
        mem[0] = address(stor2[idx])
        mem[32] = sha3(arg1, 10)
        if not stor10[arg1][address(stor2[idx])]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    if s == ownerRequired:
        uint8(transactions[arg1].field_768) = 1
        mem[96] = transactions[arg1][2].field_0
        idx = 96
        s = 0
        while transactions[arg1][2].length + 96 > idx + 32:
            mem[idx + 32] = transactions[arg1][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
        call address(transactions[arg1].field_0).mem[96 len 4] with:
           value transactions[arg1].field_256 wei
             gas gas_remaining - 34710 wei
            args mem[100 len transactions[arg1][2].length + (floor32(transactions[arg1][2].length - 1) + -transactions[arg1][2].length + 32 % 32) - 4]
        require ext_call.success
        emit Execution(arg1);
}

function execute(address arg1, uint256 arg2, bytes arg3) {
    require arg1
    require stor1[address(msg.sender)]
    mem[64] = ceil32(arg3.length) + 128
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    require arg1
    mem[ceil32(arg3.length) + 128] = address(arg1)
    mem[ceil32(arg3.length) + 148] = arg2
    mem[ceil32(arg3.length) + 180 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 212 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
    _160 = sha3(arg1, arg2, call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 180 len arg3.length % 32])
    if address(transactions[arg1][arg2][call.data[arg3 + 36 len floor32(arg3.length)]][mem[ceil32(arg3.length) + floor32(arg3.length) + 180 len arg3.length % 32]].field_0):
        require stor1[address(msg.sender)]
        require stor1[address(msg.sender)]
        require not stor10[arg1][arg2][call.data[arg3 + 36 len floor32(arg3.length)]][mem[ceil32(arg3.length) + floor32(arg3.length) + 180 len arg3.length % 32]][address(msg.sender)]
        stor10[arg1][arg2][call.data[arg3 + 36 len floor32(arg3.length)]][mem[ceil32(arg3.length) + floor32(arg3.length) + 180 len arg3.length % 32]][address(msg.sender)] = 1
        mem[ceil32(arg3.length) + 160] = sha3(arg1, arg2, call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 180 len arg3.length % 32])
        emit Confirmation(msg.sender, _160);
        require not uint8(transactions[_160].field_768)
        idx = 0
        s = 0
        while idx < stor2.length:
            mem[0] = address(stor2[idx])
            mem[32] = sha3(_160, 10)
            if not stor10[_160][address(stor2[idx])]:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = s + 1
            continue 
        if s == ownerRequired:
            uint8(transactions[_160].field_768) = 1
            mem[0] = sha3(_160, 11) + 2
            mem[ceil32(arg3.length) + 128] = transactions[_160][2].field_0
            idx = mem[64]
            s = 0
            while ceil32(arg3.length) + transactions[_160][2].length + 128 > idx + 32:
                mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
                idx = idx + 32
                s = s + 1
                continue 
            call address(transactions[_160].field_0).mem[mem[64] len 4] with:
               value transactions[_160].field_256 wei
                 gas gas_remaining - 34710 wei
                args mem[mem[64] + 4 len ceil32(arg3.length) + transactions[_160][2].length + (floor32(transactions[_160][2].length - 1) + -transactions[_160][2].length + 32 % 32) + -mem[64] + 124]
            require ext_call.success
            emit Execution(_160);
    else:
        mem[64] = ceil32(arg3.length) + 256
        mem[ceil32(arg3.length) + 128] = arg1
        mem[ceil32(arg3.length) + 160] = arg2
        mem[ceil32(arg3.length) + 192] = 96
        mem[ceil32(arg3.length) + 224] = 0
        address(transactions[_160].field_0) = arg1
        transactions[_160].field_256 = arg2
        transactions[_160][2][].field_0 = Array(len=arg3.length, data=arg3[all])
        uint8(transactions[_160].field_768) = 0
        emit SubmitTransaction(_160);
        require stor1[address(msg.sender)]
        require stor1[address(msg.sender)]
        require not stor10[_160][address(msg.sender)]
        stor10[_160][address(msg.sender)] = 1
        mem[ceil32(arg3.length) + 288] = _160
        emit Confirmation(msg.sender, _160);
        require not uint8(transactions[_160].field_768)
        idx = 0
        s = 0
        while idx < stor2.length:
            mem[0] = address(stor2[idx])
            mem[32] = sha3(_160, 10)
            if not stor10[_160][address(stor2[idx])]:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = s + 1
            continue 
        if s == ownerRequired:
            uint8(transactions[_160].field_768) = 1
            mem[0] = sha3(_160, 11) + 2
            mem[ceil32(arg3.length) + 256] = transactions[_160][2].field_0
            idx = mem[64]
            s = 0
            while ceil32(arg3.length) + transactions[_160][2].length + 256 > idx + 32:
                mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
                idx = idx + 32
                s = s + 1
                continue 
            call address(transactions[_160].field_0).mem[mem[64] len 4] with:
               value transactions[_160].field_256 wei
                 gas gas_remaining - 34710 wei
                args mem[mem[64] + 4 len ceil32(arg3.length) + transactions[_160][2].length + (floor32(transactions[_160][2].length - 1) + -transactions[_160][2].length + 32 % 32) + -mem[64] + 252]
            require ext_call.success
            emit Execution(_160);
    return _160
}



}
