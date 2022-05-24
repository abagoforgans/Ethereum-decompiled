contract main {




// =====================  Runtime code  =====================


const name = 'RC'

const decimals = 0

const symbol = 'R'


address owner;
mapping of uint256 stor1;
address stor2;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
mapping of address addressOf;
mapping of uint256 indexOf;
array of uint256 stor8;
uint256 numHolders;
uint256 sub_85559977;
uint8 stor11;
uint8 stor11; offset 8
uint256 stor11; offset 8

function mintingFinished() {
    return bool(uint8(stor11.field_0))
}

function addressOf(uint256 arg1) {
    return addressOf[arg1]
}

function totalSupply() {
    return totalSupply
}

function sub_705404f2(?) {
    return bool(uint8(stor11.field_8))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_85559977(?) {
    return sub_85559977
}

function owner() {
    return owner
}

function numHolders() {
    return numHolders
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function numEmptyIndexes() {
    return stor8.length
}

function indexOf(address arg1) {
    return indexOf[address(arg1)]
}

function _fallback() payable {
  stop
}

function claimOwnership() {
    require msg.sender == stor2
    owner = stor2
    return 1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function sub_4f2b39a2(?) {
    require msg.sender == owner
    emit 0xae8b3487: sub_85559977, arg1
    sub_85559977 = arg1
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function isSuperContract(address arg1) {
    if not ext_code.size(arg1):
        return 0
    if stor1[address(arg1)] != 1:
        return 0
    return 1
}

function addContractAddress(address arg1) {
    require msg.sender == owner
    if not ext_code.size(arg1):
        return 0
    stor1[address(arg1)] = 1
    return 1
}

function removeContractAddress(address arg1) {
    require msg.sender == owner
    if not ext_code.size(arg1):
        return 0
    stor1[address(arg1)] = 0
    return 1
}

function approve(address arg1, uint256 arg2) {
    require uint8(stor11.field_8)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function startMinting() {
    if owner != msg.sender:
        require ext_code.size(msg.sender)
        require stor1[address(msg.sender)] == 1
    uint8(stor11.field_0) = 0
    emit MintStarted()
    return 1
}

function startRick() {
    if owner != msg.sender:
        require ext_code.size(msg.sender)
        require stor1[address(msg.sender)] == 1
    Mask(248, 0, stor11.field_8) = 1
    emit 0x97d02fb1 
    return 0
}

function sub_8e11ed58(?) {
    if owner != msg.sender:
        require ext_code.size(msg.sender)
        require stor1[address(msg.sender)] == 1
    Mask(248, 0, stor11.field_8) = 0
    emit 0x86d0a0b5 
    return 0
}

function stopMinting() {
    if owner != msg.sender:
        require ext_code.size(msg.sender)
        require stor1[address(msg.sender)] == 1
    require not uint8(stor11.field_0)
    uint8(stor11.field_0) = 1
    emit MintStopped()
    return 1
}

function withdraw() {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function increaseApproval(address arg1, uint256 arg2) {
    require uint8(stor11.field_8)
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require uint8(stor11.field_8)
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require ext_code.size(msg.sender)
        require stor1[address(msg.sender)] == 1
    require uint8(stor11.field_8)
    require not uint8(stor11.field_0)
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    if not balanceOf[address(arg1)]:
        if stor8.length <= 0:
            require numHolders + 1 >= numHolders
            numHolders++
            addressOf[stor9] = arg1
            indexOf[address(arg1)] = numHolders
        else:
            require stor8.length - 1 < stor8.length
            stor8[stor8.length] = 0
            stor8.length--
            if stor8.length > stor8.length - 1:
                idx = stor8.length - 1
                while stor8.length > idx:
                    stor8[idx] = 0
                    idx = idx + 1
                    continue 
            addressOf[stor8[stor8.length]] = arg1
            indexOf[address(arg1)] = stor8[stor8.length]
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function reset() {
    if owner != msg.sender:
        require ext_code.size(msg.sender)
        require stor1[address(msg.sender)] == 1
    if numHolders <= sub_85559977:
        s = 0
        idx = numHolders
        while idx > 0:
            addressOf[idx] = 0
            balanceOf[stor6[idx]] = 0
            mem[0] = addressOf[idx]
            mem[32] = 7
            indexOf[stor6[idx]] = 0
            s = addressOf[idx]
            idx = idx - 1
            continue 
        require numHolders <= numHolders
        numHolders = 0
    else:
        require sub_85559977 <= numHolders
        s = 0
        idx = numHolders
        while idx > numHolders - sub_85559977:
            addressOf[idx] = 0
            balanceOf[stor6[idx]] = 0
            mem[0] = addressOf[idx]
            mem[32] = 7
            indexOf[stor6[idx]] = 0
            s = addressOf[idx]
            idx = idx - 1
            continue 
        require sub_85559977 <= numHolders
        numHolders -= sub_85559977
    if not numHolders:
        stor8.length = 0
        idx = 0
        while stor8.length > idx:
            stor8[idx] = 0
            idx = idx + 1
            continue 
        totalSupply = 0
}

function transfer(address arg1, uint256 arg2) {
    require uint8(stor11.field_8)
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    if not balanceOf[address(msg.sender)]:
        stor8.length++
        stor8[stor8.length] = indexOf[address(msg.sender)]
        addressOf[stor7[address(msg.sender)]] = 0
        indexOf[address(msg.sender)] = 0
        balanceOf[address(msg.sender)] = 0
    if not balanceOf[address(arg1)]:
        if stor8.length <= 0:
            require numHolders + 1 >= numHolders
            numHolders++
            addressOf[stor9] = arg1
            indexOf[address(arg1)] = numHolders
        else:
            require stor8.length - 1 < stor8.length
            stor8[stor8.length] = 0
            stor8.length--
            if stor8.length > stor8.length - 1:
                idx = stor8.length - 1
                while stor8.length > idx:
                    stor8[idx] = 0
                    idx = idx + 1
                    continue 
            addressOf[stor8[stor8.length]] = arg1
            indexOf[address(arg1)] = stor8[stor8.length]
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) > 0:
        mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000] = uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff9c]
        require ext_code.size(arg1)
        call arg1.0xc0ee0b8a with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require uint8(stor11.field_8)
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    if not balanceOf[address(arg1)]:
        stor8.length++
        stor8[stor8.length] = indexOf[address(arg1)]
        addressOf[stor7[address(arg1)]] = 0
        indexOf[address(arg1)] = 0
        balanceOf[address(arg1)] = 0
    if not balanceOf[address(arg2)]:
        if stor8.length <= 0:
            require numHolders + 1 >= numHolders
            numHolders++
            addressOf[stor9] = arg2
            indexOf[address(arg2)] = numHolders
        else:
            require stor8.length - 1 < stor8.length
            stor8[stor8.length] = 0
            stor8.length--
            if stor8.length > stor8.length - 1:
                idx = stor8.length - 1
                while stor8.length > idx:
                    stor8[idx] = 0
                    idx = idx + 1
                    continue 
            addressOf[stor8[stor8.length]] = arg2
            indexOf[address(arg2)] = stor8[stor8.length]
    if ext_code.size(arg2) > 0:
        mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000] = uint32(msg.sender), arg3, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff9c]
        require ext_code.size(arg2)
        call arg2.0xc0ee0b8a with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), arg3, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
