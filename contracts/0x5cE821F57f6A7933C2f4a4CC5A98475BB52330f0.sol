contract main {


// =======================  Init code  ======================


uint256 stor1;
mapping of uint256 stor2;
address stor4;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
mapping of uint8 stor11;

function _fallback() payable {
    stor1 = 0
    stor4 = 0xa4952490d051d98ed8bd35d724732221cbd31d55
    require not msg.value
    stor2[stor4] = 16500000 * 10^18
    stor2[address(this.address)] = 66000000 * 10^18
    stor11[1667] = 1
    stor11[1000] = 2
    stor11[715] = 3
    stor11[0] = 0
    stor11[1] = 4
    stor7 = code.data[6478 len 32]
    stor8 = code.data[6510 len 32]
    stor9 = code.data[6542 len 32]
    stor10 = code.data[6574 len 32]
    return code.data[753 len 5725]
}



// =====================  Runtime code  =====================


const name = 'ShipBloc Token'

const maxPreSale2Token = 30000000 * 10^18

const totalSupply = 82500000 * 10^18

const decimals = 18

const teamAllocated = 16500000 * 10^18

const maxPreSale1Token = 15000000 * 10^18

const totalsupply = 82500000 * 10^18

const symbol = 'SBLOC'


uint256 totalUsedTokens;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
mapping of uint8 stor11;

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function totalUsedTokens() {
    return totalUsedTokens
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function drain() {
    require msg.sender == stor4
    call stor4 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function drainToken() {
    require msg.sender == stor4
    require stor11[stor6] <= 4
    require stor11[stor6] == 4
    require balanceOf[stor4] + balanceOf[address(this.address)] >= balanceOf[stor4]
    balanceOf[stor4] += balanceOf[address(this.address)]
    emit Transfer(balanceOf[address(this.address)], this.address, stor4);
    balanceOf[address(this.address)] = 0
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require stor11[stor6] <= 4
    require stor11[stor6] == 4
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require msg.value
    if block.number < stor7:
        stor6 = 0
    else:
        if block.number < stor8:
            require 15000000 * 10^18 > totalUsedTokens
            stor6 = 1667
        else:
            if block.number >= stor9:
                if block.number >= stor10:
                    stor6 = 10
                else:
                    stor6 = 715
            else:
                require 30000000 * 10^18 > totalUsedTokens
                stor6 = 1000
    require stor11[stor6] <= 4
    require stor11[stor6]
    require stor11[stor6] <= 4
    require stor11[stor6] != 4
    if msg.value:
        require msg.value
        require msg.value * stor6 / msg.value == stor6
    stor5 = msg.value * stor6
    require balanceOf[address(this.address)] >= stor5
    require totalUsedTokens + stor5 >= totalUsedTokens
    totalUsedTokens += stor5
    require stor5 <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= stor5
    require balanceOf[address(msg.sender)] + stor5 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += stor5
    emit Transfer(stor5, this.address, msg.sender);
    call stor4 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
