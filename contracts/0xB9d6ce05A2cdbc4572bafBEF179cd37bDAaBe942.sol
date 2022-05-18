contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
mapping of uint256 stor2;
array of address stor4;
mapping of uint8 stor5;
address stor6;
address stor7;
address stor8;
address stor9;

function _fallback() {
    stor0 = msg.sender
    stor1 = 200000000 * 10^18
    stor2[address(this.address)] = 200000000 * 10^18
    emit Transfer(200000000 * 10^18, 0, this.address);
    stor6 = code.data[9722 len 20]
    stor7 = code.data[9754 len 20]
    stor8 = code.data[9786 len 20]
    stor9 = code.data[9818 len 20]
    require msg.sender == stor0
    require code.data[9722 len 20]
    require 8 * stor1 / 100 > 0
    if not stor5[address(code.data[9710 len 32])]:
        stor4.length++
        if not stor4.length <= stor4.length + 1:
            idx = stor4.length + 1
            while stor4.length > idx:
                uint256(stor4[idx]) = 0
                idx = idx + 1
                continue 
        address(stor4[stor4.length]) = code.data[9722 len 20]
        stor5[address(code.data[9710 len 32])] = 1
    require 8 * stor1 / 100 <= stor2[address(this.address)]
    stor2[address(this.address)] -= 8 * stor1 / 100
    require stor2[address(code.data[9710 len 32])] + (8 * stor1 / 100) >= stor2[address(code.data[9710 len 32])]
    stor2[address(code.data[9710 len 32])] += 8 * stor1 / 100
    emit Transfer((8 * stor1 / 100), this.address, code.data[9722 len 20]);
    require msg.sender == stor0
    require code.data[9754 len 20]
    require 15 * stor1 / 100 > 0
    if not stor5[address(code.data[9742 len 32])]:
        stor4.length++
        if not stor4.length <= stor4.length + 1:
            idx = stor4.length + 1
            while stor4.length > idx:
                uint256(stor4[idx]) = 0
                idx = idx + 1
                continue 
        address(stor4[stor4.length]) = code.data[9754 len 20]
        stor5[address(code.data[9742 len 32])] = 1
    require 15 * stor1 / 100 <= stor2[address(this.address)]
    stor2[address(this.address)] -= 15 * stor1 / 100
    require stor2[address(code.data[9742 len 32])] + (15 * stor1 / 100) >= stor2[address(code.data[9742 len 32])]
    stor2[address(code.data[9742 len 32])] += 15 * stor1 / 100
    emit Transfer((15 * stor1 / 100), this.address, code.data[9754 len 20]);
    require msg.sender == stor0
    require code.data[9786 len 20]
    require 9 * stor1 / 100 > 0
    if not stor5[address(code.data[9774 len 32])]:
        stor4.length++
        if not stor4.length <= stor4.length + 1:
            idx = stor4.length + 1
            while stor4.length > idx:
                uint256(stor4[idx]) = 0
                idx = idx + 1
                continue 
        address(stor4[stor4.length]) = code.data[9786 len 20]
        stor5[address(code.data[9774 len 32])] = 1
    require 9 * stor1 / 100 <= stor2[address(this.address)]
    stor2[address(this.address)] -= 9 * stor1 / 100
    require stor2[address(code.data[9774 len 32])] + (9 * stor1 / 100) >= stor2[address(code.data[9774 len 32])]
    stor2[address(code.data[9774 len 32])] += 9 * stor1 / 100
    emit Transfer((9 * stor1 / 100), this.address, code.data[9786 len 20]);
    require msg.sender == stor0
    require code.data[9818 len 20]
    require 3 * stor1 / 100 > 0
    if not stor5[address(code.data[9806 len 32])]:
        stor4.length++
        if not stor4.length <= stor4.length + 1:
            idx = stor4.length + 1
            while stor4.length > idx:
                uint256(stor4[idx]) = 0
                idx = idx + 1
                continue 
        address(stor4[stor4.length]) = code.data[9818 len 20]
        stor5[address(code.data[9806 len 32])] = 1
    require 3 * stor1 / 100 <= stor2[address(this.address)]
    stor2[address(this.address)] -= 3 * stor1 / 100
    require stor2[address(code.data[9806 len 32])] + (3 * stor1 / 100) >= stor2[address(code.data[9806 len 32])]
    stor2[address(code.data[9806 len 32])] += 3 * stor1 / 100
    emit Transfer((3 * stor1 / 100), this.address, code.data[9818 len 20]);
    return code.data[1950 len 7760]
}



// =====================  Runtime code  =====================


const name = 'xCrypt'

const decimals = 18

const symbol = 'XCT'

const TEAM_SHARE = 15

const INITIAL_SUPPLY = 200000000 * 10^18

const RESERVES_SHARE = 9

const BOUNTIES_SHARE = 3

const ADVISORS_SHARE = 8


address owner;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of address investors;
mapping of uint8 stor5;
address advisorsWalletAddress;
address teamWalletAddress;
address reservesWalletAddress;
address bountiesWalletAddress;

function totalSupply() {
    return totalSupply
}

function investors(uint256 arg1) {
    require arg1 < investors.length
    return address(investors[arg1])
}

function reservesWallet() {
    return reservesWalletAddress
}

function bountiesWallet() {
    return bountiesWalletAddress
}

function teamWallet() {
    return teamWalletAddress
}

function advisorsWallet() {
    return advisorsWalletAddress
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

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function moneyBack(address arg1) {
    require msg.sender == owner
    require arg1
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function burnRemainder(uint256 arg1) {
    require msg.sender == owner
    require balanceOf[address(this.address)] <= totalSupply
    totalSupply -= balanceOf[address(this.address)]
    balanceOf[address(this.address)] = 0
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
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

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sendTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require arg2 > 0
    if not stor5[address(arg1)]:
        investors.length++
        if not investors.length <= investors.length + 1:
            idx = investors.length + 1
            while investors.length > idx:
                uint256(investors[idx]) = 0
                idx = idx + 1
                continue 
        address(investors[investors.length]) = arg1
        stor5[address(arg1)] = 1
    require arg2 <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, this.address, arg1);
}



}
