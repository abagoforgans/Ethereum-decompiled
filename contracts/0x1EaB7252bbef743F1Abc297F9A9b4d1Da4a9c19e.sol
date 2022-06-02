contract main {




// =====================  Runtime code  =====================


const name = 'Andrey Voronkov Tokens'

const decimals = 18

const symbol = 'AVV'


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint32 commissionFee; offset 160
address owner;

function totalSupply() {
    return totalSupply
}

function commissionFee() {
    return commissionFee
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function setCommission(uint32 arg1) {
    require msg.sender == owner
    require arg1 < 100 * 10^6
    commissionFee = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 >= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
    else:
        require arg2 <= allowance[msg.sender][address(arg1)]
        allowance[msg.sender][address(arg1)] -= arg2
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    if owner == msg.sender:
        require 0 <= arg2
        require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if not arg2:
            require 0 <= arg2
            require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            require commissionFee * arg2 / arg2 == commissionFee
            require commissionFee * arg2 / 100 * 10^6 <= arg2
            if commissionFee * arg2 / 100 * 10^6:
                require (commissionFee * arg2 / 100 * 10^6) + balanceOf[stor3] >= balanceOf[stor3]
                balanceOf[stor3] += commissionFee * arg2 / 100 * 10^6
                emit Transfer((commissionFee * arg2 / 100 * 10^6), msg.sender, owner);
            require arg2 - (commissionFee * arg2 / 100 * 10^6) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] = arg2 - (commissionFee * arg2 / 100 * 10^6) + balanceOf[address(arg1)]
            emit Transfer((arg2 - (commissionFee * arg2 / 100 * 10^6)), msg.sender, arg1);
    return 1
}

function airdrop(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _30 = mem[(32 * idx) + 128]
        require arg2 <= balanceOf[msg.sender]
        require arg2 <= balanceOf[msg.sender]
        balanceOf[msg.sender] -= arg2
        if owner == msg.sender:
            require 0 <= arg2
            require arg2 + balanceOf[address(mem[(32 * idx) + 128])] >= balanceOf[address(mem[(32 * idx) + 128])]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 0
            balanceOf[address(mem[(32 * idx) + 128])] += arg2
            mem[(32 * arg1.length) + 128] = arg2
            emit Transfer(arg2, msg.sender, address(_30));
        else:
            if not arg2:
                require 0 <= arg2
                require arg2 + balanceOf[address(mem[(32 * idx) + 128])] >= balanceOf[address(mem[(32 * idx) + 128])]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 0
                balanceOf[address(mem[(32 * idx) + 128])] += arg2
                mem[(32 * arg1.length) + 128] = arg2
                emit Transfer(arg2, msg.sender, address(_30));
            else:
                require commissionFee * arg2 / arg2 == commissionFee
                require commissionFee * arg2 / 100 * 10^6 <= arg2
                if commissionFee * arg2 / 100 * 10^6:
                    require (commissionFee * arg2 / 100 * 10^6) + balanceOf[stor3] >= balanceOf[stor3]
                    balanceOf[stor3] += commissionFee * arg2 / 100 * 10^6
                    emit Transfer((commissionFee * arg2 / 100 * 10^6), msg.sender, owner);
                require arg2 - (commissionFee * arg2 / 100 * 10^6) + balanceOf[address(mem[(32 * idx) + 128])] >= balanceOf[address(mem[(32 * idx) + 128])]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 0
                balanceOf[address(mem[(32 * idx) + 128])] = arg2 - (commissionFee * arg2 / 100 * 10^6) + balanceOf[address(mem[(32 * idx) + 128])]
                mem[(32 * arg1.length) + 128] = arg2 - (commissionFee * arg2 / 100 * 10^6)
                emit Transfer((arg2 - (commissionFee * arg2 / 100 * 10^6)), msg.sender, address(_30));
        idx = idx + 1
        continue 
}



}
