contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
address stor2;
address stor3;
mapping of uint256 stor4;

function _fallback() payable {
    stor0 = 100 * 10^6
    stor2 = 0xb5f7c813bcd1f92802e2dfb877766fc71121054c
    stor3 = 0x175eaf72dce8aff4eb30abe276bd0061039648ba
    require not msg.value
    stor1 = msg.sender
    stor4[stor1] = stor0
    return code.data[382 len 4058]
}



// =====================  Runtime code  =====================


const name = 'AppCoins'

const decimals = 2

const symbol = 'APPC'


uint256 _totalSupply;
address owner;
address sub_e96f2fd8Address;
address storeAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function _totalSupply() {
    return _totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function store() {
    return storeAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_e96f2fd8(?) {
    return sub_e96f2fd8Address
}

function _fallback() payable {
    revert
}

function totalSupply() {
    return (_totalSupply / 100)
}

function percent(uint256 arg1, uint256 arg2, uint256 arg3) {
    require arg2
    return (arg1 * 10^arg3 / arg2)
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
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

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += 85 * arg2 / 100
    balanceOf[stor3] += 10 * arg2 / 100
    balanceOf[stor2] += 5 * arg2 / 100
    emit Transfer((85 * arg2 / 100), msg.sender, arg1);
    emit Transfer((10 * arg2 / 100), msg.sender, storeAddress);
    emit Transfer((5 * arg2 / 100), msg.sender, sub_e96f2fd8Address);
    return 1
}



}
