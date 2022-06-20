contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint256 stor1;
uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
uint256 stor6;
uint256 stor7;

function _fallback() payable {
    stor6 = 0
    stor7 = 100 * 10^6
    require not msg.value
    mem[96 len -6296] = code.data[7632 len -6296]
    mem[64] = -6200
    stor0 = msg.sender
    stor3 = mem[96]
    stor4[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor5[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor0 = mem[204 len 20]
    require stor1[address(mem[192])] + stor3 >= stor1[address(mem[192])]
    stor1[address(mem[192])] += stor3
    stor6 = mem[224]
    require mem[204 len 20]
    require stor3 <= stor1[address(msg.sender)]
    require stor3 <= stor1[address(msg.sender)]
    stor1[address(msg.sender)] -= stor3
    require stor1[address(mem[192])] + stor3 >= stor1[address(mem[192])]
    stor1[address(mem[192])] += stor3
    emit Transfer(stor3, msg.sender, mem[204 len 20]);
    return code.data[1336 len 6296]
}



// =====================  Runtime code  =====================


const decimals = 8

const standard = 'ERC20 Lescovex ABT'


address owner;
mapping of uint256 balances;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint256 tokenPrice;
uint256 tokenUnit;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function tokenPrice() {
    return tokenPrice
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function tokenUnit() {
    return tokenUnit
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
    require arg2 <= balances[address(msg.sender)]
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balances[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
