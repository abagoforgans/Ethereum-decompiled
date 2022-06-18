contract main {




// =====================  Runtime code  =====================


const currentEthBlock = block.number

const DECIMALS = 18

const INITIAL_SUPPLY = 100000000 * 10^18

const TOTAL_SUPPLY = 1000000000 * 10^18


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
mapping of uint8 stor6;
uint256 cap;
uint256 initialBlockCount;
uint256 currentBlockNumber;
uint256 sub_9bee2df8;
uint256 sub_07d96078;
uint256 sub_9d1b51ad;
array of address stor14;

function name() {
    return name[0 len name.length]
}

function sub_07d96078(?) {
    return sub_07d96078
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function cap() {
    return cap
}

function currentBlockNumber() {
    return currentBlockNumber
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_9bee2df8(?) {
    return sub_9bee2df8
}

function sub_9d1b51ad(?) {
    return sub_9d1b51ad
}

function isMinter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor6[address(arg1)])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function initialBlockCount() {
    return initialBlockCount
}

function _fallback() payable {
    revert
}

function renounceMinter() {
    require msg.sender
    require stor6[address(msg.sender)]
    stor6[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function addMinter(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor6[address(msg.sender)]
    require arg1
    require not stor6[address(arg1)]
    stor6[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender
    require stor6[address(msg.sender)]
    require totalSupply + arg2 >= totalSupply
    require totalSupply + arg2 <= cap
    require arg1
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    emit Approval(allowance[address(arg1)][address(msg.sender)], arg1, msg.sender);
    return 1
}

function sub_bd087a37(?) {
    require currentBlockNumber <= block.number
    require block.number - currentBlockNumber >= sub_9d1b51ad
    currentBlockNumber = block.number
    idx = 0
    while idx < sub_9bee2df8:
        require idx < stor14.length
        require totalSupply + sub_07d96078 >= totalSupply
        require totalSupply + sub_07d96078 <= cap
        require stor14[idx]
        require totalSupply + sub_07d96078 >= totalSupply
        totalSupply += sub_07d96078
        require balanceOf[stor14[idx]] + sub_07d96078 >= balanceOf[stor14[idx]]
        mem[0] = stor14[idx]
        mem[32] = 3
        balanceOf[stor14[idx]] += sub_07d96078
        mem[96] = sub_07d96078
        emit Transfer(sub_07d96078, 0, stor14[idx]);
        idx = idx + 1
        continue 
    return 1
}



}
