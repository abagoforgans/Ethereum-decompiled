contract main {


// =======================  Init code  ======================


uint256 stor1;
address stor3;
uint128 stor4; offset 168
mapping of struct stor8;

function _fallback() {
    require code.data[12273 len 32]
    stor1 = code.data[12273 len 32]
    if code.data[12317 len 20]:
        stor3 = code.data[12317 len 20]
        stor4 = 1
        stor8[stor3].field_0 = 15 * 10^6
        stor8[stor3].field_24 = 0
        stor8[stor3].field_64 = uint64(block.timestamp)
        if not code.data[12253 len 20]:
            require uint64(stor8[stor3].field_0 + 1700000) >= stor8[stor3].field_0
            stor8[stor3].field_0 = uint64(stor8[stor3].field_0 + 1700000)
            stor8[stor3].field_64 = uint64(block.timestamp)
        else:
            require uint64(stor8[address(code.data[12241 len 32])].field_0 + 1700000) >= stor8[address(code.data[12241 len 32])].field_0
            stor8[address(code.data[12241 len 32])].field_0 = uint64(stor8[address(code.data[12241 len 32])].field_0 + 1700000)
            stor8[address(code.data[12241 len 32])].field_64 = uint64(block.timestamp)
    else:
        if code.data[12253 len 20]:
            stor3 = code.data[12253 len 20]
            stor4 = 1
            stor8[stor3].field_0 = 15 * 10^6
            stor8[stor3].field_24 = 0
            stor8[stor3].field_64 = uint64(block.timestamp)
            require uint64(stor8[address(code.data[12241 len 32])].field_0 + 1700000) >= stor8[address(code.data[12241 len 32])].field_0
            stor8[address(code.data[12241 len 32])].field_0 = uint64(stor8[address(code.data[12241 len 32])].field_0 + 1700000)
            stor8[address(code.data[12241 len 32])].field_64 = uint64(block.timestamp)
        else:
            stor3 = msg.sender
            stor4 = 1
            stor8[stor3].field_0 = 15 * 10^6
            stor8[stor3].field_24 = 0
            stor8[stor3].field_64 = uint64(block.timestamp)
            require uint64(stor8[stor3].field_0 + 1700000) >= stor8[stor3].field_0
            stor8[stor3].field_0 = uint64(stor8[stor3].field_0 + 1700000)
            stor8[stor3].field_64 = uint64(block.timestamp)
    return code.data[1146 len 11095]
}



// =====================  Runtime code  =====================


const totalSupply = 16700000

const sub_9796bd93(?) = (26280 * 24 * 3600)

const VERSION = 'PayableERC20 v0.4.0'


uint8 stor0;
uint256 regName;
uint256 resource;
address owner;
uint8 stor4; offset 168
uint128 stor4; offset 168
address newOwner;
uint256 stor5;
uint256 stor6;
array of uint256 symbol;
mapping of struct balanceOf;

function regName() {
    return regName
}

function resource() {
    return resource
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)].field_0
}

function owner() {
    return owner
}

function symbol() {
    return uint256(symbol[0 len symbol.length])
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return balanceOf[address(arg1)][3][address(arg2)].field_0
}

function acceptingDeposits() {
    return bool(uint8(stor4.field_168))
}

function destroy() {
    require msg.sender == owner
    require eth.balance(this.address) <= 100 * 10^6
    selfdestruct(msg.sender)
}

function changeOwner(address arg1) {
    require msg.sender == owner
    emit ChangeOwnerTo(arg1);
    newOwner = arg1
    return 1
}

function _fallback() payable {
    require uint8(stor4.field_168)
    require msg.value > 0
    emit Deposit(msg.value, msg.sender);
}

function changeResource(bytes32 arg1) {
    require msg.sender == owner
    resource = arg1
    emit ChangedResource(arg1);
    return 1
}

function deposits() {
    require stor5 + eth.balance(this.address) - stor6 >= stor5
    return (stor5 + eth.balance(this.address) - stor6)
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit ChangedOwner(owner, msg.sender);
    owner = newOwner
    newOwner = 0
    return 1
}

