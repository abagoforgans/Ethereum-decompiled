contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint256 stor1;
uint8 stor19;

function _fallback() payable {
    stor19 = 1
    stor0 = msg.sender
    stor1[address(this.address)] = 10 * 10^6
    return code.data[181 len 16454]
}



// =====================  Runtime code  =====================


const name = 'Crypto Charity Token'

const totalSupply = 10 * 10^6

const tokenName = 'Crypto Charity Token'

const tokenSymbol = 'CCT'

const symbol = 'CCT'

const balanceOfContract = eth.balance(this.address)


address owner;
array of address balanceOf;
mapping of uint256 sub_618108ba;
mapping of address tokenOwners;
mapping of uint256 sub_724686d7;
mapping of uint8 stor5;
mapping of uint256 ownerTokens;
array of uint256 sub_d15c1841;
array of uint256 sub_96e73749;
array of uint256 descriptions;
array of uint256 itemName;
mapping of uint256 sub_9dd2fced;
mapping of uint256 breed;
mapping of uint256 sub_e3fa8661;
mapping of uint256 sub_64a701b7;
mapping of uint256 rewards;
mapping of uint256 sub_ea2d8027;
uint256 sub_005c1325;
uint8 stor19;
mapping of uint8 stor20;
mapping of uint256 sub_902b129f;
mapping of uint256 sub_37f778bc;
array of uint256 tokenMetadata;
array of address adopters;
array of uint256 stor99;
mapping of uint256 sub_e34eb088;
array of uint256 sub_9843e203;
mapping of uint8 stor425;

function sub_005c1325(?) {
    require owner == msg.sender
    return sub_005c1325
}

function tokenExists(uint256 arg1) {
    return bool(stor5[arg1])
}

function rewards(address arg1) {
    return rewards[arg1]
}

function sub_1f01eece(?) {
    return sub_64a701b7[arg1]
}

function ownerTokens(address arg1, uint256 arg2) {
    return ownerTokens[arg1][arg2]
}

function sub_373329d1(?) {
    return sub_d15c1841[arg1][0 len sub_d15c1841[arg1].length]
}

function sub_37f778bc(?) {
    return sub_37f778bc[arg1]
}

function adopters(uint256 arg1) {
    require arg1 < 100
    return adopters[arg1]
}

function names(uint256 arg1) {
    return itemName[arg1][0 len itemName[arg1].length]
}

function sub_47df645b(?) {
    require arg1 < 100
    return sub_9843e203[arg1]
}

function sub_4ce67746(?) {
    require owner == msg.sender
    return sub_9dd2fced[arg1]
}

function sub_618108ba(?) {
    return sub_618108ba[arg1][arg2]
}

function ownerOf(uint256 arg1) {
    require stor5[arg1]
    return tokenOwners[arg1]
}

function sub_64a701b7(?) {
    return sub_64a701b7[arg1]
}

function sub_67f82f37(?) {
    return sub_96e73749[arg1][0 len sub_96e73749[arg1].length]
}

function tokenMetadata(uint256 arg1) {
    return tokenMetadata[arg1][0 len tokenMetadata[arg1].length]
}

function balanceOf(address arg1) {
    return uint256(balanceOf[address(arg1)])
}

function sub_724686d7(?) {
    return sub_724686d7[arg1]
}

function sub_7a7fe7de(?) {
    return itemName[arg1][0 len itemName[arg1].length]
}

function owner() {
    return owner
}

function sub_902b129f(?) {
    return sub_902b129f[arg1]
}

function sub_96e73749(?) {
    return sub_96e73749[arg1][0 len sub_96e73749[arg1].length]
}

function sub_9843e203(?) {
    require owner == msg.sender
    require arg1 < 100
    return sub_9843e203[arg1]
}

function sub_9dd2fced(?) {
    return sub_9dd2fced[arg1]
}

function breed(uint256 arg1) {
    return breed[arg1]
}

function frozenAccount(address arg1) {
    return bool(stor425[arg1])
}

function sub_c02619c4(?) {
    return descriptions[arg1][0 len descriptions[arg1].length]
}

function checkReward(address arg1) {
    return rewards[address(arg1)]
}

function sub_d15c1841(?) {
    return sub_d15c1841[arg1][0 len sub_d15c1841[arg1].length]
}

function sub_d6bb896c(?) {
    return stor[arg1 + 325][0 len stor[arg1 + 325].length]
}

function getItemName(uint256 arg1) {
    return itemName[arg1][0 len itemName[arg1].length]
}

function sub_dc2124de(?) {
    return stor[arg1 + 225][0 len stor[arg1 + 225].length]
}

function sub_e34eb088(?) {
    return sub_e34eb088[arg1]
}

function sub_e3fa8661(?) {
    return sub_e3fa8661[arg1]
}

function descriptions(uint256 arg1) {
    return descriptions[arg1][0 len descriptions[arg1].length]
}

function sub_ea2d8027(?) {
    return sub_ea2d8027[arg1]
}

function tokenOwners(uint256 arg1) {
    return tokenOwners[arg1]
}

function sub_fdc0f803(?) {
    return bool(stor20[arg1])
}

