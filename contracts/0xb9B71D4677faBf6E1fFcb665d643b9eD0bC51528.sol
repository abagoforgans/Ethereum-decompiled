contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
address adminAddress;
address providerAddress;
address sub_2848eeb8Address;
uint256 sub_22724db4;
bool stor11;
uint256 stor11; offset 1
uint256 initialSupply;
mapping of uint256 sub_3c8859b8;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function sub_22724db4(?) {
    require msg.sender == owner
    return sub_22724db4
}

function sub_2848eeb8(?) {
    require msg.sender == owner
    return sub_2848eeb8Address
}

function decimals() {
    return decimals
}

function initialSupply() {
    return initialSupply
}

function sub_3c8859b8(?) {
    require calldata.size - 4 >= 32
    require msg.sender == adminAddress
    return sub_3c8859b8[address(arg1)]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function getAdminAddress() {
    require msg.sender == owner
    return adminAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[arg1][arg2]
}

function getProviderAddress() {
    require msg.sender == owner
    return providerAddress
}

function _fallback() payable {
    revert
}

function sub_2432aab2(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_22724db4 = arg1
    return 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function extractBalance() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setAdminAddress(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if ext_code.size(arg1) > 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Not allowed to assign a contract address as a providor'
    adminAddress = arg1
    emit ChangeAdmin(arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    allowance[address(msg.sender)][address(arg1)] = arg2
    mem[ceil32(arg3.length) + 128] = arg2
    emit Approval(address arg1, address arg2, uint256 arg3):
                  Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                  mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)],
                  msg.sender,
                  arg1,
    require ext_code.size(arg1)
    call arg1 with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0, 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if ext_code.size(arg1) > 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not allowed to transfer to a contract address'
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] >= balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] >= balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
    return 1
}

function sub_2c4df734(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if ext_code.size(arg1) > 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Not allowed to assign a contract address as a collector'
    require arg1
    require balanceOf[stor9] >= balanceOf[stor9]
    require balanceOf[address(arg1)] + balanceOf[stor9] >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + balanceOf[stor9] >= balanceOf[stor9]
    require balanceOf[address(arg1)] + balanceOf[stor9] >= balanceOf[address(arg1)]
    require balanceOf[stor9] + balanceOf[address(arg1)] >= balanceOf[stor9]
    require balanceOf[stor9] + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require balanceOf[stor9] <= balanceOf[stor9]
    balanceOf[stor9] = 0
    require balanceOf[address(arg1)] + balanceOf[stor9] >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + balanceOf[stor9] >= balanceOf[stor9]
    balanceOf[address(arg1)] += balanceOf[stor9]
    emit Transfer(balanceOf[stor9], sub_2848eeb8Address, arg1);
    require balanceOf[stor9] + balanceOf[address(arg1)] >= balanceOf[stor9]
    require balanceOf[stor9] + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require balanceOf[stor9] + balanceOf[address(arg1)] == balanceOf[stor9] + balanceOf[address(arg1)]
    sub_2848eeb8Address = arg1
    emit ChangeCollector(arg1);
    return 1
}

function setProviderAddress(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if ext_code.size(arg1) > 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Not allowed to assign a contract address as a providor'
    require arg1
    require balanceOf[stor8] >= balanceOf[stor8]
    require balanceOf[address(arg1)] + balanceOf[stor8] >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + balanceOf[stor8] >= balanceOf[stor8]
    require balanceOf[address(arg1)] + balanceOf[stor8] >= balanceOf[address(arg1)]
    require balanceOf[stor8] + balanceOf[address(arg1)] >= balanceOf[stor8]
    require balanceOf[stor8] + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require balanceOf[stor8] <= balanceOf[stor8]
    balanceOf[stor8] = 0
    require balanceOf[address(arg1)] + balanceOf[stor8] >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + balanceOf[stor8] >= balanceOf[stor8]
    balanceOf[address(arg1)] += balanceOf[stor8]
    emit Transfer(balanceOf[stor8], providerAddress, arg1);
    require balanceOf[stor8] + balanceOf[address(arg1)] >= balanceOf[stor8]
    require balanceOf[stor8] + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require balanceOf[stor8] + balanceOf[address(arg1)] == balanceOf[stor8] + balanceOf[address(arg1)]
    providerAddress = arg1
    emit 0x9a33114b: arg1
    return 1
}

function adminTransfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == adminAddress
    require balanceOf[stor8] >= arg2
    if ext_code.size(arg1) > 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not allowed to transfer to a contract address'
    require arg1
    require balanceOf[stor8] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[stor8] + balanceOf[address(arg1)] >= balanceOf[stor8]
    require balanceOf[stor8] + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require arg2 <= balanceOf[stor8]
    balanceOf[stor8] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, providerAddress, arg1);
    require balanceOf[stor8] + balanceOf[address(arg1)] >= balanceOf[stor8]
    require balanceOf[stor8] + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require balanceOf[stor8] + balanceOf[address(arg1)] == balanceOf[stor8] + balanceOf[address(arg1)]
    require sub_3c8859b8[address(arg1)] + arg2 >= sub_3c8859b8[address(arg1)]
    require sub_3c8859b8[address(arg1)] + arg2 >= arg2
    sub_3c8859b8[address(arg1)] += arg2
    emit 0x9d0841c4: arg2, arg1
    return 1
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require balanceOf[stor6] + balanceOf[address(arg1)] >= balanceOf[stor6]
    require balanceOf[stor6] + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    if ext_code.size(arg1) > 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not allowed to transfer to a contract address'
    require arg1
    require balanceOf[stor6] >= balanceOf[stor6]
    require balanceOf[address(arg1)] + balanceOf[stor6] >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + balanceOf[stor6] >= balanceOf[stor6]
    require balanceOf[address(arg1)] + balanceOf[stor6] >= balanceOf[address(arg1)]
    require balanceOf[stor6] + balanceOf[address(arg1)] >= balanceOf[stor6]
    require balanceOf[stor6] + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require balanceOf[stor6] <= balanceOf[stor6]
    balanceOf[stor6] = 0
    require balanceOf[address(arg1)] + balanceOf[stor6] >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + balanceOf[stor6] >= balanceOf[stor6]
    balanceOf[address(arg1)] += balanceOf[stor6]
    emit Transfer(balanceOf[stor6], owner, arg1);
    require balanceOf[stor6] + balanceOf[address(arg1)] >= balanceOf[stor6]
    require balanceOf[stor6] + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require balanceOf[stor6] + balanceOf[address(arg1)] == balanceOf[stor6] + balanceOf[address(arg1)]
    owner = arg1
    emit ChangeOwner(msg.sender, arg1);
    require balanceOf[address(arg1)] == balanceOf[stor6] + balanceOf[address(arg1)]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if ext_code.size(arg2) > 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not allowed to transfer to a contract address'
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if ext_code.size(arg2) > 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not allowed to transfer to a contract address'
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg1)] + balanceOf[address(arg2)] >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg1)] + balanceOf[address(arg2)] >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    require balanceOf[address(arg1)] + balanceOf[address(arg2)] == balanceOf[address(arg1)] + balanceOf[address(arg2)]
    return 1
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require initialSupply == (2 * uint255(stor11.field_1)) + bool(stor11.field_0)
    require arg1 <= totalSupply
    if totalSupply - arg1 < uint255(stor11.field_1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cant Burn less than 50% of initial supply!'
    require arg1 <= balanceOf[stor9]
    balanceOf[stor9] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    require balanceOf[stor9] + balanceOf[stor8] >= balanceOf[stor9]
    require balanceOf[stor9] + balanceOf[stor8] >= balanceOf[stor8]
    if balanceOf[stor9] + balanceOf[stor8] < sub_22724db4:
        require balanceOf[stor9] + balanceOf[stor8] >= balanceOf[stor9]
        require balanceOf[stor9] + balanceOf[stor8] >= balanceOf[stor8]
        require balanceOf[stor9] + balanceOf[stor8] <= sub_22724db4
        if ext_code.size(providerAddress) > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not allowed to transfer to a contract address'
        require providerAddress
        require balanceOf[address(msg.sender)] >= sub_22724db4 - balanceOf[stor9] - balanceOf[stor8]
        require sub_22724db4 - balanceOf[stor9] >= balanceOf[stor8]
        require balanceOf[stor8] >= 0
        require sub_22724db4 - balanceOf[stor9] >= balanceOf[stor8]
        require balanceOf[address(msg.sender)] + balanceOf[stor8] >= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] + balanceOf[stor8] >= balanceOf[stor8]
        require sub_22724db4 - balanceOf[stor9] - balanceOf[stor8] <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - sub_22724db4 + balanceOf[stor9] + balanceOf[stor8]
        require sub_22724db4 - balanceOf[stor9] >= balanceOf[stor8]
        require balanceOf[stor8] >= 0
        balanceOf[stor8] = sub_22724db4 - balanceOf[stor9]
        emit Transfer((sub_22724db4 - balanceOf[stor9] - balanceOf[stor8]), msg.sender, providerAddress);
        require balanceOf[address(msg.sender)] + balanceOf[stor8] >= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] + balanceOf[stor8] >= balanceOf[stor8]
        require balanceOf[address(msg.sender)] + balanceOf[stor8] == balanceOf[address(msg.sender)] + balanceOf[stor8]
    emit Burn(arg1, sub_2848eeb8Address);
    return 1
}

