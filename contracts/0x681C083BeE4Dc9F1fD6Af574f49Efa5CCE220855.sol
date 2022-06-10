contract main {




// =====================  Runtime code  =====================


const name = Array(len=33, data='oceanprotocolbigchaindbgmbhtoken', 's', Mask(8, -256, 'oceanprotocolbigchaindbgmbhtoken', 's') << 256)

const decimals = 18

const initialSupply = 141000000 * 10^18

const symbol = 'OCNBDB'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
uint256 totalSupply;
mapping of uint8 stor5;
mapping of uint8 stor6;
array of address sub_aca49018;

function totalSupply() {
    return totalSupply
}

function whiteList(address arg1) {
    return bool(stor6[arg1])
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function sub_aca49018(?) {
    require arg1 < sub_aca49018.length
    return sub_aca49018[arg1]
}

function frozenAccount(address arg1) {
    return bool(stor5[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function kill() {
    if owner != msg.sender:
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor5[address(arg1)] = uint8(arg2)
    emit FundsFrozen(arg2, arg1);
}

function setWhiteList(address arg1, bool arg2) {
    require msg.sender == owner
    stor6[address(arg1)] = uint8(arg2)
    emit WhiteListUpdated(arg2, arg1);
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

function transfer(address arg1, uint256 arg2) {
    require arg2
    if stor5[msg.sender]:
        emit AccountFrozen(msg.sender);
        return 0
    require arg1
    sub_aca49018.length++
    sub_aca49018[sub_aca49018.length] = arg1
    require arg2 <= balanceOf[msg.sender]
    require arg1
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    if not stor5[address(arg1)]:
        if not stor6[address(arg1)]:
            stor5[address(arg1)] = 1
            emit FundsFrozen(1, arg1);
    return 1
}

function getAccountList() {
    require msg.sender == owner
    if sub_aca49018.length:
        mem[128 len 32 * sub_aca49018.length] = code.data[3970 len 32 * sub_aca49018.length]
    idx = 0
    while idx < sub_aca49018.length:
        mem[0] = 7
        require idx < sub_aca49018.length
        mem[(32 * idx) + 128] = sub_aca49018[idx]
        idx = idx + 1
        continue 
    mem[(32 * sub_aca49018.length) + 192 len floor32(sub_aca49018.length)] = mem[128 len floor32(sub_aca49018.length)]
    return Array(len=sub_aca49018.length, data=mem[128 len floor32(sub_aca49018.length)], mem[(32 * sub_aca49018.length) + floor32(sub_aca49018.length) + 192 len (32 * sub_aca49018.length) - floor32(sub_aca49018.length)]), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3
    if stor5[address(arg1)]:
        emit AccountFrozen(arg1);
        return 0
    require arg2
    sub_aca49018.length++
    sub_aca49018[sub_aca49018.length] = arg2
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
    if not stor5[address(arg2)]:
        if not stor6[address(arg2)]:
            stor5[address(arg2)] = 1
            emit FundsFrozen(1, arg2);
    return 1
}



}
