contract main {




// =====================  Runtime code  =====================


#
#  - sub_005b3253(?)
#  - sub_259ee0fa(?)
#  - sub_8adc350e(?)
#  - sub_e592676a(?)
#
const name = 'Dexq Coin'

const decimals = 18

const symbol = 'DXQ'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
mapping of uint8 stor4;
bool stor5;
uint8 sub_38164c1e;
uint256 stor5;
uint256 sub_cb98748d;
uint256 sub_0086ed57;
uint256 sub_49d8d6ac;
uint256 sub_a224a20f;
array of uint256 sub_79573b4a;
array of uint256 sub_f67c1b80;
uint256 sub_b6229158;
uint256 sub_1eae1436;
array of uint256 sub_d486dce3;
array of uint256 sub_b2888919;
array of uint256 sub_e68747fd;
array of uint256 stor37;
array of struct stor42;
mapping of uint256 stor44;
mapping of uint256 stor45;
mapping of uint256 stor46;
mapping of uint256 stor47;
mapping of uint256 stor48;
mapping of uint256 stor49;
array of address holders;
array of address sub_0e19efed;
array of address sub_83944ef7;
array of address sub_8ac845a3;
array of address sub_b4eb62a8;
array of address sub_ba1b0e43;
array of address sub_d759a334;
array of address sub_7e2c187d;
array of address sub_06b3c687;
mapping of uint256 sub_220b4664;
uint256 totalBurned;
uint256 sub_36ac1b9b;
mapping of uint256 stor62;
array of address sub_9633cd43;

function sub_0086ed57(?) {
    return sub_0086ed57
}

function sub_06b3c687(?) {
    require arg1 < sub_06b3c687.length
    return sub_06b3c687[arg1]
}

function sub_0e19efed(?) {
    require arg1 < sub_0e19efed.length
    return sub_0e19efed[arg1]
}

function totalSupply() {
    return totalSupply
}

function sub_1eae1436(?) {
    return sub_1eae1436
}

function sub_220b4664(?) {
    return sub_220b4664[arg1]
}

function holders(uint256 arg1) {
    require arg1 < holders.length
    return holders[arg1]
}

function sub_36ac1b9b(?) {
    return sub_36ac1b9b
}

function sub_38164c1e(?) {
    require uint8(sub_38164c1e) <= 13
    return uint8(sub_38164c1e)
}

function sub_49d8d6ac(?) {
    return sub_49d8d6ac
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_79573b4a(?) {
    require arg1 < 5
    return sub_79573b4a[arg1]
}

function sub_7e2c187d(?) {
    require arg1 < sub_7e2c187d.length
    return sub_7e2c187d[arg1]
}

function sub_83944ef7(?) {
    require arg1 < sub_83944ef7.length
    return sub_83944ef7[arg1]
}

function sub_8ac845a3(?) {
    require arg1 < sub_8ac845a3.length
    return sub_8ac845a3[arg1]
}

function owner() {
    return owner
}

function sub_9633cd43(?) {
    require arg1 < sub_9633cd43.length
    return sub_9633cd43[arg1]
}

function sub_a224a20f(?) {
    return sub_a224a20f
}

function sub_b2888919(?) {
    require arg1 < 5
    return sub_b2888919[arg1]
}

function sub_b4eb62a8(?) {
    require arg1 < sub_b4eb62a8.length
    return sub_b4eb62a8[arg1]
}

function sub_b6229158(?) {
    return sub_b6229158
}

function sub_ba1b0e43(?) {
    require arg1 < sub_ba1b0e43.length
    return sub_ba1b0e43[arg1]
}

function sub_cb98748d(?) {
    return sub_cb98748d
}

function sub_d486dce3(?) {
    require arg1 < 5
    return sub_d486dce3[arg1]
}

function sub_d759a334(?) {
    require arg1 < sub_d759a334.length
    return sub_d759a334[arg1]
}

function totalBurned() {
    return totalBurned
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_e68747fd(?) {
    require arg1 < 5
    return sub_e68747fd[arg1]
}

function sub_f67c1b80(?) {
    require arg1 < 5
    return sub_f67c1b80[arg1]
}

function sub_7646d818(?) {
    require bool(stor4[address(msg.sender)]) == 1
    require arg1 <= 13
    if arg1 == 1:
        require uint8(sub_38164c1e) <= 13
        if uint8(sub_38164c1e):
            require sub_cb98748d + 1 <= 0
        sub_cb98748d = 0
        require (2 * sub_cb98748d) + 1 <= 13
        uint256(stor5) = (2 * sub_cb98748d) + 1 or Mask(248, 8, uint256(stor5))
        require sub_cb98748d < 5
        sub_79573b4a[stor6] = block.timestamp
        if not sub_cb98748d:
            emit 0xe600c9a8: block.timestamp
        if sub_cb98748d == 1:
            emit 0x18ca6a0e: block.timestamp
        if sub_cb98748d == 2:
            emit 0xe4db9fd5: block.timestamp
        if sub_cb98748d == 3:
            emit 0x83a4f746: block.timestamp
        if sub_cb98748d == 4:
            emit 0xd63592c1: block.timestamp
    else:
        require arg1 <= 13
        if arg1 == 2:
            require not sub_cb98748d
            require (2 * sub_cb98748d) + 2 <= 13
            uint256(stor5) = (2 * sub_cb98748d) + 2 or Mask(248, 8, uint256(stor5))
            require sub_cb98748d < 5
            sub_f67c1b80[stor6] = block.timestamp
            if not sub_cb98748d:
                emit 0x2e656a7a: block.timestamp
            if sub_cb98748d == 1:
                emit 0x9ea98a34: block.timestamp
            if sub_cb98748d == 2:
                emit 0xa2de4f11: block.timestamp
            if sub_cb98748d == 3:
                emit 0x37287f55: block.timestamp
            if sub_cb98748d == 4:
                emit 0xb7cb9381: block.timestamp
        else:
            require arg1 <= 13
            if arg1 == 3:
                require uint8(sub_38164c1e) <= 13
                if uint8(sub_38164c1e):
                    require sub_cb98748d + 1 <= 1
                sub_cb98748d = 1
                require (2 * sub_cb98748d) + 1 <= 13
                uint256(stor5) = (2 * sub_cb98748d) + 1 or Mask(248, 8, uint256(stor5))
                require sub_cb98748d < 5
                sub_79573b4a[stor6] = block.timestamp
                if not sub_cb98748d:
                    emit 0xe600c9a8: block.timestamp
                if sub_cb98748d == 1:
                    emit 0x18ca6a0e: block.timestamp
                if sub_cb98748d == 2:
                    emit 0xe4db9fd5: block.timestamp
                if sub_cb98748d == 3:
                    emit 0x83a4f746: block.timestamp
                if sub_cb98748d == 4:
                    emit 0xd63592c1: block.timestamp
            else:
                require arg1 <= 13
                if arg1 == 4:
                    require sub_cb98748d == 1
                    require (2 * sub_cb98748d) + 2 <= 13
                    uint256(stor5) = (2 * sub_cb98748d) + 2 or Mask(248, 8, uint256(stor5))
                    require sub_cb98748d < 5
                    sub_f67c1b80[stor6] = block.timestamp
                    if not sub_cb98748d:
                        emit 0x2e656a7a: block.timestamp
                    if sub_cb98748d == 1:
                        emit 0x9ea98a34: block.timestamp
                    if sub_cb98748d == 2:
                        emit 0xa2de4f11: block.timestamp
                    if sub_cb98748d == 3:
                        emit 0x37287f55: block.timestamp
                    if sub_cb98748d == 4:
                        emit 0xb7cb9381: block.timestamp
                else:
                    require arg1 <= 13
                    if arg1 == 5:
                        require uint8(sub_38164c1e) <= 13
                        if uint8(sub_38164c1e):
                            require sub_cb98748d + 1 <= 2
                        sub_cb98748d = 2
                        require (2 * sub_cb98748d) + 1 <= 13
                        uint256(stor5) = (2 * sub_cb98748d) + 1 or Mask(248, 8, uint256(stor5))
                        require sub_cb98748d < 5
                        sub_79573b4a[stor6] = block.timestamp
                        if not sub_cb98748d:
                            emit 0xe600c9a8: block.timestamp
                        if sub_cb98748d == 1:
                            emit 0x18ca6a0e: block.timestamp
                        if sub_cb98748d == 2:
                            emit 0xe4db9fd5: block.timestamp
                        if sub_cb98748d == 3:
                            emit 0x83a4f746: block.timestamp
                        if sub_cb98748d == 4:
                            emit 0xd63592c1: block.timestamp
                    else:
                        require arg1 <= 13
                        if arg1 == 6:
                            require sub_cb98748d == 2
                            require (2 * sub_cb98748d) + 2 <= 13
                            uint256(stor5) = (2 * sub_cb98748d) + 2 or Mask(248, 8, uint256(stor5))
                            require sub_cb98748d < 5
                            sub_f67c1b80[stor6] = block.timestamp
                            if not sub_cb98748d:
                                emit 0x2e656a7a: block.timestamp
                            if sub_cb98748d == 1:
                                emit 0x9ea98a34: block.timestamp
                            if sub_cb98748d == 2:
                                emit 0xa2de4f11: block.timestamp
                            if sub_cb98748d == 3:
                                emit 0x37287f55: block.timestamp
                            if sub_cb98748d == 4:
                                emit 0xb7cb9381: block.timestamp
                        else:
                            require arg1 <= 13
                            if arg1 == 7:
                                require uint8(sub_38164c1e) <= 13
                                if uint8(sub_38164c1e):
                                    require sub_cb98748d + 1 <= 3
                                sub_cb98748d = 3
                                require (2 * sub_cb98748d) + 1 <= 13
                                uint256(stor5) = (2 * sub_cb98748d) + 1 or Mask(248, 8, uint256(stor5))
                                require sub_cb98748d < 5
                                sub_79573b4a[stor6] = block.timestamp
                                if not sub_cb98748d:
                                    emit 0xe600c9a8: block.timestamp
                                if sub_cb98748d == 1:
                                    emit 0x18ca6a0e: block.timestamp
                                if sub_cb98748d == 2:
                                    emit 0xe4db9fd5: block.timestamp
                                if sub_cb98748d == 3:
                                    emit 0x83a4f746: block.timestamp
                                if sub_cb98748d == 4:
                                    emit 0xd63592c1: block.timestamp
                            else:
                                require arg1 <= 13
                                if arg1 == 8:
                                    require sub_cb98748d == 3
                                    require (2 * sub_cb98748d) + 2 <= 13
                                    uint256(stor5) = (2 * sub_cb98748d) + 2 or Mask(248, 8, uint256(stor5))
                                    require sub_cb98748d < 5
                                    sub_f67c1b80[stor6] = block.timestamp
                                    if not sub_cb98748d:
                                        emit 0x2e656a7a: block.timestamp
                                    if sub_cb98748d == 1:
                                        emit 0x9ea98a34: block.timestamp
                                    if sub_cb98748d == 2:
                                        emit 0xa2de4f11: block.timestamp
                                    if sub_cb98748d == 3:
                                        emit 0x37287f55: block.timestamp
                                    if sub_cb98748d == 4:
                                        emit 0xb7cb9381: block.timestamp
                                else:
                                    require arg1 <= 13
                                    if arg1 == 9:
                                        require uint8(sub_38164c1e) <= 13
                                        if uint8(sub_38164c1e):
                                            require sub_cb98748d + 1 <= 4
                                        sub_cb98748d = 4
                                        require (2 * sub_cb98748d) + 1 <= 13
                                        uint256(stor5) = (2 * sub_cb98748d) + 1 or Mask(248, 8, uint256(stor5))
                                        require sub_cb98748d < 5
                                        sub_79573b4a[stor6] = block.timestamp
                                        if not sub_cb98748d:
                                            emit 0xe600c9a8: block.timestamp
                                        if sub_cb98748d == 1:
                                            emit 0x18ca6a0e: block.timestamp
                                        if sub_cb98748d == 2:
                                            emit 0xe4db9fd5: block.timestamp
                                        if sub_cb98748d == 3:
                                            emit 0x83a4f746: block.timestamp
                                        if sub_cb98748d == 4:
                                            emit 0xd63592c1: block.timestamp
                                    else:
                                        require arg1 <= 13
                                        if arg1 == 10:
                                            require sub_cb98748d == 4
                                            require (2 * sub_cb98748d) + 2 <= 13
                                            uint256(stor5) = (2 * sub_cb98748d) + 2 or Mask(248, 8, uint256(stor5))
                                            require sub_cb98748d < 5
                                            sub_f67c1b80[stor6] = block.timestamp
                                            if not sub_cb98748d:
                                                emit 0x2e656a7a: block.timestamp
                                            if sub_cb98748d == 1:
                                                emit 0x9ea98a34: block.timestamp
                                            if sub_cb98748d == 2:
                                                emit 0xa2de4f11: block.timestamp
                                            if sub_cb98748d == 3:
                                                emit 0x37287f55: block.timestamp
                                            if sub_cb98748d == 4:
                                                emit 0xb7cb9381: block.timestamp
                                        else:
                                            require arg1 <= 13
                                            if arg1 != 11:
                                                require arg1 <= 13
                                                if arg1 == 12:
                                                    require bool(stor4[address(msg.sender)]) == 1
                                                    require uint8(sub_38164c1e) <= 13
                                                    require uint8(sub_38164c1e) == 11
                                                    require block.timestamp >= sub_49d8d6ac + (8760 * 24 * 3600)
                                                    uint8(sub_38164c1e) = 12
                                                    sub_a224a20f = block.timestamp
                                                    emit 0x21957c59: block.timestamp
                                                require arg1 <= 13
                                                require arg1 == 13
                                                require bool(stor4[address(msg.sender)]) == 1
                                                require uint8(sub_38164c1e) <= 13
                                                require uint8(sub_38164c1e) >= 12
                                                require totalSupply <= 0
                                                emit 0xc9739e2a: block.timestamp
                                                emit WithdrawEther(eth.balance(this.address), owner, block.timestamp);
                                                selfdestruct(owner)
                                            require bool(stor4[address(msg.sender)]) == 1
                                            require (2 * sub_cb98748d) + 2 <= 13
                                            require uint8(sub_38164c1e) <= 13
                                            require (2 * sub_cb98748d) + 2 <= 13
                                            if (2 * sub_cb98748d) + 2 > uint8(sub_38164c1e):
                                                require sub_cb98748d == sub_cb98748d
                                                require (2 * sub_cb98748d) + 2 <= 13
                                                uint256(stor5) = (2 * sub_cb98748d) + 2 or Mask(248, 8, uint256(stor5))
                                                require sub_cb98748d < 5
                                                sub_f67c1b80[stor6] = block.timestamp
                                                if not sub_cb98748d:
                                                    emit 0x2e656a7a: block.timestamp
                                                if sub_cb98748d == 1:
                                                    emit 0x9ea98a34: block.timestamp
                                                if sub_cb98748d == 2:
                                                    emit 0xa2de4f11: block.timestamp
                                                if sub_cb98748d == 3:
                                                    emit 0x37287f55: block.timestamp
                                                if sub_cb98748d == 4:
                                                    emit 0xb7cb9381: block.timestamp
                                            uint8(sub_38164c1e) = 11
                                            sub_49d8d6ac = block.timestamp
                                            emit 0x4ee9bac0: block.timestamp
}

function sub_679496ef(?) {
    return eth.balance(this.address), sub_36ac1b9b, sub_1eae1436
}

function sub_8509bee2(?) {
    require sub_cb98748d < 5
    return stor37[stor6], sub_cb98748d
}

function sub_17312fb6(?) {
    require msg.sender == owner
    require arg1
    stor4[address(arg1)] = 1
    emit 0xe8d06139: arg1, block.timestamp
}

function sub_4e7d1833(?) {
    require bool(stor4[address(msg.sender)]) == 1
    stor62[address(arg1)] = 0
    emit 0xf67d0d4b: arg1, block.timestamp
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_86037c0f(?) {
    require msg.sender == owner
    require arg1
    require bool(stor4[address(arg1)]) == 1
    stor4[address(arg1)] = 0
    emit 0x6424a5a2: arg1, block.timestamp
}

function sub_5a2b7909(?) {
    require bool(stor4[address(msg.sender)]) == 1
    require arg1
    require sub_cb98748d < 5
    stor37[stor6] = arg1
    emit 0x507eebd5: sub_cb98748d, arg1, block.timestamp
}

function sub_a20db2c5(?) {
    require bool(stor4[address(msg.sender)]) == 1
    require arg1
    sub_9633cd43.length++
    sub_9633cd43[sub_9633cd43.length] = arg1
    emit 0x992baa94: arg1, block.timestamp
}

function increaseApproval(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function sub_56806841(?) {
    require bool(stor4[address(msg.sender)]) == 1
    stor62[address(arg1)] = block.timestamp
    sub_06b3c687.length++
    sub_06b3c687[sub_06b3c687.length] = arg1
    emit 0xbf5c4988: arg1, block.timestamp
}

function sub_bba9e229(?) {
    require bool(stor4[address(msg.sender)]) == 1
    require arg1 <= eth.balance(this.address)
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    sub_36ac1b9b += arg1
    emit WithdrawEther(arg1, owner, block.timestamp);
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg2 != arg1
    require arg3 > 0
    emit 0x4a8691b7: msg.sender, arg3, arg1, arg2, block.timestamp
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if not stor49[address(arg2)]:
        holders.length++
        holders[holders.length] = arg2
        sub_d759a334.length++
        sub_d759a334[sub_d759a334.length] = arg2
        emit 0xe8c26b33: arg2, block.timestamp
    stor49[address(arg2)] += arg3
    stor42.length++
    stor42[stor42.length].field_0 = arg1
    stor42[stor42.length].field_256 = arg2
    stor42[stor42.length].field_512 = arg3
    stor42[stor42.length].field_768 = block.timestamp
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg1 != msg.sender
    require arg2 > 0
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    emit 0x59158d23: arg2, msg.sender, arg1, block.timestamp
    if not stor49[address(arg1)]:
        holders.length++
        holders[holders.length] = arg1
        sub_d759a334.length++
        sub_d759a334[sub_d759a334.length] = arg1
        emit 0xe8c26b33: arg1, block.timestamp
    stor49[address(arg1)] += arg2
    stor42.length++
    stor42[stor42.length].field_0 = msg.sender
    stor42[stor42.length].field_256 = arg1
    stor42[stor42.length].field_512 = arg2
    stor42[stor42.length].field_768 = block.timestamp
    return 1
}

function buy() payable {
    require uint8(sub_38164c1e) <= 13
    require uint8(sub_38164c1e) >= 1
    require uint8(sub_38164c1e) <= 13
    require uint8(sub_38164c1e) <= 10
    require bool(stor5) == 1
    require sub_cb98748d < 5
    require msg.value >= stor37[stor6]
    require stor37[stor6]
    require (msg.value / stor37[stor6]) + sub_b6229158 <= totalSupply
    if not sub_cb98748d:
        stor44[address(msg.sender)] += msg.value / stor37[stor6]
    else:
        if sub_cb98748d == 1:
            stor45[address(msg.sender)] += msg.value / stor37[stor6]
        else:
            if sub_cb98748d == 2:
                stor46[address(msg.sender)] += msg.value / stor37[stor6]
            else:
                if sub_cb98748d == 3:
                    stor47[address(msg.sender)] += msg.value / stor37[stor6]
                else:
                    if sub_cb98748d == 4:
                        stor48[address(msg.sender)] += msg.value / stor37[stor6]
    require sub_cb98748d < 5
    sub_d486dce3[stor6] += msg.value / stor37[stor6]
    sub_b6229158 += msg.value / stor37[stor6]
    sub_b2888919[stor6] += msg.value
    sub_1eae1436 += msg.value
    require msg.sender
    require msg.value / stor37[stor6] <= balanceOf[stor3]
    balanceOf[stor3] -= msg.value / stor37[stor6]
    balanceOf[address(msg.sender)] += msg.value / stor37[stor6]
    emit Transfer((msg.value / stor37[stor6]), owner, msg.sender);
    if not stor49[address(msg.sender)]:
        holders.length++
        holders[holders.length] = msg.sender
        if not sub_cb98748d:
            sub_0e19efed.length++
            sub_0e19efed[sub_0e19efed.length] = msg.sender
        else:
            if sub_cb98748d == 1:
                sub_83944ef7.length++
                sub_83944ef7[sub_83944ef7.length] = msg.sender
            else:
                if sub_cb98748d == 2:
                    sub_8ac845a3.length++
                    sub_8ac845a3[sub_8ac845a3.length] = msg.sender
                else:
                    if sub_cb98748d == 3:
                        sub_b4eb62a8.length++
                        sub_b4eb62a8[sub_b4eb62a8.length] = msg.sender
                    else:
                        if sub_cb98748d == 4:
                            sub_ba1b0e43.length++
                            sub_ba1b0e43[sub_ba1b0e43.length] = msg.sender
        emit 0xdfbbd92f: msg.sender, block.timestamp
    stor49[address(msg.sender)] += msg.value / stor37[stor6]
    emit 0x616d25e7: msg.value, msg.value / stor37[stor6], stor37[stor6], msg.sender, block.timestamp
    require sub_cb98748d < 5
    if sub_e68747fd[stor6] <= sub_b2888919[stor6]:
        require sub_cb98748d == sub_cb98748d
        require (2 * sub_cb98748d) + 2 <= 13
        uint256(stor5) = (2 * sub_cb98748d) + 2 or Mask(248, 8, uint256(stor5))
        require sub_cb98748d < 5
        sub_f67c1b80[stor6] = block.timestamp
        if not sub_cb98748d:
            emit 0x2e656a7a: block.timestamp
        if sub_cb98748d == 1:
            emit 0x9ea98a34: block.timestamp
        if sub_cb98748d == 2:
            emit 0xa2de4f11: block.timestamp
        if sub_cb98748d == 3:
            emit 0x37287f55: block.timestamp
        if sub_cb98748d == 4:
            emit 0xb7cb9381: block.timestamp
}

function _fallback() payable {
    require uint8(sub_38164c1e) <= 13
    require uint8(sub_38164c1e) >= 1
    require uint8(sub_38164c1e) <= 13
    require uint8(sub_38164c1e) <= 10
    require bool(stor5) == 1
    require sub_cb98748d < 5
    require msg.value >= stor37[stor6]
    require stor37[stor6]
    require (msg.value / stor37[stor6]) + sub_b6229158 <= totalSupply
    if not sub_cb98748d:
        stor44[address(msg.sender)] += msg.value / stor37[stor6]
    else:
        if sub_cb98748d == 1:
            stor45[address(msg.sender)] += msg.value / stor37[stor6]
        else:
            if sub_cb98748d == 2:
                stor46[address(msg.sender)] += msg.value / stor37[stor6]
            else:
                if sub_cb98748d == 3:
                    stor47[address(msg.sender)] += msg.value / stor37[stor6]
                else:
                    if sub_cb98748d == 4:
                        stor48[address(msg.sender)] += msg.value / stor37[stor6]
    require sub_cb98748d < 5
    sub_d486dce3[stor6] += msg.value / stor37[stor6]
    sub_b6229158 += msg.value / stor37[stor6]
    sub_b2888919[stor6] += msg.value
    sub_1eae1436 += msg.value
    require msg.sender
    require msg.value / stor37[stor6] <= balanceOf[stor3]
    balanceOf[stor3] -= msg.value / stor37[stor6]
    balanceOf[address(msg.sender)] += msg.value / stor37[stor6]
    emit Transfer((msg.value / stor37[stor6]), owner, msg.sender);
    if not stor49[address(msg.sender)]:
        holders.length++
        holders[holders.length] = msg.sender
        if not sub_cb98748d:
            sub_0e19efed.length++
            sub_0e19efed[sub_0e19efed.length] = msg.sender
        else:
            if sub_cb98748d == 1:
                sub_83944ef7.length++
                sub_83944ef7[sub_83944ef7.length] = msg.sender
            else:
                if sub_cb98748d == 2:
                    sub_8ac845a3.length++
                    sub_8ac845a3[sub_8ac845a3.length] = msg.sender
                else:
                    if sub_cb98748d == 3:
                        sub_b4eb62a8.length++
                        sub_b4eb62a8[sub_b4eb62a8.length] = msg.sender
                    else:
                        if sub_cb98748d == 4:
                            sub_ba1b0e43.length++
                            sub_ba1b0e43[sub_ba1b0e43.length] = msg.sender
        emit 0xdfbbd92f: msg.sender, block.timestamp
    stor49[address(msg.sender)] += msg.value / stor37[stor6]
    emit 0x616d25e7: msg.value, msg.value / stor37[stor6], stor37[stor6], msg.sender, block.timestamp
    require sub_cb98748d < 5
    if sub_e68747fd[stor6] <= sub_b2888919[stor6]:
        require sub_cb98748d == sub_cb98748d
        require (2 * sub_cb98748d) + 2 <= 13
        uint256(stor5) = (2 * sub_cb98748d) + 2 or Mask(248, 8, uint256(stor5))
        require sub_cb98748d < 5
        sub_f67c1b80[stor6] = block.timestamp
        if not sub_cb98748d:
            emit 0x2e656a7a: block.timestamp
        if sub_cb98748d == 1:
            emit 0x9ea98a34: block.timestamp
        if sub_cb98748d == 2:
            emit 0xa2de4f11: block.timestamp
        if sub_cb98748d == 3:
            emit 0x37287f55: block.timestamp
        if sub_cb98748d == 4:
            emit 0xb7cb9381: block.timestamp
}



}
