contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor11;
mapping of uint256 stor12;

function _fallback() payable {
    stor0 = 10^6
    require not msg.value
    stor11 = msg.sender
    stor12[address(msg.sender)] = stor0
    return code.data[91 len 3271]
}



// =====================  Runtime code  =====================


const name = 'Example Fixed Supply Token'

const decimals = 18

const symbol = 'FIXED'


uint256 totalSupply;
uint256 sub_135748a5;
uint256 dividend;
uint256 sub_6eba5b10;
uint256 sub_6e31d9cf;
array of address shareholder;
mapping of uint256 myShareholderID;
array of address stor7;
mapping of uint256 balanceBy;
mapping of uint256 sub_0995e395;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function getMyShareholderID() {
    return myShareholderID[address(msg.sender)]
}

function sub_0995e395(?) {
    return sub_0995e395[address(msg.sender)]
}

function sub_135748a5(?) {
    return sub_135748a5
}

function getBalanceByAddress(address arg1) {
    return balanceBy[address(arg1)]
}

function totalSupply() {
    return totalSupply
}

function getShareholderAdressByID(uint256 arg1) {
    require arg1 < shareholder.length
    return shareholder[arg1]
}

function getMyShares() {
    return balanceBy[address(msg.sender)]
}

function shareholderID(address arg1) {
    return myShareholderID[arg1]
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
    return sub_0995e395[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdraw(uint256 arg1) payable {
    sub_0995e395[address(msg.sender)] = 0
    call msg.sender with:
       value sub_0995e395[address(msg.sender)] + msg.value wei
         gas 2300 * is_zero(value) wei
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
        if balanceBy[stor5[idx]] > 0:
            stor7.length++
            if not stor7.length <= stor7.length + 1:
                s = stor7.length + sha3(7) + 1
                while sha3(7) + stor7.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            require idx < shareholder.length
            address(stor7[stor7.length]) = shareholder[idx]
            sub_6eba5b10 = balanceBy[stor5[idx]]
            dividend = sub_0995e395[stor5[idx]]
            sub_135748a5 = msg.value
            sub_6e31d9cf = msg.value / 100
            mem[0] = shareholder[idx]
            mem[32] = 9
            sub_0995e395[stor5[idx]] += sub_6e31d9cf * sub_6eba5b10
            sub_135748a5 = 0
        idx = idx + 1
        continue 
}



}
