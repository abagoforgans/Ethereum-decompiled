contract main {




// =====================  Runtime code  =====================


const name = 'Genesis Supply Chain Platform'

const decimals = 18

const totalTokens = 999999999

const symbol = 'GSCP'

const TOKEN_DECIMALS = 10^18


uint256 totalTokenSupply;
address owner;
mapping of uint256 balances;
mapping of uint256 allowance;
mapping of struct stor4;
mapping of struct stor5;
mapping of struct stor6;

function totalSupply() {
    return totalTokenSupply
}

function totalTokenSupply() {
    return totalTokenSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    require arg1
    require arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= balances[address(msg.sender)]
    require arg1 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg1
    require arg1 <= totalTokenSupply
    totalTokenSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    require balances[address(arg1)] + balances[stor1] >= balances[address(arg1)]
    balances[address(arg1)] += balances[stor1]
    balances[stor1] = 0
    owner = arg1
    emit Transfer(balances[address(arg1)], msg.sender, arg1);
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if not arg2:
        emit Transfer(arg2, msg.sender, arg1);
        return 0
    if stor4[address(msg.sender)].field_1288:
        revert with 0, 'Limit is set and use advClaim'
    if stor5[address(msg.sender)].field_1544:
        revert with 0, 'Limit is set and use teamClaim'
    if stor6[address(msg.sender)].field_768:
        revert with 0, 'Limit is set and use claim'
    require arg1
    require balances[address(msg.sender)] >= arg2
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not arg3:
        emit Transfer(arg3, arg1, arg2);
        return 0
    if stor4[address(msg.sender)].field_1288:
        revert with 0, 'Limit is set and use advClaim'
    if stor5[address(msg.sender)].field_1544:
        revert with 0, 'Limit is set and use teamClaim'
    if stor6[address(msg.sender)].field_768:
        revert with 0, 'Limit is set and use claim'
    require arg2
    require balances[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 >= 0
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_abb548a2(?) {
    require msg.sender == owner
    if arg3 > 100:
        revert with 0, 'Invalid percent'
    if not arg2:
        require block.timestamp >= block.timestamp
        require block.timestamp <= block.timestamp
        stor6[address(arg1)].field_0 = 0
    else:
        require arg2
        require 60 * arg2 / arg2 == 60
        require block.timestamp + (60 * arg2) >= block.timestamp
        require block.timestamp <= block.timestamp + (60 * arg2)
        stor6[address(arg1)].field_0 = 60 * arg2
    stor6[address(arg1)].field_256 = 0
    if balances[address(arg1)] <= 0:
        stor6[address(arg1)].field_512 = 0
    else:
        if not balances[address(arg1)]:
            stor6[address(arg1)].field_512 = 0
        else:
            require balances[address(arg1)]
            require balances[address(arg1)] * arg3 / balances[address(arg1)] == arg3
            stor6[address(arg1)].field_512 = balances[address(arg1)] * arg3 / 100
    stor6[address(arg1)].field_768 = 1
}

function transferTo(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    if not arg2:
        require balances[address(this.address)] >= 0
    else:
        require arg2
        require 10^18 * arg2 / arg2 == 10^18
        require balances[address(this.address)] >= 10^18 * arg2
    require arg2
    require arg2
    require 10^18 * arg2 / arg2 == 10^18
    require 10^18 * arg2 > 0
    if not arg2:
        require 0 <= balances[address(this.address)]
    else:
        require arg2
        require 10^18 * arg2 / arg2 == 10^18
        require 10^18 * arg2 <= balances[address(this.address)]
        balances[address(this.address)] += -1 * 10^18 * arg2
    if not arg2:
        require balances[address(arg1)] >= balances[address(arg1)]
    else:
        require arg2
        require 10^18 * arg2 / arg2 == 10^18
        require balances[address(arg1)] + (10^18 * arg2) >= balances[address(arg1)]
        balances[address(arg1)] += 10^18 * arg2
    if not arg2:
        emit Transfer(0, this.address, arg1);
    else:
        require arg2
        require 10^18 * arg2 / arg2 == 10^18
        emit Transfer((10^18 * arg2), this.address, arg1);
    return 1
}

function sub_28f5bdbf(?) {
    require msg.sender == owner
    if not arg1:
        revert with 0, 'Invalid address'
    require block.timestamp + 5400 >= block.timestamp
    require block.timestamp <= block.timestamp + 5400
    stor4[address(arg1)].field_0 = 5400
    stor4[address(arg1)].field_256 = 0
    if balances[address(arg1)] <= 0:
        stor4[address(arg1)].field_512 = 0
        stor4[address(arg1)].field_768 = 0
        stor4[address(arg1)].field_1024 = 0
    else:
        if not balances[address(arg1)]:
            stor4[address(arg1)].field_512 = 0
        else:
            require balances[address(arg1)]
            require 25 * balances[address(arg1)] / balances[address(arg1)] == 25
            stor4[address(arg1)].field_512 = 25 * balances[address(arg1)] / 100
        if not balances[address(arg1)]:
            stor4[address(arg1)].field_768 = 0
        else:
            require balances[address(arg1)]
            require 25 * balances[address(arg1)] / balances[address(arg1)] == 25
            stor4[address(arg1)].field_768 = 25 * balances[address(arg1)] / 100
        if not balances[address(arg1)]:
            stor4[address(arg1)].field_1024 = 0
        else:
            require balances[address(arg1)]
            require 50 * balances[address(arg1)] / balances[address(arg1)] == 50
            stor4[address(arg1)].field_1024 = 50 * balances[address(arg1)] / 100
    stor4[address(arg1)].field_1280 = 0
    stor4[address(arg1)].field_1288 = 1
}

function claim(address arg1) {
    if not arg1:
        revert with 0, 'Invalid recipient'
    if msg.sender == arg1:
        revert with 0, 'Self transfer'
    if not stor6[address(msg.sender)].field_768:
        revert with 0, 'Limit not set'
    if stor6[address(msg.sender)].field_256 > 0:
        require stor6[address(msg.sender)].field_256 + stor6[address(msg.sender)].field_0 >= stor6[address(msg.sender)].field_256
        if block.timestamp <= stor6[address(msg.sender)].field_256 + stor6[address(msg.sender)].field_0:
            revert with 0, 'Time limit'
    if balances[address(msg.sender)] >= stor6[address(msg.sender)].field_512:
        if stor6[address(msg.sender)].field_512:
            require stor6[address(msg.sender)].field_512 <= balances[address(msg.sender)]
            balances[address(msg.sender)] -= stor6[address(msg.sender)].field_512
            require balances[address(arg1)] + stor6[address(msg.sender)].field_512 >= balances[address(arg1)]
            balances[address(arg1)] += stor6[address(msg.sender)].field_512
            stor6[address(msg.sender)].field_256 = block.timestamp
        emit Transfer(stor6[address(msg.sender)].field_512, msg.sender, arg1);
    else:
        if balances[address(msg.sender)]:
            require balances[address(msg.sender)] <= balances[address(msg.sender)]
            balances[address(msg.sender)] = 0
            require balances[address(arg1)] + balances[address(msg.sender)] >= balances[address(arg1)]
            balances[address(arg1)] += balances[address(msg.sender)]
            stor6[address(msg.sender)].field_256 = block.timestamp
        emit Transfer(balances[address(msg.sender)], msg.sender, arg1);
}

function sub_adbbf8fb(?) {
    require msg.sender == owner
    if not arg1:
        revert with 0, 'Invalid address'
    require block.timestamp + (3 * 3600) >= block.timestamp
    require block.timestamp <= block.timestamp + (3 * 3600)
    stor5[address(arg1)].field_0 = 3 * 3600
    stor5[address(arg1)].field_256 = 0
    if balances[address(arg1)] <= 0:
        stor5[address(arg1)].field_512 = 0
        stor5[address(arg1)].field_768 = 0
        stor5[address(arg1)].field_1024 = 0
        stor5[address(arg1)].field_1280 = 0
    else:
        if not balances[address(arg1)]:
            stor5[address(arg1)].field_512 = 0
        else:
            require balances[address(arg1)]
            require 10 * balances[address(arg1)] / balances[address(arg1)] == 10
            stor5[address(arg1)].field_512 = 10 * balances[address(arg1)] / 100
        if not balances[address(arg1)]:
            stor5[address(arg1)].field_768 = 0
        else:
            require balances[address(arg1)]
            require 15 * balances[address(arg1)] / balances[address(arg1)] == 15
            stor5[address(arg1)].field_768 = 15 * balances[address(arg1)] / 100
        if not balances[address(arg1)]:
            stor5[address(arg1)].field_1024 = 0
        else:
            require balances[address(arg1)]
            require 35 * balances[address(arg1)] / balances[address(arg1)] == 35
            stor5[address(arg1)].field_1024 = 35 * balances[address(arg1)] / 100
        if not balances[address(arg1)]:
            stor5[address(arg1)].field_1280 = 0
        else:
            require balances[address(arg1)]
            require 40 * balances[address(arg1)] / balances[address(arg1)] == 40
            stor5[address(arg1)].field_1280 = 40 * balances[address(arg1)] / 100
    stor5[address(arg1)].field_1536 = 0
    stor5[address(arg1)].field_1544 = 1
}

function sub_e7db0be9(?) {
    if not arg1:
        revert with 0, 'Invalid recipient'
    if msg.sender == arg1:
        revert with 0, 'Self transfer'
    if not stor5[address(msg.sender)].field_1544:
        revert with 0, 'Limit not set'
    if stor5[address(msg.sender)].field_1536 >= 4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Claims are over for this team wallet'
    if stor5[address(msg.sender)].field_256 > 0:
        require stor5[address(msg.sender)].field_256 + stor5[address(msg.sender)].field_0 >= stor5[address(msg.sender)].field_256
        if block.timestamp <= stor5[address(msg.sender)].field_256 + stor5[address(msg.sender)].field_0:
            revert with 0, 'Time limit'
    require stor5[address(msg.sender)].field_1536 < 4
    if balances[address(msg.sender)] >= stor5[address(msg.sender)][stor5[address(msg.sender)].field_1536].field_512:
        if stor5[address(msg.sender)][stor5[address(msg.sender)].field_1536].field_512:
            require stor5[address(msg.sender)][stor5[address(msg.sender)].field_1536].field_512 <= balances[address(msg.sender)]
            balances[address(msg.sender)] -= stor5[address(msg.sender)][stor5[address(msg.sender)].field_1536].field_512
            require balances[address(arg1)] + stor5[address(msg.sender)][stor5[address(msg.sender)].field_1536].field_512 >= balances[address(arg1)]
            balances[address(arg1)] += stor5[address(msg.sender)][stor5[address(msg.sender)].field_1536].field_512
            stor5[address(msg.sender)].field_256 = block.timestamp
            stor5[address(msg.sender)].field_1536 = uint8(stor5[address(msg.sender)].field_1536 + 1)
        emit Transfer(stor5[address(msg.sender)][stor5[address(msg.sender)].field_1536].field_512, msg.sender, arg1);
    else:
        if balances[address(msg.sender)]:
            require balances[address(msg.sender)] <= balances[address(msg.sender)]
            balances[address(msg.sender)] = 0
            require balances[address(arg1)] + balances[address(msg.sender)] >= balances[address(arg1)]
            balances[address(arg1)] += balances[address(msg.sender)]
            stor5[address(msg.sender)].field_256 = block.timestamp
            stor5[address(msg.sender)].field_1536 = uint8(stor5[address(msg.sender)].field_1536 + 1)
        emit Transfer(balances[address(msg.sender)], msg.sender, arg1);
}

function sub_9949f0dd(?) {
    if not arg1:
        revert with 0, 'Invalid recipient'
    if msg.sender == arg1:
        revert with 0, 'Self transfer'
    if not stor4[address(msg.sender)].field_1288:
        revert with 0, 'Limit not set'
    if stor4[address(msg.sender)].field_1280 >= 3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Claims are over for this adviser wallet'
    if stor4[address(msg.sender)].field_256 > 0:
        require stor4[address(msg.sender)].field_256 + stor4[address(msg.sender)].field_0 >= stor4[address(msg.sender)].field_256
        if block.timestamp <= stor4[address(msg.sender)].field_256 + stor4[address(msg.sender)].field_0:
            revert with 0, 'Time limit'
    require stor4[address(msg.sender)].field_1280 < 3
    if balances[address(msg.sender)] >= stor4[address(msg.sender)][stor4[address(msg.sender)].field_1280].field_512:
        if stor4[address(msg.sender)][stor4[address(msg.sender)].field_1280].field_512:
            require stor4[address(msg.sender)][stor4[address(msg.sender)].field_1280].field_512 <= balances[address(msg.sender)]
            balances[address(msg.sender)] -= stor4[address(msg.sender)][stor4[address(msg.sender)].field_1280].field_512
            require balances[address(arg1)] + stor4[address(msg.sender)][stor4[address(msg.sender)].field_1280].field_512 >= balances[address(arg1)]
            balances[address(arg1)] += stor4[address(msg.sender)][stor4[address(msg.sender)].field_1280].field_512
            stor4[address(msg.sender)].field_256 = block.timestamp
            stor4[address(msg.sender)].field_1280 = uint8(stor4[address(msg.sender)].field_1280 + 1)
        emit Transfer(stor4[address(msg.sender)][stor4[address(msg.sender)].field_1280].field_512, msg.sender, arg1);
    else:
        if balances[address(msg.sender)]:
            require balances[address(msg.sender)] <= balances[address(msg.sender)]
            balances[address(msg.sender)] = 0
            require balances[address(arg1)] + balances[address(msg.sender)] >= balances[address(arg1)]
            balances[address(arg1)] += balances[address(msg.sender)]
            stor4[address(msg.sender)].field_256 = block.timestamp
            stor4[address(msg.sender)].field_1280 = uint8(stor4[address(msg.sender)].field_1280 + 1)
        emit Transfer(balances[address(msg.sender)], msg.sender, arg1);
}



}
