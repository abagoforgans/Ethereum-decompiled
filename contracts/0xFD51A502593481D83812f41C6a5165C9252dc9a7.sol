contract main {




// =====================  Runtime code  =====================


uint256 totalSupply;
uint256 stor4;
uint256 sub_0ad61b5f;
uint256 sub_68c64689;
uint256 sub_f12389f5;
uint256 stor9;
uint256 stor10;
uint256 sub_a941c122;
uint256 sub_96058e9b;
uint256 sub_7cd55bd9;
uint256 sub_6efcbe04;
uint256 sub_8f89a447;
uint256 stor16;
address stor17;
address stor18;
uint256 stor19;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor22;
mapping of uint8 stor23;
mapping of uint256 sub_7ec3fbfa;
mapping of uint256 lastTimeRewarded;
mapping of uint8 stor26;
mapping of uint256 currentLockedAmount;
mapping of uint256 sub_2e2a3101;

function sub_0ad61b5f(?) {
    return sub_0ad61b5f
}

function getCurrentLockedAmount() {
    return currentLockedAmount[msg.sender]
}

function sub_26f00c4d(?) {
    require calldata.size - 4 >= 32
    return bool(stor23[address(arg1)])
}

function sub_2e2a3101(?) {
    return sub_2e2a3101[msg.sender]
}

function sub_68c64689(?) {
    return sub_68c64689
}

function sub_6efcbe04(?) {
    return sub_6efcbe04
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function sub_7cd55bd9(?) {
    return sub_7cd55bd9
}

function sub_7ec3fbfa(?) {
    require calldata.size - 4 >= 32
    return sub_7ec3fbfa[arg1]
}

function sub_8f89a447(?) {
    return sub_8f89a447
}

function sub_96058e9b(?) {
    return sub_96058e9b
}

function lockedAmount(address arg1) {
    require calldata.size - 4 >= 32
    return currentLockedAmount[arg1]
}

function sub_a3f43d24(?) {
    require calldata.size - 4 >= 32
    return bool(stor23[arg1])
}

function sub_a941c122(?) {
    return sub_a941c122
}

function sub_aea1eeef(?) {
    require calldata.size - 4 >= 32
    return bool(stor26[arg1])
}

function sub_b1500682(?) {
    require calldata.size - 4 >= 32
    return sub_2e2a3101[arg1]
}

function sub_b61a125e(?) {
    require calldata.size - 4 >= 32
    return bool(stor22[arg1])
}

function getTotalSupply() {
    return totalSupply
}

function lastTimeRewarded(address arg1) {
    require calldata.size - 4 >= 32
    return lastTimeRewarded[arg1]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[arg1][arg2]
}

function sub_f12389f5(?) {
    return sub_f12389f5
}

function sub_f31ac520(?) {
    require calldata.size - 4 >= 32
    return lastTimeRewarded[address(arg1)]
}

function _fallback() payable {
    revert
}

function sub_d4f9674b(?) {
    require stor4 <= block.number
    return (block.number - stor4)
}

function sub_e79bafa1(?) {
    require calldata.size - 4 >= 32
    require msg.sender == stor17
    stor16 = arg1
}

function sub_9696ccf2(?) {
    require stor23[msg.sender]
    stor26[msg.sender] = 0
    currentLockedAmount[msg.sender] = 0
    return 1
}

function getCurrentUnlockedAmount() {
    require currentLockedAmount[msg.sender] <= balanceOf[msg.sender]
    return (balanceOf[msg.sender] - currentLockedAmount[msg.sender])
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function sub_617459e5(?) {
    require sub_96058e9b
    if not sub_a941c122 / sub_96058e9b:
        return 0
    require 100 * sub_a941c122 / sub_96058e9b / sub_a941c122 / sub_96058e9b == 100
    return (100 * sub_a941c122 / sub_96058e9b)
}

function sub_b1a4904e(?) {
    require not stor23[msg.sender]
    require balanceOf[msg.sender] > sub_6efcbe04
    require not stor23[msg.sender]
    require stor4 <= block.number
    stor23[msg.sender] = 1
    sub_7ec3fbfa[msg.sender] = block.number - stor4
    lastTimeRewarded[msg.sender] = block.number - stor4
}

function burnFrom(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= allowance[address(arg1)][msg.sender]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][msg.sender] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[msg.sender] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg1)]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[arg1] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg2)] + balanceOf[arg1] == balanceOf[arg1] + balanceOf[address(arg2)]
    return 1
}

function sub_cc5e6c50(?) {
    require calldata.size - 4 >= 32
    require stor23[msg.sender]
    require currentLockedAmount[msg.sender] <= balanceOf[msg.sender]
    require balanceOf[msg.sender] - currentLockedAmount[msg.sender] >= arg1
    require arg1 <= sub_8f89a447
    require arg1 + currentLockedAmount[msg.sender] >= currentLockedAmount[msg.sender]
    require arg1 + currentLockedAmount[msg.sender] <= sub_8f89a447
    stor26[msg.sender] = 1
    if not currentLockedAmount[msg.sender]:
        require stor4 <= block.number
        lastTimeRewarded[msg.sender] = block.number - stor4
    require arg1 + currentLockedAmount[msg.sender] >= currentLockedAmount[msg.sender]
    currentLockedAmount[msg.sender] += arg1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    allowance[msg.sender][address(arg1)] = arg2
    mem[ceil32(arg3.length) + 128] = arg2
    emit Approval(address arg1, address arg2, uint256 arg3):
                  Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                  mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)],
                  msg.sender,
                  arg1,
    require ext_code.size(arg1)
    call arg1 with:
         gas gas_remaining wei
        args msg.sender, arg2, this.address, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0, 1
}

