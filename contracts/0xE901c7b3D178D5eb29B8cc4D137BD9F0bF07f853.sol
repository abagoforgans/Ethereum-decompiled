contract main {




// =====================  Runtime code  =====================


#
#  - getItem(uint256 arg1)
#
const name = 'Satoshis Closet'

const tokenMetadata(uint256 arg1) = Array(len=43, data='https://satoshiscloset.com/Satos', 'hiZero.json', Mask(88, -256, 'https://satoshiscloset.com/Satos', 'hiZero.json') << 256)

const tokenName = Array(len=34, data='Tom's Shirt / The Proof of Conce', 'pt', Mask(16, -256, 'Tom's Shirt / The Proof of Conce', 'pt') << 256)

const symbol = 'STCL'


address owner;
uint128 stor1;
array of struct stor2;
mapping of address itemIndexToOwner;
mapping of uint256 balanceOf;
mapping of address itemIndexToApproved;

function totalSupply() {
    return stor2.length
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function itemIndexToApproved(uint256 arg1) {
    return itemIndexToApproved[arg1]
}

function owner() {
    return owner
}

function ownershipTokenCount(address arg1) {
    return balanceOf[arg1]
}

function itemIndexToOwner(uint256 arg1) {
    return itemIndexToOwner[arg1]
}

function _fallback() payable {
    revert
}

function ownerOf(uint256 arg1) {
    owner = itemIndexToOwner[arg1]
    require owner
    return 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require itemIndexToOwner[arg2] == msg.sender
    itemIndexToApproved[arg2] = arg1
    emit Approval(msg.sender, arg1, arg2);
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require itemIndexToOwner[arg2] == msg.sender
    require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)]++
    itemIndexToOwner[arg2] = arg1
    if msg.sender:
        require 1 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)]--
        itemIndexToApproved[arg2] = 0
    emit Transfer(msg.sender, arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require itemIndexToApproved[arg3] == msg.sender
    require itemIndexToOwner[arg3] == arg1
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    itemIndexToOwner[arg3] = arg2
    if arg1:
        require 1 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)]--
        itemIndexToApproved[arg3] = 0
    emit Transfer(arg1, arg2, arg3);
}

function sub_45344e03(?) {
    require msg.sender == owner
    require stor1 > stor2.length
    stor2.length++
    stor2[stor2.length][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor[sha3((5 * stor2.length) + ('name', 'stor2', 2) + 1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor[sha3((5 * stor2.length) + ('name', 'stor2', 2) + 2)][].field_0 = Array(len=arg3.length, data=arg3[all])
    stor[sha3((5 * stor2.length) + ('name', 'stor2', 2) + 3)][].field_0 = Array(len=arg4.length, data=arg4[all])
    stor2[stor2.length].field_1024 = arg5
    require balanceOf[stor0] + 1 >= balanceOf[stor0]
    balanceOf[stor0]++
    itemIndexToOwner[stor2.length + 1] = owner
    emit Transfer(0, owner, stor2.length + 1);
    return (stor2.length + 1)
}

function tokensOfOwner(address arg1) {
    if not balanceOf[address(arg1)]:
        return ''
    if balanceOf[address(arg1)]:
        mem[128 len 32 * balanceOf[address(arg1)]] = code.data[7304 len 32 * balanceOf[address(arg1)]]
    idx = 1
    s = 0
    while idx <= stor2.length:
        mem[0] = idx
        mem[32] = 3
        if itemIndexToOwner[idx] != arg1:
            idx = idx + 1
            s = s
            continue 
        require s < balanceOf[address(arg1)]
        mem[(32 * s) + 128] = idx
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * balanceOf[address(arg1)]) + 192 len floor32(balanceOf[address(arg1)])] = mem[128 len floor32(balanceOf[address(arg1)])]
    return Array(len=balanceOf[address(arg1)], data=mem[128 len floor32(balanceOf[address(arg1)])], mem[(32 * balanceOf[address(arg1)]) + floor32(balanceOf[address(arg1)]) + 192 len (32 * balanceOf[address(arg1)]) - floor32(balanceOf[address(arg1)])]), 
}



}
