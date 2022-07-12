contract main {




// =====================  Runtime code  =====================


const name = ''

const decimals = 2

const symbol = ''


address stor0;
address stor1;
address stor2;
address stor3;
mapping of uint256 balanceOf;
uint256 totalSupply;
uint256 activeSupply;
mapping of uint256 sub_28adf836;
mapping of uint256 sub_5092d279;
uint256 sub_5acf7c6b;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function sub_28adf836(?) {
    require calldata.size - 4 >= 32
    return sub_28adf836[arg1]
}

function sub_5092d279(?) {
    require calldata.size - 4 >= 32
    return sub_5092d279[arg1]
}

function sub_5acf7c6b(?) {
    return sub_5acf7c6b
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function activeSupply() {
    return activeSupply
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function confirmOwner() {
    require msg.sender == stor1
    stor0 = stor1
    stor1 = 0
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    require arg1
    stor1 = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 <= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function _fallback() payable {
    if msg.sender == stor3:
        require msg.value >= 1
        require activeSupply
        sub_28adf836[stor9] = msg.value / activeSupply
        require sub_5acf7c6b + 1 >= sub_5acf7c6b
        sub_5acf7c6b++
    else:
        require balanceOf[msg.sender]
        if sub_5acf7c6b > sub_5092d279[msg.sender]:
            idx = sub_5acf7c6b
            while idx >= sub_5092d279[msg.sender]:
                if sub_28adf836[idx]:
                    require balanceOf[msg.sender] * sub_28adf836[idx] / sub_28adf836[idx] == balanceOf[msg.sender]
                    require balanceOf[msg.sender] * sub_28adf836[idx] >= 0
                require 1 <= idx
                mem[0] = msg.sender
                mem[32] = 8
                idx = idx - 1
                continue 
        sub_5092d279[msg.sender] = sub_5acf7c6b
        require msg.value >= 0
        if msg.value:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require calldata.size >= 68
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require stor2 != arg1
    if stor2 != msg.sender:
        if sub_5092d279[msg.sender] < sub_5acf7c6b:
            idx = sub_5acf7c6b
            while idx >= sub_5092d279[msg.sender]:
                if sub_28adf836[idx]:
                    require balanceOf[msg.sender] * sub_28adf836[idx] / sub_28adf836[idx] == balanceOf[msg.sender]
                    require balanceOf[msg.sender] * sub_28adf836[idx] >= 0
                require 1 <= idx
                mem[0] = msg.sender
                mem[32] = 8
                idx = idx - 1
                continue 
    if sub_5092d279[address(arg1)] < sub_5acf7c6b:
        if balanceOf[address(arg1)]:
            idx = sub_5acf7c6b
            while idx >= sub_5092d279[address(arg1)]:
                if sub_28adf836[idx]:
                    require balanceOf[address(arg1)] * sub_28adf836[idx] / sub_28adf836[idx] == balanceOf[address(arg1)]
                    require balanceOf[address(arg1)] * sub_28adf836[idx] >= 0
                require 1 <= idx
                mem[0] = arg1
                mem[32] = 8
                idx = idx - 1
                continue 
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    sub_5092d279[address(arg1)] = sub_5acf7c6b
    emit Transfer(arg2, msg.sender, arg1);
    if stor2 != msg.sender:
        sub_5092d279[msg.sender] = sub_5acf7c6b
    else:
        require arg2 + activeSupply >= activeSupply
        activeSupply += arg2
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require calldata.size >= 100
    require arg2
    require stor2 != arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    if stor2 != arg1:
        if sub_5092d279[address(arg1)] < sub_5acf7c6b:
            idx = sub_5acf7c6b
            while idx >= sub_5092d279[address(arg1)]:
                if sub_28adf836[idx]:
                    require balanceOf[address(arg1)] * sub_28adf836[idx] / sub_28adf836[idx] == balanceOf[address(arg1)]
                    require balanceOf[address(arg1)] * sub_28adf836[idx] >= 0
                require 1 <= idx
                mem[0] = arg1
                mem[32] = 8
                idx = idx - 1
                continue 
    if sub_5092d279[address(arg2)] < sub_5acf7c6b:
        if balanceOf[address(arg2)]:
            idx = sub_5acf7c6b
            while idx >= sub_5092d279[address(arg2)]:
                if sub_28adf836[idx]:
                    require balanceOf[address(arg2)] * sub_28adf836[idx] / sub_28adf836[idx] == balanceOf[address(arg2)]
                    require balanceOf[address(arg2)] * sub_28adf836[idx] >= 0
                require 1 <= idx
                mem[0] = arg2
                mem[32] = 8
                idx = idx - 1
                continue 
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    sub_5092d279[address(arg2)] = sub_5acf7c6b
    emit Transfer(arg3, arg1, arg2);
    if stor2 != arg1:
        sub_5092d279[address(arg1)] = sub_5acf7c6b
    else:
        require arg3 + activeSupply >= activeSupply
        activeSupply += arg3
    return 1
}



}