function sub_35823e80(?) {
    require calldata.size - 4 >= 32
    require stor4 <= block.number
    require lastTimeRewarded[address(arg1)] <= block.number - stor4
    require stor16
    if not sub_a941c122:
        if sub_96058e9b:
            if not 0 / sub_96058e9b:
                return 0
            if block.number - stor4 - lastTimeRewarded[address(arg1)] / stor16 * 0 / sub_96058e9b / 0 / sub_96058e9b == block.number - stor4 - lastTimeRewarded[address(arg1)] / stor16:
                return (block.number - stor4 - lastTimeRewarded[address(arg1)] / stor16 * 0 / sub_96058e9b)
    else:
        if currentLockedAmount[address(arg1)] * sub_a941c122 / sub_a941c122 == currentLockedAmount[address(arg1)]:
            if sub_96058e9b:
                if not currentLockedAmount[address(arg1)] * sub_a941c122 / sub_96058e9b:
                    return 0
                if block.number - stor4 - lastTimeRewarded[address(arg1)] / stor16 * currentLockedAmount[address(arg1)] * sub_a941c122 / sub_96058e9b / currentLockedAmount[address(arg1)] * sub_a941c122 / sub_96058e9b == block.number - stor4 - lastTimeRewarded[address(arg1)] / stor16:
                    return (block.number - stor4 - lastTimeRewarded[address(arg1)] / stor16 * currentLockedAmount[address(arg1)] * sub_a941c122 / sub_96058e9b)
    revert
}

function publicMine() payable {
    require sub_68c64689 > sub_0ad61b5f
    require stor4 <= block.number
    require block.number - stor4 > sub_2e2a3101[msg.sender]
    require stor4 <= block.number
    require not stor22[block.number - stor4]
    if not sub_0ad61b5f:
        stor9 = 0
    else:
        require 20 * sub_0ad61b5f / sub_0ad61b5f == 20
        stor9 = 20 * sub_0ad61b5f / 100
    if not sub_0ad61b5f:
        stor10 = 0
        require ext_code.size(this.address)
        call this.address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
    else:
        require 80 * sub_0ad61b5f / sub_0ad61b5f == 80
        stor10 = 80 * sub_0ad61b5f / 100
        require ext_code.size(this.address)
        call this.address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 80 * sub_0ad61b5f / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(this.address)
    call this.address.0xa9059cbb with:
         gas gas_remaining wei
        args stor18, stor9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_0ad61b5f <= sub_68c64689
    sub_68c64689 -= sub_0ad61b5f
    require stor4 <= block.number
    stor22[block.number - stor4] = 1
    require stor19 >= 0
    sub_2e2a3101[msg.sender] = stor19 + block.number - stor4
}

function sub_f7db31f1(?) {
    require calldata.size - 4 >= 32
    if not stor26[address(arg1)]:
        return 0
    require stor4 <= block.number
    require lastTimeRewarded[address(arg1)] <= block.number - stor4
    require stor16
    if not sub_a941c122:
        if sub_96058e9b:
            if not 0 / sub_96058e9b:
                if currentLockedAmount[address(arg1)] >= currentLockedAmount[address(arg1)]:
                    return currentLockedAmount[address(arg1)]
            else:
                if block.number - stor4 - lastTimeRewarded[address(arg1)] / stor16 * 0 / sub_96058e9b / 0 / sub_96058e9b == block.number - stor4 - lastTimeRewarded[address(arg1)] / stor16:
                    if (block.number - stor4 - lastTimeRewarded[address(arg1)] / stor16 * 0 / sub_96058e9b) + currentLockedAmount[address(arg1)] >= currentLockedAmount[address(arg1)]:
                        return ((block.number - stor4 - lastTimeRewarded[address(arg1)] / stor16 * 0 / sub_96058e9b) + currentLockedAmount[address(arg1)])
    else:
        if currentLockedAmount[address(arg1)] * sub_a941c122 / sub_a941c122 == currentLockedAmount[address(arg1)]:
            if sub_96058e9b:
                if not currentLockedAmount[address(arg1)] * sub_a941c122 / sub_96058e9b:
                    if currentLockedAmount[address(arg1)] >= currentLockedAmount[address(arg1)]:
                        return currentLockedAmount[address(arg1)]
                else:
                    if block.number - stor4 - lastTimeRewarded[address(arg1)] / stor16 * currentLockedAmount[address(arg1)] * sub_a941c122 / sub_96058e9b / currentLockedAmount[address(arg1)] * sub_a941c122 / sub_96058e9b == block.number - stor4 - lastTimeRewarded[address(arg1)] / stor16:
                        if (block.number - stor4 - lastTimeRewarded[address(arg1)] / stor16 * currentLockedAmount[address(arg1)] * sub_a941c122 / sub_96058e9b) + currentLockedAmount[address(arg1)] >= currentLockedAmount[address(arg1)]:
                            return ((block.number - stor4 - lastTimeRewarded[address(arg1)] / stor16 * currentLockedAmount[address(arg1)] * sub_a941c122 / sub_96058e9b) + currentLockedAmount[address(arg1)])
    revert
}

