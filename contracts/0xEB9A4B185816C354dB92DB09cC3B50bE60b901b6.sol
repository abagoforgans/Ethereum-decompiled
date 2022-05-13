contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor1;
uint8 stor3; offset 160
address stor3;
mapping of uint8 stor4;

function _fallback() payable {
    uint8(stor3.field_160) = 0
    require not msg.value
    address(stor3.field_0) = msg.sender
    require code.data[4199 len 20]
    require code.data[4199 len 20] != this.address
    require code.data[4199 len 20] != msg.sender
    stor4[code.data[4199 len 20]] = 1
    stor1 = 300000000 * 10^18
    stor0[code.data[4199 len 20]] = 300000000 * 10^18
    emit Transfer(300000000 * 10^18, 0, code.data[4199 len 20]);
    require address(stor3.field_0) == msg.sender
    require code.data[4199 len 20]
    emit OwnershipTransferred(address(stor3.field_0), code.data[4199 len 20]);
    address(stor3.field_0) = code.data[4199 len 20]
    return code.data[471 len 3716]
}



// =====================  Runtime code  =====================


const name = 'OriginSport Token'

const decimals = 18

const symbol = 'ORS'

const INITIAL_SUPPLY = 300000000 * 10^18


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor3; offset 160
address owner;
mapping of uint8 stor4;

function totalSupply() {
    return totalSupply
}

function whitelistedTransfer(address arg1) {
    return bool(stor4[arg1])
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function transferable() {
    return bool(stor3)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function activeTransfer() {
    require owner == msg.sender
    stor3 = 1
}

function addWhitelistedTransfer(address arg1) {
    require owner == msg.sender
    stor4[address(arg1)] = 1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
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

function burn(uint256 arg1) {
    if not stor3:
        require stor4[address(msg.sender)]
    require owner == msg.sender
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg1 != this.address
    if not stor3:
        require stor4[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg2 != this.address
    if not stor3:
        require stor4[address(msg.sender)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function batchTransfer(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if stor3:
        require arg1.length > 0
        require arg1.length <= 20
        if not arg1.length:
            require arg2 > 0
            require balanceOf[address(msg.sender)] >= 0
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                _94 = mem[(32 * idx) + 128]
                require mem[(32 * idx) + 140 len 20]
                require mem[(32 * idx) + 140 len 20] != this.address
                if not stor3:
                    require stor4[address(msg.sender)]
                require mem[(32 * idx) + 140 len 20]
                require arg2 <= balanceOf[address(msg.sender)]
                require arg2 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg2
                require arg2 + balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 0
                balanceOf[address(mem[(32 * idx) + 128])] = arg2 + balanceOf[mem[(32 * idx) + 140 len 20]]
                mem[(32 * arg1.length) + 128] = arg2
                emit Transfer(arg2, msg.sender, address(_94));
                idx = idx + 1
                continue 
        else:
            require arg2 * arg1.length / arg1.length == arg2
            require arg2 > 0
            require balanceOf[address(msg.sender)] >= arg2 * arg1.length
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                _91 = mem[(32 * idx) + 128]
                require mem[(32 * idx) + 140 len 20]
                require mem[(32 * idx) + 140 len 20] != this.address
                if not stor3:
                    require stor4[address(msg.sender)]
                require mem[(32 * idx) + 140 len 20]
                require arg2 <= balanceOf[address(msg.sender)]
                require arg2 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg2
                require arg2 + balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 0
                balanceOf[address(mem[(32 * idx) + 128])] = arg2 + balanceOf[mem[(32 * idx) + 140 len 20]]
                mem[(32 * arg1.length) + 128] = arg2
                emit Transfer(arg2, msg.sender, address(_91));
                idx = idx + 1
                continue 
    else:
        require stor4[address(msg.sender)]
        require arg1.length > 0
        require arg1.length <= 20
        if not arg1.length:
            require arg2 > 0
            require balanceOf[address(msg.sender)] >= 0
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                _100 = mem[(32 * idx) + 128]
                require mem[(32 * idx) + 140 len 20]
                require mem[(32 * idx) + 140 len 20] != this.address
                if not stor3:
                    require stor4[address(msg.sender)]
                require mem[(32 * idx) + 140 len 20]
                require arg2 <= balanceOf[address(msg.sender)]
                require arg2 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg2
                require arg2 + balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 0
                balanceOf[address(mem[(32 * idx) + 128])] = arg2 + balanceOf[mem[(32 * idx) + 140 len 20]]
                mem[(32 * arg1.length) + 128] = arg2
                emit Transfer(arg2, msg.sender, address(_100));
                idx = idx + 1
                continue 
        else:
            require arg2 * arg1.length / arg1.length == arg2
            require arg2 > 0
            require balanceOf[address(msg.sender)] >= arg2 * arg1.length
            idx = 0
            while idx < arg1.length:
                require idx < arg1.length
                _97 = mem[(32 * idx) + 128]
                require mem[(32 * idx) + 140 len 20]
                require mem[(32 * idx) + 140 len 20] != this.address
                if not stor3:
                    require stor4[address(msg.sender)]
                require mem[(32 * idx) + 140 len 20]
                require arg2 <= balanceOf[address(msg.sender)]
                require arg2 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg2
                require arg2 + balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 0
                balanceOf[address(mem[(32 * idx) + 128])] = arg2 + balanceOf[mem[(32 * idx) + 140 len 20]]
                mem[(32 * arg1.length) + 128] = arg2
                emit Transfer(arg2, msg.sender, address(_97));
                idx = idx + 1
                continue 
    return 1
}



}