function consume(uint256 arg1) {
    require calldata.size - 4 >= 32
    require balanceOf[address(msg.sender)] >= arg1
    require sub_22724db4 == (5 * sub_22724db4 / 5) + (sub_22724db4 % 5)
    require balanceOf[stor9] + arg1 >= balanceOf[stor9]
    require balanceOf[stor9] + arg1 >= arg1
    if balanceOf[stor9] + arg1 >= sub_22724db4 / 5:
        if ext_code.size(providerAddress) > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not allowed to transfer to a contract address'
        require providerAddress
        require balanceOf[address(msg.sender)] >= arg1
        if balanceOf[stor8] + arg1 >= balanceOf[stor8]:
            if balanceOf[stor8] + arg1 >= arg1:
                require balanceOf[stor8] + arg1 >= balanceOf[stor8]
                if balanceOf[address(msg.sender)] + balanceOf[stor8] >= balanceOf[address(msg.sender)]:
                    if balanceOf[address(msg.sender)] + balanceOf[stor8] >= balanceOf[stor8]:
                        if arg1 <= balanceOf[address(msg.sender)]:
                            balanceOf[address(msg.sender)] -= arg1
                            if balanceOf[stor8] + arg1 >= balanceOf[stor8]:
                                if balanceOf[stor8] + arg1 >= arg1:
                                    balanceOf[stor8] += arg1
                                    emit Transfer(arg1, msg.sender, providerAddress);
                                    if balanceOf[address(msg.sender)] + balanceOf[stor8] >= balanceOf[address(msg.sender)]:
                                        if balanceOf[address(msg.sender)] + balanceOf[stor8] >= balanceOf[stor8]:
                                            if balanceOf[address(msg.sender)] + balanceOf[stor8] == balanceOf[address(msg.sender)] + balanceOf[stor8]:
                                                emit Consume(arg1, msg.sender);
                                                if balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]:
                                                    if balanceOf[address(msg.sender)] + arg1 >= arg1:
                                                        if balanceOf[address(msg.sender)] + arg1 == balanceOf[address(msg.sender)]:
                                                            return 1
    else:
        if ext_code.size(sub_2848eeb8Address) > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not allowed to transfer to a contract address'
        require sub_2848eeb8Address
        require balanceOf[address(msg.sender)] >= arg1
        if balanceOf[stor9] + arg1 >= balanceOf[stor9]:
            if balanceOf[stor9] + arg1 >= arg1:
                require balanceOf[stor9] + arg1 >= balanceOf[stor9]
                if balanceOf[address(msg.sender)] + balanceOf[stor9] >= balanceOf[address(msg.sender)]:
                    if balanceOf[address(msg.sender)] + balanceOf[stor9] >= balanceOf[stor9]:
                        if arg1 <= balanceOf[address(msg.sender)]:
                            balanceOf[address(msg.sender)] -= arg1
                            if balanceOf[stor9] + arg1 >= balanceOf[stor9]:
                                if balanceOf[stor9] + arg1 >= arg1:
                                    balanceOf[stor9] += arg1
                                    emit Transfer(arg1, msg.sender, sub_2848eeb8Address);
                                    if balanceOf[address(msg.sender)] + balanceOf[stor9] >= balanceOf[address(msg.sender)]:
                                        if balanceOf[address(msg.sender)] + balanceOf[stor9] >= balanceOf[stor9]:
                                            if balanceOf[address(msg.sender)] + balanceOf[stor9] == balanceOf[address(msg.sender)] + balanceOf[stor9]:
                                                emit Consume(arg1, msg.sender);
                                                if balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]:
                                                    if balanceOf[address(msg.sender)] + arg1 >= arg1:
                                                        if balanceOf[address(msg.sender)] + arg1 == balanceOf[address(msg.sender)]:
                                                            return 1
    revert
}