function sub_04cdc542(?) {
    require stor23[msg.sender]
    require sub_f12389f5 > 0
    require stor26[msg.sender]
    require stor4 <= block.number
    require lastTimeRewarded[address(msg.sender)] <= block.number - stor4
    require stor16
    if not sub_a941c122:
        require sub_96058e9b
        if not 0 / sub_96058e9b:
            require ext_code.size(this.address)
            call this.address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(this.address)
            call this.address.0xa9059cbb with:
                 gas gas_remaining wei
                args stor18, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require stor4 <= block.number
            lastTimeRewarded[msg.sender] = block.number - stor4
            require 0 <= sub_f12389f5
        require block.number - stor4 - lastTimeRewarded[address(msg.sender)] / stor16 * 0 / sub_96058e9b / 0 / sub_96058e9b == block.number - stor4 - lastTimeRewarded[address(msg.sender)] / stor16
        if not block.number - stor4 - lastTimeRewarded[address(msg.sender)] / stor16 * 0 / sub_96058e9b:
            require ext_code.size(this.address)
            call this.address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0
        else:
            require 80 * block.number - stor4 - lastTimeRewarded[address(msg.sender)] / stor16 * 0 / sub_96058e9b / block.number - stor4 - lastTimeRewarded[address(msg.sender)] / stor16 * 0 / sub_96058e9b == 80
            require ext_code.size(this.address)
            call this.address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 80 * block.number - stor4 - lastTimeRewarded[address(msg.sender)] / stor16 * 0 / sub_96058e9b / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not block.number - stor4 - lastTimeRewarded[address(msg.sender)] / stor16 * 0 / sub_96058e9b:
            require ext_code.size(this.address)
            call this.address.0xa9059cbb with:
                 gas gas_remaining wei
                args stor18, 0
        else:
            require 20 * block.number - stor4 - lastTimeRewarded[address(msg.sender)] / stor16 * 0 / sub_96058e9b / block.number - stor4 - lastTimeRewarded[address(msg.sender)] / stor16 * 0 / sub_96058e9b == 20
            require ext_code.size(this.address)
            call this.address.0xa9059cbb with:
                 gas gas_remaining wei
                args stor18, 20 * block.number - stor4 - lastTimeRewarded[address(msg.sender)] / stor16 * 0 / sub_96058e9b / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require stor4 <= block.number
        lastTimeRewarded[msg.sender] = block.number - stor4
        require block.number - stor4 - lastTimeRewarded[address(msg.sender)] / stor16 * 0 / sub_96058e9b <= sub_f12389f5
        sub_f12389f5 += -1 * block.number - stor4 - lastTimeRewarded[address(msg.sender)] / stor16 * 0 / sub_96058e9b
    else:
        require currentLockedAmount[address(msg.sender)] * sub_a941c122 / sub_a941c122 == currentLockedAmount[address(msg.sender)]
        require sub_96058e9b
        if not currentLockedAmount[address(msg.sender)] * sub_a941c122 / sub_96058e9b:
            require ext_code.size(this.address)
            call this.address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(this.address)
            call this.address.0xa9059cbb with:
                 gas gas_remaining wei
                args stor18, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require stor4 <= block.number
            lastTimeRewarded[msg.sender] = block.number - stor4
            require 0 <= sub_f12389f5
        require block.number - stor4 - lastTimeRewarded[address(msg.sender)] / stor16 * currentLockedAmount[address(msg.sender)] * sub_a941c122 / sub_96058e9b / currentLockedAmount[address(msg.sender)] * sub_a941c122 / sub_96058e9b == block.number - stor4 - lastTimeRewarded[address(msg.sender)] / stor16
        if not block.number - stor4 - lastTimeRewarded[address(msg.sender)] / stor16 * currentLockedAmount[address(msg.sender)] * sub_a941c122 / sub_96058e9b:
            require ext_code.size(this.address)
            call this.address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0
        else:
            require 80 * block.number - stor4 - lastTimeRewarded[address(msg.sender)] / stor16 * currentLockedAmount[address(msg.sender)] * sub_a941c122 / sub_96058e9b / block.number - stor4 - lastTimeRewarded[address(msg.sender)] / stor16 * currentLockedAmount[address(msg.sender)] * sub_a941c122 / sub_96058e9b == 80
            require ext_code.size(this.address)
            call this.address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 80 * block.number - stor4 - lastTimeRewarded[address(msg.sender)] / stor16 * currentLockedAmount[address(msg.sender)] * sub_a941c122 / sub_96058e9b / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not block.number - stor4 - lastTimeRewarded[address(msg.sender)] / stor16 * currentLockedAmount[address(msg.sender)] * sub_a941c122 / sub_96058e9b:
            require ext_code.size(this.address)
            call this.address.0xa9059cbb with:
                 gas gas_remaining wei
                args stor18, 0
        else:
            require 20 * block.number - stor4 - lastTimeRewarded[address(msg.sender)] / stor16 * currentLockedAmount[address(msg.sender)] * sub_a941c122 / sub_96058e9b / block.number - stor4 - lastTimeRewarded[address(msg.sender)] / stor16 * currentLockedAmount[address(msg.sender)] * sub_a941c122 / sub_96058e9b == 20
            require ext_code.size(this.address)
            call this.address.0xa9059cbb with:
                 gas gas_remaining wei
                args stor18, 20 * block.number - stor4 - lastTimeRewarded[address(msg.sender)] / stor16 * currentLockedAmount[address(msg.sender)] * sub_a941c122 / sub_96058e9b / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require stor4 <= block.number
        lastTimeRewarded[msg.sender] = block.number - stor4
        require block.number - stor4 - lastTimeRewarded[address(msg.sender)] / stor16 * currentLockedAmount[address(msg.sender)] * sub_a941c122 / sub_96058e9b <= sub_f12389f5
        sub_f12389f5 += -1 * block.number - stor4 - lastTimeRewarded[address(msg.sender)] / stor16 * currentLockedAmount[address(msg.sender)] * sub_a941c122 / sub_96058e9b
}

