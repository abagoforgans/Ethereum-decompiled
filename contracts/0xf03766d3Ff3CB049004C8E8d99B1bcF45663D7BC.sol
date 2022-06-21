contract main {




// =====================  Runtime code  =====================


uint8 stor2;
uint256 totalSupply;
uint256 stor4;
uint256 sub_0ad61b5f;
uint256 sub_68c64689;
uint256 sub_f12389f5;
uint256 stor9;
uint256 stor10;
uint256 sub_617459e5;
uint256 sub_7cd55bd9;
uint256 sub_6efcbe04;
uint256 sub_8f89a447;
uint256 stor17;
address stor18;
address stor19;
uint256 stor20;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor23;
mapping of uint8 stor24;
mapping of uint256 sub_7ec3fbfa;
mapping of uint256 lastTimeRewarded;
mapping of uint8 stor27;
mapping of uint256 currentLockedAmount;
mapping of uint256 sub_b1500682;

function sub_0ad61b5f(?) {
    return sub_0ad61b5f
}

function getCurrentLockedAmount() {
    return currentLockedAmount[msg.sender]
}

function sub_26f00c4d(?) {
    return bool(stor24[address(arg1)])
}

function sub_617459e5(?) {
    return sub_617459e5
}

function sub_68c64689(?) {
    return sub_68c64689
}

function sub_6efcbe04(?) {
    return sub_6efcbe04
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function sub_7cd55bd9(?) {
    return sub_7cd55bd9
}

function sub_7ec3fbfa(?) {
    return sub_7ec3fbfa[arg1]
}

function sub_8f89a447(?) {
    return sub_8f89a447
}

function lockedAmount(address arg1) {
    return currentLockedAmount[arg1]
}

function sub_a3f43d24(?) {
    return bool(stor24[arg1])
}

function sub_aea1eeef(?) {
    return bool(stor27[arg1])
}

function sub_b1500682(?) {
    return sub_b1500682[arg1]
}

function sub_b61a125e(?) {
    return bool(stor23[arg1])
}

function getTotalSupply() {
    return totalSupply
}

function lastTimeRewarded(address arg1) {
    return lastTimeRewarded[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function sub_f12389f5(?) {
    return sub_f12389f5
}

function sub_f31ac520(?) {
    return lastTimeRewarded[address(arg1)]
}

function _fallback() payable {
    revert
}

function sub_e79bafa1(?) {
    require msg.sender == stor18
    stor17 = arg1
}

function sub_d4f9674b(?) {
    require stor4 <= block.number
    return (block.number - stor4)
}

function sub_9696ccf2(?) {
    require stor24[msg.sender]
    stor27[msg.sender] = 0
    currentLockedAmount[msg.sender] = 0
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function getCurrentUnlockedAmount() {
    require currentLockedAmount[msg.sender] <= balanceOf[msg.sender]
    return (balanceOf[msg.sender] - currentLockedAmount[msg.sender])
}

function sub_b1a4904e(?) {
    require not stor24[msg.sender]
    require balanceOf[msg.sender] > sub_6efcbe04
    require not stor24[msg.sender]
    stor24[msg.sender] = 1
    require stor4 <= block.number
    sub_7ec3fbfa[msg.sender] = block.number - stor4
}

function burnFrom(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= allowance[address(arg1)][msg.sender]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][msg.sender] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, this.address, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
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

function adjustRewards() {
    require stor4 <= block.number
    if block.number - stor4 > 10:
        if block.number - stor4 < 100:
            sub_0ad61b5f = 40 * 10^stor2
            sub_617459e5 = 5
        if block.number - stor4 > 100:
            if block.number - stor4 < 1000:
                sub_0ad61b5f = 30 * 10^stor2
                sub_617459e5 = 4
            if block.number - stor4 > 1000:
                if block.number - stor4 < 10000:
                    sub_0ad61b5f = 20 * 10^stor2
                    sub_617459e5 = 3
}

function sub_cc5e6c50(?) {
    require stor24[msg.sender]
    require arg1 <= balanceOf[msg.sender]
    require arg1 <= sub_8f89a447
    require arg1 + currentLockedAmount[msg.sender] >= currentLockedAmount[msg.sender]
    require arg1 + currentLockedAmount[msg.sender] <= sub_8f89a447
    require arg1 > sub_6efcbe04
    stor27[msg.sender] = 1
    require arg1 + currentLockedAmount[msg.sender] >= currentLockedAmount[msg.sender]
    currentLockedAmount[msg.sender] += arg1
    require stor4 <= block.number
    lastTimeRewarded[msg.sender] = block.number - stor4
}

function sub_35823e80(?) {
    require stor4 <= block.number
    require lastTimeRewarded[address(arg1)] <= block.number - stor4
    require stor17
    if not sub_617459e5:
        return 0
    require currentLockedAmount[address(arg1)] * sub_617459e5 / sub_617459e5 == currentLockedAmount[address(arg1)]
    if not currentLockedAmount[address(arg1)] * sub_617459e5 / 100:
        return 0
    require block.number - stor4 - lastTimeRewarded[address(arg1)] / stor17 * currentLockedAmount[address(arg1)] * sub_617459e5 / 100 / currentLockedAmount[address(arg1)] * sub_617459e5 / 100 == block.number - stor4 - lastTimeRewarded[address(arg1)] / stor17
    return (block.number - stor4 - lastTimeRewarded[address(arg1)] / stor17 * currentLockedAmount[address(arg1)] * sub_617459e5 / 100)
}

function transfer(address arg1, uint256 arg2) {
    if not stor24[msg.sender]:
        require arg1
        require arg2 <= balanceOf[address(msg.sender)]
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[msg.sender] -= arg2
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
        if balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg1)]:
            return 1
    else:
        if arg2 <= balanceOf[msg.sender]:
            require balanceOf[msg.sender] - arg2 > currentLockedAmount[msg.sender]
            if balanceOf[msg.sender] - arg2 < sub_6efcbe04:
                stor24[msg.sender] = 0
            require arg1
            require arg2 <= balanceOf[address(msg.sender)]
            require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
            balanceOf[msg.sender] -= arg2
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
            if balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg1)]:
                return 1
    revert
}

function sub_f7db31f1(?) {
    if not stor27[address(arg1)]:
        return 0
    require stor4 <= block.number
    require lastTimeRewarded[address(arg1)] <= block.number - stor4
    require stor17
    if not sub_617459e5:
        if currentLockedAmount[address(arg1)] >= currentLockedAmount[address(arg1)]:
            return currentLockedAmount[address(arg1)]
    else:
        if currentLockedAmount[address(arg1)] * sub_617459e5 / sub_617459e5 == currentLockedAmount[address(arg1)]:
            if not currentLockedAmount[address(arg1)] * sub_617459e5 / 100:
                if currentLockedAmount[address(arg1)] >= currentLockedAmount[address(arg1)]:
                    return currentLockedAmount[address(arg1)]
            else:
                if block.number - stor4 - lastTimeRewarded[address(arg1)] / stor17 * currentLockedAmount[address(arg1)] * sub_617459e5 / 100 / currentLockedAmount[address(arg1)] * sub_617459e5 / 100 == block.number - stor4 - lastTimeRewarded[address(arg1)] / stor17:
                    if (block.number - stor4 - lastTimeRewarded[address(arg1)] / stor17 * currentLockedAmount[address(arg1)] * sub_617459e5 / 100) + currentLockedAmount[address(arg1)] >= currentLockedAmount[address(arg1)]:
                        return ((block.number - stor4 - lastTimeRewarded[address(arg1)] / stor17 * currentLockedAmount[address(arg1)] * sub_617459e5 / 100) + currentLockedAmount[address(arg1)])
    revert
}

function publicMine() payable {
    require sub_68c64689 > sub_0ad61b5f
    require stor4 <= block.number
    require block.number - stor4 > sub_b1500682[msg.sender]
    require stor4 <= block.number
    require not stor23[block.number - stor4]
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
        args stor19, stor9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_0ad61b5f <= sub_68c64689
    sub_68c64689 -= sub_0ad61b5f
    require stor4 <= block.number
    stor23[block.number - stor4] = 1
    require stor20 >= 0
    sub_b1500682[msg.sender] = stor20 + block.number - stor4
}

function sub_04cdc542(?) {
    require stor24[msg.sender]
    require 0 < sub_f12389f5
    require stor27[msg.sender]
    require stor4 <= block.number
    require lastTimeRewarded[address(msg.sender)] <= block.number - stor4
    require stor17
    if not sub_617459e5:
        require ext_code.size(this.address)
        call this.address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require stor4 <= block.number
        lastTimeRewarded[msg.sender] = block.number - stor4
        require 0 <= sub_f12389f5
    require currentLockedAmount[address(msg.sender)] * sub_617459e5 / sub_617459e5 == currentLockedAmount[address(msg.sender)]
    if not currentLockedAmount[address(msg.sender)] * sub_617459e5 / 100:
        require ext_code.size(this.address)
        call this.address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require stor4 <= block.number
        lastTimeRewarded[msg.sender] = block.number - stor4
        require 0 <= sub_f12389f5
    require block.number - stor4 - lastTimeRewarded[address(msg.sender)] / stor17 * currentLockedAmount[address(msg.sender)] * sub_617459e5 / 100 / currentLockedAmount[address(msg.sender)] * sub_617459e5 / 100 == block.number - stor4 - lastTimeRewarded[address(msg.sender)] / stor17
    require ext_code.size(this.address)
    call this.address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, block.number - stor4 - lastTimeRewarded[address(msg.sender)] / stor17 * currentLockedAmount[address(msg.sender)] * sub_617459e5 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require stor4 <= block.number
    lastTimeRewarded[msg.sender] = block.number - stor4
    require block.number - stor4 - lastTimeRewarded[address(msg.sender)] / stor17 * currentLockedAmount[address(msg.sender)] * sub_617459e5 / 100 <= sub_f12389f5
    sub_f12389f5 += -1 * block.number - stor4 - lastTimeRewarded[address(msg.sender)] / stor17 * currentLockedAmount[address(msg.sender)] * sub_617459e5 / 100
}



}
