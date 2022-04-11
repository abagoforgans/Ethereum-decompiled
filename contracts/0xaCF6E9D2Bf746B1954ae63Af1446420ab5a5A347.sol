contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
address stor3;
mapping of uint256 stor4;
uint256 stor6;

function _fallback() payable {
    stor0 = 0
    stor2 = 50
    stor6 = 9800000
    require not msg.value
    stor3 = msg.sender
    stor3 = msg.sender
    stor1 = 98 * 10^6
    stor4[address(msg.sender)] = 98 * 10^6
    return code.data[134 len 2019]
}



// =====================  Runtime code  =====================


const name = 'nametoken'

const decimals = 0

const symbol = 'NAT'


uint256 stor0;
uint256 totalSupply;
uint256 bonusPercentage;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 stor6;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function bonusPercentage() {
    return bonusPercentage
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_72b414fc(?) {
    require owner == msg.sender
    require arg1 > 0
    bonusPercentage = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 > 0
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    stor0 += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg1
    require arg2
    require arg3 > 0
    if bonusPercentage <= 0:
        if balanceOf[address(arg1)] < arg3:
            return 0
        balanceOf[address(arg2)] += arg3
        balanceOf[arg1] -= arg3
        allowance[address(arg1)][address(msg.sender)] -= arg3
    else:
        if balanceOf[address(arg1)] < (arg3 * bonusPercentage / 100) + arg3:
            return 0
        balanceOf[address(arg2)] = (arg3 * bonusPercentage / 100) + arg3 + balanceOf[address(arg2)]
        balanceOf[arg1] = balanceOf[arg1] - (arg3 * bonusPercentage / 100) - arg3
        allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][address(msg.sender)] - (arg3 * bonusPercentage / 100) - arg3
    stor0 += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require msg.sender
    require msg.value > 0
    if balanceOf[stor3] - (msg.value / 3 * 10^15) > stor6:
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require owner
        require msg.sender
        require msg.value / 3 * 10^15 > 0
        if bonusPercentage <= 0:
            if balanceOf[stor3] >= msg.value / 3 * 10^15:
                balanceOf[address(msg.sender)] += msg.value / 3 * 10^15
                balanceOf[stor3] -= msg.value / 3 * 10^15
                allowance[stor3][address(msg.sender)] -= msg.value / 3 * 10^15
                stor0 += msg.value / 3 * 10^15
                emit Transfer((msg.value / 3 * 10^15), owner, msg.sender);
        else:
            if balanceOf[stor3] >= (msg.value / 3 * 10^15 * bonusPercentage / 100) + (msg.value / 3 * 10^15):
                balanceOf[address(msg.sender)] = (msg.value / 3 * 10^15 * bonusPercentage / 100) + (msg.value / 3 * 10^15) + balanceOf[address(msg.sender)]
                balanceOf[stor3] = balanceOf[stor3] - (msg.value / 3 * 10^15 * bonusPercentage / 100) - (msg.value / 3 * 10^15)
                allowance[stor3][address(msg.sender)] = allowance[stor3][address(msg.sender)] - (msg.value / 3 * 10^15 * bonusPercentage / 100) - (msg.value / 3 * 10^15)
                stor0 += msg.value / 3 * 10^15
                emit Transfer((msg.value / 3 * 10^15), owner, msg.sender);
}



}