function killMe() {
    require owner == msg.sender
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function sub_a4709fcb(?) {
    require owner == msg.sender
    stor19 = uint8(arg1)
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function sub_475f931c(?) {
    require owner == msg.sender
    sub_64a701b7[arg1] = arg2
}

function sub_502d4c2d(?) {
    require owner == msg.sender
    sub_ea2d8027[arg1] = arg2
}

function sub_9dfeaf0b(?) {
    require owner == msg.sender
    sub_9dd2fced[arg1] = arg2
}

function sub_d9afae39(?) {
    require owner == msg.sender
    sub_e34eb088[arg2] = arg1
}

function sub_e5ea0f17(?) {
    require owner == msg.sender
    stor20[arg1] = uint8(arg2)
}

function sub_f6f731ea(?) {
    require owner == msg.sender
    sub_005c1325 = arg1
    return 1
}

function sub_01fa13df(?) {
    require owner == msg.sender
    require arg1 < 100
    adopters[arg1] = arg2
}

function sub_c8b08b8f(?) {
    require owner == msg.sender
    require arg1 < 100
    sub_9843e203[arg1] = arg2
}

function sub_9b9d1cd4(?) {
    require owner == msg.sender
    sub_d15c1841[arg1][] = Array(len=arg2.length, data=arg2[all])
}

function sub_f62ff804(?) {
    require owner == msg.sender
    sub_96e73749[arg1][] = Array(len=arg2.length, data=arg2[all])
}

function withdraw() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function getAdopters() {
    idx = 3296
    s = 24
    while 6496 > idx + 32:
        mem[idx + 32] = address(balanceOf[s])
        idx = idx + 32
        s = s + 1
        continue 
    return adopters.length, mem[3328 len 3168]
}

function getPrices() {
    idx = 3296
    s = 125
    while 6496 > idx + 32:
        mem[idx + 32] = uint256(balanceOf[s])
        idx = idx + 32
        s = s + 1
        continue 
    return sub_9843e203.length, mem[3328 len 3168]
}

function sub_aced2d9e(?) {
    require msg.sender == tokenOwners[arg1]
    require sub_e3fa8661[stor13[arg1]] - sub_618108ba[address(msg.sender)][stor13[arg1]] > 0
    rewards[address(msg.sender)] = (sub_e3fa8661[stor13[arg1]] * sub_ea2d8027[stor13[arg1]]) - (sub_618108ba[address(msg.sender)][stor13[arg1]] * sub_ea2d8027[stor13[arg1]])
    return rewards[address(msg.sender)]
}

function transfer(address arg1, uint256 arg2) {
    require stor5[arg2]
    require stor5[arg2]
    require msg.sender == tokenOwners[arg2]
    require arg1 != msg.sender
    require arg1
    uint256(balanceOf[address(msg.sender)])--
    tokenOwners[arg2] = arg1
    uint256(balanceOf[address(arg1)])++
    sub_724686d7[address(arg1)] = arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function getReward(uint256 arg1) payable {
    require rewards[address(msg.sender)] > 0
    require stor19
    call msg.sender with:
       value rewards[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Transfer(rewards[address(msg.sender)], this.address, msg.sender);
    sub_618108ba[address(msg.sender)][arg1] = sub_e3fa8661[arg1]
    rewards[address(msg.sender)] = 0
    return eth.balance(this.address)
}

function adopt(uint256 arg1) payable {
    require msg.value >= sub_9dd2fced[arg1]
    emit Transfer(sub_9dd2fced[arg1], msg.sender, this.address);
    require sub_e34eb088[arg1] < 100
    sub_9843e203[stor124[arg1]] += sub_005c1325 * sub_e3fa8661[stor13[arg1]]
    require stor5[arg1]
    require stor5[arg1]
    require tokenOwners[arg1] != msg.sender
    uint256(balanceOf[stor3[arg1]])--
    tokenOwners[arg1] = msg.sender
    uint256(balanceOf[address(msg.sender)])++
    sub_724686d7[address(msg.sender)] = arg1
    emit Transfer(arg1, tokenOwners[arg1], msg.sender);
    sub_e3fa8661[stor13[arg1]]++
    sub_724686d7[address(msg.sender)] = arg1
    require sub_e34eb088[arg1] < 100
    adopters[stor124[arg1]] = msg.sender
    sub_e34eb088[arg1] = 0
    return arg1
}

function sub_e8a545f6(?) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 192 len arg3.length % 32] = mem[ceil32(arg2.length) + floor32(arg3.length) + -(arg3.length % 32) + 192 len arg3.length % 32]
    _22 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 160 len arg3.length % 32])
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    emit 0x1e30bb22: block.timestamp, arg1, sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len arg2.length % 32]), _22
}

function sub_40342c42(?) {
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len arg5.length] = arg5[all]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 192] = arg6.length
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 224 len arg6.length] = arg6[all]
    require owner == msg.sender
    require not stor5[arg1]
    tokenOwners[arg1] = this.address
    stor5[arg1] = 1
    sub_d15c1841[arg1][] = Array(len=arg3.length, data=arg3[all])
    sub_96e73749[arg1][] = Array(len=arg4.length, data=arg4[all])
    descriptions[arg1][] = Array(len=arg5.length, data=arg5[all])
    itemName[arg1][] = Array(len=arg6.length, data=arg6[all])
    breed[arg1] = arg2
    sub_902b129f[arg1] = arg7
    sub_37f778bc[arg1] = arg8
    sub_ea2d8027[arg1] = 1
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 224] = 20
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 288 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + floor32(arg5.length) + -(arg5.length % 32) + 320 len arg5.length % 32] = mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg5.length) + -(arg5.length % 32) + 224 len arg5.length % 32]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 288 len 0] = None
    emit 0x1e30bb22: block.timestamp, block.timestamp, sha3(mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 288 len 12], Mask(64, 96, 'Crypto Charity Token') >> 96), sha3(call.data[arg5 + 36 len floor32(arg5.length)], mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + floor32(arg5.length) + 288 len arg5.length % 32])
}



}
