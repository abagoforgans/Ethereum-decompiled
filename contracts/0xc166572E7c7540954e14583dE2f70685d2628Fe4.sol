contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
address stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;

function _fallback() payable {
    stor0 = 100000000 * 10^18
    stor1 = 25000000 * 10^18
    stor2 = 10000000 * 10^18
    stor3 = 7
    stor8 = 0xe04aee1dd91b2cd256bd196d09271756498ca143
    stor9 = 0
    stor10 = 0
    stor11 = 0
    require not msg.value
    stor8 = code.data[3002 len 20]
    return code.data[186 len 2804]
}



// =====================  Runtime code  =====================


const name = 'AdTrue Token'

const decimals = 18

const symbol = 'ADT'


uint256 totalSupply;
uint256 stor1;
uint256 stor2;
uint256 stor3;
mapping of uint256 balanceOf;
mapping of uint256 sub_97bfd6a8;
mapping of uint256 allowance;
uint256 baseStartTime;
address founderAddress;
uint256 distributed;
uint256 sub_cd9451c6;
uint256 teamDistributed;

function baseStartTime() {
    return baseStartTime
}

function totalSupply() {
    return totalSupply
}

function teamDistributed() {
    return teamDistributed
}

function founder() {
    return founderAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_97bfd6a8(?) {
    return sub_97bfd6a8[address(arg1)]
}

function sub_cd9451c6(?) {
    return sub_cd9451c6
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function distributed() {
    return distributed
}

function kill() {
    if founderAddress != msg.sender:
    selfdestruct(founderAddress)
}

function setStartTime(uint256 arg1) {
    require founderAddress == msg.sender
    baseStartTime = arg1
}

function changeFounder(address arg1) {
    require founderAddress == msg.sender
    founderAddress = arg1
}

function _fallback() payable {
    call founderAddress with:
       value msg.value wei
         gas gas_remaining - 34710 wei
    require ext_call.success
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require block.timestamp >= baseStartTime
    if founderAddress != arg1:
        require founderAddress == msg.sender
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require founderAddress == msg.sender
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_775520a4(?) {
    require arg3 <= stor3
    require founderAddress == msg.sender
    require distributed + arg1 <= totalSupply
    if sub_97bfd6a8[address(arg2)]:
        require arg3 == sub_97bfd6a8[address(arg2)]
    if 1 == arg3:
        require sub_cd9451c6 + arg1 <= stor1
        sub_cd9451c6 += arg1
    else:
        if 2 == arg3:
            require sub_cd9451c6 + arg1 <= stor1
            sub_cd9451c6 += arg1
        else:
            if 3 == arg3:
                require sub_cd9451c6 + arg1 <= stor1
                sub_cd9451c6 += arg1
            else:
                if 4 == arg3:
                    require sub_cd9451c6 + arg1 <= stor1
                    sub_cd9451c6 += arg1
                else:
                    if 5 == arg3:
                        require sub_cd9451c6 + arg1 <= stor1
                        sub_cd9451c6 += arg1
    if 6 == arg3:
        require teamDistributed + arg1 <= stor2
        teamDistributed += arg1
    distributed += arg1
    balanceOf[address(arg2)] += arg1
    sub_97bfd6a8[address(arg2)] = arg3
    emit Transfer(arg1, this.address, arg2);
}



}