function sub_8706ff01(?) {
    require not stor0
    require msg.sender == owner
    Mask(88, 0, stor4.field_168) = Mask(88, 0, arg1)
    emit 0x901f74ec: arg1
    return 1
}

function sub_ffd7459b(?) {
    require not stor0
    require balanceOf[address(msg.sender)].field_0 > 0
    balanceOf[address(arg1)].field_64 = uint64(block.timestamp)
    return 1
}

function sub_49235bee(?) {
    require uint64(balanceOf[address(arg1)].field_64 + (26280 * 24 * 3600)) >= balanceOf[address(arg1)].field_64
    return uint64(balanceOf[address(arg1)].field_64 + (26280 * 24 * 3600))
}

function sub_aab29be4(?) {
    require uint64(balanceOf[address(arg1)].field_64 + (26280 * 24 * 3600)) >= balanceOf[address(arg1)].field_64
    return (block.timestamp > uint64(balanceOf[address(arg1)].field_64 + (26280 * 24 * 3600)))
}

function setSymbol(string arg1) {
    require msg.sender == owner
    require not stor0
    require not Mask(255, 1, (256 * not bool(symbol.length)) - 1 and symbol.length)
    uint256(symbol[]) = Array(len=arg1.length, data=arg1[all])
    return 1
}

function sub_08b289b7(?) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function approve(address arg1, uint256 arg2) {
    require not stor0
    require balanceOf[address(msg.sender)].field_0
    balanceOf[address(msg.sender)][3][address(arg1)].field_0 = uint64(arg2)
    balanceOf[address(msg.sender)][3][address(arg1)].field_64 = 0
    return 1
}

function withdrawFrom(address arg1, uint256 arg2) {
    require not stor0
    stor0 = 1
    require ext_code.size(arg1)
    call arg1.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    stor0 = 0
    return bool(ext_call.return_data[0])
}