function sub_3045240c(?) {
    require calldata.size - 4 >= 64
    require msg.sender == adminAddress
    require balanceOf[address(arg1)] >= arg2
    require sub_3c8859b8[address(arg1)] >= arg2
    require sub_22724db4 == (5 * sub_22724db4 / 5) + (sub_22724db4 % 5)
    require balanceOf[stor9] + arg2 >= balanceOf[stor9]
    require balanceOf[stor9] + arg2 >= arg2
    if balanceOf[stor9] + arg2 >= sub_22724db4 / 5:
        if ext_code.size(providerAddress) > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not allowed to transfer to a contract address'
        require providerAddress
        require balanceOf[address(arg1)] >= arg2
        if balanceOf[stor8] + arg2 >= balanceOf[stor8]:
            if balanceOf[stor8] + arg2 >= arg2:
                require balanceOf[stor8] + arg2 >= balanceOf[stor8]
                if balanceOf[address(arg1)] + balanceOf[stor8] >= balanceOf[address(arg1)]:
                    if balanceOf[address(arg1)] + balanceOf[stor8] >= balanceOf[stor8]:
                        if arg2 <= balanceOf[address(arg1)]:
                            balanceOf[address(arg1)] -= arg2
                            if balanceOf[stor8] + arg2 >= balanceOf[stor8]:
                                if balanceOf[stor8] + arg2 >= arg2:
                                    balanceOf[stor8] += arg2
                                    emit Transfer(arg2, arg1, providerAddress);
                                    if balanceOf[address(arg1)] + balanceOf[stor8] >= balanceOf[address(arg1)]:
                                        if balanceOf[address(arg1)] + balanceOf[stor8] >= balanceOf[stor8]:
                                            if balanceOf[address(arg1)] + balanceOf[stor8] == balanceOf[address(arg1)] + balanceOf[stor8]:
                                                if arg2 <= sub_3c8859b8[address(arg1)]:
                                                    sub_3c8859b8[address(arg1)] -= arg2
                                                    emit 0x8cbe9a24: arg2, arg1
                                                    if balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]:
                                                        if balanceOf[address(arg1)] + arg2 >= arg2:
                                                            if balanceOf[address(arg1)] + arg2 == balanceOf[address(arg1)]:
                                                                return 1
    else:
        if ext_code.size(sub_2848eeb8Address) > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not allowed to transfer to a contract address'
        require sub_2848eeb8Address
        require balanceOf[address(arg1)] >= arg2
        if balanceOf[stor9] + arg2 >= balanceOf[stor9]:
            if balanceOf[stor9] + arg2 >= arg2:
                require balanceOf[stor9] + arg2 >= balanceOf[stor9]
                if balanceOf[address(arg1)] + balanceOf[stor9] >= balanceOf[address(arg1)]:
                    if balanceOf[address(arg1)] + balanceOf[stor9] >= balanceOf[stor9]:
                        if arg2 <= balanceOf[address(arg1)]:
                            balanceOf[address(arg1)] -= arg2
                            if balanceOf[stor9] + arg2 >= balanceOf[stor9]:
                                if balanceOf[stor9] + arg2 >= arg2:
                                    balanceOf[stor9] += arg2
                                    emit Transfer(arg2, arg1, sub_2848eeb8Address);
                                    if balanceOf[address(arg1)] + balanceOf[stor9] >= balanceOf[address(arg1)]:
                                        if balanceOf[address(arg1)] + balanceOf[stor9] >= balanceOf[stor9]:
                                            if balanceOf[address(arg1)] + balanceOf[stor9] == balanceOf[address(arg1)] + balanceOf[stor9]:
                                                if arg2 <= sub_3c8859b8[address(arg1)]:
                                                    sub_3c8859b8[address(arg1)] -= arg2
                                                    emit 0x8cbe9a24: arg2, arg1
                                                    if balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]:
                                                        if balanceOf[address(arg1)] + arg2 >= arg2:
                                                            if balanceOf[address(arg1)] + arg2 == balanceOf[address(arg1)]:
                                                                return 1
    revert
}



}
