contract main {




// =====================  Runtime code  =====================


const name = 'woungbe'

const decimals = 8

const getTime = block.timestamp

const symbol = 'WBE'


uint256 totalSupply;
mapping of uint256 balanceOf;
uint8 stor2; offset 160
uint8 stor2; offset 168
uint128 stor2; offset 168
uint128 stor2; offset 160
address owner;
address adminAddress;
uint256 totallockedtime;
mapping of uint256 stor5;

function totalSupply() {
    return totalSupply
}

function pausedPublic() {
    return bool(uint8(stor2.field_160))
}

function pausedOwnerAdmin() {
    return bool(uint8(stor2.field_168))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function totallockedtime() {
    return totallockedtime
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function setTotalLockedTime(uint256 arg1) {
    require msg.sender == owner
    totallockedtime = arg1
}

function removeLockFund(address arg1) {
    require msg.sender == owner
    stor5[address(arg1)] = 0
    stor5[address(arg1)] = 0
}

function setLockFund(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 > block.timestamp
    stor5[address(arg1)] = arg2
}

function pause(bool arg1, bool arg2) {
    require msg.sender == owner
    if not arg1:
        require arg2 != 1
    Mask(96, 0, stor2.field_160) = Mask(96, 0, arg1)
    Mask(88, 0, stor2.field_168) = Mask(88, 0, arg2)
    emit PausePublic(arg1);
    emit PauseOwnerAdmin(arg2);
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
    return 1
}

function setLockFunds(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    require arg2 > block.timestamp
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 5
        stor5[mem[(32 * idx) + 140 len 20]] = arg2
        idx = idx + 1
        continue 
}

function removeLockFunds(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        stor5[mem[(32 * idx) + 140 len 20]] = 0
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 5
        stor5[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
}

function transfer(address arg1, uint256 arg2) {
    if adminAddress != msg.sender:
        require block.timestamp >= totallockedtime
        require block.timestamp >= stor5[address(msg.sender)]
    require arg1
    require arg1 != this.address
    if uint8(stor2.field_160):
        require not uint8(stor2.field_168)
        if adminAddress != msg.sender:
            require msg.sender == owner
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
