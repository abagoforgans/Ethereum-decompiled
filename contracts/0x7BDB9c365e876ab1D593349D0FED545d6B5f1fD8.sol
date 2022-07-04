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
uint256 stor10;
bool stor11;
uint256 stor11; offset 1
uint256 initialSupply;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function sub_2848eeb8(?) payable {
    require msg.sender == owner
    return sub_2848eeb8Address
}

function decimals() payable {
    return decimals
}

function initialSupply() payable {
    return initialSupply
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function getAdminAddress() payable {
    require msg.sender == owner
    return adminAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[arg1][arg2]
}

function getProviderAddress() payable {
    require msg.sender == owner
    return providerAddress
}

function _fallback() payable {
    revert
}

function sub_2432aab2(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor10 = arg1
    return 1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function extractBalance() payable {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setAdminAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if ext_code.size(arg1) > 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0xfe4e6f7420616c6c6f77656420746f2061737369676e206120636f6e7472616374206164647265737320617320612070726f7669646f,
                    mem[218 len 10]
    adminAddress = arg1
    emit ChangeAdmin(arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) payable {
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

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if ext_code.size(arg1) > 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x724e6f7420616c6c6f77656420746f207472616e7366657220746f206120636f6e747261637420616464726573,
                    mem[209 len 19]
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

function sub_2c4df734(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if ext_code.size(arg1) > 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0x734e6f7420616c6c6f77656420746f2061737369676e206120636f6e74726163742061646472657373206173206120636f6c6c6563746f,
                    mem[219 len 9]
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

function setProviderAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if ext_code.size(arg1) > 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0xfe4e6f7420616c6c6f77656420746f2061737369676e206120636f6e7472616374206164647265737320617320612070726f7669646f,
                    mem[218 len 10]
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

function adminTransfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == adminAddress
    if ext_code.size(arg1) > 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x724e6f7420616c6c6f77656420746f207472616e7366657220746f206120636f6e747261637420616464726573,
                    mem[209 len 19]
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
    require allowance[address(arg1)][stor7] + arg2 >= allowance[address(arg1)][stor7]
    require allowance[address(arg1)][stor7] + arg2 >= arg2
    allowance[address(arg1)][stor7] += arg2
    emit 0x9d0841c4: arg2, arg1
    return 1
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require balanceOf[stor6] + balanceOf[address(arg1)] >= balanceOf[stor6]
    require balanceOf[stor6] + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    if ext_code.size(arg1) > 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x724e6f7420616c6c6f77656420746f207472616e7366657220746f206120636f6e747261637420616464726573,
                    mem[209 len 19]
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

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if ext_code.size(arg2) > 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x724e6f7420616c6c6f77656420746f207472616e7366657220746f206120636f6e747261637420616464726573,
                    mem[209 len 19]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if ext_code.size(arg2) > 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x724e6f7420616c6c6f77656420746f207472616e7366657220746f206120636f6e747261637420616464726573,
                    mem[209 len 19]
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

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require initialSupply == (2 * uint255(stor11.field_1)) + bool(stor11.field_0)
    require arg1 <= totalSupply
    if totalSupply - arg1 < uint255(stor11.field_1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x7243616e74204275726e206c657373207468616e20353025206f6620696e697469616c20737570706c79,
                    mem[206 len 22]
    require arg1 <= balanceOf[stor9]
    balanceOf[stor9] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    require balanceOf[stor9] + balanceOf[stor8] >= balanceOf[stor9]
    require balanceOf[stor9] + balanceOf[stor8] >= balanceOf[stor8]
    require balanceOf[stor9] + balanceOf[stor8] >= balanceOf[stor9]
    require balanceOf[stor9] + balanceOf[stor8] >= balanceOf[stor8]
    require balanceOf[stor9] + balanceOf[stor8] <= stor10
    if balanceOf[stor9] + balanceOf[stor8] < stor10:
        if ext_code.size(providerAddress) > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        45,
                        0x724e6f7420616c6c6f77656420746f207472616e7366657220746f206120636f6e747261637420616464726573,
                        mem[209 len 19]
        require providerAddress
        require balanceOf[address(msg.sender)] >= stor10 - balanceOf[stor9] - balanceOf[stor8]
        require stor10 - balanceOf[stor9] >= balanceOf[stor8]
        require balanceOf[stor8] >= 0
        require stor10 - balanceOf[stor9] >= balanceOf[stor8]
        require balanceOf[address(msg.sender)] + balanceOf[stor8] >= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] + balanceOf[stor8] >= balanceOf[stor8]
        require stor10 - balanceOf[stor9] - balanceOf[stor8] <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - stor10 + balanceOf[stor9] + balanceOf[stor8]
        require stor10 - balanceOf[stor9] >= balanceOf[stor8]
        require balanceOf[stor8] >= 0
        balanceOf[stor8] = stor10 - balanceOf[stor9]
        emit Transfer((stor10 - balanceOf[stor9] - balanceOf[stor8]), msg.sender, providerAddress);
        require balanceOf[address(msg.sender)] + balanceOf[stor8] >= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] + balanceOf[stor8] >= balanceOf[stor8]
        require balanceOf[address(msg.sender)] + balanceOf[stor8] == balanceOf[address(msg.sender)] + balanceOf[stor8]
    emit Burn((stor10 - balanceOf[stor9] - balanceOf[stor8]), sub_2848eeb8Address);
    return 1
}

function consume(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require balanceOf[address(msg.sender)] >= arg1
    require totalSupply == (5 * totalSupply / 5) + (totalSupply % 5)
    if balanceOf[stor9] >= totalSupply / 5:
        if ext_code.size(providerAddress) > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        45,
                        0x724e6f7420616c6c6f77656420746f207472616e7366657220746f206120636f6e747261637420616464726573,
                        mem[209 len 19]
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
                                                return 1
    else:
        if ext_code.size(sub_2848eeb8Address) > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        45,
                        0x724e6f7420616c6c6f77656420746f207472616e7366657220746f206120636f6e747261637420616464726573,
                        mem[209 len 19]
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
                                                return 1
    revert
}

function sub_3045240c(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == adminAddress
    require balanceOf[address(arg1)] >= arg2
    require allowance[address(arg1)][stor7] >= arg2
    require totalSupply == (5 * totalSupply / 5) + (totalSupply % 5)
    if balanceOf[stor9] >= totalSupply / 5:
        if ext_code.size(providerAddress) > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        45,
                        0x724e6f7420616c6c6f77656420746f207472616e7366657220746f206120636f6e747261637420616464726573,
                        mem[209 len 19]
        require arg2 <= allowance[address(arg1)][address(msg.sender)]
        if arg2 <= allowance[address(arg1)][address(msg.sender)]:
            allowance[address(arg1)][address(msg.sender)] -= arg2
            if ext_code.size(providerAddress) > 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            45,
                            0x724e6f7420616c6c6f77656420746f207472616e7366657220746f206120636f6e747261637420616464726573,
                            mem[209 len 19]
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
                                                    return 1
    else:
        if ext_code.size(sub_2848eeb8Address) > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        45,
                        0x724e6f7420616c6c6f77656420746f207472616e7366657220746f206120636f6e747261637420616464726573,
                        mem[209 len 19]
        require arg2 <= allowance[address(arg1)][address(msg.sender)]
        if arg2 <= allowance[address(arg1)][address(msg.sender)]:
            allowance[address(arg1)][address(msg.sender)] -= arg2
            if ext_code.size(sub_2848eeb8Address) > 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            45,
                            0x724e6f7420616c6c6f77656420746f207472616e7366657220746f206120636f6e747261637420616464726573,
                            mem[209 len 19]
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
                                                    return 1
    revert
}



}
