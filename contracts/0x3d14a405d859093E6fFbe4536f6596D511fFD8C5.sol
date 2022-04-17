contract main {


// =======================  Init code  ======================


address stor5;

function _fallback() payable {
    stor5 = 0xd267bd27fd4c28c0c23f32acb03f1a26c6a9aa1e
    require not msg.value
    require code.data[3049 len 20]
    stor5 = code.data[3049 len 20]
    return code.data[139 len 2898]
}



// =====================  Runtime code  =====================


const name = 'Coin'

const decimals = 18

const symbol = 'COI'


mapping of uint256 balanceOf;
mapping of uint8 stor1;
mapping of uint256 allowance;
uint256 totalSupply;
array of address owners;
address icoContractAddress;

function owners(uint256 arg1) {
    require arg1 < owners.length
    return address(owners[arg1])
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function icoContract() {
    return icoContractAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function getOwnerCount() {
    return owners.length
}

function _fallback() payable {
    revert
}

function getOwner(uint256 arg1) {
    require arg1 < owners.length
    return address(owners[arg1]), balanceOf[address(stor4[arg1])]
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burnTokens(address arg1, uint256 arg2) {
    require icoContractAddress == msg.sender
    require arg1
    require arg2 > 0
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
}

function emitTokens(address arg1, uint256 arg2) {
    require icoContractAddress == msg.sender
    require arg1
    require arg2 > 0
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if not stor1[address(arg1)]:
        stor1[address(arg1)] = 1
        owners.length++
        if not owners.length <= owners.length + 1:
            idx = owners.length + 1
            while owners.length > idx:
                uint256(owners[idx]) = 0
                idx = idx + 1
                continue 
        address(owners[owners.length]) = arg1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    if not stor1[address(arg1)]:
        stor1[address(arg1)] = 1
        owners.length++
        if not owners.length <= owners.length + 1:
            idx = owners.length + 1
            while owners.length > idx:
                uint256(owners[idx]) = 0
                idx = idx + 1
                continue 
        address(owners[owners.length]) = arg1
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if not stor1[address(arg2)]:
        stor1[address(arg2)] = 1
        owners.length++
        if not owners.length <= owners.length + 1:
            idx = owners.length + 1
            while owners.length > idx:
                uint256(owners[idx]) = 0
                idx = idx + 1
                continue 
        address(owners[owners.length]) = arg2
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