function sub_9e85ef41(?) {
    if sub_f12389f5 >= 218750000 * 10^18:
        if sub_f12389f5 >= 206250000 * 10^18:
            if sub_f12389f5 >= 187500000 * 10^18:
                if sub_f12389f5 >= 162500000 * 10^18:
                    if sub_f12389f5 >= 131250000 * 10^18:
                        if sub_f12389f5 >= 93750000 * 10^18:
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                        else:
                            if sub_f12389f5 > 50000000 * 10^18:
                                sub_a941c122 = 269
                                sub_96058e9b = 100000
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                    else:
                        if sub_f12389f5 > 93750000 * 10^18:
                            sub_a941c122 = 43
                            sub_96058e9b = 10000
                        if sub_f12389f5 >= 93750000 * 10^18:
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                        else:
                            if sub_f12389f5 > 50000000 * 10^18:
                                sub_a941c122 = 269
                                sub_96058e9b = 100000
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                else:
                    if sub_f12389f5 > 131250000 * 10^18:
                        sub_a941c122 = 307
                        sub_96058e9b = 50000
                    if sub_f12389f5 >= 131250000 * 10^18:
                        if sub_f12389f5 >= 93750000 * 10^18:
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                        else:
                            if sub_f12389f5 > 50000000 * 10^18:
                                sub_a941c122 = 269
                                sub_96058e9b = 100000
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                    else:
                        if sub_f12389f5 > 93750000 * 10^18:
                            sub_a941c122 = 43
                            sub_96058e9b = 10000
                        if sub_f12389f5 >= 93750000 * 10^18:
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                        else:
                            if sub_f12389f5 > 50000000 * 10^18:
                                sub_a941c122 = 269
                                sub_96058e9b = 100000
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
            else:
                if sub_f12389f5 > 162500000 * 10^18:
                    sub_a941c122 = 783
                    sub_96058e9b = 100000
                if sub_f12389f5 >= 162500000 * 10^18:
                    if sub_f12389f5 >= 131250000 * 10^18:
                        if sub_f12389f5 >= 93750000 * 10^18:
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                        else:
                            if sub_f12389f5 > 50000000 * 10^18:
                                sub_a941c122 = 269
                                sub_96058e9b = 100000
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                    else:
                        if sub_f12389f5 > 93750000 * 10^18:
                            sub_a941c122 = 43
                            sub_96058e9b = 10000
                        if sub_f12389f5 >= 93750000 * 10^18:
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                        else:
                            if sub_f12389f5 > 50000000 * 10^18:
                                sub_a941c122 = 269
                                sub_96058e9b = 100000
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                else:
                    if sub_f12389f5 > 131250000 * 10^18:
                        sub_a941c122 = 307
                        sub_96058e9b = 50000
                    if sub_f12389f5 >= 131250000 * 10^18:
                        if sub_f12389f5 >= 93750000 * 10^18:
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                        else:
                            if sub_f12389f5 > 50000000 * 10^18:
                                sub_a941c122 = 269
                                sub_96058e9b = 100000
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                    else:
                        if sub_f12389f5 > 93750000 * 10^18:
                            sub_a941c122 = 43
                            sub_96058e9b = 10000
                        if sub_f12389f5 >= 93750000 * 10^18:
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                        else:
                            if sub_f12389f5 > 50000000 * 10^18:
                                sub_a941c122 = 269
                                sub_96058e9b = 100000
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
        else:
            if sub_f12389f5 > 187500000 * 10^18:
                sub_a941c122 = 469
                sub_96058e9b = 50000
            if sub_f12389f5 >= 187500000 * 10^18:
                if sub_f12389f5 >= 162500000 * 10^18:
                    if sub_f12389f5 >= 131250000 * 10^18:
                        if sub_f12389f5 >= 93750000 * 10^18:
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                        else:
                            if sub_f12389f5 > 50000000 * 10^18:
                                sub_a941c122 = 269
                                sub_96058e9b = 100000
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                    else:
                        if sub_f12389f5 > 93750000 * 10^18:
                            sub_a941c122 = 43
                            sub_96058e9b = 10000
                        if sub_f12389f5 >= 93750000 * 10^18:
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                        else:
                            if sub_f12389f5 > 50000000 * 10^18:
                                sub_a941c122 = 269
                                sub_96058e9b = 100000
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                else:
                    if sub_f12389f5 > 131250000 * 10^18:
                        sub_a941c122 = 307
                        sub_96058e9b = 50000
                    if sub_f12389f5 >= 131250000 * 10^18:
                        if sub_f12389f5 >= 93750000 * 10^18:
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                        else:
                            if sub_f12389f5 > 50000000 * 10^18:
                                sub_a941c122 = 269
                                sub_96058e9b = 100000
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                    else:
                        if sub_f12389f5 > 93750000 * 10^18:
                            sub_a941c122 = 43
                            sub_96058e9b = 10000
                        if sub_f12389f5 >= 93750000 * 10^18:
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                        else:
                            if sub_f12389f5 > 50000000 * 10^18:
                                sub_a941c122 = 269
                                sub_96058e9b = 100000
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
            else:
                if sub_f12389f5 > 162500000 * 10^18:
                    sub_a941c122 = 783
                    sub_96058e9b = 100000
                if sub_f12389f5 >= 162500000 * 10^18:
                    if sub_f12389f5 >= 131250000 * 10^18:
                        if sub_f12389f5 >= 93750000 * 10^18:
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                        else:
                            if sub_f12389f5 > 50000000 * 10^18:
                                sub_a941c122 = 269
                                sub_96058e9b = 100000
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                    else:
                        if sub_f12389f5 > 93750000 * 10^18:
                            sub_a941c122 = 43
                            sub_96058e9b = 10000
                        if sub_f12389f5 >= 93750000 * 10^18:
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                        else:
                            if sub_f12389f5 > 50000000 * 10^18:
                                sub_a941c122 = 269
                                sub_96058e9b = 100000
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                else:
                    if sub_f12389f5 > 131250000 * 10^18:
                        sub_a941c122 = 307
                        sub_96058e9b = 50000
                    if sub_f12389f5 >= 131250000 * 10^18:
                        if sub_f12389f5 >= 93750000 * 10^18:
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                        else:
                            if sub_f12389f5 > 50000000 * 10^18:
                                sub_a941c122 = 269
                                sub_96058e9b = 100000
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                    else:
                        if sub_f12389f5 > 93750000 * 10^18:
                            sub_a941c122 = 43
                            sub_96058e9b = 10000
                        if sub_f12389f5 >= 93750000 * 10^18:
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                        else:
                            if sub_f12389f5 > 50000000 * 10^18:
                                sub_a941c122 = 269
                                sub_96058e9b = 100000
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
    else:
        if sub_f12389f5 > 206250000 * 10^18:
            sub_a941c122 = 5410
            sub_96058e9b = 500000
        if sub_f12389f5 >= 206250000 * 10^18:
            if sub_f12389f5 >= 187500000 * 10^18:
                if sub_f12389f5 >= 162500000 * 10^18:
                    if sub_f12389f5 >= 131250000 * 10^18:
                        if sub_f12389f5 >= 93750000 * 10^18:
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                        else:
                            if sub_f12389f5 > 50000000 * 10^18:
                                sub_a941c122 = 269
                                sub_96058e9b = 100000
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                    else:
                        if sub_f12389f5 > 93750000 * 10^18:
                            sub_a941c122 = 43
                            sub_96058e9b = 10000
                        if sub_f12389f5 >= 93750000 * 10^18:
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                        else:
                            if sub_f12389f5 > 50000000 * 10^18:
                                sub_a941c122 = 269
                                sub_96058e9b = 100000
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                else:
                    if sub_f12389f5 > 131250000 * 10^18:
                        sub_a941c122 = 307
                        sub_96058e9b = 50000
                    if sub_f12389f5 >= 131250000 * 10^18:
                        if sub_f12389f5 >= 93750000 * 10^18:
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                        else:
                            if sub_f12389f5 > 50000000 * 10^18:
                                sub_a941c122 = 269
                                sub_96058e9b = 100000
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                    else:
                        if sub_f12389f5 > 93750000 * 10^18:
                            sub_a941c122 = 43
                            sub_96058e9b = 10000
                        if sub_f12389f5 >= 93750000 * 10^18:
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                        else:
                            if sub_f12389f5 > 50000000 * 10^18:
                                sub_a941c122 = 269
                                sub_96058e9b = 100000
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
            else:
                if sub_f12389f5 > 162500000 * 10^18:
                    sub_a941c122 = 783
                    sub_96058e9b = 100000
                if sub_f12389f5 >= 162500000 * 10^18:
                    if sub_f12389f5 >= 131250000 * 10^18:
                        if sub_f12389f5 >= 93750000 * 10^18:
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                        else:
                            if sub_f12389f5 > 50000000 * 10^18:
                                sub_a941c122 = 269
                                sub_96058e9b = 100000
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                    else:
                        if sub_f12389f5 > 93750000 * 10^18:
                            sub_a941c122 = 43
                            sub_96058e9b = 10000
                        if sub_f12389f5 >= 93750000 * 10^18:
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                        else:
                            if sub_f12389f5 > 50000000 * 10^18:
                                sub_a941c122 = 269
                                sub_96058e9b = 100000
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                else:
                    if sub_f12389f5 > 131250000 * 10^18:
                        sub_a941c122 = 307
                        sub_96058e9b = 50000
                    if sub_f12389f5 >= 131250000 * 10^18:
                        if sub_f12389f5 >= 93750000 * 10^18:
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                        else:
                            if sub_f12389f5 > 50000000 * 10^18:
                                sub_a941c122 = 269
                                sub_96058e9b = 100000
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                    else:
                        if sub_f12389f5 > 93750000 * 10^18:
                            sub_a941c122 = 43
                            sub_96058e9b = 10000
                        if sub_f12389f5 >= 93750000 * 10^18:
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                        else:
                            if sub_f12389f5 > 50000000 * 10^18:
                                sub_a941c122 = 269
                                sub_96058e9b = 100000
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
        else:
            if sub_f12389f5 > 187500000 * 10^18:
                sub_a941c122 = 469
                sub_96058e9b = 50000
            if sub_f12389f5 >= 187500000 * 10^18:
                if sub_f12389f5 >= 162500000 * 10^18:
                    if sub_f12389f5 >= 131250000 * 10^18:
                        if sub_f12389f5 >= 93750000 * 10^18:
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                        else:
                            if sub_f12389f5 > 50000000 * 10^18:
                                sub_a941c122 = 269
                                sub_96058e9b = 100000
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                    else:
                        if sub_f12389f5 > 93750000 * 10^18:
                            sub_a941c122 = 43
                            sub_96058e9b = 10000
                        if sub_f12389f5 >= 93750000 * 10^18:
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                        else:
                            if sub_f12389f5 > 50000000 * 10^18:
                                sub_a941c122 = 269
                                sub_96058e9b = 100000
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                else:
                    if sub_f12389f5 > 131250000 * 10^18:
                        sub_a941c122 = 307
                        sub_96058e9b = 50000
                    if sub_f12389f5 >= 131250000 * 10^18:
                        if sub_f12389f5 >= 93750000 * 10^18:
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                        else:
                            if sub_f12389f5 > 50000000 * 10^18:
                                sub_a941c122 = 269
                                sub_96058e9b = 100000
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                    else:
                        if sub_f12389f5 > 93750000 * 10^18:
                            sub_a941c122 = 43
                            sub_96058e9b = 10000
                        if sub_f12389f5 >= 93750000 * 10^18:
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                        else:
                            if sub_f12389f5 > 50000000 * 10^18:
                                sub_a941c122 = 269
                                sub_96058e9b = 100000
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
            else:
                if sub_f12389f5 > 162500000 * 10^18:
                    sub_a941c122 = 783
                    sub_96058e9b = 100000
                if sub_f12389f5 >= 162500000 * 10^18:
                    if sub_f12389f5 >= 131250000 * 10^18:
                        if sub_f12389f5 >= 93750000 * 10^18:
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                        else:
                            if sub_f12389f5 > 50000000 * 10^18:
                                sub_a941c122 = 269
                                sub_96058e9b = 100000
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                    else:
                        if sub_f12389f5 > 93750000 * 10^18:
                            sub_a941c122 = 43
                            sub_96058e9b = 10000
                        if sub_f12389f5 >= 93750000 * 10^18:
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                        else:
                            if sub_f12389f5 > 50000000 * 10^18:
                                sub_a941c122 = 269
                                sub_96058e9b = 100000
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                else:
                    if sub_f12389f5 > 131250000 * 10^18:
                        sub_a941c122 = 307
                        sub_96058e9b = 50000
                    if sub_f12389f5 >= 131250000 * 10^18:
                        if sub_f12389f5 >= 93750000 * 10^18:
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                        else:
                            if sub_f12389f5 > 50000000 * 10^18:
                                sub_a941c122 = 269
                                sub_96058e9b = 100000
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                    else:
                        if sub_f12389f5 > 93750000 * 10^18:
                            sub_a941c122 = 43
                            sub_96058e9b = 10000
                        if sub_f12389f5 >= 93750000 * 10^18:
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
                        else:
                            if sub_f12389f5 > 50000000 * 10^18:
                                sub_a941c122 = 269
                                sub_96058e9b = 100000
                            if sub_f12389f5 < 50000000 * 10^18:
                                sub_a941c122 = 183
                                sub_96058e9b = 100000
}

