contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor1 = 0
    stor2 = 0
    require not msg.value
    stor0 = msg.sender
    return code.data[70 len 2703]
}



// =====================  Runtime code  =====================


const name = 'Agora'

const decimals = 18

const latestReferenceBlockNumber = (block.number - (block.number % 157553))

const symbol = 'AGO'


address stor0;
uint256 stor1;
uint256 totalSupply;
mapping of uint256 stor3;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of struct stor6;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function icoOverview() {
    return stor1, totalSupply, balanceOf[stor0]
}

function balanceAtBlock(address arg1, uint256 arg2) {
    if not stor6[arg2][address(arg1)].field_0:
        return balanceOf[address(arg1)]
    return stor6[arg2][address(arg1)].field_256
}

function approve(address arg1, uint256 arg2) {
    require stor0 != msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdraw(uint256 arg1) {
    require block.number > 4431906
    require stor1 >= 1000 * 10^18
    require stor0 == msg.sender
    call stor0 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function refill() {
    require block.number > 4431906
    require stor1 < 1000 * 10^18
    stor3[address(msg.sender)] = 0
    call msg.sender with:
       value stor3[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require block.number > 4116800
    require block.number < 4431906
    stor3[address(msg.sender)] += msg.value
    if block.number < 4195576:
        balanceOf[address(msg.sender)] += 550 * msg.value
        balanceOf[stor0] += 550 * msg.value / 6
        stor1 += msg.value
        totalSupply += 550 * msg.value
    else:
        balanceOf[address(msg.sender)] += 500 * msg.value
        balanceOf[stor0] += 500 * msg.value / 6
        stor1 += msg.value
        totalSupply += 500 * msg.value
}

function transfer(address arg1, uint256 arg2) {
    require stor0 != msg.sender
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    if not stor6[block.number - (block.number % 157553)][address(msg.sender)].field_0:
        stor6[block.number - (block.number % 157553)][address(msg.sender)].field_0 = 1
        stor6[block.number - (block.number % 157553)][address(msg.sender)].field_256 = balanceOf[address(msg.sender)]
    if not stor6[block.number - (block.number % 157553)][address(arg1)].field_0:
        stor6[block.number - (block.number % 157553)][address(arg1)].field_0 = 1
        stor6[block.number - (block.number % 157553)][address(arg1)].field_256 = balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    if not stor6[block.number - (block.number % 157553)][address(arg1)].field_0:
        stor6[block.number - (block.number % 157553)][address(arg1)].field_0 = 1
        stor6[block.number - (block.number % 157553)][address(arg1)].field_256 = balanceOf[address(arg1)]
    if not stor6[block.number - (block.number % 157553)][address(arg2)].field_0:
        stor6[block.number - (block.number % 157553)][address(arg2)].field_0 = 1
        stor6[block.number - (block.number % 157553)][address(arg2)].field_256 = balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, msg.sender, arg2);
    return 1
}



}
