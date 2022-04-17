contract main {


// =======================  Init code  ======================


uint16 stor3; offset 160
address stor3;
uint256 stor4;
array of uint256 stor5;
array of uint256 stor6;
uint8 stor7;
mapping of uint256 stor8;

function _fallback() payable {
    uint16(stor3.field_160) = 0
    stor4 = 0
    require not msg.value
    mem[96 len -3921] = code.data[4321 len -3921]
    mem[64] = -3825
    address(stor3.field_0) = msg.sender
    if mem[96]:
        stor8[address(msg.sender)] = mem[96]
    else:
        stor8[address(msg.sender)] = 12500000 * 3600
    stor5[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor6[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor7 = mem[223 len 1]
    return code.data[400 len 3921]
}



// =====================  Runtime code  =====================


mapping of uint256 stor1;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint8 stor3; offset 168
address owner;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;

function mintingFinished() {
    return bool(uint8(stor3.field_168))
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function paused() {
    return bool(uint8(stor3.field_160))
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

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner != msg.sender
    if arg1:
        owner = arg1
}

function finishMinting() {
    require owner != msg.sender
    uint8(stor3.field_168) = 1
    emit MintFinished()
    return 1
}

function pause() {
    require owner != msg.sender
    require uint8(stor3.field_160)
    uint8(stor3.field_160) = 1
    emit Pause()
    return 1
}

function unpause() {
    require owner != msg.sender
    require not uint8(stor3.field_160)
    uint8(stor3.field_160) = 0
    emit Unpause()
    return 1
}

function approve(address arg1, uint256 arg2) {
    require arg2
    require allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function mint(address arg1, uint256 arg2) {
    require owner != msg.sender
    require uint8(stor3.field_168)
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + stor1[address(arg1)] >= stor1[address(arg1)]
    stor1[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require uint8(stor3.field_160)
    require calldata.size < 68
    require arg2 <= stor1[address(msg.sender)]
    stor1[address(msg.sender)] -= arg2
    require arg2 + stor1[arg1] >= stor1[arg1]
    stor1[address(arg1)] = arg2 + stor1[arg1]
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require uint8(stor3.field_160)
    require calldata.size < 100
    require arg3 + stor1[address(arg2)] >= stor1[address(arg2)]
    stor1[address(arg2)] += arg3
    require arg3 <= stor1[arg1]
    stor1[address(arg1)] = stor1[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function mintTimelocked(address arg1, uint256 arg2, uint256 arg3) {
    require owner != msg.sender
    require uint8(stor3.field_168)
    create contract with 0 wei
                    code: code.data[3281 len 597], address(this.address), address(arg1), arg3
    require create.new_address
    require owner != msg.sender
    require uint8(stor3.field_168)
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + stor1[address(create.new_address)] >= stor1[address(create.new_address)]
    stor1[address(create.new_address)] += arg2
    emit Mint(arg2, address(create.new_address));
    return address(create.new_address)
}



}
