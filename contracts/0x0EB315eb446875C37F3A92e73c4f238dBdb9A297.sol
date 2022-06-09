contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor1;
uint8 stor3; offset 160
uint128 stor3; offset 160
address stor3;
array of uint256 stor4;
array of uint256 stor5;

function _fallback() payable {
    Mask(96, 0, stor3.field_160) = 0
    require not msg.value
    mem[96 len -6551] = code.data[7555 len -6551]
    mem[64] = -6455
    address(stor3.field_0) = msg.sender
    stor4[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor5[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    if mem[160] > 0:
        require msg.sender == address(stor3.field_0)
        require not uint8(stor3.field_160)
        require stor1 + mem[160] >= stor1
        stor1 += mem[160]
        require stor0[address(msg.sender)] + mem[160] >= stor0[address(msg.sender)]
        stor0[address(msg.sender)] += mem[160]
        emit Mint(mem[160], msg.sender);
        emit Transfer(mem[160], 0, msg.sender);
    return code.data[1004 len 6551]
}



// =====================  Runtime code  =====================


const decimals = 18


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint128 stor3; offset 160
address owner;
array of uint256 name;
array of uint256 symbol;

function mintingFinished() {
    return bool(uint8(stor3.field_160))
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
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

function finishMinting() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 1
    emit MintFinished()
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

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
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

function multiMint(address[] arg1, uint256[] arg2) {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require msg.sender == owner
        require not uint8(stor3.field_160)
        require totalSupply + cd[((32 * idx) + arg2 + 36)] >= totalSupply
        totalSupply += cd[((32 * idx) + arg2 + 36)]
        require balanceOf[address(cd[((32 * idx) + arg1 + 36)])] + cd[((32 * idx) + arg2 + 36)] >= balanceOf[address(cd[((32 * idx) + arg1 + 36)])]
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 0
        balanceOf[address(cd[((32 * idx) + arg1 + 36)])] += cd[((32 * idx) + arg2 + 36)]
        emit Mint(cd[((32 * idx) + arg2 + 36)], address(cd[((32 * idx) + arg1 + 36)]));
        mem[96] = cd[((32 * idx) + arg2 + 36)]
        emit Transfer(cd[((32 * idx) + arg2 + 36)], 0, address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
}



}
