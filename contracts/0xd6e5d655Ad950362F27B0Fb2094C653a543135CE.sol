contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor11;
mapping of uint256 stor12;

function _fallback() payable {
    stor0 = 100 * 10^18
    require not msg.value
    stor11 = msg.sender
    stor12[address(msg.sender)] = stor0
    return code.data[97 len 2756]
}



// =====================  Runtime code  =====================


const name = 'TestShares'

const decimals = 18

const symbol = 'TSR'


uint256 totalSupply;
uint256 sub_135748a5;
uint256 dividend;
uint256 sub_6eba5b10;
uint256 sub_6e31d9cf;
array of address shareholder;
mapping of uint256 shareholderID;
array of address stor7;
mapping of uint256 stor8;
mapping of uint256 dividendOf;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function sub_135748a5(?) {
    return sub_135748a5
}

function totalSupply() {
    return totalSupply
}

function shareholderID(address arg1) {
    return shareholderID[arg1]
}

function shareholder(uint256 arg1) {
    require arg1 < shareholder.length
    return shareholder[arg1]
}

function sub_6e31d9cf(?) {
    return sub_6e31d9cf
}

function sub_6eba5b10(?) {
    return sub_6eba5b10
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function Dividend() {
    return dividend
}

function dividendOf(address arg1) {
    return dividendOf[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    stor7.length = 0
    idx = 0
    while stor7.length > idx:
        uint256(stor7[idx]) = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < shareholder.length:
        mem[0] = shareholder[idx]
        mem[32] = 8
        if stor8[stor5[idx]] > 0:
            stor7.length++
            if not stor7.length <= stor7.length + 1:
                s = stor7.length + sha3(7) + 1
                while sha3(7) + stor7.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            require idx < shareholder.length
            address(stor7[stor7.length]) = shareholder[idx]
            sub_6eba5b10 = stor8[stor5[idx]]
            dividend = dividendOf[stor5[idx]]
            sub_135748a5 = msg.value
            sub_6e31d9cf = msg.value / 100
            mem[0] = shareholder[idx]
            mem[32] = 9
            dividendOf[stor5[idx]] += sub_6e31d9cf * sub_6eba5b10
            sub_135748a5 = 0
        idx = idx + 1
        continue 
}



}
