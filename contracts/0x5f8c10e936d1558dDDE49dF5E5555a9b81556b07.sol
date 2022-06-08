contract main {




// =====================  Runtime code  =====================


const name = 'DeMarco'

const decimals = 0

const symbol = 'DMARCO'


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 stor4;
uint8 stor4; offset 8
uint256 stor4; offset 8

function totalSupply() {
    return totalSupply
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

function claimed() {
    return bool(uint8(stor4.field_8))
}

function funded() {
    return bool(uint8(stor4.field_0))
}

function isOwner() {
    return (msg.sender == owner)
}

function _fallback() payable {
    if uint8(stor4.field_0):
        revert with 0, 'Already funded'
    uint8(stor4.field_0) = 1
}

function approve(address arg1, uint256 arg2) {
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    emit Approval(allowance[address(arg1)][address(msg.sender)], arg1, msg.sender);
    return 1
}

function aaandItBurnsBurnsBurns(address arg1, uint256 arg2) {
    require msg.sender == owner
    if balanceOf[address(arg1)] <= 42:
        revert with 0, 'No more tokens can be burned!'
    if arg2 != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'That did not work. You still need to find the meaning of life!'
    if not arg1:
        revert with 0, 'Invalid address!'
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function tellMeASecret(string arg1) {
    require msg.sender == owner
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * floor32(arg1.length)) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + 160] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[arg1.length + floor32(arg1.length) + 128 len arg1.length % 32])
    if sha3(mem[arg1.length + 160]) != sha3(0x59a1fa9f9ea2f92d3ebf4aa606d774f5b686ebbb12da71e6036df86323995769):
        revert with 0, 'Invalid secret!'
    if uint8(stor4.field_8):
        revert with 0, 'Already claimed!'
    balanceOf[address(msg.sender)] = totalSupply
    Mask(248, 0, stor4.field_8) = 1
    emit Transfer(totalSupply, 0, msg.sender);
}



}