function sub_47392ce4(?) {
    if sub_68c64689 >= 175000000 * 10^18:
        if sub_68c64689 >= 131250000 * 10^18:
            if sub_68c64689 >= 93750000 * 10^18:
                if sub_68c64689 >= 62500000 * 10^18:
                    if sub_68c64689 >= 37500000 * 10^18:
                        if sub_68c64689 >= 18750000 * 10^18:
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                        else:
                            if sub_68c64689 > 12500000 * 10^18:
                                sub_0ad61b5f = 8 * 10^17
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                    else:
                        if sub_68c64689 > 18750000 * 10^18:
                            sub_0ad61b5f = 15625 * 10^14
                        if sub_68c64689 >= 18750000 * 10^18:
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                        else:
                            if sub_68c64689 > 12500000 * 10^18:
                                sub_0ad61b5f = 8 * 10^17
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                else:
                    if sub_68c64689 > 37500000 * 10^18:
                        sub_0ad61b5f = 3125 * 10^15
                    if sub_68c64689 >= 37500000 * 10^18:
                        if sub_68c64689 >= 18750000 * 10^18:
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                        else:
                            if sub_68c64689 > 12500000 * 10^18:
                                sub_0ad61b5f = 8 * 10^17
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                    else:
                        if sub_68c64689 > 18750000 * 10^18:
                            sub_0ad61b5f = 15625 * 10^14
                        if sub_68c64689 >= 18750000 * 10^18:
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                        else:
                            if sub_68c64689 > 12500000 * 10^18:
                                sub_0ad61b5f = 8 * 10^17
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
            else:
                if sub_68c64689 > 62500000 * 10^18:
                    sub_0ad61b5f = 625 * 10^16
                if sub_68c64689 >= 62500000 * 10^18:
                    if sub_68c64689 >= 37500000 * 10^18:
                        if sub_68c64689 >= 18750000 * 10^18:
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                        else:
                            if sub_68c64689 > 12500000 * 10^18:
                                sub_0ad61b5f = 8 * 10^17
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                    else:
                        if sub_68c64689 > 18750000 * 10^18:
                            sub_0ad61b5f = 15625 * 10^14
                        if sub_68c64689 >= 18750000 * 10^18:
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                        else:
                            if sub_68c64689 > 12500000 * 10^18:
                                sub_0ad61b5f = 8 * 10^17
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                else:
                    if sub_68c64689 > 37500000 * 10^18:
                        sub_0ad61b5f = 3125 * 10^15
                    if sub_68c64689 >= 37500000 * 10^18:
                        if sub_68c64689 >= 18750000 * 10^18:
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                        else:
                            if sub_68c64689 > 12500000 * 10^18:
                                sub_0ad61b5f = 8 * 10^17
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                    else:
                        if sub_68c64689 > 18750000 * 10^18:
                            sub_0ad61b5f = 15625 * 10^14
                        if sub_68c64689 >= 18750000 * 10^18:
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                        else:
                            if sub_68c64689 > 12500000 * 10^18:
                                sub_0ad61b5f = 8 * 10^17
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
        else:
            if sub_68c64689 > 93750000 * 10^18:
                sub_0ad61b5f = 125 * 10^17
            if sub_68c64689 >= 93750000 * 10^18:
                if sub_68c64689 >= 62500000 * 10^18:
                    if sub_68c64689 >= 37500000 * 10^18:
                        if sub_68c64689 >= 18750000 * 10^18:
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                        else:
                            if sub_68c64689 > 12500000 * 10^18:
                                sub_0ad61b5f = 8 * 10^17
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                    else:
                        if sub_68c64689 > 18750000 * 10^18:
                            sub_0ad61b5f = 15625 * 10^14
                        if sub_68c64689 >= 18750000 * 10^18:
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                        else:
                            if sub_68c64689 > 12500000 * 10^18:
                                sub_0ad61b5f = 8 * 10^17
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                else:
                    if sub_68c64689 > 37500000 * 10^18:
                        sub_0ad61b5f = 3125 * 10^15
                    if sub_68c64689 >= 37500000 * 10^18:
                        if sub_68c64689 >= 18750000 * 10^18:
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                        else:
                            if sub_68c64689 > 12500000 * 10^18:
                                sub_0ad61b5f = 8 * 10^17
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                    else:
                        if sub_68c64689 > 18750000 * 10^18:
                            sub_0ad61b5f = 15625 * 10^14
                        if sub_68c64689 >= 18750000 * 10^18:
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                        else:
                            if sub_68c64689 > 12500000 * 10^18:
                                sub_0ad61b5f = 8 * 10^17
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
            else:
                if sub_68c64689 > 62500000 * 10^18:
                    sub_0ad61b5f = 625 * 10^16
                if sub_68c64689 >= 62500000 * 10^18:
                    if sub_68c64689 >= 37500000 * 10^18:
                        if sub_68c64689 >= 18750000 * 10^18:
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                        else:
                            if sub_68c64689 > 12500000 * 10^18:
                                sub_0ad61b5f = 8 * 10^17
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                    else:
                        if sub_68c64689 > 18750000 * 10^18:
                            sub_0ad61b5f = 15625 * 10^14
                        if sub_68c64689 >= 18750000 * 10^18:
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                        else:
                            if sub_68c64689 > 12500000 * 10^18:
                                sub_0ad61b5f = 8 * 10^17
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                else:
                    if sub_68c64689 > 37500000 * 10^18:
                        sub_0ad61b5f = 3125 * 10^15
                    if sub_68c64689 >= 37500000 * 10^18:
                        if sub_68c64689 >= 18750000 * 10^18:
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                        else:
                            if sub_68c64689 > 12500000 * 10^18:
                                sub_0ad61b5f = 8 * 10^17
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                    else:
                        if sub_68c64689 > 18750000 * 10^18:
                            sub_0ad61b5f = 15625 * 10^14
                        if sub_68c64689 >= 18750000 * 10^18:
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                        else:
                            if sub_68c64689 > 12500000 * 10^18:
                                sub_0ad61b5f = 8 * 10^17
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
    else:
        if sub_68c64689 > 131250000 * 10^18:
            sub_0ad61b5f = 25 * 10^18
        if sub_68c64689 >= 131250000 * 10^18:
            if sub_68c64689 >= 93750000 * 10^18:
                if sub_68c64689 >= 62500000 * 10^18:
                    if sub_68c64689 >= 37500000 * 10^18:
                        if sub_68c64689 >= 18750000 * 10^18:
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                        else:
                            if sub_68c64689 > 12500000 * 10^18:
                                sub_0ad61b5f = 8 * 10^17
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                    else:
                        if sub_68c64689 > 18750000 * 10^18:
                            sub_0ad61b5f = 15625 * 10^14
                        if sub_68c64689 >= 18750000 * 10^18:
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                        else:
                            if sub_68c64689 > 12500000 * 10^18:
                                sub_0ad61b5f = 8 * 10^17
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                else:
                    if sub_68c64689 > 37500000 * 10^18:
                        sub_0ad61b5f = 3125 * 10^15
                    if sub_68c64689 >= 37500000 * 10^18:
                        if sub_68c64689 >= 18750000 * 10^18:
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                        else:
                            if sub_68c64689 > 12500000 * 10^18:
                                sub_0ad61b5f = 8 * 10^17
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                    else:
                        if sub_68c64689 > 18750000 * 10^18:
                            sub_0ad61b5f = 15625 * 10^14
                        if sub_68c64689 >= 18750000 * 10^18:
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                        else:
                            if sub_68c64689 > 12500000 * 10^18:
                                sub_0ad61b5f = 8 * 10^17
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
            else:
                if sub_68c64689 > 62500000 * 10^18:
                    sub_0ad61b5f = 625 * 10^16
                if sub_68c64689 >= 62500000 * 10^18:
                    if sub_68c64689 >= 37500000 * 10^18:
                        if sub_68c64689 >= 18750000 * 10^18:
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                        else:
                            if sub_68c64689 > 12500000 * 10^18:
                                sub_0ad61b5f = 8 * 10^17
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                    else:
                        if sub_68c64689 > 18750000 * 10^18:
                            sub_0ad61b5f = 15625 * 10^14
                        if sub_68c64689 >= 18750000 * 10^18:
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                        else:
                            if sub_68c64689 > 12500000 * 10^18:
                                sub_0ad61b5f = 8 * 10^17
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                else:
                    if sub_68c64689 > 37500000 * 10^18:
                        sub_0ad61b5f = 3125 * 10^15
                    if sub_68c64689 >= 37500000 * 10^18:
                        if sub_68c64689 >= 18750000 * 10^18:
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                        else:
                            if sub_68c64689 > 12500000 * 10^18:
                                sub_0ad61b5f = 8 * 10^17
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                    else:
                        if sub_68c64689 > 18750000 * 10^18:
                            sub_0ad61b5f = 15625 * 10^14
                        if sub_68c64689 >= 18750000 * 10^18:
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                        else:
                            if sub_68c64689 > 12500000 * 10^18:
                                sub_0ad61b5f = 8 * 10^17
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
        else:
            if sub_68c64689 > 93750000 * 10^18:
                sub_0ad61b5f = 125 * 10^17
            if sub_68c64689 >= 93750000 * 10^18:
                if sub_68c64689 >= 62500000 * 10^18:
                    if sub_68c64689 >= 37500000 * 10^18:
                        if sub_68c64689 >= 18750000 * 10^18:
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                        else:
                            if sub_68c64689 > 12500000 * 10^18:
                                sub_0ad61b5f = 8 * 10^17
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                    else:
                        if sub_68c64689 > 18750000 * 10^18:
                            sub_0ad61b5f = 15625 * 10^14
                        if sub_68c64689 >= 18750000 * 10^18:
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                        else:
                            if sub_68c64689 > 12500000 * 10^18:
                                sub_0ad61b5f = 8 * 10^17
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                else:
                    if sub_68c64689 > 37500000 * 10^18:
                        sub_0ad61b5f = 3125 * 10^15
                    if sub_68c64689 >= 37500000 * 10^18:
                        if sub_68c64689 >= 18750000 * 10^18:
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                        else:
                            if sub_68c64689 > 12500000 * 10^18:
                                sub_0ad61b5f = 8 * 10^17
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                    else:
                        if sub_68c64689 > 18750000 * 10^18:
                            sub_0ad61b5f = 15625 * 10^14
                        if sub_68c64689 >= 18750000 * 10^18:
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                        else:
                            if sub_68c64689 > 12500000 * 10^18:
                                sub_0ad61b5f = 8 * 10^17
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
            else:
                if sub_68c64689 > 62500000 * 10^18:
                    sub_0ad61b5f = 625 * 10^16
                if sub_68c64689 >= 62500000 * 10^18:
                    if sub_68c64689 >= 37500000 * 10^18:
                        if sub_68c64689 >= 18750000 * 10^18:
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                        else:
                            if sub_68c64689 > 12500000 * 10^18:
                                sub_0ad61b5f = 8 * 10^17
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                    else:
                        if sub_68c64689 > 18750000 * 10^18:
                            sub_0ad61b5f = 15625 * 10^14
                        if sub_68c64689 >= 18750000 * 10^18:
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                        else:
                            if sub_68c64689 > 12500000 * 10^18:
                                sub_0ad61b5f = 8 * 10^17
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                else:
                    if sub_68c64689 > 37500000 * 10^18:
                        sub_0ad61b5f = 3125 * 10^15
                    if sub_68c64689 >= 37500000 * 10^18:
                        if sub_68c64689 >= 18750000 * 10^18:
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                        else:
                            if sub_68c64689 > 12500000 * 10^18:
                                sub_0ad61b5f = 8 * 10^17
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                    else:
                        if sub_68c64689 > 18750000 * 10^18:
                            sub_0ad61b5f = 15625 * 10^14
                        if sub_68c64689 >= 18750000 * 10^18:
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                        else:
                            if sub_68c64689 > 12500000 * 10^18:
                                sub_0ad61b5f = 8 * 10^17
                            if sub_68c64689 >= 12500000 * 10^18:
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
                            else:
                                if sub_68c64689 > 6250000 * 10^18:
                                    sub_0ad61b5f = 4 * 10^17
                                if sub_68c64689 < 6250000 * 10^18:
                                    sub_0ad61b5f = 2 * 10^17
}



}