function withdrawTo(address arg1, uint256 arg2) {
    require stor5 + eth.balance(this.address) - stor6 >= stor5
    require -balanceOf[address(msg.sender)].field_256 <= 0
    if balanceOf[address(msg.sender)].field_0:
        require balanceOf[address(msg.sender)].field_0
        require (stor5 * balanceOf[address(msg.sender)].field_0) + (eth.balance(this.address) * balanceOf[address(msg.sender)].field_0) - (stor6 * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_256 * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 == stor5 + eth.balance(this.address) - stor6 - balanceOf[address(msg.sender)].field_256
    require balanceOf[address(msg.sender)].field_512 + ((stor5 * balanceOf[address(msg.sender)].field_0) + (eth.balance(this.address) * balanceOf[address(msg.sender)].field_0) - (stor6 * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_256 * balanceOf[address(msg.sender)].field_0) / 16700000) >= balanceOf[address(msg.sender)].field_512
    require balanceOf[address(msg.sender)].field_512 + ((stor5 * balanceOf[address(msg.sender)].field_0) + (eth.balance(this.address) * balanceOf[address(msg.sender)].field_0) - (stor6 * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_256 * balanceOf[address(msg.sender)].field_0) / 16700000) >= arg2
    emit Withdrawal(arg2, msg.sender, arg1);
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function etherBalanceOf(address arg1) {
    require stor5 + eth.balance(this.address) - stor6 >= stor5
    require -balanceOf[address(arg1)].field_256 <= 0
    if not balanceOf[address(arg1)].field_0:
        if balanceOf[address(arg1)].field_512 + ((stor5 * balanceOf[address(arg1)].field_0) + (eth.balance(this.address) * balanceOf[address(arg1)].field_0) - (stor6 * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_256 * balanceOf[address(arg1)].field_0) / 16700000) >= balanceOf[address(arg1)].field_512:
            return (balanceOf[address(arg1)].field_512 + ((stor5 * balanceOf[address(arg1)].field_0) + (eth.balance(this.address) * balanceOf[address(arg1)].field_0) - (stor6 * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_256 * balanceOf[address(arg1)].field_0) / 16700000))
    else:
        if balanceOf[address(arg1)].field_0:
            if (stor5 * balanceOf[address(arg1)].field_0) + (eth.balance(this.address) * balanceOf[address(arg1)].field_0) - (stor6 * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_256 * balanceOf[address(arg1)].field_0) / balanceOf[address(arg1)].field_0 == stor5 + eth.balance(this.address) - stor6 - balanceOf[address(arg1)].field_256:
                if balanceOf[address(arg1)].field_512 + ((stor5 * balanceOf[address(arg1)].field_0) + (eth.balance(this.address) * balanceOf[address(arg1)].field_0) - (stor6 * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_256 * balanceOf[address(arg1)].field_0) / 16700000) >= balanceOf[address(arg1)].field_512:
                    return (balanceOf[address(arg1)].field_512 + ((stor5 * balanceOf[address(arg1)].field_0) + (eth.balance(this.address) * balanceOf[address(arg1)].field_0) - (stor6 * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_256 * balanceOf[address(arg1)].field_0) / 16700000))
    revert
}

function withdrawFor(address arg1, uint256 arg2) {
    require not stor0
    stor0 = 1
    if stor6 == eth.balance(this.address):
        require stor5 + eth.balance(this.address) - stor6 >= stor5
    else:
        require eth.balance(this.address) - stor6 <= eth.balance(this.address)
        require stor5 + eth.balance(this.address) - stor6 >= stor5
        stor5 = stor5 + eth.balance(this.address) - stor6
        stor6 = eth.balance(this.address)
    require -balanceOf[address(arg1)].field_256 <= 0
    if balanceOf[address(arg1)].field_0:
        require balanceOf[address(arg1)].field_0
        require (stor5 * balanceOf[address(arg1)].field_0) + (eth.balance(this.address) * balanceOf[address(arg1)].field_0) - (stor6 * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_256 * balanceOf[address(arg1)].field_0) / balanceOf[address(arg1)].field_0 == stor5 + eth.balance(this.address) - stor6 - balanceOf[address(arg1)].field_256
    require balanceOf[address(arg1)].field_512 + ((stor5 * balanceOf[address(arg1)].field_0) + (eth.balance(this.address) * balanceOf[address(arg1)].field_0) - (stor6 * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_256 * balanceOf[address(arg1)].field_0) / 16700000) >= balanceOf[address(arg1)].field_512
    require uint64(uint64(block.timestamp) + (26280 * 24 * 3600)) >= uint64(block.timestamp)
    require arg2 <= balanceOf[address(arg1)].field_512 + ((stor5 * balanceOf[address(arg1)].field_0) + (eth.balance(this.address) * balanceOf[address(arg1)].field_0) - (stor6 * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_256 * balanceOf[address(arg1)].field_0) / 16700000)
    require -arg2 <= 0
    balanceOf[address(arg1)].field_64 = uint64(uint64(block.timestamp) + (26280 * 24 * 3600))
    balanceOf[address(arg1)].field_256 = stor5
    balanceOf[address(arg1)].field_512 = balanceOf[address(arg1)].field_512 + ((stor5 * balanceOf[address(arg1)].field_0) + (eth.balance(this.address) * balanceOf[address(arg1)].field_0) - (stor6 * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_256 * balanceOf[address(arg1)].field_0) / 16700000) - arg2
    require stor6 - arg2 <= stor6
    stor6 -= arg2
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor0 = 0
    return 1
}

function withdraw(uint256 arg1) {
    require not stor0
    stor0 = 1
    if stor6 == eth.balance(this.address):
        require stor5 + eth.balance(this.address) - stor6 >= stor5
    else:
        require eth.balance(this.address) - stor6 <= eth.balance(this.address)
        require stor5 + eth.balance(this.address) - stor6 >= stor5
        stor5 = stor5 + eth.balance(this.address) - stor6
        stor6 = eth.balance(this.address)
    require -balanceOf[address(msg.sender)].field_256 <= 0
    if balanceOf[address(msg.sender)].field_0:
        require balanceOf[address(msg.sender)].field_0
        require (stor5 * balanceOf[address(msg.sender)].field_0) + (eth.balance(this.address) * balanceOf[address(msg.sender)].field_0) - (stor6 * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_256 * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 == stor5 + eth.balance(this.address) - stor6 - balanceOf[address(msg.sender)].field_256
    require balanceOf[address(msg.sender)].field_512 + ((stor5 * balanceOf[address(msg.sender)].field_0) + (eth.balance(this.address) * balanceOf[address(msg.sender)].field_0) - (stor6 * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_256 * balanceOf[address(msg.sender)].field_0) / 16700000) >= balanceOf[address(msg.sender)].field_512
    require uint64(uint64(block.timestamp) + (26280 * 24 * 3600)) >= uint64(block.timestamp)
    require arg1 <= balanceOf[address(msg.sender)].field_512 + ((stor5 * balanceOf[address(msg.sender)].field_0) + (eth.balance(this.address) * balanceOf[address(msg.sender)].field_0) - (stor6 * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_256 * balanceOf[address(msg.sender)].field_0) / 16700000)
    require -arg1 <= 0
    balanceOf[address(msg.sender)].field_64 = uint64(uint64(block.timestamp) + (26280 * 24 * 3600))
    balanceOf[address(msg.sender)].field_256 = stor5
    balanceOf[address(msg.sender)].field_512 = balanceOf[address(msg.sender)].field_512 + ((stor5 * balanceOf[address(msg.sender)].field_0) + (eth.balance(this.address) * balanceOf[address(msg.sender)].field_0) - (stor6 * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_256 * balanceOf[address(msg.sender)].field_0) / 16700000) - arg1
    require stor6 - arg1 <= stor6
    stor6 -= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor0 = 0
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor0
    require arg1 != msg.sender
    require arg1 != this.address
    require uint64(arg2) > 0
    require uint64(arg2) <= balanceOf[address(msg.sender)].field_0
    if stor6 == eth.balance(this.address):
        require stor5 + eth.balance(this.address) - stor6 >= stor5
    else:
        require eth.balance(this.address) - stor6 <= eth.balance(this.address)
        require stor5 + eth.balance(this.address) - stor6 >= stor5
        stor5 = stor5 + eth.balance(this.address) - stor6
        stor6 = eth.balance(this.address)
    require -balanceOf[address(msg.sender)].field_256 <= 0
    if balanceOf[address(msg.sender)].field_0:
        require balanceOf[address(msg.sender)].field_0
        require (stor5 * balanceOf[address(msg.sender)].field_0) + (eth.balance(this.address) * balanceOf[address(msg.sender)].field_0) - (stor6 * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_256 * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 == stor5 + eth.balance(this.address) - stor6 - balanceOf[address(msg.sender)].field_256
    require balanceOf[address(msg.sender)].field_512 + ((stor5 * balanceOf[address(msg.sender)].field_0) + (eth.balance(this.address) * balanceOf[address(msg.sender)].field_0) - (stor6 * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_256 * balanceOf[address(msg.sender)].field_0) / 16700000) >= balanceOf[address(msg.sender)].field_512
    require uint64(uint64(block.timestamp) + (26280 * 24 * 3600)) >= uint64(block.timestamp)
    if stor6 == eth.balance(this.address):
        require stor5 + eth.balance(this.address) - stor6 >= stor5
    else:
        require eth.balance(this.address) - stor6 <= eth.balance(this.address)
        require stor5 + eth.balance(this.address) - stor6 >= stor5
        stor5 = stor5 + eth.balance(this.address) - stor6
        stor6 = eth.balance(this.address)
    require -balanceOf[address(arg1)].field_256 <= 0
    if balanceOf[address(arg1)].field_0:
        require balanceOf[address(arg1)].field_0
        require (stor5 * balanceOf[address(arg1)].field_0) + (eth.balance(this.address) * balanceOf[address(arg1)].field_0) - (stor6 * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_256 * balanceOf[address(arg1)].field_0) / balanceOf[address(arg1)].field_0 == stor5 + eth.balance(this.address) - stor6 - balanceOf[address(arg1)].field_256
    require balanceOf[address(arg1)].field_512 + ((stor5 * balanceOf[address(arg1)].field_0) + (eth.balance(this.address) * balanceOf[address(arg1)].field_0) - (stor6 * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_256 * balanceOf[address(arg1)].field_0) / 16700000) >= balanceOf[address(arg1)].field_512
    require uint64(uint64(block.timestamp) + (26280 * 24 * 3600)) >= uint64(block.timestamp)
    require uint64(balanceOf[address(msg.sender)].field_0 - arg2) <= balanceOf[address(msg.sender)].field_0
    require uint64(balanceOf[address(arg1)].field_0 + arg2) >= balanceOf[address(arg1)].field_0
    balanceOf[address(msg.sender)].field_0 = uint64(balanceOf[address(msg.sender)].field_0 - arg2)
    balanceOf[address(msg.sender)].field_64 = uint64(uint64(block.timestamp) + (26280 * 24 * 3600))
    balanceOf[address(msg.sender)].field_256 = stor5
    balanceOf[address(msg.sender)].field_512 += (stor5 * balanceOf[address(msg.sender)].field_0) + (eth.balance(this.address) * balanceOf[address(msg.sender)].field_0) - (stor6 * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_256 * balanceOf[address(msg.sender)].field_0) / 16700000
    balanceOf[address(arg1)].field_0 = uint64(balanceOf[address(arg1)].field_0 + arg2)
    balanceOf[address(arg1)].field_64 = uint64(uint64(block.timestamp) + (26280 * 24 * 3600))
    balanceOf[address(arg1)].field_256 = stor5
    balanceOf[address(arg1)].field_512 += (stor5 * balanceOf[address(arg1)].field_0) + (eth.balance(this.address) * balanceOf[address(arg1)].field_0) - (stor6 * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_256 * balanceOf[address(arg1)].field_0) / 16700000
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor0
    require uint64(arg3) <= balanceOf[address(arg1)][3][address(msg.sender)].field_0
    require balanceOf[address(arg1)][3][address(msg.sender)].field_0 - uint64(arg3) <= balanceOf[address(arg1)][3][address(msg.sender)].field_0
    balanceOf[address(arg1)][3][address(msg.sender)].field_0 -= uint64(arg3)
    require arg1 != arg2
    require arg2 != this.address
    require uint64(arg3) > 0
    require uint64(arg3) <= balanceOf[address(arg1)].field_0
    if stor6 == eth.balance(this.address):
        require stor5 + eth.balance(this.address) - stor6 >= stor5
    else:
        require eth.balance(this.address) - stor6 <= eth.balance(this.address)
        require stor5 + eth.balance(this.address) - stor6 >= stor5
        stor5 = stor5 + eth.balance(this.address) - stor6
        stor6 = eth.balance(this.address)
    require -balanceOf[address(arg1)].field_256 <= 0
    if balanceOf[address(arg1)].field_0:
        require balanceOf[address(arg1)].field_0
        require (stor5 * balanceOf[address(arg1)].field_0) + (eth.balance(this.address) * balanceOf[address(arg1)].field_0) - (stor6 * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_256 * balanceOf[address(arg1)].field_0) / balanceOf[address(arg1)].field_0 == stor5 + eth.balance(this.address) - stor6 - balanceOf[address(arg1)].field_256
    require balanceOf[address(arg1)].field_512 + ((stor5 * balanceOf[address(arg1)].field_0) + (eth.balance(this.address) * balanceOf[address(arg1)].field_0) - (stor6 * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_256 * balanceOf[address(arg1)].field_0) / 16700000) >= balanceOf[address(arg1)].field_512
    require uint64(uint64(block.timestamp) + (26280 * 24 * 3600)) >= uint64(block.timestamp)
    if stor6 == eth.balance(this.address):
        require stor5 + eth.balance(this.address) - stor6 >= stor5
    else:
        require eth.balance(this.address) - stor6 <= eth.balance(this.address)
        require stor5 + eth.balance(this.address) - stor6 >= stor5
        stor5 = stor5 + eth.balance(this.address) - stor6
        stor6 = eth.balance(this.address)
    require -balanceOf[address(arg2)].field_256 <= 0
    if balanceOf[address(arg2)].field_0:
        require balanceOf[address(arg2)].field_0
        require (stor5 * balanceOf[address(arg2)].field_0) + (eth.balance(this.address) * balanceOf[address(arg2)].field_0) - (stor6 * balanceOf[address(arg2)].field_0) - (balanceOf[address(arg2)].field_256 * balanceOf[address(arg2)].field_0) / balanceOf[address(arg2)].field_0 == stor5 + eth.balance(this.address) - stor6 - balanceOf[address(arg2)].field_256
    require balanceOf[address(arg2)].field_512 + ((stor5 * balanceOf[address(arg2)].field_0) + (eth.balance(this.address) * balanceOf[address(arg2)].field_0) - (stor6 * balanceOf[address(arg2)].field_0) - (balanceOf[address(arg2)].field_256 * balanceOf[address(arg2)].field_0) / 16700000) >= balanceOf[address(arg2)].field_512
    require uint64(uint64(block.timestamp) + (26280 * 24 * 3600)) >= uint64(block.timestamp)
    require uint64(balanceOf[address(arg1)].field_0 - arg3) <= balanceOf[address(arg1)].field_0
    require uint64(balanceOf[address(arg2)].field_0 + arg3) >= balanceOf[address(arg2)].field_0
    balanceOf[address(arg1)].field_0 = uint64(balanceOf[address(arg1)].field_0 - arg3)
    balanceOf[address(arg1)].field_64 = uint64(uint64(block.timestamp) + (26280 * 24 * 3600))
    balanceOf[address(arg1)].field_256 = stor5
    balanceOf[address(arg1)].field_512 += (stor5 * balanceOf[address(arg1)].field_0) + (eth.balance(this.address) * balanceOf[address(arg1)].field_0) - (stor6 * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_256 * balanceOf[address(arg1)].field_0) / 16700000
    balanceOf[address(arg2)].field_0 = uint64(balanceOf[address(arg2)].field_0 + arg3)
    balanceOf[address(arg2)].field_64 = uint64(uint64(block.timestamp) + (26280 * 24 * 3600))
    balanceOf[address(arg2)].field_256 = stor5
    balanceOf[address(arg2)].field_512 += (stor5 * balanceOf[address(arg2)].field_0) + (eth.balance(this.address) * balanceOf[address(arg2)].field_0) - (stor6 * balanceOf[address(arg2)].field_0) - (balanceOf[address(arg2)].field_256 * balanceOf[address(arg2)].field_0) / 16700000
    return 1
}

function sub_cdd82a3b(?) {
    require not stor0
    require uint64(balanceOf[stor3].field_64 + (26280 * 24 * 3600)) >= balanceOf[stor3].field_64
    if block.timestamp > uint64(balanceOf[stor3].field_64 + (26280 * 24 * 3600)):
        emit ChangedOwner(owner, msg.sender);
        owner = msg.sender
    require msg.sender == owner
    require uint64(balanceOf[address(arg1)].field_64 + (26280 * 24 * 3600)) >= balanceOf[address(arg1)].field_64
    require block.timestamp > uint64(balanceOf[address(arg1)].field_64 + (26280 * 24 * 3600))
    emit 0xe7475fec: balanceOf[address(arg1)].field_0, balanceOf[address(arg1)].field_512, arg1, msg.sender
    require arg1 != msg.sender
    require this.address != msg.sender
    require balanceOf[address(arg1)].field_0 > 0
    require balanceOf[address(arg1)].field_0 <= balanceOf[address(arg1)].field_0
    if stor6 == eth.balance(this.address):
        require stor5 + eth.balance(this.address) - stor6 >= stor5
    else:
        require eth.balance(this.address) - stor6 <= eth.balance(this.address)
        require stor5 + eth.balance(this.address) - stor6 >= stor5
        stor5 = stor5 + eth.balance(this.address) - stor6
        stor6 = eth.balance(this.address)
    require -balanceOf[address(arg1)].field_256 <= 0
    if balanceOf[address(arg1)].field_0:
        require balanceOf[address(arg1)].field_0
        require (stor5 * balanceOf[address(arg1)].field_0) + (eth.balance(this.address) * balanceOf[address(arg1)].field_0) - (stor6 * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_256 * balanceOf[address(arg1)].field_0) / balanceOf[address(arg1)].field_0 == stor5 + eth.balance(this.address) - stor6 - balanceOf[address(arg1)].field_256
    require balanceOf[address(arg1)].field_512 + ((stor5 * balanceOf[address(arg1)].field_0) + (eth.balance(this.address) * balanceOf[address(arg1)].field_0) - (stor6 * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_256 * balanceOf[address(arg1)].field_0) / 16700000) >= balanceOf[address(arg1)].field_512
    require uint64(uint64(block.timestamp) + (26280 * 24 * 3600)) >= uint64(block.timestamp)
    if stor6 == eth.balance(this.address):
        require stor5 + eth.balance(this.address) - stor6 >= stor5
    else:
        require eth.balance(this.address) - stor6 <= eth.balance(this.address)
        require stor5 + eth.balance(this.address) - stor6 >= stor5
        stor5 = stor5 + eth.balance(this.address) - stor6
        stor6 = eth.balance(this.address)
    require -balanceOf[address(msg.sender)].field_256 <= 0
    if balanceOf[address(msg.sender)].field_0:
        require balanceOf[address(msg.sender)].field_0
        require (stor5 * balanceOf[address(msg.sender)].field_0) + (eth.balance(this.address) * balanceOf[address(msg.sender)].field_0) - (stor6 * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_256 * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 == stor5 + eth.balance(this.address) - stor6 - balanceOf[address(msg.sender)].field_256
    require balanceOf[address(msg.sender)].field_512 + ((stor5 * balanceOf[address(msg.sender)].field_0) + (eth.balance(this.address) * balanceOf[address(msg.sender)].field_0) - (stor6 * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_256 * balanceOf[address(msg.sender)].field_0) / 16700000) >= balanceOf[address(msg.sender)].field_512
    require uint64(uint64(block.timestamp) + (26280 * 24 * 3600)) >= uint64(block.timestamp)
    require 0 <= balanceOf[address(arg1)].field_0
    require uint64(balanceOf[address(msg.sender)].field_0 + balanceOf[address(arg1)].field_0) >= balanceOf[address(msg.sender)].field_0
    balanceOf[address(arg1)].field_0 = 0
    balanceOf[address(arg1)].field_64 = uint64(uint64(block.timestamp) + (26280 * 24 * 3600))
    balanceOf[address(arg1)].field_256 = stor5
    balanceOf[address(arg1)].field_512 += (stor5 * balanceOf[address(arg1)].field_0) + (eth.balance(this.address) * balanceOf[address(arg1)].field_0) - (stor6 * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_256 * balanceOf[address(arg1)].field_0) / 16700000
    balanceOf[address(msg.sender)].field_0 = uint64(balanceOf[address(msg.sender)].field_0 + balanceOf[address(arg1)].field_0)
    balanceOf[address(msg.sender)].field_64 = uint64(uint64(block.timestamp) + (26280 * 24 * 3600))
    balanceOf[address(msg.sender)].field_256 = stor5
    balanceOf[address(msg.sender)].field_512 += (stor5 * balanceOf[address(msg.sender)].field_0) + (eth.balance(this.address) * balanceOf[address(msg.sender)].field_0) - (stor6 * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_256 * balanceOf[address(msg.sender)].field_0) / 16700000
    require balanceOf[address(msg.sender)].field_512 + balanceOf[address(arg1)].field_512 >= balanceOf[address(msg.sender)].field_512
    balanceOf[address(msg.sender)].field_512 += balanceOf[address(arg1)].field_512
    balanceOf[address(arg1)].field_0 = 0
    balanceOf[address(arg1)].field_64 = 0
    balanceOf[address(arg1)].field_256 = 0
    balanceOf[address(arg1)].field_512 = 0
    return 1
}



}
