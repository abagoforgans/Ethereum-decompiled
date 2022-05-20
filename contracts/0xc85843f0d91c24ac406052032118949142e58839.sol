contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
address stor5;
mapping of uint256 stor6;

function _fallback() payable {
    stor3 = 0
    require not msg.value
    mem[96 len -2434] = code.data[2820 len -2434]
    mem[64] = -2338
    stor4 = mem[96] * 1^stor3
    stor6[address(msg.sender)] = mem[96] * 1^stor3
    stor0[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor1[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor2[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    stor5 = msg.sender
    return code.data[386 len 2434]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
array of uint256 property;
uint8 decimals;
uint256 totalSupply;
address owner;
mapping of uint256 balanceOf;
mapping of uint8 stor7;

function name() {
    return name[0 len name.length]
}

function property() {
    return property[0 len property.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor7[arg1])
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function sub_efa102ef(?) {
    require owner == msg.sender
    property[] = Array(len=arg1.length, data=arg1[all])
}

function freezeAccount(address arg1, bool arg2) {
    require owner == msg.sender
    stor7[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require not stor7[address(msg.sender)]
    require not stor7[address(arg1)]
    balanceOf[msg.sender] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg1)]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require owner == msg.sender
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require not stor7[address(arg1)]
    require not stor7[address(arg2)]
    balanceOf[arg1] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg2)] + balanceOf[arg1] == balanceOf[arg1] + balanceOf[address(arg2)]
    return 1
}



}
