contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
mapping of uint8 stor6;
uint256 cap;
mapping of uint8 stor8;
uint8 stor9;
uint256 stor10; offset 1
uint256 mintAmount;
uint256 period;
uint256 sub_1efe9395;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function sub_1efe9395(?) payable {
    return sub_1efe9395
}

function decimals() payable {
    return decimals
}

function cap() payable {
    return cap
}

function isPauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor8[address(arg1)])
}

function mintAmount() payable {
    return mintAmount
}

function paused() payable {
    return bool(stor9)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function isMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor6[address(arg1)])
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function period() payable {
    return period
}

function _fallback() payable {
    revert
}

function sub_b5b80f12(?) payable {
    return (mintAmount - sub_1efe9395)
}

function unpause() payable {
    require msg.sender
    require stor8[address(msg.sender)]
    require stor9
    stor9 = 0
    emit Unpaused(msg.sender);
}

function pause() payable {
    require msg.sender
    require stor8[address(msg.sender)]
    require not stor9
    stor9 = 1
    emit Paused(msg.sender);
}

function renouncePauser() payable {
    require msg.sender
    require stor8[address(msg.sender)]
    stor8[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function renounceMinter() payable {
    require msg.sender
    require stor6[address(msg.sender)]
    stor6[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not stor9
    require msg.sender
    require not stor6[address(msg.sender)]
    revert
}

function addPauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor8[address(msg.sender)]
    require arg1
    require not stor8[address(arg1)]
    stor8[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function addMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor6[address(msg.sender)]
    require arg1
    require not stor6[address(arg1)]
    stor6[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not stor9
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require not stor9
    require msg.sender
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not stor9
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not stor9
    require arg2 <= allowance[msg.sender][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not stor9
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not stor9
    require arg1
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
    require arg2 <= allowance[address(arg1)][msg.sender]
    require msg.sender
    require arg1
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg2
    emit Approval((allowance[address(arg1)][msg.sender] - arg2), arg1, msg.sender);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require not stor9
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    require arg3 <= allowance[address(arg1)][msg.sender]
    require msg.sender
    require arg1
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function mintBulk(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require not stor9
    require msg.sender
    require stor6[address(msg.sender)]
    require arg1.length
    require arg2.length == arg1.length
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require cd[((32 * idx) + arg2 + 36)] + sub_1efe9395 >= sub_1efe9395
        sub_1efe9395 += cd[((32 * idx) + arg2 + 36)]
        require idx < arg1.length
        require idx < arg2.length
        require cd[((32 * idx) + arg2 + 36)] + totalSupply >= totalSupply
        require cd[((32 * idx) + arg2 + 36)] + totalSupply <= cap
        require address(cd[((32 * idx) + arg1 + 36)])
        require cd[((32 * idx) + arg2 + 36)] + totalSupply >= totalSupply
        totalSupply += cd[((32 * idx) + arg2 + 36)]
        require cd[((32 * idx) + arg2 + 36)] + balanceOf[address(cd[((32 * idx) + arg1 + 36)])] >= balanceOf[address(cd[((32 * idx) + arg1 + 36)])]
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 3
        balanceOf[address(cd[((32 * idx) + arg1 + 36)])] += cd[((32 * idx) + arg2 + 36)]
        mem[96] = cd[((32 * idx) + arg2 + 36)]
        emit Transfer(cd[((32 * idx) + arg2 + 36)], 0, address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
    require sub_1efe9395 <= mintAmount
    if sub_1efe9395 == mintAmount:
        if 0 == period:
            mintAmount = 10000 * 10^18
        require period + 1 >= period
        period++
        if not period + 1 % 1700:
            mintAmount = stor10
        sub_1efe9395 = 0
    return 1
}



}
